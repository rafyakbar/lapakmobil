/*
Navicat PGSQL Data Transfer

Source Server         : Rafy
Source Server Version : 90601
Source Host           : localhost:5432
Source Database       : labil
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90601
File Encoding         : 65001

Date: 2017-06-06 06:09:46
*/


-- ----------------------------
-- Sequence structure for admin_id_admin_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."admin_id_admin_seq";
CREATE SEQUENCE "public"."admin_id_admin_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."admin_id_admin_seq"', 1, true);

-- ----------------------------
-- Sequence structure for gambar_mobil_id_gambar_mobil_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gambar_mobil_id_gambar_mobil_seq";
CREATE SEQUENCE "public"."gambar_mobil_id_gambar_mobil_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 295
 CACHE 1;
SELECT setval('"public"."gambar_mobil_id_gambar_mobil_seq"', 295, true);

-- ----------------------------
-- Sequence structure for jenis_id_jenis_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jenis_id_jenis_seq";
CREATE SEQUENCE "public"."jenis_id_jenis_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."jenis_id_jenis_seq"', 7, true);

-- ----------------------------
-- Sequence structure for kota_id_kota_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."kota_id_kota_seq";
CREATE SEQUENCE "public"."kota_id_kota_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for merek_id_merek_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."merek_id_merek_seq";
CREATE SEQUENCE "public"."merek_id_merek_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 81
 CACHE 1;
SELECT setval('"public"."merek_id_merek_seq"', 81, true);

-- ----------------------------
-- Sequence structure for mobil_id_mobil_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mobil_id_mobil_seq";
CREATE SEQUENCE "public"."mobil_id_mobil_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 61
 CACHE 1;
SELECT setval('"public"."mobil_id_mobil_seq"', 61, true);

-- ----------------------------
-- Sequence structure for provinsi_id_provinsi_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."provinsi_id_provinsi_seq";
CREATE SEQUENCE "public"."provinsi_id_provinsi_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 135
 CACHE 1;
SELECT setval('"public"."provinsi_id_provinsi_seq"', 135, true);

-- ----------------------------
-- Sequence structure for tipe_id_tipe_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipe_id_tipe_seq";
CREATE SEQUENCE "public"."tipe_id_tipe_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 625
 CACHE 1;
SELECT setval('"public"."tipe_id_tipe_seq"', 625, true);

-- ----------------------------
-- Sequence structure for user_id_user_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_id_user_seq";
CREATE SEQUENCE "public"."user_id_user_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 17
 CACHE 1;
SELECT setval('"public"."user_id_user_seq"', 17, true);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin";
CREATE TABLE "public"."admin" (
"id_admin" int4 DEFAULT nextval('admin_id_admin_seq'::regclass) NOT NULL,
"username_admin" varchar(50) COLLATE "default",
"email_admin" text COLLATE "default",
"password_admin" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO "public"."admin" VALUES ('1', 'ainsworth', 'rafyakbar@mhs.unesa.ac.id', '5f4dcc3b5aa765d61d8327deb882cf99');

-- ----------------------------
-- Table structure for favorit
-- ----------------------------
DROP TABLE IF EXISTS "public"."favorit";
CREATE TABLE "public"."favorit" (
"id_user" int8,
"id_mobil" int8,
"tanggal_favorit" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of favorit
-- ----------------------------
INSERT INTO "public"."favorit" VALUES ('1', '35', '2017-05-26 04:03:28.696145');
INSERT INTO "public"."favorit" VALUES ('17', '61', '2017-06-06 06:00:02.733221');

-- ----------------------------
-- Table structure for gambar_mobil
-- ----------------------------
DROP TABLE IF EXISTS "public"."gambar_mobil";
CREATE TABLE "public"."gambar_mobil" (
"id_gambar_mobil" int8 DEFAULT nextval('gambar_mobil_id_gambar_mobil_seq'::regclass) NOT NULL,
"url_gambar_mobil" text COLLATE "default",
"id_mobil" int8
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of gambar_mobil
-- ----------------------------
INSERT INTO "public"."gambar_mobil" VALUES ('140', '1_35_0_2017-05-23_12-17-00.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('141', '1_35_1_2017-05-23_12-17-00.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('142', '1_35_2_2017-05-23_12-17-00.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('143', '1_35_3_2017-05-23_12-17-00.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('144', '1_35_4_2017-05-23_12-17-00.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('145', '1_35_5_2017-05-23_12-17-00.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('146', '1_35_6_2017-05-23_12-17-01.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('147', '1_35_7_2017-05-23_12-17-01.jpg', '35');
INSERT INTO "public"."gambar_mobil" VALUES ('209', '1_50_0_2017-05-26_22-19-10.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('210', '1_50_1_2017-05-26_22-19-11.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('211', '1_50_2_2017-05-26_22-19-11.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('212', '1_50_3_2017-05-26_22-19-11.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('213', '1_50_4_2017-05-26_22-19-11.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('214', '1_50_5_2017-05-26_22-19-11.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('215', '1_50_6_2017-05-26_22-19-11.jpg', '50');
INSERT INTO "public"."gambar_mobil" VALUES ('228', '1_54_0_2017-05-27_16-19-55.jpg', '54');
INSERT INTO "public"."gambar_mobil" VALUES ('229', '1_54_1_2017-05-27_16-19-55.jpg', '54');
INSERT INTO "public"."gambar_mobil" VALUES ('230', '1_54_2_2017-05-27_16-19-55.jpg', '54');
INSERT INTO "public"."gambar_mobil" VALUES ('231', '1_54_3_2017-05-27_16-19-55.jpg', '54');
INSERT INTO "public"."gambar_mobil" VALUES ('232', '1_55_0_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('233', '1_55_1_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('234', '1_55_2_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('235', '1_55_3_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('236', '1_55_4_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('237', '1_55_5_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('238', '1_55_6_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('239', '1_55_7_2017-05-27_16-35-20.jpg', '55');
INSERT INTO "public"."gambar_mobil" VALUES ('288', '1_61_0_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('289', '1_61_1_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('290', '1_61_2_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('291', '1_61_3_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('292', '1_61_4_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('293', '1_61_5_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('294', '1_61_6_2017-06-02_03-20-19.jpg', '61');
INSERT INTO "public"."gambar_mobil" VALUES ('295', '1_61_7_2017-06-02_03-20-19.jpg', '61');

-- ----------------------------
-- Table structure for jenis
-- ----------------------------
DROP TABLE IF EXISTS "public"."jenis";
CREATE TABLE "public"."jenis" (
"id_jenis" int4 DEFAULT nextval('jenis_id_jenis_seq'::regclass) NOT NULL,
"nama_jenis" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of jenis
-- ----------------------------
INSERT INTO "public"."jenis" VALUES ('1', 'SUV');
INSERT INTO "public"."jenis" VALUES ('2', 'HATCHBACK');
INSERT INTO "public"."jenis" VALUES ('3', 'SEDAN');
INSERT INTO "public"."jenis" VALUES ('4', 'SPORT');
INSERT INTO "public"."jenis" VALUES ('5', 'COUPE');
INSERT INTO "public"."jenis" VALUES ('6', 'MINI VAN');

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS "public"."komentar";
CREATE TABLE "public"."komentar" (
"id_user" int8,
"id_mobil" int8,
"isi_komentar" text COLLATE "default",
"tanggal_komentar" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of komentar
-- ----------------------------
INSERT INTO "public"."komentar" VALUES ('1', '59', 'bagussssss', '2017-05-29 10:08:18.045055');
INSERT INTO "public"."komentar" VALUES ('1', '59', 'harga pasnya berapa??', '2017-05-29 14:14:05.119446');

-- ----------------------------
-- Table structure for kota
-- ----------------------------
DROP TABLE IF EXISTS "public"."kota";
CREATE TABLE "public"."kota" (
"id_kota" int4 DEFAULT nextval('kota_id_kota_seq'::regclass) NOT NULL,
"id_provinsi" int4,
"nama_kota" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO "public"."kota" VALUES ('2', '1', 'ACEH SELATAN');
INSERT INTO "public"."kota" VALUES ('269', '1', 'ACEH TENGGARA');
INSERT INTO "public"."kota" VALUES ('671', '1', 'ACEH TIMUR');
INSERT INTO "public"."kota" VALUES ('1207', '1', 'ACEH TENGAH');
INSERT INTO "public"."kota" VALUES ('1492', '1', 'ACEH BARAT');
INSERT INTO "public"."kota" VALUES ('1824', '1', 'ACEH BESAR');
INSERT INTO "public"."kota" VALUES ('2452', '1', 'PIDIE');
INSERT INTO "public"."kota" VALUES ('3205', '1', 'ACEH UTARA');
INSERT INTO "public"."kota" VALUES ('4086', '1', 'SIMEULUE');
INSERT INTO "public"."kota" VALUES ('4233', '1', 'ACEH SINGKIL');
INSERT INTO "public"."kota" VALUES ('4362', '1', 'BIREUEN');
INSERT INTO "public"."kota" VALUES ('4989', '1', 'ACEH BARAT DAYA');
INSERT INTO "public"."kota" VALUES ('5138', '1', 'GAYO LUES');
INSERT INTO "public"."kota" VALUES ('5286', '1', 'ACEH JAYA');
INSERT INTO "public"."kota" VALUES ('5463', '1', 'NAGAN RAYA');
INSERT INTO "public"."kota" VALUES ('5694', '1', 'ACEH TAMIANG');
INSERT INTO "public"."kota" VALUES ('5920', '1', 'BENER MERIAH');
INSERT INTO "public"."kota" VALUES ('6166', '1', 'PIDIE JAYA');
INSERT INTO "public"."kota" VALUES ('6397', '1', 'KOTA BANDA ACEH');
INSERT INTO "public"."kota" VALUES ('6497', '1', 'KOTA SABANG');
INSERT INTO "public"."kota" VALUES ('6518', '1', 'KOTA LHOKSEUMAWE');
INSERT INTO "public"."kota" VALUES ('6591', '1', 'KOTA LANGSA');
INSERT INTO "public"."kota" VALUES ('6648', '1', 'KOTA SUBULUSSALAM');
INSERT INTO "public"."kota" VALUES ('6729', '6728', 'LABUHANBATU SELATAN');
INSERT INTO "public"."kota" VALUES ('6789', '6728', 'LABUHANBATU UTARA');
INSERT INTO "public"."kota" VALUES ('6888', '6728', 'NIAS UTARA');
INSERT INTO "public"."kota" VALUES ('7013', '6728', 'NIAS BARAT');
INSERT INTO "public"."kota" VALUES ('7132', '6728', 'KOTA GUNUNGSITOLI');
INSERT INTO "public"."kota" VALUES ('7240', '6728', 'TAPANULI TENGAH');
INSERT INTO "public"."kota" VALUES ('7438', '6728', 'TAPANULI UTARA');
INSERT INTO "public"."kota" VALUES ('7697', '6728', 'TAPANULI SELATAN');
INSERT INTO "public"."kota" VALUES ('7960', '6728', 'NIAS');
INSERT INTO "public"."kota" VALUES ('8094', '6728', 'LANGKAT');
INSERT INTO "public"."kota" VALUES ('8408', '6728', 'KARO');
INSERT INTO "public"."kota" VALUES ('8688', '6728', 'DELI SERDANG');
INSERT INTO "public"."kota" VALUES ('9114', '6728', 'SIMALUNGUN');
INSERT INTO "public"."kota" VALUES ('9497', '6728', 'ASAHAN');
INSERT INTO "public"."kota" VALUES ('9727', '6728', 'LABUHANBATU');
INSERT INTO "public"."kota" VALUES ('9835', '6728', 'DAIRI');
INSERT INTO "public"."kota" VALUES ('10020', '6728', 'TOBA SAMOSIR');
INSERT INTO "public"."kota" VALUES ('10227', '6728', 'MANDAILING NATAL');
INSERT INTO "public"."kota" VALUES ('10646', '6728', 'NIAS SELATAN');
INSERT INTO "public"."kota" VALUES ('11022', '6728', 'PAKPAK BHARAT');
INSERT INTO "public"."kota" VALUES ('11083', '6728', 'HUMBANG HASUNDUTAN');
INSERT INTO "public"."kota" VALUES ('11247', '6728', 'SAMOSIR');
INSERT INTO "public"."kota" VALUES ('11374', '6728', 'SERDANG BEDAGAI');
INSERT INTO "public"."kota" VALUES ('11635', '6728', 'BATU BARA');
INSERT INTO "public"."kota" VALUES ('11743', '6728', 'KOTA MEDAN');
INSERT INTO "public"."kota" VALUES ('11916', '6728', 'KOTA PEMATANGSIANTAR');
INSERT INTO "public"."kota" VALUES ('11978', '6728', 'KOTA SIBOLGA');
INSERT INTO "public"."kota" VALUES ('12000', '6728', 'KOTA TANJUNG BALAI');
INSERT INTO "public"."kota" VALUES ('12038', '6728', 'KOTA BINJAI');
INSERT INTO "public"."kota" VALUES ('12081', '6728', 'KOTA TEBING TINGGI');
INSERT INTO "public"."kota" VALUES ('12122', '6728', 'KOTA PADANG SIDIMPUAN');
INSERT INTO "public"."kota" VALUES ('12208', '6728', 'PADANG LAWAS UTARA');
INSERT INTO "public"."kota" VALUES ('12606', '6728', 'PADANG LAWAS');
INSERT INTO "public"."kota" VALUES ('12921', '12920', 'PESISIR SELATAN');
INSERT INTO "public"."kota" VALUES ('13010', '12920', 'SOLOK');
INSERT INTO "public"."kota" VALUES ('13099', '12920', 'SIJUNJUNG');
INSERT INTO "public"."kota" VALUES ('13163', '12920', 'TANAH DATAR');
INSERT INTO "public"."kota" VALUES ('13253', '12920', 'PADANG PARIAMAN');
INSERT INTO "public"."kota" VALUES ('13317', '12920', 'AGAM');
INSERT INTO "public"."kota" VALUES ('13416', '12920', 'LIMA PULUH KOTA');
INSERT INTO "public"."kota" VALUES ('13509', '12920', 'PASAMAN');
INSERT INTO "public"."kota" VALUES ('13554', '12920', 'KEPULAUAN MENTAWAI');
INSERT INTO "public"."kota" VALUES ('13608', '12920', 'DHARMASRAYA');
INSERT INTO "public"."kota" VALUES ('13634', '12920', 'SOLOK SELATAN');
INSERT INTO "public"."kota" VALUES ('13681', '12920', 'PASAMAN BARAT');
INSERT INTO "public"."kota" VALUES ('13712', '12920', 'KOTA PADANG');
INSERT INTO "public"."kota" VALUES ('13828', '12920', 'KOTA SOLOK');
INSERT INTO "public"."kota" VALUES ('13844', '12920', 'KOTA SAWAHLUNTO');
INSERT INTO "public"."kota" VALUES ('13886', '12920', 'KOTA PADANG PANJANG');
INSERT INTO "public"."kota" VALUES ('13905', '12920', 'KOTA BUKITTINGGI');
INSERT INTO "public"."kota" VALUES ('13933', '12920', 'KOTA PAYAKUMBUH');
INSERT INTO "public"."kota" VALUES ('14010', '12920', 'KOTA PARIAMAN');
INSERT INTO "public"."kota" VALUES ('14087', '14086', 'KEPULAUAN MERANTI');
INSERT INTO "public"."kota" VALUES ('14166', '14086', 'KAMPAR');
INSERT INTO "public"."kota" VALUES ('14414', '14086', 'INDRAGIRI HULU');
INSERT INTO "public"."kota" VALUES ('14630', '14086', 'BENGKALIS');
INSERT INTO "public"."kota" VALUES ('14741', '14086', 'INDRAGIRI HILIR');
INSERT INTO "public"."kota" VALUES ('14955', '14086', 'PELALAWAN');
INSERT INTO "public"."kota" VALUES ('15087', '14086', 'ROKAN HULU');
INSERT INTO "public"."kota" VALUES ('15254', '14086', 'ROKAN HILIR');
INSERT INTO "public"."kota" VALUES ('15412', '14086', 'SIAK');
INSERT INTO "public"."kota" VALUES ('15553', '14086', 'KUANTAN SINGINGI');
INSERT INTO "public"."kota" VALUES ('15775', '14086', 'KOTA PEKANBARU');
INSERT INTO "public"."kota" VALUES ('15846', '14086', 'KOTA DUMAI');
INSERT INTO "public"."kota" VALUES ('15886', '15885', 'KOTA SUNGAI PENUH');
INSERT INTO "public"."kota" VALUES ('15961', '15885', 'KERINCI');
INSERT INTO "public"."kota" VALUES ('16183', '15885', 'MERANGIN');
INSERT INTO "public"."kota" VALUES ('16420', '15885', 'SAROLANGUN');
INSERT INTO "public"."kota" VALUES ('16576', '15885', 'BATANGHARI');
INSERT INTO "public"."kota" VALUES ('16699', '15885', 'MUARO JAMBI');
INSERT INTO "public"."kota" VALUES ('16862', '15885', 'TANJUNG JABUNG BARAT');
INSERT INTO "public"."kota" VALUES ('16946', '15885', 'TANJUNG JABUNG TIMUR');
INSERT INTO "public"."kota" VALUES ('17051', '15885', 'BUNGO');
INSERT INTO "public"."kota" VALUES ('17215', '15885', 'TEBO');
INSERT INTO "public"."kota" VALUES ('17333', '15885', 'KOTA JAMBI');
INSERT INTO "public"."kota" VALUES ('17405', '17404', 'OGAN KOMERING ULU');
INSERT INTO "public"."kota" VALUES ('17570', '17404', 'OGAN KOMERING ILIR');
INSERT INTO "public"."kota" VALUES ('17895', '17404', 'MUARA ENIM');
INSERT INTO "public"."kota" VALUES ('18244', '17404', 'LAHAT');
INSERT INTO "public"."kota" VALUES ('18643', '17404', 'MUSI RAWAS');
INSERT INTO "public"."kota" VALUES ('18942', '17404', 'MUSI BANYUASIN');
INSERT INTO "public"."kota" VALUES ('19172', '17404', 'BANYUASIN');
INSERT INTO "public"."kota" VALUES ('19492', '17404', 'OGAN KOMERING ULU TIMUR');
INSERT INTO "public"."kota" VALUES ('19808', '17404', 'OGAN KOMERING ULU SELATAN');
INSERT INTO "public"."kota" VALUES ('20087', '17404', 'OGAN ILIR');
INSERT INTO "public"."kota" VALUES ('20345', '17404', 'EMPAT LAWANG');
INSERT INTO "public"."kota" VALUES ('20512', '17404', 'KOTA PALEMBANG');
INSERT INTO "public"."kota" VALUES ('20636', '17404', 'KOTA PAGAR ALAM');
INSERT INTO "public"."kota" VALUES ('20677', '17404', 'KOTA LUBUKLINGGAU');
INSERT INTO "public"."kota" VALUES ('20758', '17404', 'KOTA PRABUMULIH');
INSERT INTO "public"."kota" VALUES ('20803', '20802', 'BENGKULU TENGAH');
INSERT INTO "public"."kota" VALUES ('20923', '20802', 'BENGKULU SELATAN');
INSERT INTO "public"."kota" VALUES ('21093', '20802', 'REJANG LEBONG');
INSERT INTO "public"."kota" VALUES ('21265', '20802', 'BENGKULU UTARA');
INSERT INTO "public"."kota" VALUES ('21492', '20802', 'KAUR');
INSERT INTO "public"."kota" VALUES ('21702', '20802', 'SELUMA');
INSERT INTO "public"."kota" VALUES ('21885', '20802', 'MUKOMUKO');
INSERT INTO "public"."kota" VALUES ('22052', '20802', 'LEBONG');
INSERT INTO "public"."kota" VALUES ('22135', '20802', 'KEPAHIANG');
INSERT INTO "public"."kota" VALUES ('22252', '20802', 'KOTA BENGKULU');
INSERT INTO "public"."kota" VALUES ('22329', '22328', 'PRINGSEWU');
INSERT INTO "public"."kota" VALUES ('22439', '22328', 'MESUJI');
INSERT INTO "public"."kota" VALUES ('22522', '22328', 'TULANG BAWANG BARAT');
INSERT INTO "public"."kota" VALUES ('22605', '22328', 'LAMPUNG SELATAN');
INSERT INTO "public"."kota" VALUES ('22875', '22328', 'LAMPUNG TENGAH');
INSERT INTO "public"."kota" VALUES ('23189', '22328', 'LAMPUNG UTARA');
INSERT INTO "public"."kota" VALUES ('23460', '22328', 'LAMPUNG BARAT');
INSERT INTO "public"."kota" VALUES ('23737', '22328', 'TULANG BAWANG');
INSERT INTO "public"."kota" VALUES ('23903', '22328', 'TANGGAMUS');
INSERT INTO "public"."kota" VALUES ('24202', '22328', 'LAMPUNG TIMUR');
INSERT INTO "public"."kota" VALUES ('24484', '22328', 'WAY KANAN');
INSERT INTO "public"."kota" VALUES ('24709', '22328', 'KOTA BANDAR LAMPUNG');
INSERT INTO "public"."kota" VALUES ('24822', '22328', 'KOTA METRO');
INSERT INTO "public"."kota" VALUES ('24850', '22328', 'PESAWARAN');
INSERT INTO "public"."kota" VALUES ('24994', '24993', 'BANGKA');
INSERT INTO "public"."kota" VALUES ('25072', '24993', 'BELITUNG');
INSERT INTO "public"."kota" VALUES ('25120', '24993', 'BANGKA SELATAN');
INSERT INTO "public"."kota" VALUES ('25181', '24993', 'BANGKA TENGAH');
INSERT INTO "public"."kota" VALUES ('25245', '24993', 'BANGKA BARAT');
INSERT INTO "public"."kota" VALUES ('25316', '24993', 'BELITUNG TIMUR');
INSERT INTO "public"."kota" VALUES ('25363', '24993', 'KOTA PANGKALPINANG');
INSERT INTO "public"."kota" VALUES ('25406', '25405', 'KOTA TANJUNGPINANG');
INSERT INTO "public"."kota" VALUES ('25429', '25405', 'KEPULAUAN ANAMBAS');
INSERT INTO "public"."kota" VALUES ('25471', '25405', 'BINTAN');
INSERT INTO "public"."kota" VALUES ('25533', '25405', 'KARIMUN');
INSERT INTO "public"."kota" VALUES ('25597', '25405', 'NATUNA');
INSERT INTO "public"."kota" VALUES ('25683', '25405', 'LINGGA');
INSERT INTO "public"."kota" VALUES ('25746', '25405', 'KOTA BATAM');
INSERT INTO "public"."kota" VALUES ('25824', '25823', 'KEPULAUAN SERIBU');
INSERT INTO "public"."kota" VALUES ('25833', '25823', 'JAKARTA PUSAT');
INSERT INTO "public"."kota" VALUES ('25886', '25823', 'JAKARTA UTARA');
INSERT INTO "public"."kota" VALUES ('25924', '25823', 'JAKARTA BARAT');
INSERT INTO "public"."kota" VALUES ('25989', '25823', 'JAKARTA SELATAN');
INSERT INTO "public"."kota" VALUES ('26065', '25823', 'JAKARTA TIMUR');
INSERT INTO "public"."kota" VALUES ('26142', '26141', 'BOGOR');
INSERT INTO "public"."kota" VALUES ('26611', '26141', 'SUKABUMI');
INSERT INTO "public"."kota" VALUES ('27026', '26141', 'CIANJUR');
INSERT INTO "public"."kota" VALUES ('27407', '26141', 'BANDUNG');
INSERT INTO "public"."kota" VALUES ('27714', '26141', 'GARUT');
INSERT INTO "public"."kota" VALUES ('28182', '26141', 'TASIKMALAYA');
INSERT INTO "public"."kota" VALUES ('28573', '26141', 'CIAMIS');
INSERT INTO "public"."kota" VALUES ('28960', '26141', 'KUNINGAN');
INSERT INTO "public"."kota" VALUES ('29369', '26141', 'CIREBON');
INSERT INTO "public"."kota" VALUES ('29834', '26141', 'MAJALENGKA');
INSERT INTO "public"."kota" VALUES ('30197', '26141', 'SUMEDANG');
INSERT INTO "public"."kota" VALUES ('30503', '26141', 'INDRAMAYU');
INSERT INTO "public"."kota" VALUES ('30851', '26141', 'SUBANG');
INSERT INTO "public"."kota" VALUES ('31135', '26141', 'PURWAKARTA');
INSERT INTO "public"."kota" VALUES ('31345', '26141', 'KARAWANG');
INSERT INTO "public"."kota" VALUES ('31685', '26141', 'BEKASI');
INSERT INTO "public"."kota" VALUES ('31896', '26141', 'BANDUNG BARAT');
INSERT INTO "public"."kota" VALUES ('32077', '26141', 'KOTA BOGOR');
INSERT INTO "public"."kota" VALUES ('32152', '26141', 'KOTA SUKABUMI');
INSERT INTO "public"."kota" VALUES ('32193', '26141', 'KOTA BANDUNG');
INSERT INTO "public"."kota" VALUES ('32375', '26141', 'KOTA CIREBON');
INSERT INTO "public"."kota" VALUES ('32403', '26141', 'KOTA BEKASI');
INSERT INTO "public"."kota" VALUES ('32472', '26141', 'KOTA DEPOK');
INSERT INTO "public"."kota" VALUES ('32547', '26141', 'KOTA CIMAHI');
INSERT INTO "public"."kota" VALUES ('32566', '26141', 'KOTA TASIKMALAYA');
INSERT INTO "public"."kota" VALUES ('32646', '26141', 'KOTA BANJAR');
INSERT INTO "public"."kota" VALUES ('32677', '32676', 'CILACAP');
INSERT INTO "public"."kota" VALUES ('32986', '32676', 'BANYUMAS');
INSERT INTO "public"."kota" VALUES ('33345', '32676', 'PURBALINGGA');
INSERT INTO "public"."kota" VALUES ('33603', '32676', 'BANJARNEGARA');
INSERT INTO "public"."kota" VALUES ('33902', '32676', 'KEBUMEN');
INSERT INTO "public"."kota" VALUES ('34389', '32676', 'PURWOREJO');
INSERT INTO "public"."kota" VALUES ('34900', '32676', 'WONOSOBO');
INSERT INTO "public"."kota" VALUES ('35181', '32676', 'MAGELANG');
INSERT INTO "public"."kota" VALUES ('35575', '32676', 'BOYOLALI');
INSERT INTO "public"."kota" VALUES ('35862', '32676', 'KLATEN');
INSERT INTO "public"."kota" VALUES ('36290', '32676', 'SUKOHARJO');
INSERT INTO "public"."kota" VALUES ('36470', '32676', 'WONOGIRI');
INSERT INTO "public"."kota" VALUES ('36790', '32676', 'KARANGANYAR');
INSERT INTO "public"."kota" VALUES ('36985', '32676', 'SRAGEN');
INSERT INTO "public"."kota" VALUES ('37214', '32676', 'GROBOGAN');
INSERT INTO "public"."kota" VALUES ('37514', '32676', 'BLORA');
INSERT INTO "public"."kota" VALUES ('37826', '32676', 'REMBANG');
INSERT INTO "public"."kota" VALUES ('38136', '32676', 'PATI');
INSERT INTO "public"."kota" VALUES ('38564', '32676', 'KUDUS');
INSERT INTO "public"."kota" VALUES ('38706', '32676', 'JEPARA');
INSERT INTO "public"."kota" VALUES ('38917', '32676', 'DEMAK');
INSERT INTO "public"."kota" VALUES ('39181', '32676', 'SEMARANG');
INSERT INTO "public"."kota" VALUES ('39436', '32676', 'TEMANGGUNG');
INSERT INTO "public"."kota" VALUES ('39746', '32676', 'KENDAL');
INSERT INTO "public"."kota" VALUES ('40053', '32676', 'BATANG');
INSERT INTO "public"."kota" VALUES ('40317', '32676', 'PEKALONGAN');
INSERT INTO "public"."kota" VALUES ('40622', '32676', 'PEMALANG');
INSERT INTO "public"."kota" VALUES ('40859', '32676', 'TEGAL');
INSERT INTO "public"."kota" VALUES ('41165', '32676', 'BREBES');
INSERT INTO "public"."kota" VALUES ('41480', '32676', 'KOTA MAGELANG');
INSERT INTO "public"."kota" VALUES ('41501', '32676', 'KOTA SURAKARTA');
INSERT INTO "public"."kota" VALUES ('41558', '32676', 'KOTA SALATIGA');
INSERT INTO "public"."kota" VALUES ('41585', '32676', 'KOTA SEMARANG');
INSERT INTO "public"."kota" VALUES ('41779', '32676', 'KOTA PEKALONGAN');
INSERT INTO "public"."kota" VALUES ('41831', '32676', 'KOTA TEGAL');
INSERT INTO "public"."kota" VALUES ('41864', '41863', 'KULON PROGO');
INSERT INTO "public"."kota" VALUES ('41965', '41863', 'BANTUL');
INSERT INTO "public"."kota" VALUES ('42058', '41863', 'GUNUNGKIDUL');
INSERT INTO "public"."kota" VALUES ('42221', '41863', 'SLEMAN');
INSERT INTO "public"."kota" VALUES ('42325', '41863', 'KOTA YOGYAKARTA');
INSERT INTO "public"."kota" VALUES ('42386', '42385', 'PACITAN');
INSERT INTO "public"."kota" VALUES ('42570', '42385', 'PONOROGO');
INSERT INTO "public"."kota" VALUES ('42897', '42385', 'TRENGGALEK');
INSERT INTO "public"."kota" VALUES ('43069', '42385', 'TULUNGAGUNG');
INSERT INTO "public"."kota" VALUES ('43360', '42385', 'BLITAR');
INSERT INTO "public"."kota" VALUES ('43630', '42385', 'KEDIRI');
INSERT INTO "public"."kota" VALUES ('43993', '42385', 'MALANG');
INSERT INTO "public"."kota" VALUES ('44417', '42385', 'LUMAJANG');
INSERT INTO "public"."kota" VALUES ('44643', '42385', 'JEMBER');
INSERT INTO "public"."kota" VALUES ('44923', '42385', 'BANYUWANGI');
INSERT INTO "public"."kota" VALUES ('45165', '42385', 'BONDOWOSO');
INSERT INTO "public"."kota" VALUES ('45407', '42385', 'SITUBONDO');
INSERT INTO "public"."kota" VALUES ('45561', '42385', 'PROBOLINGGO');
INSERT INTO "public"."kota" VALUES ('45916', '42385', 'PASURUAN');
INSERT INTO "public"."kota" VALUES ('46306', '42385', 'SIDOARJO');
INSERT INTO "public"."kota" VALUES ('46678', '42385', 'MOJOKERTO');
INSERT INTO "public"."kota" VALUES ('47001', '42385', 'JOMBANG');
INSERT INTO "public"."kota" VALUES ('47329', '42385', 'NGANJUK');
INSERT INTO "public"."kota" VALUES ('47634', '42385', 'MADIUN');
INSERT INTO "public"."kota" VALUES ('47856', '42385', 'MAGETAN');
INSERT INTO "public"."kota" VALUES ('48110', '42385', 'NGAWI');
INSERT INTO "public"."kota" VALUES ('48347', '42385', 'BOJONEGORO');
INSERT INTO "public"."kota" VALUES ('48805', '42385', 'TUBAN');
INSERT INTO "public"."kota" VALUES ('49154', '42385', 'LAMONGAN');
INSERT INTO "public"."kota" VALUES ('49656', '42385', 'GRESIK');
INSERT INTO "public"."kota" VALUES ('50031', '42385', 'BANGKALAN');
INSERT INTO "public"."kota" VALUES ('50331', '42385', 'SAMPANG');
INSERT INTO "public"."kota" VALUES ('50532', '42385', 'PAMEKASAN');
INSERT INTO "public"."kota" VALUES ('50735', '42385', 'SUMENEP');
INSERT INTO "public"."kota" VALUES ('51095', '42385', 'KOTA KEDIRI');
INSERT INTO "public"."kota" VALUES ('51145', '42385', 'KOTA BLITAR');
INSERT INTO "public"."kota" VALUES ('51170', '42385', 'KOTA MALANG');
INSERT INTO "public"."kota" VALUES ('51233', '42385', 'KOTA PROBOLINGGO');
INSERT INTO "public"."kota" VALUES ('51268', '42385', 'KOTA PASURUAN');
INSERT INTO "public"."kota" VALUES ('51306', '42385', 'KOTA MOJOKERTO');
INSERT INTO "public"."kota" VALUES ('51327', '42385', 'KOTA MADIUN');
INSERT INTO "public"."kota" VALUES ('51358', '42385', 'KOTA SURABAYA');
INSERT INTO "public"."kota" VALUES ('51550', '42385', 'KOTA BATU');
INSERT INTO "public"."kota" VALUES ('51579', '51578', 'PANDEGLANG');
INSERT INTO "public"."kota" VALUES ('51913', '51578', 'LEBAK');
INSERT INTO "public"."kota" VALUES ('52287', '51578', 'TANGERANG');
INSERT INTO "public"."kota" VALUES ('52593', '51578', 'SERANG');
INSERT INTO "public"."kota" VALUES ('52936', '51578', 'KOTA TANGERANG');
INSERT INTO "public"."kota" VALUES ('53054', '51578', 'KOTA CILEGON');
INSERT INTO "public"."kota" VALUES ('53106', '51578', 'KOTA SERANG');
INSERT INTO "public"."kota" VALUES ('53179', '51578', 'KOTA TANGERANG SELATAN');
INSERT INTO "public"."kota" VALUES ('53242', '53241', 'JEMBRANA');
INSERT INTO "public"."kota" VALUES ('53299', '53241', 'TABANAN');
INSERT INTO "public"."kota" VALUES ('53439', '53241', 'BADUNG');
INSERT INTO "public"."kota" VALUES ('53508', '53241', 'GIANYAR');
INSERT INTO "public"."kota" VALUES ('53586', '53241', 'KLUNGKUNG');
INSERT INTO "public"."kota" VALUES ('53650', '53241', 'BANGLI');
INSERT INTO "public"."kota" VALUES ('53727', '53241', 'KARANGASEM');
INSERT INTO "public"."kota" VALUES ('53814', '53241', 'BULELENG');
INSERT INTO "public"."kota" VALUES ('53972', '53241', 'KOTA DENPASAR');
INSERT INTO "public"."kota" VALUES ('54021', '54020', 'LOMBOK BARAT');
INSERT INTO "public"."kota" VALUES ('54123', '54020', 'LOMBOK TENGAH');
INSERT INTO "public"."kota" VALUES ('54260', '54020', 'LOMBOK TIMUR');
INSERT INTO "public"."kota" VALUES ('54400', '54020', 'SUMBAWA');
INSERT INTO "public"."kota" VALUES ('54590', '54020', 'DOMPU');
INSERT INTO "public"."kota" VALUES ('54666', '54020', 'BIMA');
INSERT INTO "public"."kota" VALUES ('54853', '54020', 'SUMBAWA BARAT');
INSERT INTO "public"."kota" VALUES ('54925', '54020', 'KOTA MATARAM');
INSERT INTO "public"."kota" VALUES ('54982', '54020', 'KOTA BIMA');
INSERT INTO "public"."kota" VALUES ('55026', '54020', 'LOMBOK UTARA');
INSERT INTO "public"."kota" VALUES ('55066', '55065', 'KUPANG');
INSERT INTO "public"."kota" VALUES ('55347', '55065', 'TIMOR TENGAH SELATAN');
INSERT INTO "public"."kota" VALUES ('55620', '55065', 'TIMOR TENGAH UTARA');
INSERT INTO "public"."kota" VALUES ('55819', '55065', 'BELU');
INSERT INTO "public"."kota" VALUES ('56051', '55065', 'ALOR');
INSERT INTO "public"."kota" VALUES ('56244', '55065', 'FLORES TIMUR');
INSERT INTO "public"."kota" VALUES ('56489', '55065', 'SIKKA');
INSERT INTO "public"."kota" VALUES ('56671', '55065', 'ENDE');
INSERT INTO "public"."kota" VALUES ('56904', '55065', 'NGADA');
INSERT INTO "public"."kota" VALUES ('57008', '55065', 'MANGGARAI');
INSERT INTO "public"."kota" VALUES ('57167', '55065', 'SUMBA TIMUR');
INSERT INTO "public"."kota" VALUES ('57346', '55065', 'SUMBA BARAT');
INSERT INTO "public"."kota" VALUES ('57406', '55065', 'LEMBATA');
INSERT INTO "public"."kota" VALUES ('57560', '55065', 'ROTE NDAO');
INSERT INTO "public"."kota" VALUES ('57649', '55065', 'MANGGARAI BARAT');
INSERT INTO "public"."kota" VALUES ('57778', '55065', 'NAGEKEO');
INSERT INTO "public"."kota" VALUES ('57886', '55065', 'SUMBA TENGAH');
INSERT INTO "public"."kota" VALUES ('57935', '55065', 'SUMBA BARAT DAYA');
INSERT INTO "public"."kota" VALUES ('58040', '55065', 'KOTA KUPANG');
INSERT INTO "public"."kota" VALUES ('58098', '55065', 'MANGGARAI TIMUR');
INSERT INTO "public"."kota" VALUES ('58219', '55065', 'SABU RAIJUA');
INSERT INTO "public"."kota" VALUES ('58286', '58285', 'SAMBAS');
INSERT INTO "public"."kota" VALUES ('58490', '58285', 'PONTIANAK');
INSERT INTO "public"."kota" VALUES ('58567', '58285', 'SANGGAU');
INSERT INTO "public"."kota" VALUES ('58749', '58285', 'KETAPANG');
INSERT INTO "public"."kota" VALUES ('59018', '58285', 'SINTANG');
INSERT INTO "public"."kota" VALUES ('59320', '58285', 'KAPUAS HULU');
INSERT INTO "public"."kota" VALUES ('59557', '58285', 'BENGKAYANG');
INSERT INTO "public"."kota" VALUES ('59699', '58285', 'LANDAK');
INSERT INTO "public"."kota" VALUES ('59869', '58285', 'SEKADAU');
INSERT INTO "public"."kota" VALUES ('59953', '58285', 'MELAWI');
INSERT INTO "public"."kota" VALUES ('60134', '58285', 'KAYONG UTARA');
INSERT INTO "public"."kota" VALUES ('60183', '58285', 'KOTA PONTIANAK');
INSERT INTO "public"."kota" VALUES ('60223', '58285', 'KOTA SINGKAWANG');
INSERT INTO "public"."kota" VALUES ('60255', '58285', 'KUBU RAYA');
INSERT INTO "public"."kota" VALUES ('60372', '60371', 'KOTAWARINGIN BARAT');
INSERT INTO "public"."kota" VALUES ('60468', '60371', 'KOTAWARINGIN TIMUR');
INSERT INTO "public"."kota" VALUES ('60653', '60371', 'KAPUAS');
INSERT INTO "public"."kota" VALUES ('60867', '60371', 'BARITO SELATAN');
INSERT INTO "public"."kota" VALUES ('60967', '60371', 'BARITO UTARA');
INSERT INTO "public"."kota" VALUES ('61077', '60371', 'KATINGAN');
INSERT INTO "public"."kota" VALUES ('61251', '60371', 'SERUYAN');
INSERT INTO "public"."kota" VALUES ('61362', '60371', 'SUKAMARA');
INSERT INTO "public"."kota" VALUES ('61400', '60371', 'LAMANDAU');
INSERT INTO "public"."kota" VALUES ('61492', '60371', 'GUNUNG MAS');
INSERT INTO "public"."kota" VALUES ('61614', '60371', 'PULANG PISAU');
INSERT INTO "public"."kota" VALUES ('61711', '60371', 'MURUNG RAYA');
INSERT INTO "public"."kota" VALUES ('61846', '60371', 'BARITO TIMUR');
INSERT INTO "public"."kota" VALUES ('61929', '60371', 'KOTA PALANGKARAYA');
INSERT INTO "public"."kota" VALUES ('61966', '61965', 'TANAH LAUT');
INSERT INTO "public"."kota" VALUES ('62112', '61965', 'KOTABARU');
INSERT INTO "public"."kota" VALUES ('62333', '61965', 'BANJAR');
INSERT INTO "public"."kota" VALUES ('62643', '61965', 'BARITO KUALA');
INSERT INTO "public"."kota" VALUES ('62861', '61965', 'TAPIN');
INSERT INTO "public"."kota" VALUES ('63007', '61965', 'HULU SUNGAI SELATAN');
INSERT INTO "public"."kota" VALUES ('63167', '61965', 'HULU SUNGAI TENGAH');
INSERT INTO "public"."kota" VALUES ('63348', '61965', 'HULU SUNGAI UTARA');
INSERT INTO "public"."kota" VALUES ('63578', '61965', 'TABALONG');
INSERT INTO "public"."kota" VALUES ('63722', '61965', 'TANAH BUMBU');
INSERT INTO "public"."kota" VALUES ('63866', '61965', 'BALANGAN');
INSERT INTO "public"."kota" VALUES ('64027', '61965', 'KOTA BANJARMASIN');
INSERT INTO "public"."kota" VALUES ('64085', '61965', 'KOTA BANJARBARU');
INSERT INTO "public"."kota" VALUES ('64112', '64111', 'PASER');
INSERT INTO "public"."kota" VALUES ('64248', '64111', 'KUTAI KARTANEGARA');
INSERT INTO "public"."kota" VALUES ('64496', '64111', 'BERAU');
INSERT INTO "public"."kota" VALUES ('64617', '64111', 'BULUNGAN');
INSERT INTO "public"."kota" VALUES ('64709', '64111', 'NUNUKAN');
INSERT INTO "public"."kota" VALUES ('64949', '64111', 'MALINAU');
INSERT INTO "public"."kota" VALUES ('65069', '64111', 'KUTAI BARAT');
INSERT INTO "public"."kota" VALUES ('65315', '64111', 'KUTAI TIMUR');
INSERT INTO "public"."kota" VALUES ('65469', '64111', 'PENAJAM PASER UTARA');
INSERT INTO "public"."kota" VALUES ('65528', '64111', 'KOTA BALIKPAPAN');
INSERT INTO "public"."kota" VALUES ('65567', '64111', 'KOTA SAMARINDA');
INSERT INTO "public"."kota" VALUES ('65631', '64111', 'KOTA TARAKAN');
INSERT INTO "public"."kota" VALUES ('65656', '64111', 'KOTA BONTANG');
INSERT INTO "public"."kota" VALUES ('65675', '64111', 'TANA TIDUNG');
INSERT INTO "public"."kota" VALUES ('65703', '65702', 'BOLAANG MONGONDOW TIMUR');
INSERT INTO "public"."kota" VALUES ('65760', '65702', 'BOLAANG MONGONDOW SELATAN');
INSERT INTO "public"."kota" VALUES ('65822', '65702', 'BOLAANG MONGONDOW');
INSERT INTO "public"."kota" VALUES ('65974', '65702', 'MINAHASA');
INSERT INTO "public"."kota" VALUES ('66188', '65702', 'KEPULAUAN SANGIHE');
INSERT INTO "public"."kota" VALUES ('66371', '65702', 'KEPULAUAN TALAUD');
INSERT INTO "public"."kota" VALUES ('66544', '65702', 'MINAHASA SELATAN');
INSERT INTO "public"."kota" VALUES ('66718', '65702', 'MINAHASA UTARA');
INSERT INTO "public"."kota" VALUES ('66853', '65702', 'MINAHASA TENGGARA');
INSERT INTO "public"."kota" VALUES ('66936', '65702', 'BOLAANG MONGONDOW UTARA');
INSERT INTO "public"."kota" VALUES ('67035', '65702', 'KEP. SIAU TAGULANDANG BIARO');
INSERT INTO "public"."kota" VALUES ('67130', '65702', 'KOTA MANADO');
INSERT INTO "public"."kota" VALUES ('67227', '65702', 'KOTA BITUNG');
INSERT INTO "public"."kota" VALUES ('67305', '65702', 'KOTA TOMOHON');
INSERT INTO "public"."kota" VALUES ('67355', '65702', 'KOTA KOTAMOBAGU');
INSERT INTO "public"."kota" VALUES ('67394', '67393', 'SIGI');
INSERT INTO "public"."kota" VALUES ('67558', '67393', 'BANGGAI');
INSERT INTO "public"."kota" VALUES ('67866', '67393', 'POSO');
INSERT INTO "public"."kota" VALUES ('68041', '67393', 'DONGGALA');
INSERT INTO "public"."kota" VALUES ('68206', '67393', 'TOLITOLI');
INSERT INTO "public"."kota" VALUES ('68309', '67393', 'BUOL');
INSERT INTO "public"."kota" VALUES ('68428', '67393', 'MOROWALI');
INSERT INTO "public"."kota" VALUES ('68681', '67393', 'BANGGAI KEPULAUAN');
INSERT INTO "public"."kota" VALUES ('68887', '67393', 'PARIGI MOUTONG');
INSERT INTO "public"."kota" VALUES ('69089', '67393', 'TOJO UNA-UNA');
INSERT INTO "public"."kota" VALUES ('69220', '67393', 'KOTA PALU');
INSERT INTO "public"."kota" VALUES ('69269', '69268', 'TORAJA UTARA');
INSERT INTO "public"."kota" VALUES ('69442', '69268', 'KEPULAUAN SELAYAR');
INSERT INTO "public"."kota" VALUES ('69531', '69268', 'BULUKUMBA');
INSERT INTO "public"."kota" VALUES ('69668', '69268', 'BANTAENG');
INSERT INTO "public"."kota" VALUES ('69744', '69268', 'JENEPONTO');
INSERT INTO "public"."kota" VALUES ('69869', '69268', 'TAKALAR');
INSERT INTO "public"."kota" VALUES ('69962', '69268', 'GOWA');
INSERT INTO "public"."kota" VALUES ('70149', '69268', 'SINJAI');
INSERT INTO "public"."kota" VALUES ('70239', '69268', 'BONE');
INSERT INTO "public"."kota" VALUES ('70639', '69268', 'MAROS');
INSERT INTO "public"."kota" VALUES ('70757', '69268', 'PANGKAJENE DAN KEPULAUAN');
INSERT INTO "public"."kota" VALUES ('70873', '69268', 'BARRU');
INSERT INTO "public"."kota" VALUES ('70935', '69268', 'SOPPENG');
INSERT INTO "public"."kota" VALUES ('71014', '69268', 'WAJO');
INSERT INTO "public"."kota" VALUES ('71209', '69268', 'SIDENRENG RAPPANG');
INSERT INTO "public"."kota" VALUES ('71327', '69268', 'PINRANG');
INSERT INTO "public"."kota" VALUES ('71437', '69268', 'ENREKANG');
INSERT INTO "public"."kota" VALUES ('71579', '69268', 'LUWU');
INSERT INTO "public"."kota" VALUES ('71828', '69268', 'TANA TORAJA');
INSERT INTO "public"."kota" VALUES ('72007', '69268', 'LUWU UTARA');
INSERT INTO "public"."kota" VALUES ('72190', '69268', 'LUWU TIMUR');
INSERT INTO "public"."kota" VALUES ('72309', '69268', 'KOTA MAKASSAR');
INSERT INTO "public"."kota" VALUES ('72467', '69268', 'KOTA PARE PARE');
INSERT INTO "public"."kota" VALUES ('72493', '69268', 'KOTA PALOPO');
INSERT INTO "public"."kota" VALUES ('72552', '72551', 'KOLAKA');
INSERT INTO "public"."kota" VALUES ('72786', '72551', 'KONAWE');
INSERT INTO "public"."kota" VALUES ('73150', '72551', 'MUNA');
INSERT INTO "public"."kota" VALUES ('73420', '72551', 'BUTON');
INSERT INTO "public"."kota" VALUES ('73650', '72551', 'KONAWE SELATAN');
INSERT INTO "public"."kota" VALUES ('74018', '72551', 'BOMBANA');
INSERT INTO "public"."kota" VALUES ('74179', '72551', 'WAKATOBI');
INSERT INTO "public"."kota" VALUES ('74288', '72551', 'KOLAKA UTARA');
INSERT INTO "public"."kota" VALUES ('74437', '72551', 'KONAWE UTARA');
INSERT INTO "public"."kota" VALUES ('74525', '72551', 'BUTON UTARA');
INSERT INTO "public"."kota" VALUES ('74590', '72551', 'KOTA KENDARI');
INSERT INTO "public"."kota" VALUES ('74665', '72551', 'KOTA BAU BAU');
INSERT INTO "public"."kota" VALUES ('74717', '74716', 'GORONTALO');
INSERT INTO "public"."kota" VALUES ('74941', '74716', 'BOALEMO');
INSERT INTO "public"."kota" VALUES ('75031', '74716', 'BONE BOLANGO');
INSERT INTO "public"."kota" VALUES ('75183', '74716', 'PAHUWATO');
INSERT INTO "public"."kota" VALUES ('75301', '74716', 'GORONTALO UTARA');
INSERT INTO "public"."kota" VALUES ('75365', '74716', 'KOTA GORONTALO');
INSERT INTO "public"."kota" VALUES ('75426', '75425', 'MAMUJU UTARA');
INSERT INTO "public"."kota" VALUES ('75502', '75425', 'MAMUJU');
INSERT INTO "public"."kota" VALUES ('75670', '75425', 'MAMASA');
INSERT INTO "public"."kota" VALUES ('75863', '75425', 'POLEWALI MANDAR');
INSERT INTO "public"."kota" VALUES ('76047', '75425', 'MAJENE');
INSERT INTO "public"."kota" VALUES ('76097', '76096', 'MALUKU BARAT DAYA');
INSERT INTO "public"."kota" VALUES ('76223', '76096', 'BURU SELATAN');
INSERT INTO "public"."kota" VALUES ('76284', '76096', 'MALUKU TENGAH');
INSERT INTO "public"."kota" VALUES ('76470', '76096', 'MALUKU TENGGARA');
INSERT INTO "public"."kota" VALUES ('76568', '76096', 'MALUKU TENGGARA BARAT');
INSERT INTO "public"."kota" VALUES ('76651', '76096', 'BURU');
INSERT INTO "public"."kota" VALUES ('76708', '76096', 'SERAM BAGIAN TIMUR');
INSERT INTO "public"."kota" VALUES ('76771', '76096', 'SERAM BAGIAN BARAT');
INSERT INTO "public"."kota" VALUES ('76868', '76096', 'KEPULAUAN ARU');
INSERT INTO "public"."kota" VALUES ('76995', '76096', 'KOTA AMBON');
INSERT INTO "public"."kota" VALUES ('77051', '76096', 'KOTA TUAL');
INSERT INTO "public"."kota" VALUES ('77086', '77085', 'PULAU MOROTAI');
INSERT INTO "public"."kota" VALUES ('77155', '77085', 'HALMAHERA BARAT');
INSERT INTO "public"."kota" VALUES ('77311', '77085', 'HALMAHERA TENGAH');
INSERT INTO "public"."kota" VALUES ('77364', '77085', 'HALMAHERA UTARA');
INSERT INTO "public"."kota" VALUES ('77578', '77085', 'HALMAHERA SELATAN');
INSERT INTO "public"."kota" VALUES ('77858', '77085', 'KEPULAUAN SULA');
INSERT INTO "public"."kota" VALUES ('77956', '77085', 'HALMAHERA TIMUR');
INSERT INTO "public"."kota" VALUES ('78040', '77085', 'KOTA TERNATE');
INSERT INTO "public"."kota" VALUES ('78122', '77085', 'KOTA TIDORE KEPULAUAN');
INSERT INTO "public"."kota" VALUES ('78204', '78203', 'INTAN JAYA');
INSERT INTO "public"."kota" VALUES ('78289', '78203', 'DEIYAI');
INSERT INTO "public"."kota" VALUES ('78324', '78203', 'TOLIKARA');
INSERT INTO "public"."kota" VALUES ('78862', '78203', 'WAROPEN');
INSERT INTO "public"."kota" VALUES ('78927', '78203', 'BOVEN DIGOEL');
INSERT INTO "public"."kota" VALUES ('79019', '78203', 'MAPPI');
INSERT INTO "public"."kota" VALUES ('79163', '78203', 'ASMAT');
INSERT INTO "public"."kota" VALUES ('79310', '78203', 'SUPIORI');
INSERT INTO "public"."kota" VALUES ('79354', '78203', 'MAMBERAMO RAYA');
INSERT INTO "public"."kota" VALUES ('79421', '78203', 'KOTA JAYAPURA');
INSERT INTO "public"."kota" VALUES ('79466', '78203', 'MAMBERAMO TENGAH');
INSERT INTO "public"."kota" VALUES ('79531', '78203', 'YALIMO');
INSERT INTO "public"."kota" VALUES ('79564', '78203', 'LANNY JAYA');
INSERT INTO "public"."kota" VALUES ('79629', '78203', 'NDUGA');
INSERT INTO "public"."kota" VALUES ('79663', '78203', 'PUNCAK');
INSERT INTO "public"."kota" VALUES ('79752', '78203', 'DOGIYAI');
INSERT INTO "public"."kota" VALUES ('79826', '78203', 'MERAUKE');
INSERT INTO "public"."kota" VALUES ('80015', '78203', 'JAYAWIJAYA');
INSERT INTO "public"."kota" VALUES ('80144', '78203', 'JAYAPURA');
INSERT INTO "public"."kota" VALUES ('80309', '78203', 'NABIRE');
INSERT INTO "public"."kota" VALUES ('80402', '78203', 'KEPULAUAN YAPEN');
INSERT INTO "public"."kota" VALUES ('80526', '78203', 'BIAK NUMFOR');
INSERT INTO "public"."kota" VALUES ('80724', '78203', 'PUNCAK JAYA');
INSERT INTO "public"."kota" VALUES ('80851', '78203', 'PANIAI');
INSERT INTO "public"."kota" VALUES ('81007', '78203', 'MIMIKA');
INSERT INTO "public"."kota" VALUES ('81104', '78203', 'SARMI');
INSERT INTO "public"."kota" VALUES ('81192', '78203', 'KEEROM');
INSERT INTO "public"."kota" VALUES ('81261', '78203', 'PEGUNUNGAN BINTANG');
INSERT INTO "public"."kota" VALUES ('81357', '78203', 'YAHUKIMO');
INSERT INTO "public"."kota" VALUES ('81878', '81877', 'MAYBRAT');
INSERT INTO "public"."kota" VALUES ('81992', '81877', 'TAMBRAUW');
INSERT INTO "public"."kota" VALUES ('82022', '81877', 'SORONG');
INSERT INTO "public"."kota" VALUES ('82154', '81877', 'MANOKWARI');
INSERT INTO "public"."kota" VALUES ('82605', '81877', 'FAKFAK');
INSERT INTO "public"."kota" VALUES ('82724', '81877', 'SORONG SELATAN');
INSERT INTO "public"."kota" VALUES ('82850', '81877', 'RAJA AMPAT');
INSERT INTO "public"."kota" VALUES ('82965', '81877', 'TELUK BINTUNI');
INSERT INTO "public"."kota" VALUES ('83107', '81877', 'TELUK WONDAMA');
INSERT INTO "public"."kota" VALUES ('83194', '81877', 'KAIMANA');
INSERT INTO "public"."kota" VALUES ('83289', '81877', 'KOTA SORONG');

-- ----------------------------
-- Table structure for kritik_saran
-- ----------------------------
DROP TABLE IF EXISTS "public"."kritik_saran";
CREATE TABLE "public"."kritik_saran" (
"isi_kritik_saran" text COLLATE "default" NOT NULL,
"tanggal_kritik_saran" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of kritik_saran
-- ----------------------------
INSERT INTO "public"."kritik_saran" VALUES ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere ac turpis in blandit. Integer posuere lacus quis nisi hendrerit, at pharetra arcu interdum. Nullam lacus leo, pretium ut eleifend nec, accumsan cursus orci. Mauris orci massa, scelerisque in tellus id, sodales iaculis enim. In quis sollicitudin ligula. Phasellus cursus vel augue et convallis. Fusce elementum vulputate imperdiet. Sed sem massa, efficitur nec volutpat eget, sagittis sed velit. Praesent fringilla in neque vitae ullamcorper. Nam diam neque, elementum eu vestibulum nec, posuere id felis. Nam pretium vel massa quis posuere.', '2017-05-30 22:05:59.654545');
INSERT INTO "public"."kritik_saran" VALUES ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere ac turpis in blandit. Integer posuere lacus quis nisi hendrerit, at pharetra arcu interdum. Nullam lacus leo, pretium ut eleifend nec, accumsan cursus orci. Mauris orci massa, scelerisque in tellus id, sodales iaculis enim. In quis sollicitudin ligula. Phasellus cursus vel augue et convallis. Fusce elementum vulputate imperdiet. Sed sem massa, efficitur nec volutpat eget, sagittis sed velit. Praesent fringilla in neque vitae ullamcorper. Nam diam neque, elementum eu vestibulum nec, posuere id felis. Nam pretium vel massa quis posuere.', '2017-05-30 22:06:37.82049');
INSERT INTO "public"."kritik_saran" VALUES ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere ac turpis in blandit. Integer posuere lacus quis nisi hendrerit, at pharetra arcu interdum. Nullam lacus leo, pretium ut eleifend nec, accumsan cursus orci. Mauris orci massa, scelerisque in tellus id, sodales iaculis enim. In quis sollicitudin ligula. Phasellus cursus vel augue et convallis. Fusce elementum vulputate imperdiet. Sed sem massa, efficitur nec volutpat eget, sagittis sed velit. Praesent fringilla in neque vitae ullamcorper. Nam diam neque, elementum eu vestibulum nec, posuere id felis. Nam pretium vel massa quis posuere.', '2017-05-30 22:06:46.251579');
INSERT INTO "public"."kritik_saran" VALUES ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere ac turpis in blandit. Integer posuere lacus quis nisi hendrerit, at pharetra arcu interdum. Nullam lacus leo, pretium ut eleifend nec, accumsan cursus orci. Mauris orci massa, scelerisque in tellus id, sodales iaculis enim. In quis sollicitudin ligula. Phasellus cursus vel augue et convallis. Fusce elementum vulputate imperdiet. Sed sem massa, efficitur nec volutpat eget, sagittis sed velit. Praesent fringilla in neque vitae ullamcorper. Nam diam neque, elementum eu vestibulum nec, posuere id felis. Nam pretium vel massa quis posuere.', '2017-05-30 22:06:55.619862');
INSERT INTO "public"."kritik_saran" VALUES ('responsive web', '2017-06-06 05:48:13.231234');
INSERT INTO "public"."kritik_saran" VALUES ('sxsas', '2017-05-30 22:58:35.086657');
INSERT INTO "public"."kritik_saran" VALUES ('tes 123', '2017-05-30 21:35:39.105223');
INSERT INTO "public"."kritik_saran" VALUES ('tes keempat broooooh', '2017-05-30 21:56:18.222375');
INSERT INTO "public"."kritik_saran" VALUES ('tes kritik dan saran', '2017-05-30 21:56:06.588699');
INSERT INTO "public"."kritik_saran" VALUES ('web nya bagus banget broooohhhhh', '2017-05-30 21:55:55.014581');
INSERT INTO "public"."kritik_saran" VALUES ('ytdfyguhygxhttfg', '2017-05-31 10:18:29.128245');

-- ----------------------------
-- Table structure for merek
-- ----------------------------
DROP TABLE IF EXISTS "public"."merek";
CREATE TABLE "public"."merek" (
"id_merek" int4 DEFAULT nextval('merek_id_merek_seq'::regclass) NOT NULL,
"nama_merek" varchar(50) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of merek
-- ----------------------------
INSERT INTO "public"."merek" VALUES ('1', 'Honda');
INSERT INTO "public"."merek" VALUES ('3', 'Daihatsu');
INSERT INTO "public"."merek" VALUES ('5', 'Ferrari');
INSERT INTO "public"."merek" VALUES ('6', 'BMW');
INSERT INTO "public"."merek" VALUES ('22', 'Bugatti');
INSERT INTO "public"."merek" VALUES ('24', 'Nissan');
INSERT INTO "public"."merek" VALUES ('30', 'Aston Martin');
INSERT INTO "public"."merek" VALUES ('31', 'Audi');
INSERT INTO "public"."merek" VALUES ('32', 'Bentley');
INSERT INTO "public"."merek" VALUES ('34', 'Bus');
INSERT INTO "public"."merek" VALUES ('35', 'Cadilac');
INSERT INTO "public"."merek" VALUES ('36', 'Chery');
INSERT INTO "public"."merek" VALUES ('37', 'Chevrolet');
INSERT INTO "public"."merek" VALUES ('38', 'Chrysler');
INSERT INTO "public"."merek" VALUES ('39', 'Citroen');
INSERT INTO "public"."merek" VALUES ('40', 'Daewoo');
INSERT INTO "public"."merek" VALUES ('41', 'Datsun');
INSERT INTO "public"."merek" VALUES ('42', 'Dodge');
INSERT INTO "public"."merek" VALUES ('43', 'Fiat');
INSERT INTO "public"."merek" VALUES ('44', 'Ford');
INSERT INTO "public"."merek" VALUES ('45', 'Foton');
INSERT INTO "public"."merek" VALUES ('46', 'Geely');
INSERT INTO "public"."merek" VALUES ('47', 'Holden');
INSERT INTO "public"."merek" VALUES ('48', 'Hummer');
INSERT INTO "public"."merek" VALUES ('49', 'Hyundai');
INSERT INTO "public"."merek" VALUES ('50', 'Infiniti');
INSERT INTO "public"."merek" VALUES ('51', 'Isuzu');
INSERT INTO "public"."merek" VALUES ('52', 'Jaguar');
INSERT INTO "public"."merek" VALUES ('53', 'Jeep');
INSERT INTO "public"."merek" VALUES ('54', 'Kia');
INSERT INTO "public"."merek" VALUES ('55', 'Klasik Dan Antik');
INSERT INTO "public"."merek" VALUES ('56', 'Lamborghini');
INSERT INTO "public"."merek" VALUES ('57', 'Land Rover');
INSERT INTO "public"."merek" VALUES ('58', 'Lexus');
INSERT INTO "public"."merek" VALUES ('59', 'Maserati');
INSERT INTO "public"."merek" VALUES ('60', 'Mazda');
INSERT INTO "public"."merek" VALUES ('61', 'Mercedes-benz');
INSERT INTO "public"."merek" VALUES ('62', 'Mini Cooper');
INSERT INTO "public"."merek" VALUES ('63', 'Mitsubishi');
INSERT INTO "public"."merek" VALUES ('64', 'Mobil CBU');
INSERT INTO "public"."merek" VALUES ('65', 'Opel');
INSERT INTO "public"."merek" VALUES ('66', 'Peugeot');
INSERT INTO "public"."merek" VALUES ('67', 'Porsche');
INSERT INTO "public"."merek" VALUES ('68', 'Proton');
INSERT INTO "public"."merek" VALUES ('69', 'Roll-Royce');
INSERT INTO "public"."merek" VALUES ('70', 'Smart');
INSERT INTO "public"."merek" VALUES ('71', 'Ssang Yong');
INSERT INTO "public"."merek" VALUES ('72', 'Subaru');
INSERT INTO "public"."merek" VALUES ('73', 'Suzuki');
INSERT INTO "public"."merek" VALUES ('74', 'Tata');
INSERT INTO "public"."merek" VALUES ('75', 'Timor');
INSERT INTO "public"."merek" VALUES ('76', 'Toyota');
INSERT INTO "public"."merek" VALUES ('78', 'Volkswagen');
INSERT INTO "public"."merek" VALUES ('79', 'Volvo');
INSERT INTO "public"."merek" VALUES ('80', 'Renault');
INSERT INTO "public"."merek" VALUES ('81', 'Truk');

-- ----------------------------
-- Table structure for mobil
-- ----------------------------
DROP TABLE IF EXISTS "public"."mobil";
CREATE TABLE "public"."mobil" (
"id_mobil" int8 DEFAULT nextval('mobil_id_mobil_seq'::regclass) NOT NULL,
"id_user" int8,
"id_jenis" int4,
"id_tipe" int4,
"judul_iklan_mobil" text COLLATE "default",
"harga_mobil" int8,
"plat_mobil" varchar(15) COLLATE "default" DEFAULT '-'::character varying,
"cc_mobil" int4,
"transmisi_mobil" varchar(10) COLLATE "default",
"bahan_bakar_mobil" varchar(10) COLLATE "default",
"tahun_mobil" int4,
"keterangan_mobil" text COLLATE "default",
"id_kota" int4,
"tanggal_mobil" timestamp(6),
"nego_mobil" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of mobil
-- ----------------------------
INSERT INTO "public"."mobil" VALUES ('35', '1', '6', '8', 'New Xenia MPlus 2012 Putih Orisinil Tgn 1 Kondisi Prima', '110000000', 'L 1552 FB', '1000', 'Manual', 'Bensin', '2012', '<p>New Xenia MPlus 2012 Putih Orisinil Tgn 1 Kondisi Prima Plat L surabaya,</p>
<p>tgn pertama Atas nama Pribadi/Perorangan Dokumen komplit dg faktur aslinya Putih,</p>
<p>Orisinil masih mulus semua,</p>
<p>utuh Intewrior Orisinil bersih dan bagus banget Ac dingin,tape cd,pwr window,electric mirror Velg racing,pwr steing,central lock alarm Mesin halus,kering,knalpot berair Understen sangat empuk dan nyaman</p>
<p>&nbsp;</p>
<p>Kondisi mobil sgt prima dan siap pakai Lokasi Rungkut,Surabaya O.8.1.3.8.1.3.7.3.O.1.3 Harga 110jt,nego di lokasi</p>', '51358', '2017-05-23 12:17:00.381596', 'f');
INSERT INTO "public"."mobil" VALUES ('50', '1', '3', '624', 'Rolls Royce Ghost 2016', '12500000000', '', '6600', 'Triptonic', 'Bensin', '2016', '<p><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Mobil Ada Di Jakarta !</span></p>
<p><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">siapa cepat dia dapat</span></p>', '25924', '2017-05-26 22:19:10.618849', 'f');
INSERT INTO "public"."mobil" VALUES ('54', '1', '4', '11', 'Ferrari 458 Speciale 2014', '8500000000', '', '4200', 'Triptonic', 'Bensin', '2014', '<p><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">For Sale:</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Ferrari 458 Speciale 2014</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Yellow on Black Yellow</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">ATPM</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">km 4rb++</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Good Condition</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Price: 8.5m Off The Road</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">0.8.7.8.8.9.8.4.4.7.2.1</span></p>', '51358', '2017-05-27 16:19:55.527947', 'f');
INSERT INTO "public"."mobil" VALUES ('55', '1', '4', '12', 'BMW I8 nik 2015 KM 800', '3500000000', '', '3500', 'Triptonic', 'Bensin', '2015', '<p><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">BMW I8&nbsp;</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">NIK 2015 pemakaian 2016</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">white on black</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">ONLY 800KM!</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">STNK 5/17 (tgn 1 dri baru)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">sppec :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- 1.5l turbocharge</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- 3cylinder</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- all wheel drive</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- total 360HP</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Top speed 250km/h</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- PERFECT!</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Price : 3.5m nego di tempat setelah lihat unit.</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">cash / credit / trade-in.</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">(data luar kota welcome)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">for more info n detail please contact profile number.</span></p>', '51358', '2017-05-27 16:35:20.36484', 'f');
INSERT INTO "public"."mobil" VALUES ('61', '1', '1', '572', 'Toyota Fortuner VRZ (4x2). 2.400cc. Diesel. 2016.MATIK. Putih. Satelit', '481000000', '', '2400', 'Manual', 'Solar', '2016', '<p><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- SATELIT MOBIL -</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">(MARIA - 081.33o.618.71o)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">JL. Darmo Indah Timur R-17. Surabaya Barat.</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">(Jual - Beli - Tukar tambah Mobil Bekas BERKUALITAS, Harga TERJANGKAU)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Beli Mobil BEKAS tidak harus MAHAL. Satelit Mobil menyediakan mobil BEKAS</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">tetap BERKUALITAS, Harga TERJANGKAU.</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Jual Cepat Mobil Siap Pakai :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Toyota Fortuner VRZ (4x2)&nbsp;</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- 2016</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Putih</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Matik</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- 2.400 cc (Diesel)&nbsp;</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Plat L (Surabaya)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Tangan 1 dari Baru</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Nama Pribadi</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Pajak 3-2018 (Panjang Sampai Tahun Depan)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Kilometer 11 Ribu an</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Kondisi mobil bagus dan sangat terawat</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Harga 481 Juta (Paket KREDIT)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Harga 485 Juta CASH</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Terima tukar-tambah mobil LAMA ANDA</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Proses Kredit CEPAT hanya 2 hari, Mobil bisa di BAWA pulang</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">(Asal : data syarat kredit lengkap)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Bunga RINGAN (BCA Finance)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Cicilan hingga 71 x atau 6 Tahun</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Kami siap membantu data aplikasi kredit ANDA (DIPERMUDAH)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;"># Syarat KREDIT :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- KTP (pribadi / suami-istri)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- KK (Kartu Keluarga)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- PBB Rumah / Listrik / Air / Sertifikat Rumah (atas nama sendiri / orang tua)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Buku Tabungan BCA (kalau tidak ada HARAP di buat)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Khusus Customer dari Luar Kota / Luar Pulau, ada tambahan biaya survei cabang (cover area) tergantung lokasi customer.</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;"># Proses TRANSAKSI Super CEPAT :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">1. Hubungi SAYA untuk janjian datang (Hari dan Jam) / mau tanya-tanya soal mobil tidak masalah (SAYA siap membantu ANDA)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">2. Datang ke showroom Satelit Mobil. Lihat kondisi Mobil (COCOK), memberikan uang tanda jadi (DP).</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">3. Membawa / Mengirimkan Data Syarat Kredit LENGKAP (BESOK Mobil bisa di BAWA pulang)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;"># Hanya Pembeli SERIUS :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Telepon, SMS, atau Pesan OLX akan saya balas CEPAT (Fast Respon), hubungi SEGERA :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">MARIA (Satelit Mobil)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">081.33o.618.71o</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">ALAMAT showroom untuk check unit mobil di :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">* Jl. Darmo Indah Timur R-17 Surabaya (Satelit Mobil)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Lokasi di Surabaya Barat dekat dengan :</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- RS. Mitra Keluarga</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Swalayan KEN 88</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Kantor Imigrasi TANDES</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Pom Bensin Darmo Indah</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">- Berada di Jalan Raya Besar Darmo Indah (Mudah di cari dan di akses melalui Google Map)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Buka Showroom : SETIAP HARI</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Senin - Sabtu (07.30 - 17.30)</span><br style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;" /><span style="color: #414141; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 15px;">Minggu (10.00 - 15.30)</span></p>', '51358', '2017-06-02 03:20:19.148565', 't');

-- ----------------------------
-- Table structure for pesan
-- ----------------------------
DROP TABLE IF EXISTS "public"."pesan";
CREATE TABLE "public"."pesan" (
"id_pengirim" int8,
"id_penerima" int8,
"isi_pesan" text COLLATE "default",
"tanggal_pesan" timestamp(6),
"identitas_pesan" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pesan
-- ----------------------------
INSERT INTO "public"."pesan" VALUES ('1', '1', 'ini percobaan ke 3', '2017-05-26 01:09:23.546035', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'nyobak sekali lagi', '2017-05-26 01:09:40.1757', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'sampek jam 4.38 haha', '2017-05-26 04:38:21.631299', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'tes hbis sahur', '2017-05-29 04:52:56.929304', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'tes membalas pesan', '2017-05-26 00:18:02.962857', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'tes ngirim pesan ke 2', '2017-05-25 16:28:47.228331', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'tesss', '2017-05-25 10:05:45.502932', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'tesss 2', '2017-05-26 01:08:51.675623', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '1', 'tessss', '2017-05-26 02:21:54.982328', '1_1');
INSERT INTO "public"."pesan" VALUES ('1', '13', 'aku selalu bersyukur kok nit :)', '2017-05-26 00:18:30.250846', '13_1');
INSERT INTO "public"."pesan" VALUES ('1', '13', 'kau hanya diam, tanpa kau bicara, perlahan langkahmu pergi lalu tinggalkan ku sendiri', '2017-05-26 01:14:05.009099', '13_1');
INSERT INTO "public"."pesan" VALUES ('1', '13', 'ku rasakan cinta, yang tak mungin terjadi walau perih hati ini, tapi ku harus menjalani', '2017-05-26 01:12:55.626351', '13_1');
INSERT INTO "public"."pesan" VALUES ('1', '17', 'mobil yang mana mbak?', '2017-06-06 06:01:24.489402', '17_1');
INSERT INTO "public"."pesan" VALUES ('13', '1', 'Bersyukur raf', '2017-05-25 16:59:24.916026', '13_1');
INSERT INTO "public"."pesan" VALUES ('13', '1', 'hai rafyyy', '2017-05-25 16:54:13.981783', '13_1');
INSERT INTO "public"."pesan" VALUES ('17', '1', 'mintaknya berapa mas?', '2017-06-06 06:00:27.490711', '17_1');
INSERT INTO "public"."pesan" VALUES ('17', '1', 'mobil yang fortuner', '2017-06-06 06:01:44.2943', '17_1');

-- ----------------------------
-- Table structure for provinsi
-- ----------------------------
DROP TABLE IF EXISTS "public"."provinsi";
CREATE TABLE "public"."provinsi" (
"id_provinsi" int4 DEFAULT nextval('provinsi_id_provinsi_seq'::regclass) NOT NULL,
"nama_provinsi" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO "public"."provinsi" VALUES ('1', 'ACEH');
INSERT INTO "public"."provinsi" VALUES ('6728', 'SUMATERA UTARA');
INSERT INTO "public"."provinsi" VALUES ('12920', 'SUMATERA BARAT');
INSERT INTO "public"."provinsi" VALUES ('14086', 'RIAU');
INSERT INTO "public"."provinsi" VALUES ('15885', 'JAMBI');
INSERT INTO "public"."provinsi" VALUES ('17404', 'SUMATERA SELATAN');
INSERT INTO "public"."provinsi" VALUES ('20802', 'BENGKULU');
INSERT INTO "public"."provinsi" VALUES ('22328', 'LAMPUNG');
INSERT INTO "public"."provinsi" VALUES ('24993', 'KEPULAUAN BANGKA BELITUNG');
INSERT INTO "public"."provinsi" VALUES ('25405', 'KEPULAUAN RIAU');
INSERT INTO "public"."provinsi" VALUES ('25823', 'DKI JAKARTA');
INSERT INTO "public"."provinsi" VALUES ('26141', 'JAWA BARAT');
INSERT INTO "public"."provinsi" VALUES ('32676', 'JAWA TENGAH');
INSERT INTO "public"."provinsi" VALUES ('41863', 'DAERAH ISTIMEWA YOGYAKARTA');
INSERT INTO "public"."provinsi" VALUES ('42385', 'JAWA TIMUR');
INSERT INTO "public"."provinsi" VALUES ('51578', 'BANTEN');
INSERT INTO "public"."provinsi" VALUES ('53241', 'BALI');
INSERT INTO "public"."provinsi" VALUES ('54020', 'NUSA TENGGARA BARAT');
INSERT INTO "public"."provinsi" VALUES ('55065', 'NUSA TENGGARA TIMUR');
INSERT INTO "public"."provinsi" VALUES ('58285', 'KALIMANTAN BARAT');
INSERT INTO "public"."provinsi" VALUES ('60371', 'KALIMANTAN TENGAH');
INSERT INTO "public"."provinsi" VALUES ('61965', 'KALIMANTAN SELATAN');
INSERT INTO "public"."provinsi" VALUES ('64111', 'KALIMANTAN TIMUR');
INSERT INTO "public"."provinsi" VALUES ('65702', 'SULAWESI UTARA');
INSERT INTO "public"."provinsi" VALUES ('67393', 'SULAWESI TENGAH');
INSERT INTO "public"."provinsi" VALUES ('69268', 'SULAWESI SELATAN');
INSERT INTO "public"."provinsi" VALUES ('72551', 'SULAWESI TENGGARA');
INSERT INTO "public"."provinsi" VALUES ('74716', 'GORONTALO');
INSERT INTO "public"."provinsi" VALUES ('75425', 'SULAWESI BARAT');
INSERT INTO "public"."provinsi" VALUES ('76096', 'MALUKU');
INSERT INTO "public"."provinsi" VALUES ('77085', 'MALUKU UTARA');
INSERT INTO "public"."provinsi" VALUES ('78203', 'PAPUA');
INSERT INTO "public"."provinsi" VALUES ('81877', 'PAPUA BARAT');

-- ----------------------------
-- Table structure for tipe
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipe";
CREATE TABLE "public"."tipe" (
"id_tipe" int4 DEFAULT nextval('tipe_id_tipe_seq'::regclass) NOT NULL,
"nama_tipe" varchar(50) COLLATE "default" NOT NULL,
"id_merek" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tipe
-- ----------------------------
INSERT INTO "public"."tipe" VALUES ('1', 'Mobilio', '1');
INSERT INTO "public"."tipe" VALUES ('2', 'Jazz', '1');
INSERT INTO "public"."tipe" VALUES ('3', 'Freed', '1');
INSERT INTO "public"."tipe" VALUES ('7', 'Ayla', '3');
INSERT INTO "public"."tipe" VALUES ('8', 'Xenia', '3');
INSERT INTO "public"."tipe" VALUES ('9', 'Sigra', '3');
INSERT INTO "public"."tipe" VALUES ('11', '456', '5');
INSERT INTO "public"."tipe" VALUES ('12', 'i-Series', '6');
INSERT INTO "public"."tipe" VALUES ('14', 'Brio', '1');
INSERT INTO "public"."tipe" VALUES ('15', 'CR-V', '1');
INSERT INTO "public"."tipe" VALUES ('18', 'Taruna', '3');
INSERT INTO "public"."tipe" VALUES ('19', 'Terios', '3');
INSERT INTO "public"."tipe" VALUES ('20', 'Taft', '3');
INSERT INTO "public"."tipe" VALUES ('21', 'Luxio', '3');
INSERT INTO "public"."tipe" VALUES ('50', 'Ceria', '3');
INSERT INTO "public"."tipe" VALUES ('51', 'Espass', '3');
INSERT INTO "public"."tipe" VALUES ('52', 'DB9', '30');
INSERT INTO "public"."tipe" VALUES ('53', 'Audi A3', '31');
INSERT INTO "public"."tipe" VALUES ('54', 'Audi A4', '31');
INSERT INTO "public"."tipe" VALUES ('55', 'Audi A5', '31');
INSERT INTO "public"."tipe" VALUES ('56', 'Audi A6', '31');
INSERT INTO "public"."tipe" VALUES ('57', 'Audi A8', '31');
INSERT INTO "public"."tipe" VALUES ('58', 'Audi Q3', '31');
INSERT INTO "public"."tipe" VALUES ('59', 'Audi Q5', '31');
INSERT INTO "public"."tipe" VALUES ('60', 'Audi Q7', '31');
INSERT INTO "public"."tipe" VALUES ('61', 'Audi R8', '31');
INSERT INTO "public"."tipe" VALUES ('62', 'Audi Tt', '31');
INSERT INTO "public"."tipe" VALUES ('63', 'Bentley', '32');
INSERT INTO "public"."tipe" VALUES ('64', 'Continental GT', '32');
INSERT INTO "public"."tipe" VALUES ('65', 'Fliying Spurs', '32');
INSERT INTO "public"."tipe" VALUES ('66', 'Mulsanne', '32');
INSERT INTO "public"."tipe" VALUES ('67', 'Turbo R', '32');
INSERT INTO "public"."tipe" VALUES ('68', 'M Saries', '6');
INSERT INTO "public"."tipe" VALUES ('69', 'Series 1', '6');
INSERT INTO "public"."tipe" VALUES ('70', 'Series 3', '6');
INSERT INTO "public"."tipe" VALUES ('71', 'Series 4', '6');
INSERT INTO "public"."tipe" VALUES ('72', 'Series 5', '6');
INSERT INTO "public"."tipe" VALUES ('73', 'Series 6', '6');
INSERT INTO "public"."tipe" VALUES ('74', 'Series 7', '6');
INSERT INTO "public"."tipe" VALUES ('75', 'X1', '6');
INSERT INTO "public"."tipe" VALUES ('76', 'X3', '6');
INSERT INTO "public"."tipe" VALUES ('77', 'X5', '6');
INSERT INTO "public"."tipe" VALUES ('78', 'X6', '6');
INSERT INTO "public"."tipe" VALUES ('79', 'Z3', '6');
INSERT INTO "public"."tipe" VALUES ('80', 'Z4', '6');
INSERT INTO "public"."tipe" VALUES ('81', 'Daewoo', '34');
INSERT INTO "public"."tipe" VALUES ('82', 'Fuso', '34');
INSERT INTO "public"."tipe" VALUES ('83', 'Hino', '34');
INSERT INTO "public"."tipe" VALUES ('84', 'Mercedes-benz', '34');
INSERT INTO "public"."tipe" VALUES ('85', 'Escalade', '35');
INSERT INTO "public"."tipe" VALUES ('86', 'Campus', '36');
INSERT INTO "public"."tipe" VALUES ('87', 'Cristal', '36');
INSERT INTO "public"."tipe" VALUES ('88', 'Cruise', '36');
INSERT INTO "public"."tipe" VALUES ('89', 'Qq', '36');
INSERT INTO "public"."tipe" VALUES ('90', 'Tinggo', '36');
INSERT INTO "public"."tipe" VALUES ('91', 'TransCar', '36');
INSERT INTO "public"."tipe" VALUES ('92', 'Apache', '37');
INSERT INTO "public"."tipe" VALUES ('93', 'Aveo', '37');
INSERT INTO "public"."tipe" VALUES ('94', 'Blazer', '37');
INSERT INTO "public"."tipe" VALUES ('95', 'Camaro', '37');
INSERT INTO "public"."tipe" VALUES ('96', 'Captiva', '37');
INSERT INTO "public"."tipe" VALUES ('97', 'Colorado', '37');
INSERT INTO "public"."tipe" VALUES ('98', 'Cruze', '37');
INSERT INTO "public"."tipe" VALUES ('99', 'Estate', '37');
INSERT INTO "public"."tipe" VALUES ('100', 'Kalos', '37');
INSERT INTO "public"."tipe" VALUES ('101', 'Lumina', '37');
INSERT INTO "public"."tipe" VALUES ('102', 'Montera', '37');
INSERT INTO "public"."tipe" VALUES ('103', 'Optra', '37');
INSERT INTO "public"."tipe" VALUES ('104', 'Orlando', '37');
INSERT INTO "public"."tipe" VALUES ('105', 'Spark', '37');
INSERT INTO "public"."tipe" VALUES ('106', 'Spin', '37');
INSERT INTO "public"."tipe" VALUES ('107', 'Tavera', '37');
INSERT INTO "public"."tipe" VALUES ('108', 'Trailblazer', '37');
INSERT INTO "public"."tipe" VALUES ('109', 'Trooper', '37');
INSERT INTO "public"."tipe" VALUES ('110', 'Zafira', '37');
INSERT INTO "public"."tipe" VALUES ('111', 'Cherokee', '38');
INSERT INTO "public"."tipe" VALUES ('112', 'Cj-5', '38');
INSERT INTO "public"."tipe" VALUES ('113', 'Cj-7', '38');
INSERT INTO "public"."tipe" VALUES ('114', 'Grand Cherokee', '38');
INSERT INTO "public"."tipe" VALUES ('115', 'Neon', '38');
INSERT INTO "public"."tipe" VALUES ('116', 'Pt CRUISER', '38');
INSERT INTO "public"."tipe" VALUES ('117', 'Wrangler', '38');
INSERT INTO "public"."tipe" VALUES ('118', 'Berligo', '39');
INSERT INTO "public"."tipe" VALUES ('119', 'Bx', '39');
INSERT INTO "public"."tipe" VALUES ('120', 'C2', '39');
INSERT INTO "public"."tipe" VALUES ('121', 'C3', '39');
INSERT INTO "public"."tipe" VALUES ('122', 'C4', '39');
INSERT INTO "public"."tipe" VALUES ('123', 'C5', '39');
INSERT INTO "public"."tipe" VALUES ('124', 'C6', '39');
INSERT INTO "public"."tipe" VALUES ('125', 'Dispatch', '39');
INSERT INTO "public"."tipe" VALUES ('126', 'Ds', '39');
INSERT INTO "public"."tipe" VALUES ('127', 'Dyane', '39');
INSERT INTO "public"."tipe" VALUES ('128', 'Gs', '39');
INSERT INTO "public"."tipe" VALUES ('129', 'Xantia', '39');
INSERT INTO "public"."tipe" VALUES ('130', 'Xsara', '39');
INSERT INTO "public"."tipe" VALUES ('131', '2000i', '40');
INSERT INTO "public"."tipe" VALUES ('132', 'Espero', '40');
INSERT INTO "public"."tipe" VALUES ('133', 'Lanos', '40');
INSERT INTO "public"."tipe" VALUES ('134', 'Leganza', '40');
INSERT INTO "public"."tipe" VALUES ('135', 'Matiz', '40');
INSERT INTO "public"."tipe" VALUES ('136', 'Nexia', '40');
INSERT INTO "public"."tipe" VALUES ('137', 'Tacuma', '40');
INSERT INTO "public"."tipe" VALUES ('138', 'Charade', '3');
INSERT INTO "public"."tipe" VALUES ('139', 'Classy', '3');
INSERT INTO "public"."tipe" VALUES ('140', 'Feroza', '3');
INSERT INTO "public"."tipe" VALUES ('141', 'Gran Max', '3');
INSERT INTO "public"."tipe" VALUES ('142', 'Gran Max Pick-up', '3');
INSERT INTO "public"."tipe" VALUES ('143', 'HIJET', '3');
INSERT INTO "public"."tipe" VALUES ('144', 'Neo Zebra', '3');
INSERT INTO "public"."tipe" VALUES ('145', 'Rocky', '3');
INSERT INTO "public"."tipe" VALUES ('146', 'Sirion', '3');
INSERT INTO "public"."tipe" VALUES ('147', 'Winner', '3');
INSERT INTO "public"."tipe" VALUES ('148', 'Zebra', '3');
INSERT INTO "public"."tipe" VALUES ('149', '120', '41');
INSERT INTO "public"."tipe" VALUES ('150', 'Go', '41');
INSERT INTO "public"."tipe" VALUES ('151', 'Go+', '41');
INSERT INTO "public"."tipe" VALUES ('152', '300', '42');
INSERT INTO "public"."tipe" VALUES ('153', '500', '42');
INSERT INTO "public"."tipe" VALUES ('154', 'Avanger', '42');
INSERT INTO "public"."tipe" VALUES ('155', 'Caliber', '42');
INSERT INTO "public"."tipe" VALUES ('156', 'Journey', '42');
INSERT INTO "public"."tipe" VALUES ('157', 'Ms8 Streamliner', '42');
INSERT INTO "public"."tipe" VALUES ('158', 'Nitro', '42');
INSERT INTO "public"."tipe" VALUES ('159', 'Ram 3500', '42');
INSERT INTO "public"."tipe" VALUES ('160', 'Viper', '42');
INSERT INTO "public"."tipe" VALUES ('161', '308', '5');
INSERT INTO "public"."tipe" VALUES ('162', '330', '5');
INSERT INTO "public"."tipe" VALUES ('163', '348', '5');
INSERT INTO "public"."tipe" VALUES ('164', '360', '5');
INSERT INTO "public"."tipe" VALUES ('165', '400', '5');
INSERT INTO "public"."tipe" VALUES ('166', '550 Maranello', '5');
INSERT INTO "public"."tipe" VALUES ('167', '575 Maranello', '5');
INSERT INTO "public"."tipe" VALUES ('168', '599 Fiorano', '5');
INSERT INTO "public"."tipe" VALUES ('169', '612 Scaglietti', '5');
INSERT INTO "public"."tipe" VALUES ('170', 'California', '5');
INSERT INTO "public"."tipe" VALUES ('171', 'Cayman', '5');
INSERT INTO "public"."tipe" VALUES ('172', 'Dino', '5');
INSERT INTO "public"."tipe" VALUES ('173', 'F355', '5');
INSERT INTO "public"."tipe" VALUES ('174', 'F430', '5');
INSERT INTO "public"."tipe" VALUES ('175', 'Modena', '5');
INSERT INTO "public"."tipe" VALUES ('176', 'Mondial', '5');
INSERT INTO "public"."tipe" VALUES ('177', 'Superamerika', '5');
INSERT INTO "public"."tipe" VALUES ('178', '125', '43');
INSERT INTO "public"."tipe" VALUES ('179', 'Abart', '43');
INSERT INTO "public"."tipe" VALUES ('180', 'Ducato', '43');
INSERT INTO "public"."tipe" VALUES ('181', 'Punto', '43');
INSERT INTO "public"."tipe" VALUES ('182', 'Ritmo', '43');
INSERT INTO "public"."tipe" VALUES ('183', 'Scudo', '43');
INSERT INTO "public"."tipe" VALUES ('184', 'Spider', '43');
INSERT INTO "public"."tipe" VALUES ('185', 'Uno', '43');
INSERT INTO "public"."tipe" VALUES ('186', 'Capri', '44');
INSERT INTO "public"."tipe" VALUES ('187', 'Cougar', '44');
INSERT INTO "public"."tipe" VALUES ('188', 'Escape', '44');
INSERT INTO "public"."tipe" VALUES ('189', 'Escort', '44');
INSERT INTO "public"."tipe" VALUES ('190', 'Everest', '44');
INSERT INTO "public"."tipe" VALUES ('191', 'Explorer', '44');
INSERT INTO "public"."tipe" VALUES ('192', 'Fairmont', '44');
INSERT INTO "public"."tipe" VALUES ('193', 'Fiesta', '44');
INSERT INTO "public"."tipe" VALUES ('194', 'Focus', '44');
INSERT INTO "public"."tipe" VALUES ('195', 'Gala', '44');
INSERT INTO "public"."tipe" VALUES ('196', 'Laser', '44');
INSERT INTO "public"."tipe" VALUES ('197', 'Lynx', '44');
INSERT INTO "public"."tipe" VALUES ('198', 'Mustang', '44');
INSERT INTO "public"."tipe" VALUES ('199', 'Ranger', '44');
INSERT INTO "public"."tipe" VALUES ('200', 'Sierra', '44');
INSERT INTO "public"."tipe" VALUES ('201', 'Telstar', '44');
INSERT INTO "public"."tipe" VALUES ('202', 'Territory', '44');
INSERT INTO "public"."tipe" VALUES ('203', 'Foton', '45');
INSERT INTO "public"."tipe" VALUES ('204', 'Ec 7', '46');
INSERT INTO "public"."tipe" VALUES ('205', 'Mk', '46');
INSERT INTO "public"."tipe" VALUES ('206', 'Mk 2', '46');
INSERT INTO "public"."tipe" VALUES ('207', 'Panda', '46');
INSERT INTO "public"."tipe" VALUES ('208', 'Panda Cross', '46');
INSERT INTO "public"."tipe" VALUES ('209', 'Adventra', '47');
INSERT INTO "public"."tipe" VALUES ('210', 'Apollo', '47');
INSERT INTO "public"."tipe" VALUES ('211', 'Astra', '47');
INSERT INTO "public"."tipe" VALUES ('212', 'Barina', '47');
INSERT INTO "public"."tipe" VALUES ('213', 'Belmont', '47');
INSERT INTO "public"."tipe" VALUES ('214', 'Berlina', '47');
INSERT INTO "public"."tipe" VALUES ('215', 'Calais', '47');
INSERT INTO "public"."tipe" VALUES ('216', 'Calibra', '47');
INSERT INTO "public"."tipe" VALUES ('217', 'Caprice', '47');
INSERT INTO "public"."tipe" VALUES ('220', 'Combo', '47');
INSERT INTO "public"."tipe" VALUES ('221', 'Commodore', '47');
INSERT INTO "public"."tipe" VALUES ('222', 'Crewman', '47');
INSERT INTO "public"."tipe" VALUES ('224', 'Epica', '47');
INSERT INTO "public"."tipe" VALUES ('225', 'Frontera', '47');
INSERT INTO "public"."tipe" VALUES ('226', 'Gemini', '47');
INSERT INTO "public"."tipe" VALUES ('227', 'Jackaroo', '47');
INSERT INTO "public"."tipe" VALUES ('228', 'Premier', '47');
INSERT INTO "public"."tipe" VALUES ('229', 'Accrord', '1');
INSERT INTO "public"."tipe" VALUES ('230', 'Br-v', '1');
INSERT INTO "public"."tipe" VALUES ('231', 'City', '1');
INSERT INTO "public"."tipe" VALUES ('232', 'Civic', '1');
INSERT INTO "public"."tipe" VALUES ('233', 'Cr-z', '1');
INSERT INTO "public"."tipe" VALUES ('234', 'Crossroad', '1');
INSERT INTO "public"."tipe" VALUES ('235', 'Edix', '1');
INSERT INTO "public"."tipe" VALUES ('236', 'Elysion', '1');
INSERT INTO "public"."tipe" VALUES ('237', 'Estilo', '1');
INSERT INTO "public"."tipe" VALUES ('238', 'Ferio', '1');
INSERT INTO "public"."tipe" VALUES ('239', 'Fit', '1');
INSERT INTO "public"."tipe" VALUES ('240', 'Genio', '1');
INSERT INTO "public"."tipe" VALUES ('241', 'Hr-v', '1');
INSERT INTO "public"."tipe" VALUES ('242', 'Integra', '1');
INSERT INTO "public"."tipe" VALUES ('243', 'Maestro', '1');
INSERT INTO "public"."tipe" VALUES ('244', 'Odyssey', '1');
INSERT INTO "public"."tipe" VALUES ('245', 'Prelude', '1');
INSERT INTO "public"."tipe" VALUES ('246', 'Prestige', '1');
INSERT INTO "public"."tipe" VALUES ('247', 'S2000', '1');
INSERT INTO "public"."tipe" VALUES ('248', 'Stream', '1');
INSERT INTO "public"."tipe" VALUES ('249', 'H2', '48');
INSERT INTO "public"."tipe" VALUES ('250', 'H3', '48');
INSERT INTO "public"."tipe" VALUES ('251', 'Accent', '49');
INSERT INTO "public"."tipe" VALUES ('252', 'Atoz', '49');
INSERT INTO "public"."tipe" VALUES ('253', 'Avega', '49');
INSERT INTO "public"."tipe" VALUES ('254', 'Cakra', '49');
INSERT INTO "public"."tipe" VALUES ('255', 'Coupe', '49');
INSERT INTO "public"."tipe" VALUES ('256', 'Elantra', '49');
INSERT INTO "public"."tipe" VALUES ('257', 'Excel', '49');
INSERT INTO "public"."tipe" VALUES ('258', 'Getz', '49');
INSERT INTO "public"."tipe" VALUES ('259', 'Grand Avega', '49');
INSERT INTO "public"."tipe" VALUES ('260', 'H-1', '49');
INSERT INTO "public"."tipe" VALUES ('261', 'I10', '49');
INSERT INTO "public"."tipe" VALUES ('262', 'I20', '49');
INSERT INTO "public"."tipe" VALUES ('263', 'Matrix', '49');
INSERT INTO "public"."tipe" VALUES ('264', 'New Tucson', '49');
INSERT INTO "public"."tipe" VALUES ('265', 'Santa Fe', '49');
INSERT INTO "public"."tipe" VALUES ('266', 'Sonata', '49');
INSERT INTO "public"."tipe" VALUES ('267', 'Starex', '49');
INSERT INTO "public"."tipe" VALUES ('268', 'Trajet', '49');
INSERT INTO "public"."tipe" VALUES ('269', 'Verna', '49');
INSERT INTO "public"."tipe" VALUES ('270', 'Fx', '50');
INSERT INTO "public"."tipe" VALUES ('271', 'G Coupe', '50');
INSERT INTO "public"."tipe" VALUES ('272', 'M', '50');
INSERT INTO "public"."tipe" VALUES ('273', 'Q', '50');
INSERT INTO "public"."tipe" VALUES ('274', 'Bighorn', '51');
INSERT INTO "public"."tipe" VALUES ('275', 'Colt 77 Ps', '51');
INSERT INTO "public"."tipe" VALUES ('276', 'D-max', '51');
INSERT INTO "public"."tipe" VALUES ('277', 'Elf Minibus', '51');
INSERT INTO "public"."tipe" VALUES ('278', 'Grand Touring', '51');
INSERT INTO "public"."tipe" VALUES ('279', 'Mu-x', '51');
INSERT INTO "public"."tipe" VALUES ('280', 'New Panther', '51');
INSERT INTO "public"."tipe" VALUES ('281', 'Panther', '51');
INSERT INTO "public"."tipe" VALUES ('282', 'Daimler', '52');
INSERT INTO "public"."tipe" VALUES ('283', 'S-type', '52');
INSERT INTO "public"."tipe" VALUES ('284', 'X-type', '52');
INSERT INTO "public"."tipe" VALUES ('285', 'Xf', '52');
INSERT INTO "public"."tipe" VALUES ('286', 'Xj', '52');
INSERT INTO "public"."tipe" VALUES ('287', 'Xk', '52');
INSERT INTO "public"."tipe" VALUES ('288', 'Compass', '53');
INSERT INTO "public"."tipe" VALUES ('289', 'Jeep', '53');
INSERT INTO "public"."tipe" VALUES ('290', 'Rubicon', '53');
INSERT INTO "public"."tipe" VALUES ('291', 'Sahara', '53');
INSERT INTO "public"."tipe" VALUES ('292', 'Carens I', '54');
INSERT INTO "public"."tipe" VALUES ('293', 'Carens II', '54');
INSERT INTO "public"."tipe" VALUES ('294', 'Carnival', '54');
INSERT INTO "public"."tipe" VALUES ('295', 'Magentis', '54');
INSERT INTO "public"."tipe" VALUES ('296', 'Optima', '54');
INSERT INTO "public"."tipe" VALUES ('297', 'Picanto', '54');
INSERT INTO "public"."tipe" VALUES ('298', 'Pregio', '54');
INSERT INTO "public"."tipe" VALUES ('299', 'Pride', '54');
INSERT INTO "public"."tipe" VALUES ('300', 'Rio', '54');
INSERT INTO "public"."tipe" VALUES ('301', 'Sedona', '54');
INSERT INTO "public"."tipe" VALUES ('302', 'Shuma', '54');
INSERT INTO "public"."tipe" VALUES ('303', 'Sorento', '54');
INSERT INTO "public"."tipe" VALUES ('304', 'Spectra', '54');
INSERT INTO "public"."tipe" VALUES ('305', 'Sportage', '54');
INSERT INTO "public"."tipe" VALUES ('306', 'Summa', '54');
INSERT INTO "public"."tipe" VALUES ('307', 'Travello', '54');
INSERT INTO "public"."tipe" VALUES ('308', 'Visto', '54');
INSERT INTO "public"."tipe" VALUES ('309', 'Klasik Dan Antik', '55');
INSERT INTO "public"."tipe" VALUES ('310', 'Diablo', '56');
INSERT INTO "public"."tipe" VALUES ('311', 'Espada', '56');
INSERT INTO "public"."tipe" VALUES ('312', 'Fulvia', '56');
INSERT INTO "public"."tipe" VALUES ('313', 'Gallado', '56');
INSERT INTO "public"."tipe" VALUES ('314', 'Murcielago', '56');
INSERT INTO "public"."tipe" VALUES ('315', 'Defender', '57');
INSERT INTO "public"."tipe" VALUES ('316', 'Discovery', '57');
INSERT INTO "public"."tipe" VALUES ('317', 'Free Lander', '57');
INSERT INTO "public"."tipe" VALUES ('318', 'Range Rover', '57');
INSERT INTO "public"."tipe" VALUES ('319', '430', '58');
INSERT INTO "public"."tipe" VALUES ('320', 'Ct200', '58');
INSERT INTO "public"."tipe" VALUES ('321', 'As300', '58');
INSERT INTO "public"."tipe" VALUES ('323', 'Is', '58');
INSERT INTO "public"."tipe" VALUES ('324', 'Ls', '58');
INSERT INTO "public"."tipe" VALUES ('325', 'Lx', '58');
INSERT INTO "public"."tipe" VALUES ('326', 'Rx', '58');
INSERT INTO "public"."tipe" VALUES ('327', 'Sc', '58');
INSERT INTO "public"."tipe" VALUES ('328', '3200gt', '59');
INSERT INTO "public"."tipe" VALUES ('329', 'Cambriocorsa', '59');
INSERT INTO "public"."tipe" VALUES ('331', 'Ghibli', '59');
INSERT INTO "public"."tipe" VALUES ('332', 'Gransport', '59');
INSERT INTO "public"."tipe" VALUES ('333', 'Quatrroporte', '59');
INSERT INTO "public"."tipe" VALUES ('334', 'Spyder', '59');
INSERT INTO "public"."tipe" VALUES ('335', '2', '60');
INSERT INTO "public"."tipe" VALUES ('336', '3', '60');
INSERT INTO "public"."tipe" VALUES ('337', '5', '60');
INSERT INTO "public"."tipe" VALUES ('338', '6', '60');
INSERT INTO "public"."tipe" VALUES ('339', '8', '60');
INSERT INTO "public"."tipe" VALUES ('340', '323', '60');
INSERT INTO "public"."tipe" VALUES ('341', '626', '60');
INSERT INTO "public"."tipe" VALUES ('342', 'Astina', '60');
INSERT INTO "public"."tipe" VALUES ('343', 'Baby Boomer', '60');
INSERT INTO "public"."tipe" VALUES ('344', 'Biante', '60');
INSERT INTO "public"."tipe" VALUES ('345', 'Bt-50', '60');
INSERT INTO "public"."tipe" VALUES ('346', 'Cronos', '60');
INSERT INTO "public"."tipe" VALUES ('347', 'Cx-5', '60');
INSERT INTO "public"."tipe" VALUES ('348', 'Cx-7', '60');
INSERT INTO "public"."tipe" VALUES ('349', 'Cx-9', '60');
INSERT INTO "public"."tipe" VALUES ('350', 'E2000', '60');
INSERT INTO "public"."tipe" VALUES ('351', 'Famili', '60');
INSERT INTO "public"."tipe" VALUES ('352', 'L2500', '60');
INSERT INTO "public"."tipe" VALUES ('353', 'Lantis', '60');
INSERT INTO "public"."tipe" VALUES ('354', 'Mr-90', '60');
INSERT INTO "public"."tipe" VALUES ('355', 'Mx', '60');
INSERT INTO "public"."tipe" VALUES ('356', 'Rx-7', '60');
INSERT INTO "public"."tipe" VALUES ('357', 'Rx-8', '60');
INSERT INTO "public"."tipe" VALUES ('358', 'Rx-9', '60');
INSERT INTO "public"."tipe" VALUES ('359', 'Tribute', '60');
INSERT INTO "public"."tipe" VALUES ('360', 'Vantrend', '60');
INSERT INTO "public"."tipe" VALUES ('361', 'A-class', '61');
INSERT INTO "public"."tipe" VALUES ('362', 'B-class', '61');
INSERT INTO "public"."tipe" VALUES ('363', 'C-class', '61');
INSERT INTO "public"."tipe" VALUES ('364', 'Cl', '61');
INSERT INTO "public"."tipe" VALUES ('365', 'Cla-class', '61');
INSERT INTO "public"."tipe" VALUES ('366', 'Clc-class', '61');
INSERT INTO "public"."tipe" VALUES ('367', 'Clk', '61');
INSERT INTO "public"."tipe" VALUES ('368', 'Cls 350', '61');
INSERT INTO "public"."tipe" VALUES ('369', 'E-class', '61');
INSERT INTO "public"."tipe" VALUES ('370', 'G-class', '61');
INSERT INTO "public"."tipe" VALUES ('371', 'Ge-class', '61');
INSERT INTO "public"."tipe" VALUES ('372', 'Gl-class', '61');
INSERT INTO "public"."tipe" VALUES ('373', 'Gla-class', '61');
INSERT INTO "public"."tipe" VALUES ('374', 'Glc-class', '61');
INSERT INTO "public"."tipe" VALUES ('375', 'Gle-class', '61');
INSERT INTO "public"."tipe" VALUES ('376', 'M-class', '61');
INSERT INTO "public"."tipe" VALUES ('377', 'Ml 350', '61');
INSERT INTO "public"."tipe" VALUES ('378', 'R-class', '61');
INSERT INTO "public"."tipe" VALUES ('379', 'S-class', '61');
INSERT INTO "public"."tipe" VALUES ('380', 'Sl', '61');
INSERT INTO "public"."tipe" VALUES ('381', 'Slk', '61');
INSERT INTO "public"."tipe" VALUES ('382', 'Sls Amg', '61');
INSERT INTO "public"."tipe" VALUES ('383', 'Tiger', '61');
INSERT INTO "public"."tipe" VALUES ('384', 'V-class', '61');
INSERT INTO "public"."tipe" VALUES ('385', 'Viano', '61');
INSERT INTO "public"."tipe" VALUES ('386', 'Vito', '61');
INSERT INTO "public"."tipe" VALUES ('413', 'Mini Cooper', '62');
INSERT INTO "public"."tipe" VALUES ('414', 'Chariot', '63');
INSERT INTO "public"."tipe" VALUES ('415', 'Colt', '63');
INSERT INTO "public"."tipe" VALUES ('416', 'Delica', '63');
INSERT INTO "public"."tipe" VALUES ('417', 'Eterna', '63');
INSERT INTO "public"."tipe" VALUES ('418', 'Galant', '63');
INSERT INTO "public"."tipe" VALUES ('419', 'Grandis', '63');
INSERT INTO "public"."tipe" VALUES ('420', 'Kuda', '63');
INSERT INTO "public"."tipe" VALUES ('421', 'L200', '63');
INSERT INTO "public"."tipe" VALUES ('422', 'L300', '63');
INSERT INTO "public"."tipe" VALUES ('423', 'Lancer', '63');
INSERT INTO "public"."tipe" VALUES ('424', 'Magna', '63');
INSERT INTO "public"."tipe" VALUES ('425', 'Maven', '63');
INSERT INTO "public"."tipe" VALUES ('426', 'Mirage', '63');
INSERT INTO "public"."tipe" VALUES ('427', 'Outlander', '63');
INSERT INTO "public"."tipe" VALUES ('428', 'Pajero', '63');
INSERT INTO "public"."tipe" VALUES ('429', 'Pajero Sport', '63');
INSERT INTO "public"."tipe" VALUES ('430', 'Space', '63');
INSERT INTO "public"."tipe" VALUES ('431', 'Strade', '63');
INSERT INTO "public"."tipe" VALUES ('432', 'Acura', '64');
INSERT INTO "public"."tipe" VALUES ('433', 'Alfa Romeo', '64');
INSERT INTO "public"."tipe" VALUES ('434', 'Aston Martin', '64');
INSERT INTO "public"."tipe" VALUES ('436', 'Cadillac', '64');
INSERT INTO "public"."tipe" VALUES ('437', 'Infiniti', '64');
INSERT INTO "public"."tipe" VALUES ('438', 'Lotus', '64');
INSERT INTO "public"."tipe" VALUES ('439', 'Cedric', '24');
INSERT INTO "public"."tipe" VALUES ('440', 'Dualis', '24');
INSERT INTO "public"."tipe" VALUES ('441', 'Elgrand', '24');
INSERT INTO "public"."tipe" VALUES ('442', 'Evalia', '24');
INSERT INTO "public"."tipe" VALUES ('443', 'Fairlady', '24');
INSERT INTO "public"."tipe" VALUES ('444', 'Grand Livina', '24');
INSERT INTO "public"."tipe" VALUES ('445', 'Infinity', '24');
INSERT INTO "public"."tipe" VALUES ('446', 'Juke', '24');
INSERT INTO "public"."tipe" VALUES ('447', 'Latio', '24');
INSERT INTO "public"."tipe" VALUES ('448', 'Livina', '24');
INSERT INTO "public"."tipe" VALUES ('449', 'March', '24');
INSERT INTO "public"."tipe" VALUES ('450', 'Murano', '24');
INSERT INTO "public"."tipe" VALUES ('451', 'Navara', '24');
INSERT INTO "public"."tipe" VALUES ('452', 'Pathfinder', '24');
INSERT INTO "public"."tipe" VALUES ('453', 'Patrol', '24');
INSERT INTO "public"."tipe" VALUES ('454', 'Primera', '24');
INSERT INTO "public"."tipe" VALUES ('455', 'Sentra', '24');
INSERT INTO "public"."tipe" VALUES ('456', 'Serena', '24');
INSERT INTO "public"."tipe" VALUES ('457', 'Skyline', '24');
INSERT INTO "public"."tipe" VALUES ('458', 'Teana', '24');
INSERT INTO "public"."tipe" VALUES ('459', 'Terrano', '24');
INSERT INTO "public"."tipe" VALUES ('460', 'X-trail', '24');
INSERT INTO "public"."tipe" VALUES ('465', 'Vectra', '65');
INSERT INTO "public"."tipe" VALUES ('470', '10', '66');
INSERT INTO "public"."tipe" VALUES ('471', '206', '66');
INSERT INTO "public"."tipe" VALUES ('472', '207', '66');
INSERT INTO "public"."tipe" VALUES ('473', '306', '66');
INSERT INTO "public"."tipe" VALUES ('474', '307', '66');
INSERT INTO "public"."tipe" VALUES ('476', '405', '66');
INSERT INTO "public"."tipe" VALUES ('477', '406', '66');
INSERT INTO "public"."tipe" VALUES ('478', '407', '66');
INSERT INTO "public"."tipe" VALUES ('479', '505', '66');
INSERT INTO "public"."tipe" VALUES ('480', '605', '66');
INSERT INTO "public"."tipe" VALUES ('481', '607', '66');
INSERT INTO "public"."tipe" VALUES ('482', '806', '66');
INSERT INTO "public"."tipe" VALUES ('483', '807', '66');
INSERT INTO "public"."tipe" VALUES ('484', 'Rcz', '66');
INSERT INTO "public"."tipe" VALUES ('485', '911', '67');
INSERT INTO "public"."tipe" VALUES ('486', 'Boxster', '67');
INSERT INTO "public"."tipe" VALUES ('487', 'Cayenne', '67');
INSERT INTO "public"."tipe" VALUES ('489', 'Exora', '68');
INSERT INTO "public"."tipe" VALUES ('490', 'Gen2', '68');
INSERT INTO "public"."tipe" VALUES ('491', 'Neo', '68');
INSERT INTO "public"."tipe" VALUES ('492', 'Saga', '68');
INSERT INTO "public"."tipe" VALUES ('493', 'Satria', '68');
INSERT INTO "public"."tipe" VALUES ('494', 'Savvy', '68');
INSERT INTO "public"."tipe" VALUES ('495', 'Suprima S', '68');
INSERT INTO "public"."tipe" VALUES ('496', 'Waja', '68');
INSERT INTO "public"."tipe" VALUES ('497', 'Wira', '68');
INSERT INTO "public"."tipe" VALUES ('498', 'Clio', '80');
INSERT INTO "public"."tipe" VALUES ('499', 'Kangoo', '80');
INSERT INTO "public"."tipe" VALUES ('500', 'Koleos', '80');
INSERT INTO "public"."tipe" VALUES ('501', 'Kwid', '80');
INSERT INTO "public"."tipe" VALUES ('502', 'Laguna', '80');
INSERT INTO "public"."tipe" VALUES ('503', 'Magane', '80');
INSERT INTO "public"."tipe" VALUES ('504', 'Scenic', '80');
INSERT INTO "public"."tipe" VALUES ('505', 'Corniche', '69');
INSERT INTO "public"."tipe" VALUES ('506', 'Exclusive', '69');
INSERT INTO "public"."tipe" VALUES ('507', 'Phantom', '69');
INSERT INTO "public"."tipe" VALUES ('508', 'Silver Seraph', '69');
INSERT INTO "public"."tipe" VALUES ('509', 'Silver Shadow', '69');
INSERT INTO "public"."tipe" VALUES ('510', 'Silver Spirit', '69');
INSERT INTO "public"."tipe" VALUES ('511', 'Silver Spur', '69');
INSERT INTO "public"."tipe" VALUES ('512', 'Forfour', '70');
INSERT INTO "public"."tipe" VALUES ('513', 'Fortwo', '70');
INSERT INTO "public"."tipe" VALUES ('514', 'Korando', '71');
INSERT INTO "public"."tipe" VALUES ('515', 'Musso', '71');
INSERT INTO "public"."tipe" VALUES ('516', 'Rexton', '71');
INSERT INTO "public"."tipe" VALUES ('517', 'Brz', '72');
INSERT INTO "public"."tipe" VALUES ('518', 'Exiga', '72');
INSERT INTO "public"."tipe" VALUES ('519', 'Forester', '72');
INSERT INTO "public"."tipe" VALUES ('520', 'Impreza', '72');
INSERT INTO "public"."tipe" VALUES ('521', 'Legacy', '72');
INSERT INTO "public"."tipe" VALUES ('522', 'Liberty', '72');
INSERT INTO "public"."tipe" VALUES ('523', 'Outback', '72');
INSERT INTO "public"."tipe" VALUES ('524', 'R1', '72');
INSERT INTO "public"."tipe" VALUES ('525', 'Xv', '72');
INSERT INTO "public"."tipe" VALUES ('526', 'Aerio', '73');
INSERT INTO "public"."tipe" VALUES ('527', 'Amenity', '73');
INSERT INTO "public"."tipe" VALUES ('528', 'Apv', '73');
INSERT INTO "public"."tipe" VALUES ('529', 'Baleno', '73');
INSERT INTO "public"."tipe" VALUES ('530', 'Baleno Next-g', '73');
INSERT INTO "public"."tipe" VALUES ('531', 'Carry Pick-up', '73');
INSERT INTO "public"."tipe" VALUES ('532', 'Carry Van', '73');
INSERT INTO "public"."tipe" VALUES ('533', 'Celerio', '73');
INSERT INTO "public"."tipe" VALUES ('534', 'Ciaz', '73');
INSERT INTO "public"."tipe" VALUES ('535', 'Ertiga', '73');
INSERT INTO "public"."tipe" VALUES ('536', 'Escudo', '73');
INSERT INTO "public"."tipe" VALUES ('537', 'Esteem', '73');
INSERT INTO "public"."tipe" VALUES ('538', 'Every', '73');
INSERT INTO "public"."tipe" VALUES ('539', 'Forsa', '73');
INSERT INTO "public"."tipe" VALUES ('540', 'Futura', '73');
INSERT INTO "public"."tipe" VALUES ('541', 'Grand Escudo', '73');
INSERT INTO "public"."tipe" VALUES ('542', 'Grang Vitara', '73');
INSERT INTO "public"."tipe" VALUES ('543', 'Ignis', '73');
INSERT INTO "public"."tipe" VALUES ('544', 'Jimnie', '73');
INSERT INTO "public"."tipe" VALUES ('545', 'Karimun', '73');
INSERT INTO "public"."tipe" VALUES ('546', 'Karimun Setillo', '73');
INSERT INTO "public"."tipe" VALUES ('547', 'Katana', '73');
INSERT INTO "public"."tipe" VALUES ('548', 'Neo Baleno', '73');
INSERT INTO "public"."tipe" VALUES ('549', 'Sidekick', '73');
INSERT INTO "public"."tipe" VALUES ('550', 'Splash', '73');
INSERT INTO "public"."tipe" VALUES ('551', 'Swift', '73');
INSERT INTO "public"."tipe" VALUES ('552', 'Sx4', '73');
INSERT INTO "public"."tipe" VALUES ('553', 'Safari Storme', '74');
INSERT INTO "public"."tipe" VALUES ('554', 'Vista', '74');
INSERT INTO "public"."tipe" VALUES ('555', 'Dohc', '75');
INSERT INTO "public"."tipe" VALUES ('556', 'Sohc', '75');
INSERT INTO "public"."tipe" VALUES ('557', 'Agya', '76');
INSERT INTO "public"."tipe" VALUES ('559', 'Altis', '76');
INSERT INTO "public"."tipe" VALUES ('560', 'Alto', '76');
INSERT INTO "public"."tipe" VALUES ('561', 'Avanza', '76');
INSERT INTO "public"."tipe" VALUES ('562', 'Calya', '76');
INSERT INTO "public"."tipe" VALUES ('563', 'Camry', '76');
INSERT INTO "public"."tipe" VALUES ('564', 'Celica', '76');
INSERT INTO "public"."tipe" VALUES ('565', 'Corolla', '76');
INSERT INTO "public"."tipe" VALUES ('566', 'Corona', '76');
INSERT INTO "public"."tipe" VALUES ('567', 'Cressida', '76');
INSERT INTO "public"."tipe" VALUES ('568', 'Crown', '76');
INSERT INTO "public"."tipe" VALUES ('569', 'Estima', '76');
INSERT INTO "public"."tipe" VALUES ('570', 'Etios', '76');
INSERT INTO "public"."tipe" VALUES ('571', 'Fj Cruiser', '76');
INSERT INTO "public"."tipe" VALUES ('572', 'Fortuner', '76');
INSERT INTO "public"."tipe" VALUES ('573', 'Ft86', '76');
INSERT INTO "public"."tipe" VALUES ('574', 'Hardtop', '76');
INSERT INTO "public"."tipe" VALUES ('575', 'Harrier', '76');
INSERT INTO "public"."tipe" VALUES ('576', 'Hilux', '76');
INSERT INTO "public"."tipe" VALUES ('577', 'Ist', '76');
INSERT INTO "public"."tipe" VALUES ('578', 'Kijang', '76');
INSERT INTO "public"."tipe" VALUES ('579', 'Kijang Pick-up', '76');
INSERT INTO "public"."tipe" VALUES ('580', 'Kluger', '76');
INSERT INTO "public"."tipe" VALUES ('581', 'Land Cruiser', '76');
INSERT INTO "public"."tipe" VALUES ('582', 'Limo', '76');
INSERT INTO "public"."tipe" VALUES ('583', 'Mark X', '76');
INSERT INTO "public"."tipe" VALUES ('584', 'Nav1', '76');
INSERT INTO "public"."tipe" VALUES ('585', 'Noah', '76');
INSERT INTO "public"."tipe" VALUES ('586', 'Opa', '76');
INSERT INTO "public"."tipe" VALUES ('587', 'Passo', '76');
INSERT INTO "public"."tipe" VALUES ('588', 'Previa', '76');
INSERT INTO "public"."tipe" VALUES ('589', 'Prius', '76');
INSERT INTO "public"."tipe" VALUES ('590', 'Raum', '76');
INSERT INTO "public"."tipe" VALUES ('591', 'Rav4', '76');
INSERT INTO "public"."tipe" VALUES ('592', 'Rush', '76');
INSERT INTO "public"."tipe" VALUES ('593', 'Sienta', '76');
INSERT INTO "public"."tipe" VALUES ('594', 'Soluna', '76');
INSERT INTO "public"."tipe" VALUES ('595', 'Starlet', '76');
INSERT INTO "public"."tipe" VALUES ('596', 'Succed', '76');
INSERT INTO "public"."tipe" VALUES ('597', 'Vanguard', '76');
INSERT INTO "public"."tipe" VALUES ('598', 'Vellfire', '76');
INSERT INTO "public"."tipe" VALUES ('599', 'Vios', '76');
INSERT INTO "public"."tipe" VALUES ('600', 'Voltz', '76');
INSERT INTO "public"."tipe" VALUES ('601', 'Voxy', '76');
INSERT INTO "public"."tipe" VALUES ('602', 'Wish', '76');
INSERT INTO "public"."tipe" VALUES ('603', 'Yaris', '76');
INSERT INTO "public"."tipe" VALUES ('604', 'Faw', '81');
INSERT INTO "public"."tipe" VALUES ('605', 'Hino Dutro', '81');
INSERT INTO "public"."tipe" VALUES ('606', 'Hino Ranger', '81');
INSERT INTO "public"."tipe" VALUES ('607', 'Isuzu Bison', '81');
INSERT INTO "public"."tipe" VALUES ('608', 'Isuzu Elf', '81');
INSERT INTO "public"."tipe" VALUES ('609', 'Man', '81');
INSERT INTO "public"."tipe" VALUES ('610', 'Mercedes-banz', '81');
INSERT INTO "public"."tipe" VALUES ('611', 'Mitsubisi Fuso', '81');
INSERT INTO "public"."tipe" VALUES ('612', 'Mitsubisi Colt Diesel', '81');
INSERT INTO "public"."tipe" VALUES ('613', 'Toyota Dyna Rhino', '81');
INSERT INTO "public"."tipe" VALUES ('614', 'Ud Truck', '81');
INSERT INTO "public"."tipe" VALUES ('615', '960', '79');
INSERT INTO "public"."tipe" VALUES ('616', 'C30', '79');
INSERT INTO "public"."tipe" VALUES ('617', 'C70', '79');
INSERT INTO "public"."tipe" VALUES ('618', 'S40', '79');
INSERT INTO "public"."tipe" VALUES ('619', 'S60', '79');
INSERT INTO "public"."tipe" VALUES ('620', 'S70', '79');
INSERT INTO "public"."tipe" VALUES ('621', 'S80', '79');
INSERT INTO "public"."tipe" VALUES ('622', 'V70', '79');
INSERT INTO "public"."tipe" VALUES ('623', 'Xc90', '79');
INSERT INTO "public"."tipe" VALUES ('624', 'Ghost', '69');
INSERT INTO "public"."tipe" VALUES ('625', 'Alphard', '76');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
"id_user" int8 DEFAULT nextval('user_id_user_seq'::regclass) NOT NULL,
"ndepan_user" varchar(50) COLLATE "default",
"email_user" text COLLATE "default",
"password_user" text COLLATE "default",
"jenis_kelamin_user" char(1) COLLATE "default" DEFAULT ''::bpchar,
"no_hp_user" varchar(20) COLLATE "default" DEFAULT ''::character varying,
"alamat_user" text COLLATE "default" DEFAULT ''::text,
"id_kota" int4,
"gambar_user" text COLLATE "default" DEFAULT ''::text,
"nbelakang_user" varchar(50) COLLATE "default",
"tanggal_user" date DEFAULT timezone('Asia/Jakarta'::text, ((now())::date)::timestamp with time zone)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "public"."user" VALUES ('1', 'Rafy', 'rafyakbar@mhs.unesa.ac.id', 'f6fcaa92337e0a0ecd655f4562574087', 'L', '087789891729', 'Wonocolo Utara Gg V/3', '51358', '1_2017-05-28_01-25-41.jpg', 'Aulia Akbar', '2017-05-30');
INSERT INTO "public"."user" VALUES ('13', 'Anita', 'anitarahayu239@yahoo.co.id', '202cb962ac59075b964b07152d234b70', 'P', '085796529800', 'kepooooooooooooo', '47001', '13_2017-05-25_17-10-45.jpg', 'Rahayu', '2017-05-30');
INSERT INTO "public"."user" VALUES ('17', 'Rahayu', 'rahayuap@gmail.com', '28b662d883b6d76fd96e4ddc5e9ba780', ' ', '', '', null, '', 'Anindya Putri', '2017-06-06');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."admin_id_admin_seq" OWNED BY "admin"."id_admin";
ALTER SEQUENCE "public"."gambar_mobil_id_gambar_mobil_seq" OWNED BY "gambar_mobil"."id_gambar_mobil";
ALTER SEQUENCE "public"."jenis_id_jenis_seq" OWNED BY "jenis"."id_jenis";
ALTER SEQUENCE "public"."kota_id_kota_seq" OWNED BY "kota"."id_kota";
ALTER SEQUENCE "public"."merek_id_merek_seq" OWNED BY "merek"."id_merek";
ALTER SEQUENCE "public"."mobil_id_mobil_seq" OWNED BY "mobil"."id_mobil";
ALTER SEQUENCE "public"."provinsi_id_provinsi_seq" OWNED BY "provinsi"."id_provinsi";
ALTER SEQUENCE "public"."tipe_id_tipe_seq" OWNED BY "tipe"."id_tipe";
ALTER SEQUENCE "public"."user_id_user_seq" OWNED BY "user"."id_user";

-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE "public"."admin" ADD PRIMARY KEY ("id_admin");

-- ----------------------------
-- Primary Key structure for table gambar_mobil
-- ----------------------------
ALTER TABLE "public"."gambar_mobil" ADD PRIMARY KEY ("id_gambar_mobil");

-- ----------------------------
-- Primary Key structure for table jenis
-- ----------------------------
ALTER TABLE "public"."jenis" ADD PRIMARY KEY ("id_jenis");

-- ----------------------------
-- Primary Key structure for table kota
-- ----------------------------
ALTER TABLE "public"."kota" ADD PRIMARY KEY ("id_kota");

-- ----------------------------
-- Indexes structure for table merek
-- ----------------------------
CREATE UNIQUE INDEX "merek_nama_merek_uindex" ON "public"."merek" USING btree ("nama_merek");

-- ----------------------------
-- Primary Key structure for table merek
-- ----------------------------
ALTER TABLE "public"."merek" ADD PRIMARY KEY ("id_merek");

-- ----------------------------
-- Primary Key structure for table mobil
-- ----------------------------
ALTER TABLE "public"."mobil" ADD PRIMARY KEY ("id_mobil");

-- ----------------------------
-- Primary Key structure for table provinsi
-- ----------------------------
ALTER TABLE "public"."provinsi" ADD PRIMARY KEY ("id_provinsi");

-- ----------------------------
-- Indexes structure for table tipe
-- ----------------------------
CREATE UNIQUE INDEX "tipe_nama_tipe_uindex" ON "public"."tipe" USING btree ("nama_tipe");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD PRIMARY KEY ("id_user");
