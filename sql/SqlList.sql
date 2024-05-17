--SQL CreateDB
if db_id('Umlagerung') is null
  create database Umlagerung COLLATE Latin1_General_CI_AS
go

--SQL useDB
use Umlagerung
go

--SQL CreateTable
--pArtikel -    
if OBJECT_ID('pArtikel') is not null
  drop table pArtikel;          
create table pArtikel 
    (   id                    numeric(18, 0) identity
       ,u                     bit default 0
       ,p                     bit default 0
       ,kArtikel              int
       ,cArtNr                nvarchar(200)
       ,cName                 nvarchar(510)
       ,FBA                   nvarchar(200)
       ,[U-Menge]             int default 0 
       ,[FBA-Bestand]         int
       ,[FBA Bestand aktuell] int
       ,[Fbm-Bestand]         int
       ,[FBA-Eingang]         int
       ,Reserviert            int
       ,Defekt                int
       ,[FBA 0-30T]           int
       ,[FBA 30-60T]          int
       ,[FBA 60-90T]          int
       ,[FBM 0-30T]           int
       ,[FBM 30-60T]          int
       ,UmlagMenge            int
       ,UmlagDatum            date
       ,AmaBestAlter          int
       ,AmaPreis              float
       ,kWarengruppe          int
       ,kHersteller           int
       ,kVaterArtikel         int
       ,cBarcode	            nvarchar(510)
       ,Karton                float
       ,RQty                  int
       ,Datum                 date
       ,VPEMenge              float
    );
                    
create unique index pk1 on pArtikel(id);                   
grant all on pArtikel to public;

--pCheck -    
if OBJECT_ID('pCheck') is not null
  drop table pCheck;          
create table pCheck 
    (   id                    numeric(18, 0)
       ,cName                 nvarchar(510)
       ,[U-Menge]             int 
       ,[Gescant]             int 
       ,cBarcode	          nvarchar(510)
    );
                    
create unique index pk1 on pCheck(id);                   
grant all on pCheck to public; 

--tMark -  
if OBJECT_ID('tMark') is not null
  drop table tMark;          
create table tMark 
    (
     Spid	        numeric(18, 0) 
    ,ID	            numeric(18, 0) 
    );
create unique index ao1 on tMark(Spid, ID);
grant all on tMark to public;
go

--SQL DeleteObject
if OBJECT_ID('uml') is not null  drop VIEW uml;
if OBJECT_ID('SaveMark') is not null  drop proc SaveMark;
if OBJECT_ID('SetMark') is not null  drop proc SetMark; -- не используется
go

--SQL GrantObject
if OBJECT_ID('uml') is not null grant all on uml to public;

go
--SQL SaveMark
--сохранение идентификаторов в таблицу
create proc SaveMark
              @Params            varchar(max)
as
  declare @IDs nvarchar(max)
  set @IDs = @Params

  declare @T2 table(ID numeric(18, 0))

  while len(@IDs) > 1
  begin
    insert into @T2(ID) 
    select (left(@IDs, charindex(',', @IDs)-1))
    set @IDs = stuff(@IDs, 1, charindex(',', @IDs), '')
  end

  delete tMark from tMark (rowlock)
  insert into tMark(ID) 
  select ID from @T2

 exit_:
 return 0

grant exec on SaveMark to public;

go

--SQL CreateVIEW
CREATE VIEW uml
as (
SELECT
       art.[kArtikel]
      ,art.[cArtNr]
      ,ArtName.cName
	  ,case
	  when [Recommended replenishment qty] is NULL then NULL
	  when [Recommended replenishment qty] = 0 then NULL
	  when [nVPEMenge] is NULL then NULL
	  when [nVPEMenge] = 0 then NULL
	  else cast(cast([Recommended replenishment qty] as int)/[nVPEMenge] as decimal(10,2))
	  end  as Karton
      ,cast([Recommended replenishment qty] as int) [RQty]
      ,cast([Recommended ship date] as date) as Datum
	    ,cast([nVPEMenge] as decimal(10,2)) as VPEMenge

      ,fba.cSellerSKU as FBA
      ,(nQtyTotal - fba.nQtyUnsellable) 'FBA-Bestand'  --
      ,nQuantity                  as 'FBA Bestand aktuell'
      ,cast(fbmBestan.fVerfuegbar as int)as 'Fbm-Bestand'
      ,fba.nQtyInboundShipped     as 'FBA-Eingang'
      ,fba.nQtyReserved           as Reserviert
      ,fba.nQtyUnsellable         as Defekt
      ,le30T.[FBA 0-30 T]         as 'FBA 0-30T'
      ,le30_60T.[FBA 30-60 T]     as 'FBA 30-60T'
      ,le60_90T.[FBA 60-90 T]     as 'FBA 60-90T'
      ,FBMLe30T.[FBM 0-30 T]      as 'FBM 0-30T'
      ,FBMle30_60T.[FBM 30-60 T]  as 'FBM 30-60T'
      ,cast(leUmMenge.nAnzahl as int)    as UmlagMenge
      ,cast(leUmMenge.dErstellt as date) as UmlagDatum
      ,case
         when fba.nQuantity > 0 Then DATEDIFF(DAY, leUmMenge.dErstellt, Getdate())
         else 0
       end as AmaBestAlter
      ,cast(amaPreis.fPrice as float) as 'AmaPreis'
      ,art.[kWarengruppe]
      ,art.[kHersteller]
      ,art.[kVaterArtikel]
      ,art.cBarcode
  FROM [eazybusiness].[dbo].[tArtikel] as art

left Join (
  SELECT [kArtikel]
      ,[kSprache]
      ,[kPlattform]
      ,[kShop]
      ,[cName]
  FROM [eazybusiness].[dbo].[tArtikelBeschreibung]
  where kSprache = 1
  and kPlattform = 1
  ) as ArtName
  ON art.kArtikel = ArtName.kArtikel

  ---------------------FBA Bestand, FBA Eingang, reserviert, defekt----------------------------------------
inner join (

  SELECT [kArtikel]
      ,art_map.[cSellerSKU]
  ,fba_map.cFNSKU
  ,fba_map.nQuantity
  ,fba_map.nQtyInboundShipped
  ,fba_map.nQtyReserved
  ,fba_map.nQtyUnsellable
  ,fba_map.nQtyTotal
  FROM [eazybusiness].[dbo].[pf_amazon_angebot_mapping] as art_map
inner join (
SELECT [cSellerSKU]
 ,[cFNSKU]
 ,nQuantity
 ,nQtyInboundShipped
 ,nQtyReserved
 ,nQtyUnsellable
 ,nQtyTotal
FROM [eazybusiness].[dbo].[pf_amazon_angebot_fba]
where nPlattform = 51
) as fba_map
On art_map.cSellerSKU = fba_map.cSellerSKU

where art_map.cSellerSKU in (
SELECT --cFulfillmentChannel,
cSellerSKU
  FROM [eazybusiness].[dbo].[pf_amazon_angebot]
  where nPlattform = 51
  and cFulfillmentChannel = 'AMAZON_EU')


  ) as fba
  On fba.kArtikel = art.kArtikel

  ---------------------Amazon Preis aktuell-----------------------
  left join (
  SELECT [cSellerSKU]
,[fPrice]
FROM [eazybusiness].[dbo].[pf_amazon_angebot]
      where nPlattform = 51
) as amaPreis
ON amaPreis.cSellerSKU = fba.cSellerSKU

left join(
SELECT
AmaBestellpos.cArtNr
,sum(AmaBestellpos.nQuantityPurchased) as 'FBA 0-30 T'

  FROM [eazybusiness].[dbo].[pf_amazon_bestellungpos] as AmaBestellpos
left join(
SELECT  [kAmazonBestellung]
      ,[dErstellt]
FROM [eazybusiness].[dbo].[pf_amazon_bestellung]
) as AmaBestelDatum
On AmaBestelDatum.kAmazonBestellung = AmaBestellpos.kAmazonBestellung

where dErstellt > dateadd(mm,-1, Getdate())

 group by AmaBestellpos.cArtNr
  ) as le30T
  ON le30T.cArtNr = fba.cSellerSKU

  ------------------FBA 30-60 Tage--------------------------------------------
left join(
SELECT
AmaBestellpos.cArtNr
,sum(AmaBestellpos.nQuantityPurchased) as 'FBA 30-60 T'

  FROM [eazybusiness].[dbo].[pf_amazon_bestellungpos] as AmaBestellpos
left join(
SELECT  [kAmazonBestellung]
      ,[dErstellt]
FROM [eazybusiness].[dbo].[pf_amazon_bestellung]
) as AmaBestelDatum
On AmaBestelDatum.kAmazonBestellung = AmaBestellpos.kAmazonBestellung

  where dErstellt < dateadd(dd,-30, Getdate())
  and dErstellt > dateadd(dd,-60, Getdate())

 group by AmaBestellpos.cArtNr
  ) as le30_60T
  ON le30_60T.cArtNr = fba.cSellerSKU

    ------------------FBA 60-90 Tage--------------------------------------------
left join(
SELECT
AmaBestellpos.cArtNr
,sum(AmaBestellpos.nQuantityPurchased) as 'FBA 60-90 T'

  FROM [eazybusiness].[dbo].[pf_amazon_bestellungpos] as AmaBestellpos
left join(
SELECT  [kAmazonBestellung]
      ,[dErstellt]
FROM [eazybusiness].[dbo].[pf_amazon_bestellung]
) as AmaBestelDatum
On AmaBestelDatum.kAmazonBestellung = AmaBestellpos.kAmazonBestellung

  where dErstellt < dateadd(dd,-60, Getdate())
  and dErstellt > dateadd(dd,-90, Getdate())

 group by AmaBestellpos.cArtNr
  ) as le60_90T
  ON le60_90T.cArtNr = fba.cSellerSKU
LEFT JOIN (
select * from(
  Select
tArtikel_kArtikel
,nAnzahl
,bestellung.dErstellt
,ROW_NUMBER() over(partition by tArtikel_kArtikel order by bestellung.dErstellt desc) as Urow
from eazybusiness.dbo.tbestellpos as bestellpos
LEFT JOIN (
Select
kBestellung
,cType
,dErstellt
from eazybusiness.dbo.tBestellung
) as bestellung
ON bestellpos.tBestellung_kBestellung = bestellung.kBestellung
where
cType = 'U'
) as ss
where ss.Urow = 1
) as leUmMenge
ON art.kArtikel = leUmMenge.tArtikel_kArtikel



left join (
select
kArtikel
,fVerfuegbar
from eazybusiness.dbo.tlagerbestand
) as fbmBestan
ON fbmBestan.kArtikel = art.kArtikel

Left Join (
SELECT
AmaBestellpos.cArtNr
,sum(AmaBestellpos.nQuantityPurchased) as 'FBM 0-30 T'

  FROM [eazybusiness].[dbo].[pf_amazon_bestellungpos] as AmaBestellpos
left join(
SELECT  [kAmazonBestellung]
      ,[dErstellt]
FROM [eazybusiness].[dbo].[pf_amazon_bestellung]
) as AmaBestelDatum
On AmaBestelDatum.kAmazonBestellung = AmaBestellpos.kAmazonBestellung

where dErstellt > dateadd(mm,-1, Getdate())

 group by AmaBestellpos.cArtNr
 ) as FBMLe30T
 On FBMLe30T.cArtNr = art.cArtNr

   ------------------FBM 30-60 Tage--------------------------------------------
left join(
SELECT
AmaBestellpos.cArtNr
,sum(AmaBestellpos.nQuantityPurchased) as 'FBM 30-60 T'

  FROM [eazybusiness].[dbo].[pf_amazon_bestellungpos] as AmaBestellpos
left join(
SELECT  [kAmazonBestellung]
      ,[dErstellt]
FROM [eazybusiness].[dbo].[pf_amazon_bestellung]
) as AmaBestelDatum
On AmaBestelDatum.kAmazonBestellung = AmaBestellpos.kAmazonBestellung

  where dErstellt < dateadd(dd,-30, Getdate())
  and dErstellt > dateadd(dd,-60, Getdate())

 group by AmaBestellpos.cArtNr
  ) as FBMle30_60T
  ON FBMle30_60T.cArtNr = art.cArtNr

  -------------------------------------------------------------

  left Join (
             SELECT [Recommended replenishment qty]
                   ,[Recommended ship date]
                   ,[Merchant SKU]
               FROM [JTL_SubDB].[dbo].[GET_RESTOCK_INVENTORY_RECOMMENDATIONS_REPORT]
              where Country ='DE'
             ) rec
          ON fba.cSellerSKU = rec.[Merchant SKU]

  -------------------------------------------------------------
   Left join [eazybusiness].[dbo].[tliefartikel] as liefart
          ON art.kArtikel = liefart.tArtikel_kArtikel


  ----------------------------------------------------------------
  where kVaterArtikel > 0
and kStueckliste = 0


);
go

--SQL ArtikelLoad
use Umlagerung;

Delete from [pArtikel]
insert [pArtikel]
      (
       [kArtikel]
      ,[cArtNr]
      ,[cName]
      ,[FBA]
      ,[FBA-Bestand]
      ,[FBA Bestand aktuell]
      ,[Fbm-Bestand]
      ,[FBA-Eingang]
      ,[Reserviert]
      ,[Defekt]
      ,[FBA 0-30T]
      ,[FBA 30-60T]
      ,[FBA 60-90T]
      ,[FBM 0-30T]
      ,[FBM 30-60T]
      ,[UmlagMenge]
      ,[UmlagDatum]
      ,[AmaBestAlter]
      ,[AmaPreis]
      ,[kWarengruppe]
      ,[kHersteller]
      ,[kVaterArtikel]
      ,[cBarcode]
      ,[Karton]
      ,[RQty]
      ,[Datum]
      ,[VPEMenge]
)
select
       [kArtikel]
      ,[cArtNr]
      ,[cName]
      ,[FBA]
      ,[FBA-Bestand]
      ,[FBA Bestand aktuell]
      ,[Fbm-Bestand]
      ,[FBA-Eingang]
      ,[Reserviert]
      ,[Defekt]
      ,[FBA 0-30T]
      ,[FBA 30-60T]
      ,[FBA 60-90T]
      ,[FBM 0-30T]
      ,[FBM 30-60T]
      ,[UmlagMenge]
      ,[UmlagDatum]
      ,[AmaBestAlter]
      ,[AmaPreis]
      ,[kWarengruppe]
      ,[kHersteller]
      ,[kVaterArtikel]
      ,[cBarcode]
      ,[Karton]
      ,[RQty]
      ,[Datum]
      ,[VPEMenge]
  FROM [uml]

go

--SQL JTLExport
use Umlagerung;

SELECT
      p.[U-Menge] as Umlagerungsmenge
      ,convert(varchar(10), getdate(), 104) as [Vorauss.Lieferdatum]
      --,[kArtikel] [Positionstyp]
      ,'Artikel'    [Positionstyp]
      ,p.[cArtNr]   [Artikelnummer]
      ,p.[FBA]      [Amazon SKU]
  FROM [pArtikel] p (nolock)
 Where p.[u] = 1
 order by p.[cArtNr]

go

--SQL CheckInsert
--заполнение таблицы [pCheck]
use [Umlagerung]

delete from [pCheck] 
insert [pCheck]
(      [id]
      ,[cName]
      ,[U-Menge]
      ,[Gescant]
      ,[cBarcode]
)
SELECT [id]
      ,[cName]
      ,[U-Menge]
      ,0
      ,[cBarcode]
  FROM pArtikel (nolock)
 where [p] = 1

go

--SQL JTLExport2
-- Preisänderung bei Amazon Vorlage
use Umlagerung;

SELECT
       p.FBA
      ,p.AmaPreis
  FROM [pArtikel] p (nolock)
 Where p.[u] = 1
 order by p.[cArtNr]

go
