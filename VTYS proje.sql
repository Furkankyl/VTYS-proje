--------------------------------------------------------
--  File created - Çarþamba-Aralýk-20-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_FIS
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_FIS" 
   (	"NO" NUMBER, 
	"SATIS_NO" NUMBER, 
	"URUN_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_GOREV
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_GOREV" 
   (	"NO" NUMBER, 
	"ISIM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_KAMPANYA
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_KAMPANYA" 
   (	"NO" NUMBER, 
	"BASLANGIC_TARIHI" DATE, 
	"BITIS_TARIHI" DATE, 
	"ACIKLAMA" VARCHAR2(100 BYTE), 
	"EN_DUSUK_ALISVERIS_MIKTARI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_MUSTERI
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_MUSTERI" 
   (	"NO" NUMBER, 
	"ISIM" VARCHAR2(20 BYTE), 
	"SOYISIM" VARCHAR2(20 BYTE), 
	"TELEFON_NO" VARCHAR2(13 BYTE), 
	"ADRES" VARCHAR2(100 BYTE), 
	"KAYIT_TARIHI" DATE, 
	"TOPLAM_ALISVERIS_MIKTARI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_PERSONEL
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_PERSONEL" 
   (	"NO" NUMBER, 
	"ISIM" VARCHAR2(30 BYTE), 
	"SOYISIM" VARCHAR2(30 BYTE), 
	"TELEFON_NO" VARCHAR2(13 BYTE), 
	"ISE_GIRIS_TARIHI" DATE, 
	"GOREV_NO" NUMBER, 
	"MAAS" NUMBER, 
	"PAROLA" VARCHAR2(32 BYTE), 
	"ADRES" VARCHAR2(100 BYTE), 
	"KULLANICI_ADI" VARCHAR2(30 BYTE), 
	"TC_NO" VARCHAR2(11 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_SATIS
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_SATIS" 
   (	"NO" NUMBER, 
	"TARIH" DATE, 
	"PERSONEL_NO" NUMBER, 
	"MUSTERI_NO" NUMBER, 
	"ODEME_TURU" NVARCHAR2(30)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_STOK
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_STOK" 
   (	"URUN_NO" NUMBER, 
	"URUN_MIKTAR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_URUN
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_URUN" 
   (	"NO" NUMBER, 
	"ISIM" VARCHAR2(40 BYTE), 
	"GRUP_NO" NUMBER, 
	"ALIS_FIYAT" NUMBER, 
	"SATIS_FIYAT" NUMBER, 
	"KDV" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table T_URUN_GRUP
--------------------------------------------------------

  CREATE TABLE "FURKAN"."T_URUN_GRUP" 
   (	"NO" NUMBER, 
	"ISIM" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_FIS_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_FIS_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GOREV_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_GOREV_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KAMPANYA_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_KAMPANYA_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MUSTERI_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_MUSTERI_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PERSONEL_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_PERSONEL_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SATIS_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_SATIS_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SIPARIS_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_SIPARIS_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_URUN_GRUP_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_URUN_GRUP_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_URUN_TABLO
--------------------------------------------------------

   CREATE SEQUENCE  "FURKAN"."SEQ_URUN_TABLO"  MINVALUE 0 MAXVALUE 999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE ;
REM INSERTING into FURKAN.T_FIS
SET DEFINE OFF;
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('6','1','1');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('9','11','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('7','1','1');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('11','12','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('10','11','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('12','14','511');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('13','14','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('6','1','1');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('9','11','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('7','1','1');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('11','12','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('10','11','8');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('12','14','511');
Insert into FURKAN.T_FIS (NO,SATIS_NO,URUN_NO) values ('13','14','8');
REM INSERTING into FURKAN.T_GOREV
SET DEFINE OFF;
Insert into FURKAN.T_GOREV (NO,ISIM) values ('1','yönetici');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('2','kasiyer');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('3','Manav');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('4','temizlik');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('5','kasap');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('6','depo');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('7','kurye');
Insert into FURKAN.T_GOREV (NO,ISIM) values ('8','sekreter');
REM INSERTING into FURKAN.T_KAMPANYA
SET DEFINE OFF;
REM INSERTING into FURKAN.T_MUSTERI
SET DEFINE OFF;
Insert into FURKAN.T_MUSTERI (NO,ISIM,SOYISIM,TELEFON_NO,ADRES,KAYIT_TARIHI,TOPLAM_ALISVERIS_MIKTARI) values ('1','Ayþe','Gül','05322333212','o cadde bu sokak',to_date('19/12/2017','DD/MM/RRRR'),'0');
Insert into FURKAN.T_MUSTERI (NO,ISIM,SOYISIM,TELEFON_NO,ADRES,KAYIT_TARIHI,TOPLAM_ALISVERIS_MIKTARI) values ('11','mehmet','okur','05373620619',null,to_date('19/12/2017','DD/MM/RRRR'),'0');
REM INSERTING into FURKAN.T_PERSONEL
SET DEFINE OFF;
Insert into FURKAN.T_PERSONEL (NO,ISIM,SOYISIM,TELEFON_NO,ISE_GIRIS_TARIHI,GOREV_NO,MAAS,PAROLA,ADRES,KULLANICI_ADI,TC_NO) values ('1','furkan','kayalý','5373620617',null,'1','5000','furkan123','osmanlý mahallesi gençler sokak 60/20 ATAKUM/SAMSUN','furkan',null);
Insert into FURKAN.T_PERSONEL (NO,ISIM,SOYISIM,TELEFON_NO,ISE_GIRIS_TARIHI,GOREV_NO,MAAS,PAROLA,ADRES,KULLANICI_ADI,TC_NO) values ('5','Furkan','Kayalý','05373620617',to_date('20/12/2017','DD/MM/RRRR'),'2','3000','furkan123','asdasdasdasdasd','Furkankyl','38548128986');
Insert into FURKAN.T_PERSONEL (NO,ISIM,SOYISIM,TELEFON_NO,ISE_GIRIS_TARIHI,GOREV_NO,MAAS,PAROLA,ADRES,KULLANICI_ADI,TC_NO) values ('2','hasan','hüseyin','5343210617',null,'2','5000','hasan123','liseli mahallesi gençler sokak 60/20 ÝLKADIM/SAMSUN','hasan',null);
REM INSERTING into FURKAN.T_SATIS
SET DEFINE OFF;
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('8',to_date('20/12/2017','DD/MM/RRRR'),'5','1','kredi Kartý');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('1',to_date('19/12/2017','DD/MM/RRRR'),'1','1','kart');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('9',to_date('20/12/2017','DD/MM/RRRR'),'1','5','Nakit');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('10',to_date('20/12/2017','DD/MM/RRRR'),'1','5','Nakit');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('11',to_date('20/12/2017','DD/MM/RRRR'),'5','1','kredi Kartý');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('12',to_date('20/12/2017','DD/MM/RRRR'),'5','1','kredi Kartý');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('13',to_date('20/12/2017','DD/MM/RRRR'),'1','5','Nakit');
Insert into FURKAN.T_SATIS (NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) values ('14',to_date('20/12/2017','DD/MM/RRRR'),'1','5','Nakit');
REM INSERTING into FURKAN.T_STOK
SET DEFINE OFF;
Insert into FURKAN.T_STOK (URUN_NO,URUN_MIKTAR) values ('8','50');
Insert into FURKAN.T_STOK (URUN_NO,URUN_MIKTAR) values ('8','50');
REM INSERTING into FURKAN.T_URUN
SET DEFINE OFF;
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('8','Fanta','1','1,75','2,5','0,18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('9','Fanta','1','1,75','2,5','0,18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('1','Fanta','1','1,75','2,5','0,18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('2','Coca cola','1','1,75','2,5','0,18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('21','Elma','2','1','2','18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('22','Kiraz','2','1','2','18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('100','armu','2','1','3','18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('101','armut','1','1','3','18');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('321','fusetea','0','32','128','1');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('511','cay','1','32','128','1');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('512','cay','2','32','128','1');
Insert into FURKAN.T_URUN (NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) values ('12312','furkan','3','32','128','1');
REM INSERTING into FURKAN.T_URUN_GRUP
SET DEFINE OFF;
Insert into FURKAN.T_URUN_GRUP (NO,ISIM) values ('1','Soðuk içecekler');
Insert into FURKAN.T_URUN_GRUP (NO,ISIM) values ('2','manav');
Insert into FURKAN.T_URUN_GRUP (NO,ISIM) values ('3','patates');
--------------------------------------------------------
--  DDL for Index T_PERSONEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."T_PERSONEL_PK" ON "FURKAN"."T_PERSONEL" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MUSTERI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."MUSTERI_PK" ON "FURKAN"."T_MUSTERI" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index T_URUN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."T_URUN_PK" ON "FURKAN"."T_URUN" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index T_URUN_GRUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."T_URUN_GRUP_PK" ON "FURKAN"."T_URUN_GRUP" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index T_SATIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."T_SATIS_PK" ON "FURKAN"."T_SATIS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index T_GOREV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."T_GOREV_PK" ON "FURKAN"."T_GOREV" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index T_KAMPANYA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FURKAN"."T_KAMPANYA_PK" ON "FURKAN"."T_KAMPANYA" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure FISEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."FISEKLE" (p_urun_no IN NUMBER)
IS
BEGIN
    INSERT INTO T_FIS(NO,SATIS_NO,URUN_NO) VALUES(SEQ_FIS_TABLO.NEXTVAL,(select no from T_SATIS where rowid=(select max(rowid) from T_SATIS)),p_urun_no);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure FISGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."FISGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_FIS WHERE SATIS_NO = p_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure FISLERIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."FISLERIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_fis;
END;


/
--------------------------------------------------------
--  DDL for Procedure GIRISYAP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."GIRISYAP" (
       c_dbuser OUT SYS_REFCURSOR,p_kullanici_adi IN VARCHAR2,p_parola IN VARCHAR2)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT g.ISIM as GIREN FROM t_Gorev g INNER JOIN T_PERSONEL p ON  p.KULLANICI_ADI = p_kullanici_adi AND p.PAROLA = p_parola AND g.NO = p.GOREV_NO;

END;


/
--------------------------------------------------------
--  DDL for Procedure GOREVEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."GOREVEKLE" (p_isim IN VARCHAR2)
IS
BEGIN
    INSERT INTO T_GOREV(NO,ISIM) VALUES(seq_GOREV_tablo.nextval,p_isim);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure GOREVGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."GOREVGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_GOREV WHERE NO = p_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure GOREVGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."GOREVGUNCELLE" (p_no IN NUMBER,p_ISIM IN VARCHAR2)
IS
BEGIN
    UPDATE T_GOREV SET ISIM = p_ISIM WHERE NO = p_no; 
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure GOREVLERIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."GOREVLERIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_GOREV;
END;


/
--------------------------------------------------------
--  DDL for Procedure KAMPANYAEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."KAMPANYAEKLE" (p_baslangic_tarih IN VARCHAR2,p_bitis_tarih IN VARCHAR2,p_aciklama IN VARCHAR2,p_en_dusuk_alisveris IN NUMBER)
IS
BEGIN
    INSERT INTO T_KAMPANYA(NO,BASLANGIC_TARIHI,BITIS_TARIHI,ACIKLAMA,EN_DUSUK_ALISVERIS_MIKTARI) VALUES
    (SEQ_KAMPANYA_TABLO.NEXTVAL,to_date(p_baslangic_tarih),to_date(p_bitis_tarih),p_aciklama,p_en_dusuk_alisveris);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure KAMPANYAGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."KAMPANYAGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_KAMPANYA WHERE NO = p_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure KAMPANYAGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."KAMPANYAGUNCELLE" (p_no IN NUMBER,p_baslangýc_tarihi IN VARCHAR2,p_bitis_tarihi IN VARCHAR2,p_aciklama IN VARCHAR2,p_en_dusuk_alisveris IN NUMBER)
IS
BEGIN
    UPDATE T_KAMPANYA 
    SET BASLANGIC_TARIHI = to_date(p_baslangýc_tarihi) ,
        BITIS_TARIHI = to_date(p_bitis_tarihi),
        ACIKLAMA = p_aciklama,
        EN_DUSUK_ALISVERIS_MIKTARI = p_en_dusuk_alisveris
    WHERE NO = p_no;
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure KAMPANYALARIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."KAMPANYALARIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_Kampanya;
END;


/
--------------------------------------------------------
--  DDL for Procedure MUSTERIEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."MUSTERIEKLE" (p_isim IN VARCHAR2,p_soyisim IN VARCHAR2,p_telefon_no IN VARCHAR2,p_adres IN VARCHAR2)
IS
BEGIN
    INSERT INTO T_MUSTERI(NO,ISIM,SOYISIM,TELEFON_NO,ADRES,KAYIT_TARIHI,TOPLAM_ALISVERIS_MIKTARI) VALUES(SEQ_MUSTERI_TABLO.NEXTVAL,p_isim,p_soyisim,p_telefon_no,p_adres,sysdate,0);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure MUSTERIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."MUSTERIGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_tel_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_MUSTERI WHERE TELEFON_NO = p_tel_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure MUSTERIGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."MUSTERIGUNCELLE" (p_no IN NUMBER ,p_telefon_no IN VARCHAR2,p_adres IN VARCHAR2)
IS
BEGIN
    UPDATE T_MUSTERI SET TELEFON_NO = p_telefon_no,ADRES = p_adres WHERE NO = p_no; 
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure MUSTERILERIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."MUSTERILERIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_MUSTERI;
END;


/
--------------------------------------------------------
--  DDL for Procedure MUSTERISIL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."MUSTERISIL" (p_tel_no IN VARCHAR2)
IS
BEGIN
    DELETE T_MUSTERI where TELEFON_NO = p_tel_no;
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure PERSONELEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."PERSONELEKLE" (p_isim IN VARCHAR2,p_soyisim IN VARCHAR2,p_telefon_no IN VARCHAR2,
                            p_adres IN VARCHAR2,p_gorev_no IN NUMBER,p_maas IN NUMBER,p_parola IN VARCHAR2,p_kullanici_adi IN VARCHAR2,p_TC IN VARCHAR2)
IS
BEGIN
    INSERT INTO T_PERSONEL(NO,ISIM,SOYISIM,TELEFON_NO,ISE_GIRIS_TARIHI,ADRES,GOREV_NO,MAAS,PAROLA,KULLANICI_ADI,TC_NO) VALUES
        (seq_personel_tablo.nextval,p_isim,p_soyisim,p_telefon_no,sysdate,p_adres,p_gorev_no,p_maas,p_parola,p_kullanici_adi,p_TC);
        commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure PERSONELGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."PERSONELGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_TC_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_PERSONEL WHERE TC_NO = p_TC_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure PERSONELGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."PERSONELGUNCELLE" (p_tc_no IN NUMBER,p_telefon_no IN VARCHAR2,p_adres IN VARCHAR2,p_maas IN NUMBER,p_gorev_no IN NUMBER,p_parola IN VARCHAR2)
IS
BEGIN
    UPDATE T_PERSONEL SET TELEFON_NO = p_telefon_no,ADRES = p_adres,MAAS = p_maas , GOREV_NO = p_gorev_no,PAROLA = p_parola WHERE TC_NO = p_tc_no; 
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure PERSONELLERIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."PERSONELLERIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * FROM T_PERSONEL ORDER BY ISE_GIRIS_TARIHI ASC;
END;


/
--------------------------------------------------------
--  DDL for Procedure PERSONELSIL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."PERSONELSIL" (p_tc_no IN VARCHAR2)
IS
BEGIN
    DELETE T_PERSONEL where TC_NO = p_tc_no;
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure SATISEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."SATISEKLE" (p_personel_no IN  NUMBER,p_musteri_no IN NUMBER,p_odeme_turu IN VARCHAR2)
IS
BEGIN
    INSERT INTO T_SATIS(NO,TARIH,PERSONEL_NO,MUSTERI_NO,ODEME_TURU) VALUES(SEQ_SATIS_TABLO.NEXTVAL,sysdate,p_personel_no,p_musteri_no,p_odeme_turu);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure SATISGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."SATISGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_TC_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT s.NO,s.TARIH,s.ODEME_TURU ,p.ISIM as personel,m.ISIM as musteri ,((select sum(t.SATIS_FIYAT) from T_FIS f ,T_URUN t where f.SATIS_NO = 1 AND f.URUN_NO = t.NO)) as toplam_fiyat from 
                                T_SATIS s INNER JOIN T_PERSONEL p ON s.PERSONEL_NO = p.NO
                                INNER JOIN T_MUSTERI m ON m.NO = s.MUSTERI_NO;                                     
END;


/
--------------------------------------------------------
--  DDL for Procedure SATISLARIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."SATISLARIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_SATIS;
END;


/
--------------------------------------------------------
--  DDL for Procedure STOKEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."STOKEKLE" (p_urun_no IN NUMBER,p_urun_miktar IN NUMBER)
IS
BEGIN
    INSERT INTO T_STOK(URUN_NO,URUN_MIKTAR) VALUES(p_urun_no,p_urun_miktar);
    commit;
END;




/
--------------------------------------------------------
--  DDL for Procedure STOKGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."STOKGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_urun_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_STOK WHERE URUN_NO = p_urun_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure STOKGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."STOKGUNCELLE" (p_urun_no IN NUMBER,p_urun_miktar IN NUMBER)
IS
BEGIN
    UPDATE T_STOK 
    SET URUN_MIKTAR = p_urun_miktar
    WHERE URUN_NO = p_urun_no; 
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure STOKLARIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."STOKLARIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_STOK;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNEKLE" (p_barkod IN VARCHAR2,p_isim IN VARCHAR2,p_grup_no IN NUMBER,p_alis_fiyat IN NUMBER,p_satis_fiyat IN NUMBER,p_kdv IN NUMBER)
IS
BEGIN
    INSERT INTO T_URUN(NO,ISIM,GRUP_NO,ALIS_FIYAT,SATIS_FIYAT,KDV) VALUES(p_barkod,p_isim,p_grup_no,p_alis_fiyat,p_satis_fiyat,p_kdv);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_no IN NUMBER)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_URUN WHERE NO = p_no;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGRUBUGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGRUBUGETIR" (
       c_dbuser OUT SYS_REFCURSOR,p_grup_isim IN VARCHAR2)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_URUN_GRUP WHERE ISIM = p_grup_isim;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGRUPEKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGRUPEKLE" (p_isim IN VARCHAR2)
IS
BEGIN
    INSERT INTO T_URUN_GRUP(NO,ISIM) VALUES(seq_urun_grup_tablo.nextval,p_isim);
    commit;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGRUPGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGRUPGUNCELLE" (p_no IN NUMBER,p_isim IN VARCHAR2)
IS
BEGIN
    UPDATE T_URUN_GRUP SET ISIM = p_isim WHERE NO = p_no; 
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGRUPLARIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGRUPLARIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR SELECT * from T_URUN_GRUP;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGRUPSIL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGRUPSIL" (p_no IN NUMBER)
IS
BEGIN
    DELETE T_URUN_GRUP where NO = p_no;
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNGUNCELLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNGUNCELLE" (p_no IN NUMBER,p_isim IN VARCHAR2,p_grup_no IN NUMBER,p_alis_fiyat IN NUMBER,p_satis_fiyat IN NUMBER,p_kdv IN NUMBER)
IS
BEGIN
    UPDATE T_URUN 
    SET ISIM = p_isim,
        GRUP_NO = p_grup_no,
        ALIS_FIYAT = p_alis_fiyat,
        SATIS_FIYAT = p_satis_fiyat,
        KDV = p_kdv
    
    WHERE NO = p_no; 
    COMMIT;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNLERIGETIR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNLERIGETIR" (
       c_dbuser OUT SYS_REFCURSOR)
IS
BEGIN
 
  OPEN c_dbuser FOR select * from T_URUN order by SATIS_FIYAT desc;
END;


/
--------------------------------------------------------
--  DDL for Procedure URUNSIL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FURKAN"."URUNSIL" (p_no IN NUMBER)
IS
BEGIN
    DELETE T_URUN where NO = p_no;
    COMMIT;
END;


/
--------------------------------------------------------
--  Constraints for Table T_URUN_GRUP
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_URUN_GRUP" ADD CONSTRAINT "T_URUN_GRUP_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FURKAN"."T_URUN_GRUP" MODIFY ("ISIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_PERSONEL
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_PERSONEL" MODIFY ("PAROLA" NOT NULL ENABLE);
  ALTER TABLE "FURKAN"."T_PERSONEL" MODIFY ("KULLANICI_ADI" NOT NULL ENABLE);
  ALTER TABLE "FURKAN"."T_PERSONEL" ADD CONSTRAINT "T_PERSONEL_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FURKAN"."T_PERSONEL" MODIFY ("MAAS" NOT NULL ENABLE);
  ALTER TABLE "FURKAN"."T_PERSONEL" MODIFY ("GOREV_NO" NOT NULL ENABLE);
  ALTER TABLE "FURKAN"."T_PERSONEL" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_GOREV
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_GOREV" ADD CONSTRAINT "T_GOREV_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_MUSTERI
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_MUSTERI" ADD CONSTRAINT "MUSTERI_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table T_URUN
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_URUN" ADD CONSTRAINT "T_URUN_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FURKAN"."T_URUN" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_SATIS
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_SATIS" ADD CONSTRAINT "T_SATIS_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FURKAN"."T_SATIS" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "FURKAN"."T_SATIS" MODIFY ("ODEME_TURU" NOT NULL ENABLE);
  ALTER TABLE "FURKAN"."T_SATIS" MODIFY ("TARIH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table T_KAMPANYA
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_KAMPANYA" ADD CONSTRAINT "T_KAMPANYA_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FURKAN"."T_KAMPANYA" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table T_PERSONEL
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_PERSONEL" ADD CONSTRAINT "T_PERSONEL_FK_GOREV" FOREIGN KEY ("NO")
	  REFERENCES "FURKAN"."T_GOREV" ("NO") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table T_STOK
--------------------------------------------------------

  ALTER TABLE "FURKAN"."T_STOK" ADD CONSTRAINT "T_STOK_FK_URUN" FOREIGN KEY ("URUN_NO")
	  REFERENCES "FURKAN"."T_URUN" ("NO") ON DELETE SET NULL ENABLE;
