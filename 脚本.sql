create table t_region
(
	id varchar2(64) not null
		constraint t_region_pk
			primary key,
	region_id varchar2(32) not null,
	region_nm varchar2(64) default null,
	fmc_id varchar2(32) not null,
	fmc_nm varchar2(64),
	asc_cd varchar2(32) not null,
	asc_nm varchar2(64)
)
/

comment on table t_region is '区域维度的组织'
/

comment on column t_region.id is 'id主键'
/

comment on column t_region.region_id is '大区id'
/

comment on column t_region.region_nm is '大区名称'
/

comment on column t_region.fmc_id is '小区id'
/

comment on column t_region.fmc_nm is '小区名称'
/

comment on column t_region.asc_cd is '经销商code'
/

comment on column t_region.asc_nm is '经销商名称'
/

create table t_province
(
	id varchar2(64) not null
		constraint t_province_pk
			primary key,
	prov_id varchar2(32) not null,
	prov_com_nm varchar2(32),
	city_id varchar2(64) not null,
	city_com_nm varchar2(32),
	asc_cd varchar2(64) not null,
	asc_nm varchar2(32)
)
/

comment on table t_province is '省份'
/

comment on column t_province.id is '主键id'
/

comment on column t_province.prov_id is '省份id'
/

comment on column t_province.prov_com_nm is '省份名称'
/

comment on column t_province.city_id is '城市id'
/

comment on column t_province.city_com_nm is '城市名称'
/

comment on column t_province.asc_cd is '组织code'
/

comment on column t_province.asc_nm is '组织名称'
/




CREATE TABLE t_output_value (
  id varchar2(64) NOT NULL CONSTRAINT t_output_value_pk PRIMARY KEY,
  value_date varchar2(128) DEFAULT NULL,
  busId varchar2(128) DEFAULT NULL,
  totail varchar2(128) DEFAULT NULL,
  totail_last varchar2(128) DEFAULT NULL,
  totail_current varchar2(128) DEFAULT NULL,
  claim varchar2(128) DEFAULT NULL,
  claim_last varchar2(128) DEFAULT NULL,
  claim_current varchar2(128) DEFAULT NULL,
  guarantee varchar2(128) DEFAULT NULL,
  guarantee_last varchar2(128) DEFAULT NULL,
  guarantee_current varchar2(128) DEFAULT NULL,
  no_guarantee varchar2(128) DEFAULT NULL,
  no_guarantee_last varchar2(128) DEFAULT NULL,
  no_guarantee_current varchar2(128) DEFAULT NULL,
  no_claim varchar2(128) DEFAULT NULL,
  no_claim_last varchar2(128) DEFAULT NULL,
  no_claim_current varchar2(128) DEFAULT NULL,
  maintain varchar2(128) DEFAULT NULL,
  maintain_last varchar2(128) DEFAULT NULL,
  maintain_current varchar2(128) DEFAULT NULL,
  repair varchar2(128) DEFAULT NULL,
  repair_last varchar2(128) DEFAULT NULL,
  repair_current varchar2(128) DEFAULT NULL,
  accident varchar2(128) DEFAULT NULL,
  accident_last varchar2(128) DEFAULT NULL,
  accident_current varchar2(128) DEFAULT NULL,
  sale varchar2(128) DEFAULT NULL,
  sale_last varchar2(128) DEFAULT NULL,
  sale_current varchar2(128) DEFAULT NULL,
  rework varchar2(128) DEFAULT NULL,
  rework_last varchar2(128) DEFAULT NULL,
  rework_current varchar2(128) DEFAULT NULL
)
/
comment on table t_output_value is '产值'
/
comment on column t_output_value.id is 'id主键'
/
comment on column t_output_value.value_date is '时间'
/
comment on column t_output_value.busId is '大区ID'
/
comment on column t_output_value.totail is '售后总产值'
/
comment on column t_output_value.totail_last is '售后总产值_上期值'
/
comment on column t_output_value.totail_current is '售后总产值_同期值'
/
comment on column t_output_value.claim is '索赔总产值'
/
comment on column t_output_value.claim_last is '索赔总产值_上期值'
/
comment on column t_output_value.claim_current is '索赔总产值_同期值'
/
comment on column t_output_value.guarantee is '首保总产值'
/
comment on column t_output_value.guarantee_last is '首保总产值_上期值'
/
comment on column t_output_value.guarantee_current is '首保总产值_同期值'
/
comment on column t_output_value.no_guarantee is '索赔不含首保总产值'
/
comment on column t_output_value.no_guarantee_last is '索赔不含首保_上期'
/
comment on column t_output_value.no_guarantee_current is '索赔不含首保_同期'
/
comment on column t_output_value.no_claim is '非索赔总产值'
/
comment on column t_output_value.no_claim_last is '非索赔总产值_上期值'
/
comment on column t_output_value.no_claim_current is '非索赔总产值_同期值'
/
comment on column t_output_value.maintain is '保养总产值'
/
comment on column t_output_value.maintain_last is '保养总产值_上期值'
/
comment on column t_output_value.maintain_current is '保养总产值_同期值'
/
comment on column t_output_value.repair is '维修总产值'
/
comment on column t_output_value.repair_last is '维修总产值_上期值'
/
comment on column t_output_value.repair_current is '维修总产值_同期值'
/
comment on column t_output_value.accident is '事故总产值'
/
comment on column t_output_value.accident_last is '事故总产值_上期值'
/
comment on column t_output_value.accident_current is '事故总产值_同期值'
/
comment on column t_output_value.sale is '销售总产值'
/
comment on column t_output_value.sale_last is '销售总产值_上期值'
/
comment on column t_output_value.sale_current is '销售总产值_同期值'
/
comment on column t_output_value.rework is '返工总产值'
/
comment on column t_output_value.rework_last is '返工总产值_上期值'
/
comment on column t_output_value.rework_current is '返工总产值_同期值'
/


// 产值excel脚本
="(lower(sys_guid()),'"&A2&"','"&B2&"','"&C2&"','"&D2&"','"&E2&"','"&F2&"','"&G2&"','"&H2&"','"&I2&"','"&J2&"','"&K2&"','"&L2&"','"&M2&"','"&N2&"','"&O2&"','"&P2&"','"&Q2&"','"&R2&"','"&S2&"','"&T2&"','"&U2&"','"&V2&"','"&W2&"','"&X2&"','"&Y2&"','"&Z2&"','"&AA2&"','"&AB2&"','"&AC2&"','"&AD2&"','"&AE2&"','"&AF2&"');"


create table td_dds_fmc
(
  FMC_ID NUMBER(10)  default NULL,
FMC_CD VARCHAR2(20)  default NULL,
FMC_NM VARCHAR2(30)  default NULL,
REGION_ID NUMBER(10)  default NULL,
REGION_CD VARCHAR2(20)  default NULL,
REGION_NM VARCHAR2(100)  default NULL,
BRAND_CH_NM VARCHAR2(60)  default NULL,
BRAND_EN_NM VARCHAR2(40)  default NULL,
BRAND_ID NUMBER(10)  default NULL,
VALID NUMBER(1)  default NULL,
FIRST_LOAD_DATE DATE  default NULL,
LAST_LOAD_DATE DATE  default NULL,
LOAD_FROM VARCHAR2(10)  default NULL
);

comment on column td_dds_fmc.FMC_ID is '小区ID'/
comment on column td_dds_fmc.FMC_CD is ''/
comment on column td_dds_fmc.FMC_NM is '小区名称'/
comment on column td_dds_fmc.REGION_ID is '大区ID'/
comment on column td_dds_fmc.REGION_CD is ''/
comment on column td_dds_fmc.REGION_NM is '大区名称'/
comment on column td_dds_fmc.BRAND_CH_NM is '品牌中文名称'/
comment on column td_dds_fmc.BRAND_EN_NM is '品牌英文名称'/
comment on column td_dds_fmc.BRAND_ID is '品牌代码'/
comment on column td_dds_fmc.VALID is '数据是否有效：1：有效'/
comment on column td_dds_fmc.FIRST_LOAD_DATE is '数据第一次加载日期'/
comment on column td_dds_fmc.LAST_LOAD_DATE is '数据最后一次加载日期'/
comment on column td_dds_fmc.LOAD_FROM is '数据来源'/

=A3&" "&B3&" "&" default NULL,"
="comment on column td_dds_asc."&A3&" is '"&E3&"'/"


create table td_dds_asc
(
  ASC_ID NUMBER(10)  default NULL,
  ASC_CD VARCHAR2(20)  default NULL,
  ASC_NM VARCHAR2(200)  default NULL,
  ASC_FULL_NM VARCHAR2(300)  default NULL,
  ASC_GRP_ID NUMBER(10)  default NULL,
  ASC_GRP_CD VARCHAR2(20)  default NULL,
  ASC_GRP_NM VARCHAR2(300)  default NULL,
  FMC_ID NUMBER(10)  default NULL,
  FMC_NM VARCHAR2(30)  default NULL,
  REGION_ID NUMBER(10)  default NULL,
  REGION_NM VARCHAR2(100)  default NULL,
  CITY_ID NUMBER(10)  default NULL,
  CITY_COM_NM VARCHAR2(100)  default NULL,
  PROV_ID NUMBER(10)  default NULL,
  PROV_COM_NM VARCHAR2(100)  default NULL,
  ASC_ST VARCHAR2(20)  default NULL,
  ASC_BIZ_STATUS_DESC VARCHAR2(30)  default NULL,
  ASC_WRNTY_CD VARCHAR2(20)  default NULL,
  ASC_SAP_CD VARCHAR2(20)  default NULL,
  ASC_OPEN_DT DATE  default NULL,
  ASC_STAR_GRD VARCHAR2(20)  default NULL,
  ASC_RANK VARCHAR2(20)  default NULL,
  BRAND_EN_NM VARCHAR2(40)  default NULL,
  BRAND_ID NUMBER(10)  default NULL,
  VALID NUMBER(1)  default NULL,
  FIRST_LOAD_DATE DATE  default NULL,
  LAST_LOAD_DATE DATE  default NULL,
  LOAD_FROM VARCHAR2(10)  default NULL
);

comment on column td_dds_asc.ASC_ID is 'ASC ID'/
comment on column td_dds_asc.ASC_CD is 'ASC编码'/
comment on column td_dds_asc.ASC_NM is 'ASC名称'/
comment on column td_dds_asc.ASC_FULL_NM is ''/
comment on column td_dds_asc.ASC_GRP_ID is '所属经销商集团ID'/
comment on column td_dds_asc.ASC_GRP_CD is '所属经销商集团编码'/
comment on column td_dds_asc.ASC_GRP_NM is '所属经销商集团名称'/
comment on column td_dds_asc.FMC_ID is '小区'/
comment on column td_dds_asc.FMC_NM is '小区名称'/
comment on column td_dds_asc.REGION_ID is '大区唯一编码'/
comment on column td_dds_asc.REGION_NM is '大区名称'/
comment on column td_dds_asc.CITY_ID is '城市唯一编码'/
comment on column td_dds_asc.CITY_COM_NM is '城市名称'/
comment on column td_dds_asc.PROV_ID is ''/
comment on column td_dds_asc.PROV_COM_NM is ''/
comment on column td_dds_asc.ASC_ST is '维修站状态'/
comment on column td_dds_asc.ASC_BIZ_STATUS_DESC is '维修站状态描述'/
comment on column td_dds_asc.ASC_WRNTY_CD is '维修站索赔代码'/
comment on column td_dds_asc.ASC_SAP_CD is '售后SAP代码'/
comment on column td_dds_asc.ASC_OPEN_DT is '维修站的开业时间'/
comment on column td_dds_asc.ASC_STAR_GRD is '售后星级'/
comment on column td_dds_asc.ASC_RANK is 'ASC类型'/
comment on column td_dds_asc.BRAND_EN_NM is '品牌英文名称'/
comment on column td_dds_asc.BRAND_ID is '品牌代码'/
comment on column td_dds_asc.VALID is '数据是否有效：1：有效'/
comment on column td_dds_asc.FIRST_LOAD_DATE is '数据第一次加载日期'/
comment on column td_dds_asc.LAST_LOAD_DATE is '数据最后一次加载日期'/
comment on column td_dds_asc.LOAD_FROM is '数据来源'/

create table td_dds_city
(
  CITY_ID NUMBER(10)  default NULL,
  CITY_CD VARCHAR2(20)  default NULL,
  CITY_EN_NM VARCHAR2(100)  default NULL,
  CITY_CN_NM VARCHAR2(100)  default NULL,
  CITY_COM_NM VARCHAR2(100)  default NULL,
  CITY_CN_NM_ABBR VARCHAR2(100)  default NULL,
  CITY_EN_NM_ABBR VARCHAR2(100)  default NULL,
  PROV_ID NUMBER(10)  default NULL,
  PROV_EN_NM VARCHAR2(100)  default NULL,
  PROV_CN_NM VARCHAR2(100)  default NULL,
  PROV_COM_NM VARCHAR2(100)  default NULL,
  PROV_CN_NM_ABBR VARCHAR2(100)  default NULL,
  PROV_EN_NM_ABBR VARCHAR2(100)  default NULL,
  VALID NUMBER(1)  default NULL,
  FIRST_LOAD_DATE DATE  default NULL,
  LAST_LOAD_DATE DATE  default NULL,
  LOAD_FROM VARCHAR2(10)  default NULL
);
comment on column td_dds_city.CITY_ID is '城市唯一编码'/
comment on column td_dds_city.CITY_CD is '城市代码'/
comment on column td_dds_city.CITY_EN_NM is '英文名'/
comment on column td_dds_city.CITY_CN_NM is '中文名'/
comment on column td_dds_city.CITY_COM_NM is '城市常用（通用）名'/
comment on column td_dds_city.CITY_CN_NM_ABBR is '中文缩写'/
comment on column td_dds_city.CITY_EN_NM_ABBR is '英文缩写'/
comment on column td_dds_city.PROV_ID is '省份ID'/
comment on column td_dds_city.PROV_EN_NM is '省英文'/
comment on column td_dds_city.PROV_CN_NM is '省中文'/
comment on column td_dds_city.PROV_COM_NM is '省份常用（通用）名'/
comment on column td_dds_city.PROV_CN_NM_ABBR is '省中文简称'/
comment on column td_dds_city.PROV_EN_NM_ABBR is '省英文缩写'/
comment on column td_dds_city.VALID is '数据是否有效：1：有效'/
comment on column td_dds_city.FIRST_LOAD_DATE is '数据第一次加载日期'/
comment on column td_dds_city.LAST_LOAD_DATE is '数据最后一次加载日期'/
comment on column td_dds_city.LOAD_FROM is '数据来源'/

create table tc_kpi
(

  KPI_ID NUMBER  default NULL,
  KPI_CD VARCHAR2(20)  default NULL,
  KPI_NM VARCHAR2(100)  default NULL,
  KPI_CAT VARCHAR2(100)  default NULL,
  KPI_UNIT VARCHAR2(50)  default NULL,
  DATA_TP VARCHAR2(100)  default NULL,
  STAT_FREQ VARCHAR2(100)  default NULL,
  DATA_PREC NUMBER  default NULL,
  KPI_SRC_TP CHAR(1)  default NULL,
  KPI_AGG_TP VARCHAR2(20)  default NULL,
  COMMENTS VARCHAR2(100)  default NULL,
  EFFECTIVE_DATE DATE  default NULL,
  END_DATE DATE  default NULL,
  VALID NUMBER(1)  default NULL,
  CREATE_TIMESTAMP DATE  default NULL,
  UPDATE_TIMESTAMP DATE  default NULL,
  CREATE_BY VARCHAR2(20)  default NULL,
  UPDATE_BY VARCHAR2(20)  default NULL,
  DATA_OWNER VARCHAR2(20)  default NULL
);
comment on column tc_kpi.KPI_ID is '对应二期序号。例如，1，1.1'/
comment on column tc_kpi.KPI_CD is 'KPI的编码，按照编码规则，分为两层，第一层是KPI分类，第二层是KPI在本分类中的排序'/
comment on column tc_kpi.KPI_NM is 'KPI名称'/
comment on column tc_kpi.KPI_CAT is '指标分类，例如“产值”'/
comment on column tc_kpi.KPI_UNIT is '例如：元'/
comment on column tc_kpi.DATA_TP is '指标的数据格式，填写：INTEGER,DECIAL,PERCENTAGE,'/
comment on column tc_kpi.STAT_FREQ is '统计频率:HOUR,DAY,WEEK,MONTH,QUARTER,YEAR,HALF-YEAR,10-DAYS'/
comment on column tc_kpi.DATA_PREC is '指标数据精度，对应DECIMAL和PERCENTAGE,如果两位小数，填写2'/
comment on column tc_kpi.KPI_SRC_TP is '指标类型：1：原始指标2：衍生指标'/
comment on column tc_kpi.KPI_AGG_TP is 'KPI汇总类型：1、按维度直接汇总;2、不能按维度直接汇总，必须计算，例如进站次数不能简单累加'/
comment on column tc_kpi.COMMENTS is ''/
comment on column tc_kpi.EFFECTIVE_DATE is '起效日期'/
comment on column tc_kpi.END_DATE is '结束日期'/
comment on column tc_kpi.VALID is '有效标志'/
comment on column tc_kpi.CREATE_TIMESTAMP is '创建时间'/
comment on column tc_kpi.UPDATE_TIMESTAMP is '修改时间'/
comment on column tc_kpi.CREATE_BY is '创建者'/
comment on column tc_kpi.UPDATE_BY is '修改人'/
comment on column tc_kpi.DATA_OWNER is '数据拥有者'/


create table tf_kpi_rpt
(

  KPI_ID NUMBER(10)  default NULL,
  PERIOD_TP VARCHAR2(1)  default NULL,
  PERIOD_CD VARCHAR2(20)  default NULL,
  ORG_TP VARCHAR2(20)  default NULL,
  ORG_ID NUMBER(10)  default NULL,
  VEH_AGE_ID NUMBER(10)  default NULL,
  MODEL_ID NUMBER(10)  default NULL,
  KPI_VAL NUMBER  default NULL,
  LP_KPI_VAL NUMBER  default NULL,
  LY_KPI_VAL NUMBER  default NULL,
  FIRST_LOAD_DATE DATE  default NULL,
  LAST_LOAD_DATE DATE  default NULL,
  LOAD_FROM VARCHAR2(10)  default NULL


);
comment on column tf_kpi_rpt.KPI_ID is '对应二期序号。例如，1，1.1'/
comment on column tf_kpi_rpt.PERIOD_TP is '时间类型: D(日);W(周);M(月);Q(季);H(半年);Y(年);'/
comment on column tf_kpi_rpt.PERIOD_CD is '统计周期: yyyymmdd(日); yyyymm(月); yyyyQx(季度); yyyyHx(半年); yyyy(年);'/
comment on column tf_kpi_rpt.ORG_TP is 'ASC(维修站); FMC(小区); REGION(大区); CITY(城市); PROVINCE(省份); COUNTRY(全国)；ASCGROUP(经销商集团);'/
comment on column tf_kpi_rpt.ORG_ID is '存放ASC_ID/FMC_ID/REGION_ID/CITY_ID/PROV_ID/BRAND_ID....'/
comment on column tf_kpi_rpt.VEH_AGE_ID is '车龄ID'/
comment on column tf_kpi_rpt.MODEL_ID is '车型ID'/
comment on column tf_kpi_rpt.KPI_VAL is '当期指标值;如:202002期对应指标'/
comment on column tf_kpi_rpt.LP_KPI_VAL is '上期指标值;如:202002对应上期202001指标'/
comment on column tf_kpi_rpt.LY_KPI_VAL is '去年同期值;如:202002对应去年同期201902指标'/
comment on column tf_kpi_rpt.FIRST_LOAD_DATE is '数据第一次加载日期'/
comment on column tf_kpi_rpt.LAST_LOAD_DATE is '数据最后一次加载日期'/
comment on column tf_kpi_rpt.LOAD_FROM is '数据来源'/


-- 基盘总览表
create table TF_BASE_CSTMR_RPT
(
	PERIOD_TP VARCHAR2(1) default NULL,
	PERIOD_CD VARCHAR2(20) default NULL,
	ORG_TP VARCHAR2(20) default NULL,
	ORG_ID NUMBER(10) default NULL,
	MODEL_ID NUMBER(10) default NULL,
	VEH_AGE_ID NUMBER(10) default NULL,
	BASE_CSTMR_ONE_YEAR NUMBER(16) default NULL,
	BASE_CSTMR_FIVE_YEAR NUMBER(16) default NULL,
	ONE_YEAR_CAR_BASE_CSTMR NUMBER(16) default NULL,
	ONE_YEAR_CAR_SALE NUMBER(16) default NULL,
	ONE_YEAR_CAR_IN_TIMES NUMBER(16) default NULL,
	ONE_YEAR_CAR_IN_TIMES_MOL NUMBER(16) default NULL,
	ONE_YEAR_CAR_IN_TIMES_DEN NUMBER(16) default NULL,
	ONE_YEAR_CAR_PRICE NUMBER(16) default NULL,
	ONE_YEAR_CAR_PRICE_MOL NUMBER(16) default NULL,
	SEC_YEAR_CAR_BASE_CSTMR NUMBER(16) default NULL,
	SEC_YEAR_CAR_SALE NUMBER(16) default NULL,
	SEC_YEAR_CAR_IN_TIMES NUMBER(16) default NULL,
	SEC_YEAR_CAR_IN_TIMES_MOL NUMBER(16) default NULL,
	SEC_YEAR_CAR_IN_TIMES_DEN NUMBER(16) default NULL,
	SEC_YEAR_CAR_PRICE NUMBER(16) default NULL,
	SEC_YEAR_CAR_PRICE_MOL NUMBER(16) default NULL,
	CAR_OT_ASC_BASE_CSTMR NUMBER(16) default NULL,
	CAR_OT_ASC_IN_TIMES NUMBER(16) default NULL,
	CAR_OT_ASC_IN_TIMES_MOL NUMBER(16) default NULL,
	CAR_OT_ASC_IN_TIMES_DEN NUMBER(16) default NULL,
	CAR_OT_ASC_PRICE NUMBER(16) default NULL,
	CAR_OT_ASC_PRICE_MOL NUMBER(16) default NULL,
	LY_RETAIN_BASE_CSTMR NUMBER(16) default NULL,
	LY_RETAIN_BASE_CSTMR_DEN NUMBER(16) default NULL,
	LY_RETAIN_IN_TIMES NUMBER(16) default NULL,
	LY_RETAIN_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_RETAIN_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_RETAIN_PRICE NUMBER(16) default NULL,
	LY_RETAIN_PRICE_MOL NUMBER(16) default NULL,
	OY_RETAIN_BASE_CSTMR NUMBER(16) default NULL,
	OY_RETAIN_BASE_CSTMR_DEN NUMBER(16) default NULL,
	OY_RETAIN_IN_TIMES NUMBER(16) default NULL,
	OY_RETAIN_IN_TIMES_MOL NUMBER(16) default NULL,
	OY_RETAIN_IN_TIMES_DEN NUMBER(16) default NULL,
	OY_RETAIN_PRICE NUMBER(16) default NULL,
	OY_RETAIN_PRICE_MOL NUMBER(16) default NULL,
	CAR_OT_ASC_BASE_ALL_CSTMR NUMBER(16) default NULL,
	CAR_OT_ASC_ALL_IN_TIMES NUMBER(16) default NULL,
	CAR_OT_ASC_ALL_IN_TIMES_MOL NUMBER(16) default NULL,
	CAR_OT_ASC_ALL_IN_TIMES_DEN NUMBER(16) default NULL,
	CAR_OT_ASC_ALL_PRICE NUMBER(16) default NULL,
	CAR_OT_ASC_ALL_PRICE_MOL NUMBER(16) default NULL,
	TRU_BASE_CSTMR NUMBER(16) default NULL,
	TRU_BASE_IN_TIMES NUMBER(16) default NULL,
	TRU_BASE_IN_TIMES_MOL NUMBER(16) default NULL,
	TRU_BASE_IN_TIMES_DEN NUMBER(16) default NULL,
	TRU_BASE_PRICE NUMBER(16) default NULL,
	TRU_BASE_PRICE_MOL NUMBER(16) default NULL,
	BASE_CSTMR_ONE_YEAR_NUM NUMBER(16) default NULL,
	BRAND_LOYALTY_NUM NUMBER(16) default NULL,
	BRAND_LOYALTY_DEN NUMBER(16) default NULL,
	NEW_CAR_ADD_BASE_NUM NUMBER(16) default NULL,
	NEW_CAR_ADD_BASE_DEN NUMBER(16) default NULL,
	OWN_ASC_BASE_NUM NUMBER(16) default NULL,
	OWN_ASC_BASE_DEN NUMBER(16) default NULL,
	BASE_CSTMR_FIVE_YEAR_NUM NUMBER(16) default NULL,
	LP_BASE_CSTMR_ONE_YEAR NUMBER(16) default NULL,
	LP_BASE_CSTMR_FIVE_YEAR NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_BASE_CSTMR NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_SALE NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_IN_TIMES NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_PRICE NUMBER(16) default NULL,
	LP_ONE_YEAR_CAR_PRICE_MOL NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_BASE_CSTMR NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_SALE NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_IN_TIMES NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_PRICE NUMBER(16) default NULL,
	LP_SEC_YEAR_CAR_PRICE_MOL NUMBER(16) default NULL,
	LP_CAR_OT_ASC_BASE_CSTMR NUMBER(16) default NULL,
	LP_CAR_OT_ASC_IN_TIMES NUMBER(16) default NULL,
	LP_CAR_OT_ASC_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_CAR_OT_ASC_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_CAR_OT_ASC_PRICE NUMBER(16) default NULL,
	LP_CAR_OT_ASC_PRICE_MOL NUMBER(16) default NULL,
	LP_LY_RETAIN_BASE_CSTMR NUMBER(16) default NULL,
	LP_LY_RETAIN_BASE_CSTMR_DEN NUMBER(16) default NULL,
	LP_LY_RETAIN_IN_TIMES NUMBER(16) default NULL,
	LP_LY_RETAIN_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_LY_RETAIN_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_LY_RETAIN_PRICE NUMBER(16) default NULL,
	LP_LY_RETAIN_PRICE_MOL NUMBER(16) default NULL,
	LP_OY_RETAIN_BASE_CSTMR NUMBER(16) default NULL,
	LP_OY_RETAIN_BASE_CSTMR_DEN NUMBER(16) default NULL,
	LP_OY_RETAIN_IN_TIMES NUMBER(16) default NULL,
	LP_OY_RETAIN_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_OY_RETAIN_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_OY_RETAIN_PRICE NUMBER(16) default NULL,
	LP_OY_RETAIN_PRICE_MOL NUMBER(16) default NULL,
	LP_CAR_OT_ASC_BASE_ALL_CSTMR NUMBER(16) default NULL,
	LP_CAR_OT_ASC_ALL_IN_TIMES NUMBER(16) default NULL,
	LP_CAR_OT_ASC_ALL_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_CAR_OT_ASC_ALL_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_CAR_OT_ASC_ALL_PRICE NUMBER(16) default NULL,
	LP_CAR_OT_ASC_ALL_PRICE_MOL NUMBER(16) default NULL,
	LP_TRU_BASE_CSTMR NUMBER(16) default NULL,
	LP_TRU_BASE_IN_TIMES NUMBER(16) default NULL,
	LP_TRU_BASE_IN_TIMES_MOL NUMBER(16) default NULL,
	LP_TRU_BASE_IN_TIMES_DEN NUMBER(16) default NULL,
	LP_TRU_BASE_PRICE NUMBER(16) default NULL,
	LP_TRU_BASE_PRICE_MOL NUMBER(16) default NULL,
	LP_BASE_CSTMR_ONE_YEAR_NUM NUMBER(16) default NULL,
	LP_BRAND_LOYALTY_NUM NUMBER(16) default NULL,
	LP_BRAND_LOYALTY_DEN NUMBER(16) default NULL,
	LP_NEW_CAR_ADD_BASE_NUM NUMBER(16) default NULL,
	LP_NEW_CAR_ADD_BASE_DEN NUMBER(16) default NULL,
	LP_OWN_ASC_BASE_NUM NUMBER(16) default NULL,
	LP_OWN_ASC_BASE_DEN NUMBER(16) default NULL,
	LP_BASE_CSTMR_FIVE_YEAR_NUM NUMBER(16) default NULL,
	LY_BASE_CSTMR_ONE_YEAR NUMBER(16) default NULL,
	LY_BASE_CSTMR_FIVE_YEAR NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_BASE_CSTMR NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_SALE NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_IN_TIMES NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_PRICE NUMBER(16) default NULL,
	LY_ONE_YEAR_CAR_PRICE_MOL NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_BASE_CSTMR NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_SALE NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_IN_TIMES NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_PRICE NUMBER(16) default NULL,
	LY_SEC_YEAR_CAR_PRICE_MOL NUMBER(16) default NULL,
	LY_CAR_OT_ASC_BASE_CSTMR NUMBER(16) default NULL,
	LY_CAR_OT_ASC_IN_TIMES NUMBER(16) default NULL,
	LY_CAR_OT_ASC_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_CAR_OT_ASC_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_CAR_OT_ASC_PRICE NUMBER(16) default NULL,
	LY_CAR_OT_ASC_PRICE_MOL NUMBER(16) default NULL,
	LY_LY_RETAIN_BASE_CSTMR NUMBER(16) default NULL,
	LY_LY_RETAIN_BASE_CSTMR_DEN NUMBER(16) default NULL,
	LY_LY_RETAIN_IN_TIMES NUMBER(16) default NULL,
	LY_LY_RETAIN_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_LY_RETAIN_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_LY_RETAIN_PRICE NUMBER(16) default NULL,
	LY_LY_RETAIN_PRICE_MOL NUMBER(16) default NULL,
	LY_OY_RETAIN_BASE_CSTMR NUMBER(16) default NULL,
	LY_OY_RETAIN_BASE_CSTMR_DEN NUMBER(16) default NULL,
	LY_OY_RETAIN_IN_TIMES NUMBER(16) default NULL,
	LY_OY_RETAIN_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_OY_RETAIN_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_OY_RETAIN_PRICE NUMBER(16) default NULL,
	LY_OY_RETAIN_PRICE_MOL NUMBER(16) default NULL,
	LY_CAR_OT_ASC_BASE_ALL_CSTMR NUMBER(16) default NULL,
	LY_CAR_OT_ASC_ALL_IN_TIMES NUMBER(16) default NULL,
	LY_CAR_OT_ASC_ALL_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_CAR_OT_ASC_ALL_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_CAR_OT_ASC_ALL_PRICE NUMBER(16) default NULL,
	LY_CAR_OT_ASC_ALL_PRICE_MOL NUMBER(16) default NULL,
	LY_TRU_BASE_CSTMR NUMBER(16) default NULL,
	LY_TRU_BASE_IN_TIMES NUMBER(16) default NULL,
	LY_TRU_BASE_IN_TIMES_MOL NUMBER(16) default NULL,
	LY_TRU_BASE_IN_TIMES_DEN NUMBER(16) default NULL,
	LY_TRU_BASE_PRICE NUMBER(16) default NULL,
	LY_TRU_BASE_PRICE_MOL NUMBER(16) default NULL,
	LY_BASE_CSTMR_ONE_YEAR_NUM NUMBER(16) default NULL,
	LY_BRAND_LOYALTY_NUM NUMBER(16) default NULL,
	LY_BRAND_LOYALTY_DEN NUMBER(16) default NULL,
	LY_NEW_CAR_ADD_BASE_NUM NUMBER(16) default NULL,
	LY_NEW_CAR_ADD_BASE_DEN NUMBER(16) default NULL,
	LY_OWN_ASC_BASE_NUM NUMBER(16) default NULL,
	LY_OWN_ASC_BASE_DEN NUMBER(16) default NULL,
	LY_BASE_CSTMR_FIVE_YEAR_NUM NUMBER(16) default NULL,
	FIRST_LOAD_DATE VARCHAR2(100) default NULL,
	LAST_LOAD_DATE VARCHAR2(100) default NULL,
	LOAD_FROM VARCHAR2(10) default NULL
);

comment on column TF_BASE_CSTMR_RPT.PERIOD_TP is '时间类型: D(日);W(周);M(月);Q(季);H(半年);Y(年);'/
comment on column TF_BASE_CSTMR_RPT.PERIOD_CD is '统计周期: yyyymmdd(日); yyyymm(月); yyyyQx(季度); yyyyHx(半年); yyyy(年);'/
comment on column TF_BASE_CSTMR_RPT.ORG_TP is 'ASC(维修站); FMC(小区); REGION(大区); CITY(城市); PROVINCE(省份); COUNTRY(全国)；ASCGROUP(经销商集团);'/
comment on column TF_BASE_CSTMR_RPT.ORG_ID is '存放ASC_ID/FMC_ID/REGION_ID/CITY_ID/PROV_ID/BRAND_ID....'/
comment on column TF_BASE_CSTMR_RPT.MODEL_ID is '车型ID'/
comment on column TF_BASE_CSTMR_RPT.VEH_AGE_ID is '车龄'/
comment on column TF_BASE_CSTMR_RPT.BASE_CSTMR_ONE_YEAR is '一年基盘'/
comment on column TF_BASE_CSTMR_RPT.BASE_CSTMR_FIVE_YEAR is '五年基盘'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_BASE_CSTMR is '新车基盘（新车基盘转化率分子）'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_SALE is '新车销量（新车基盘转化率分母）'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_IN_TIMES is '新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_IN_TIMES_MOL is '新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_IN_TIMES_DEN is '新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_PRICE is '新车客单价'/
comment on column TF_BASE_CSTMR_RPT.ONE_YEAR_CAR_PRICE_MOL is '新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_BASE_CSTMR is '次新车基盘（次新车基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_SALE is '次新车销量（次新车基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_IN_TIMES is '次新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_IN_TIMES_MOL is '次新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_IN_TIMES_DEN is '次新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_PRICE is '次新车客单价'/
comment on column TF_BASE_CSTMR_RPT.SEC_YEAR_CAR_PRICE_MOL is '次新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_BASE_CSTMR is '他店流入新车基盘'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_IN_TIMES is '他店流入新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_IN_TIMES_MOL is '他店流入新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_IN_TIMES_DEN is '他店流入新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_PRICE is '他店流入新车客单价'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_PRICE_MOL is '他店流入新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_BASE_CSTMR is '上一年基盘留存（基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_BASE_CSTMR_DEN is '上一年基盘留存（基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_IN_TIMES is '上一年基盘留存进站频次'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_IN_TIMES_MOL is '上一年基盘留存进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_IN_TIMES_DEN is '上一年基盘留存进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_PRICE is '上一年基盘留存客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_RETAIN_PRICE_MOL is '上一年基盘留存客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_BASE_CSTMR is '他年留存基盘（基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_BASE_CSTMR_DEN is '他年留存基盘分母（基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_IN_TIMES is '他年留存基盘车进站频次'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_IN_TIMES_MOL is '他年留存基盘车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_IN_TIMES_DEN is '他年留存基盘车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_PRICE is '他年留存基盘车客单价'/
comment on column TF_BASE_CSTMR_RPT.OY_RETAIN_PRICE_MOL is '他年留存基盘车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_BASE_ALL_CSTMR is '外店基盘流入'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_ALL_IN_TIMES is '外店基盘流入频次'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_ALL_IN_TIMES_MOL is '外店基盘流入频次-分子'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_ALL_IN_TIMES_DEN is '外店基盘流入频次-分母'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_ALL_PRICE is '外店基盘流入客单价'/
comment on column TF_BASE_CSTMR_RPT.CAR_OT_ASC_ALL_PRICE_MOL is '外店基盘流入客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.TRU_BASE_CSTMR is '托管基盘流入'/
comment on column TF_BASE_CSTMR_RPT.TRU_BASE_IN_TIMES is '托管基盘流入频次'/
comment on column TF_BASE_CSTMR_RPT.TRU_BASE_IN_TIMES_MOL is '托管基盘流入频次-分子'/
comment on column TF_BASE_CSTMR_RPT.TRU_BASE_IN_TIMES_DEN is '托管基盘流入频次-分母'/
comment on column TF_BASE_CSTMR_RPT.TRU_BASE_PRICE is '托管基盘流入客单价'/
comment on column TF_BASE_CSTMR_RPT.TRU_BASE_PRICE_MOL is '托管基盘流入客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.BASE_CSTMR_ONE_YEAR_NUM is '一年忠诚率分子(一年基盘分子)'/
comment on column TF_BASE_CSTMR_RPT.BRAND_LOYALTY_NUM is '品牌忠诚率分子'/
comment on column TF_BASE_CSTMR_RPT.BRAND_LOYALTY_DEN is '品牌忠诚率分母'/
comment on column TF_BASE_CSTMR_RPT.NEW_CAR_ADD_BASE_NUM is '新车新增基盘-分子'/
comment on column TF_BASE_CSTMR_RPT.NEW_CAR_ADD_BASE_DEN is '新车新增基盘-分母'/
comment on column TF_BASE_CSTMR_RPT.OWN_ASC_BASE_NUM is '本店原有基盘-分子'/
comment on column TF_BASE_CSTMR_RPT.OWN_ASC_BASE_DEN is '本店原有基盘-分母'/
comment on column TF_BASE_CSTMR_RPT.BASE_CSTMR_FIVE_YEAR_NUM is '客户流失率(五年基盘分子)'/
comment on column TF_BASE_CSTMR_RPT.LP_BASE_CSTMR_ONE_YEAR is '(上期值)一年基盘'/
comment on column TF_BASE_CSTMR_RPT.LP_BASE_CSTMR_FIVE_YEAR is '(上期值)五年基盘'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_BASE_CSTMR is '(上期值)新车基盘（新车基盘转化率分子）'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_SALE is '(上期值)新车销量（新车基盘转化率分母）'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_IN_TIMES is '(上期值)新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_IN_TIMES_MOL is '(上期值)新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_IN_TIMES_DEN is '(上期值)新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_PRICE is '(上期值)新车客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_ONE_YEAR_CAR_PRICE_MOL is '(上期值)新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_BASE_CSTMR is '(上期值)次新车基盘（次新车基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_SALE is '(上期值)次新车销量（次新车基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_IN_TIMES is '(上期值)次新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_IN_TIMES_MOL is '(上期值)次新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_IN_TIMES_DEN is '(上期值)次新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_PRICE is '(上期值)次新车客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_SEC_YEAR_CAR_PRICE_MOL is '(上期值)次新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_BASE_CSTMR is '(上期值)他店流入新车基盘'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_IN_TIMES is '(上期值)他店流入新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_IN_TIMES_MOL is '(上期值)他店流入新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_IN_TIMES_DEN is '(上期值)他店流入新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_PRICE is '(上期值)他店流入新车客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_PRICE_MOL is '(上期值)他店流入新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_BASE_CSTMR is '(上期值)上一年基盘留存（基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_BASE_CSTMR_DEN is '(上期值)上一年基盘留存（基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_IN_TIMES is '(上期值)上一年基盘留存进站频次'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_IN_TIMES_MOL is '(上期值)上一年基盘留存进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_IN_TIMES_DEN is '(上期值)上一年基盘留存进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_PRICE is '(上期值)上一年基盘留存客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_LY_RETAIN_PRICE_MOL is '(上期值)上一年基盘留存客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_BASE_CSTMR is '(上期值)他年留存基盘（基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_BASE_CSTMR_DEN is '(上期值)他年留存基盘分母（基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_IN_TIMES is '(上期值)他年留存基盘车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_IN_TIMES_MOL is '(上期值)他年留存基盘车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_IN_TIMES_DEN is '(上期值)他年留存基盘车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_PRICE is '(上期值)他年留存基盘车客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_OY_RETAIN_PRICE_MOL is '(上期值)他年留存基盘车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_BASE_ALL_CSTMR is '(上期值)外店基盘流入'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_ALL_IN_TIMES is '(上期值)外店基盘流入频次'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_ALL_IN_TIMES_MOL is '(上期值)外店基盘流入频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_ALL_IN_TIMES_DEN is '(上期值)外店基盘流入频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_ALL_PRICE is '(上期值)外店基盘流入客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_CAR_OT_ASC_ALL_PRICE_MOL is '(上期值)外店基盘流入客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_TRU_BASE_CSTMR is '(上期值)托管基盘流入'/
comment on column TF_BASE_CSTMR_RPT.LP_TRU_BASE_IN_TIMES is '(上期值)托管基盘流入频次'/
comment on column TF_BASE_CSTMR_RPT.LP_TRU_BASE_IN_TIMES_MOL is '(上期值)托管基盘流入频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_TRU_BASE_IN_TIMES_DEN is '(上期值)托管基盘流入频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_TRU_BASE_PRICE is '(上期值)托管基盘流入客单价'/
comment on column TF_BASE_CSTMR_RPT.LP_TRU_BASE_PRICE_MOL is '(上期值)托管基盘流入客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_BASE_CSTMR_ONE_YEAR_NUM is '(上期值)一年忠诚率分子(一年基盘分子)'/
comment on column TF_BASE_CSTMR_RPT.LP_BRAND_LOYALTY_NUM is '(上期值)品牌忠诚率分子'/
comment on column TF_BASE_CSTMR_RPT.LP_BRAND_LOYALTY_DEN is '(上期值)品牌忠诚率分母'/
comment on column TF_BASE_CSTMR_RPT.LP_NEW_CAR_ADD_BASE_NUM is '(上期值)新车新增基盘-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_NEW_CAR_ADD_BASE_DEN is '(上期值)新车新增基盘-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_OWN_ASC_BASE_NUM is '(上期值)本店原有基盘-分子'/
comment on column TF_BASE_CSTMR_RPT.LP_OWN_ASC_BASE_DEN is '(上期值)本店原有基盘-分母'/
comment on column TF_BASE_CSTMR_RPT.LP_BASE_CSTMR_FIVE_YEAR_NUM is '(上期值)客户流失率(五年基盘分子)'/
comment on column TF_BASE_CSTMR_RPT.LY_BASE_CSTMR_ONE_YEAR is '(同期值)一年基盘'/
comment on column TF_BASE_CSTMR_RPT.LY_BASE_CSTMR_FIVE_YEAR is '(同期值)五年基盘'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_BASE_CSTMR is '(同期值)新车基盘（新车基盘转化率分子）'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_SALE is '(同期值)新车销量（新车基盘转化率分母）'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_IN_TIMES is '(同期值)新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_IN_TIMES_MOL is '(同期值)新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_IN_TIMES_DEN is '(同期值)新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_PRICE is '(同期值)新车客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_ONE_YEAR_CAR_PRICE_MOL is '(同期值)新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_BASE_CSTMR is '(同期值)次新车基盘（次新车基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_SALE is '(同期值)次新车销量（次新车基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_IN_TIMES is '(同期值)次新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_IN_TIMES_MOL is '(同期值)次新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_IN_TIMES_DEN is '(同期值)次新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_PRICE is '(同期值)次新车客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_SEC_YEAR_CAR_PRICE_MOL is '(同期值)次新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_BASE_CSTMR is '(同期值)他店流入新车基盘'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_IN_TIMES is '(同期值)他店流入新车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_IN_TIMES_MOL is '(同期值)他店流入新车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_IN_TIMES_DEN is '(同期值)他店流入新车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_PRICE is '(同期值)他店流入新车客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_PRICE_MOL is '(同期值)他店流入新车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_BASE_CSTMR is '(同期值)上一年基盘留存（基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_BASE_CSTMR_DEN is '(同期值)上一年基盘留存（基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_IN_TIMES is '(同期值)上一年基盘留存进站频次'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_IN_TIMES_MOL is '(同期值)上一年基盘留存进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_IN_TIMES_DEN is '(同期值)上一年基盘留存进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_PRICE is '(同期值)上一年基盘留存客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_LY_RETAIN_PRICE_MOL is '(同期值)上一年基盘留存客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_BASE_CSTMR is '(同期值)他年留存基盘（基盘转化率分子)'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_BASE_CSTMR_DEN is '(同期值)他年留存基盘分母（基盘转化率分母)'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_IN_TIMES is '(同期值)他年留存基盘车进站频次'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_IN_TIMES_MOL is '(同期值)他年留存基盘车进站频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_IN_TIMES_DEN is '(同期值)他年留存基盘车进站频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_PRICE is '(同期值)他年留存基盘车客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_OY_RETAIN_PRICE_MOL is '(同期值)他年留存基盘车客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_BASE_ALL_CSTMR is '(同期值)外店基盘流入'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_ALL_IN_TIMES is '(同期值)外店基盘流入频次'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_ALL_IN_TIMES_MOL is '(同期值)外店基盘流入频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_ALL_IN_TIMES_DEN is '(同期值)外店基盘流入频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_ALL_PRICE is '(同期值)外店基盘流入客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_CAR_OT_ASC_ALL_PRICE_MOL is '(同期值)外店基盘流入客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_TRU_BASE_CSTMR is '(同期值)托管基盘流入'/
comment on column TF_BASE_CSTMR_RPT.LY_TRU_BASE_IN_TIMES is '(同期值)托管基盘流入频次'/
comment on column TF_BASE_CSTMR_RPT.LY_TRU_BASE_IN_TIMES_MOL is '(同期值)托管基盘流入频次-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_TRU_BASE_IN_TIMES_DEN is '(同期值)托管基盘流入频次-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_TRU_BASE_PRICE is '(同期值)托管基盘流入客单价'/
comment on column TF_BASE_CSTMR_RPT.LY_TRU_BASE_PRICE_MOL is '(同期值)托管基盘流入客单价-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_BASE_CSTMR_ONE_YEAR_NUM is '(同期值)一年忠诚率分子(一年基盘分子)'/
comment on column TF_BASE_CSTMR_RPT.LY_BRAND_LOYALTY_NUM is '(同期值)品牌忠诚率分子'/
comment on column TF_BASE_CSTMR_RPT.LY_BRAND_LOYALTY_DEN is '(同期值)品牌忠诚率分母'/
comment on column TF_BASE_CSTMR_RPT.LY_NEW_CAR_ADD_BASE_NUM is '(同期值)新车新增基盘-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_NEW_CAR_ADD_BASE_DEN is '(同期值)新车新增基盘-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_OWN_ASC_BASE_NUM is '(同期值)本店原有基盘-分子'/
comment on column TF_BASE_CSTMR_RPT.LY_OWN_ASC_BASE_DEN is '(同期值)本店原有基盘-分母'/
comment on column TF_BASE_CSTMR_RPT.LY_BASE_CSTMR_FIVE_YEAR_NUM is '(同期值)客户流失率(五年基盘分子)'/
comment on column TF_BASE_CSTMR_RPT.FIRST_LOAD_DATE is '数据第一次加载日期'/
comment on column TF_BASE_CSTMR_RPT.LAST_LOAD_DATE is '数据最后一次加载日期'/
comment on column TF_BASE_CSTMR_RPT.LOAD_FROM is '数据来源'/


-- 维持率总览表
create table tf_cstmr_retention_rpt
(
PERIOD_TP VARCHAR2(1) default NULL,
PERIOD_CD VARCHAR2(20) default NULL,
ORG_TP VARCHAR2(20) default NULL,
ORG_ID NUMBER(10) default NULL,
VEH_AGE_ID NUMBER(10) default NULL,
MODEL_ID NUMBER(10) default NULL,
MODEL_LVL_1_CD VARCHAR2(100) default NULL,
MODEL_LVL_2_CD VARCHAR2(100) default NULL,
FIRST_MA_NUM_12 NUMBER(16) default NULL,
FIRST_MA_DEN_12 NUMBER(16) default NULL,
FIRST_MA_PAY_NUM_12 NUMBER(16) default NULL,
FIRST_MA_PAY_DEN_12 NUMBER(16) default NULL,
FIRST_MA_NUM_7 NUMBER(16) default NULL,
FIRST_MA_DEN_7 NUMBER(16) default NULL,
FIRST_MA_PAY_NUM_7 NUMBER(16) default NULL,
FIRST_MA_PAY_DEN_7 NUMBER(16) default NULL,
CSTMR_RETENTION_NUM_50 NUMBER(16) default NULL,
CSTMR_RETENTION_DEN_50 NUMBER(16) default NULL,
CSTMR_RETENTION_NUM_0 NUMBER(16) default NULL,
CSTMR_RETENTION_DEN_0 NUMBER(16) default NULL,
LP_FIRST_MA_NUM_12 NUMBER(16) default NULL,
LP_FIRST_MA_DEN_12 NUMBER(16) default NULL,
LP_FIRST_MA_PAY_NUM_12 NUMBER(16) default NULL,
LP_FIRST_MA_PAY_DEN_12 NUMBER(16) default NULL,
LP_FIRST_MA_NUM_7 NUMBER(16) default NULL,
LP_FIRST_MA_DEN_7 NUMBER(16) default NULL,
LP_FIRST_MA_PAY_NUM_7 NUMBER(16) default NULL,
LP_FIRST_MA_PAY_DEN_7 NUMBER(16) default NULL,
LP_CSTMR_RETENTION_NUM_50 NUMBER(16) default NULL,
LP_CSTMR_RETENTION_DEN_50 NUMBER(16) default NULL,
LP_CSTMR_RETENTION_NUM_0 NUMBER(16) default NULL,
LP_CSTMR_RETENTION_DEN_0 NUMBER(16) default NULL,
LY_FIRST_MA_NUM_12 NUMBER(16) default NULL,
LY_FIRST_MA_DEN_12 NUMBER(16) default NULL,
LY_FIRST_MA_PAY_NUM_12 NUMBER(16) default NULL,
LY_FIRST_MA_PAY_DEN_12 NUMBER(16) default NULL,
LY_FIRST_MA_NUM_7 NUMBER(16) default NULL,
LY_FIRST_MA_DEN_7 NUMBER(16) default NULL,
LY_FIRST_MA_PAY_NUM_7 NUMBER(16) default NULL,
LY_FIRST_MA_PAY_DEN_7 NUMBER(16) default NULL,
LY_CSTMR_RETENTION_NUM_50 NUMBER(16) default NULL,
LY_CSTMR_RETENTION_DEN_50 NUMBER(16) default NULL,
LY_CSTMR_RETENTION_NUM_0 NUMBER(16) default NULL,
LY_CSTMR_RETENTION_DEN_0 NUMBER(16) default NULL,
FIRST_LOAD_DATE VARCHAR2(100) default NULL,
LAST_LOAD_DATE VARCHAR2(100) default NULL,
LOAD_FROM VARCHAR2(10) default NULL
);

comment on column tf_cstmr_retention_rpt.PERIOD_TP is'时间类型: D(日);W(周);M(月);Q(季);H(半年);Y(年);'/
comment on column tf_cstmr_retention_rpt.PERIOD_CD is'统计周期: yyyymmdd(日); yyyymm(月); yyyyQx(季度); yyyyHx(半年); yyyy(年);'/
comment on column tf_cstmr_retention_rpt.ORG_TP is'ASC(维修站); FMC(小区); REGION(大区); CITY(城市); PROVINCE(省份); COUNTRY(全国)；ASCGROUP(经销商集团);'/
comment on column tf_cstmr_retention_rpt.ORG_ID is'存放ASC_ID/FMC_ID/REGION_ID/CITY_ID/PROV_ID/....'/
comment on column tf_cstmr_retention_rpt.VEH_AGE_ID is'车龄'/
comment on column tf_cstmr_retention_rpt.MODEL_ID is'车型ID'/
comment on column tf_cstmr_retention_rpt.MODEL_LVL_1_CD is''/
comment on column tf_cstmr_retention_rpt.MODEL_LVL_2_CD is''/
comment on column tf_cstmr_retention_rpt.FIRST_MA_NUM_12 is'首保进站率分子_12个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_DEN_12 is'首保进站率分母_12个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_PAY_NUM_12 is'首次付费保养进站率分子_12个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_PAY_DEN_12 is'首次付费保养进站率分母_12个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_NUM_7 is'首保进站率分子_7个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_DEN_7 is'首保进站率分母_7个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_PAY_NUM_7 is'首次付费保养进站率分子_7个月周期'/
comment on column tf_cstmr_retention_rpt.FIRST_MA_PAY_DEN_7 is'首次付费保养进站率分母_7个月周期'/
comment on column tf_cstmr_retention_rpt.CSTMR_RETENTION_NUM_50 is'原有基盘维持率分子_大于50元消费'/
comment on column tf_cstmr_retention_rpt.CSTMR_RETENTION_DEN_50 is'原有基盘维持率分母_大于50元消费'/
comment on column tf_cstmr_retention_rpt.CSTMR_RETENTION_NUM_0 is'原有基盘维持率分子_无消费要求'/
comment on column tf_cstmr_retention_rpt.CSTMR_RETENTION_DEN_0 is'原有基盘维持率分母_无消费要求'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_NUM_12 is'(上期值)首保进站率分子_12个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_DEN_12 is'(上期值)首保进站率分母_12个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_PAY_NUM_12 is'(上期值)首次付费保养进站率分子_12个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_PAY_DEN_12 is'(上期值)首次付费保养进站率分母_12个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_NUM_7 is'(上期值)首保进站率分子_7个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_DEN_7 is'(上期值)首保进站率分母_7个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_PAY_NUM_7 is'(上期值)首次付费保养进站率分子_7个月周期'/
comment on column tf_cstmr_retention_rpt.LP_FIRST_MA_PAY_DEN_7 is'(上期值)首次付费保养进站率分母_7个月周期'/
comment on column tf_cstmr_retention_rpt.LP_CSTMR_RETENTION_NUM_50 is'(上期值)原有基盘维持率分子_大于50元消费'/
comment on column tf_cstmr_retention_rpt.LP_CSTMR_RETENTION_DEN_50 is'(上期值)原有基盘维持率分母_大于50元消费'/
comment on column tf_cstmr_retention_rpt.LP_CSTMR_RETENTION_NUM_0 is'(上期值)原有基盘维持率分子_无消费要求'/
comment on column tf_cstmr_retention_rpt.LP_CSTMR_RETENTION_DEN_0 is'(上期值)原有基盘维持率分母_无消费要求'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_NUM_12 is'(同期值)首保进站率分子_12个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_DEN_12 is'(同期值)首保进站率分母_12个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_PAY_NUM_12 is'(同期值)首次付费保养进站率分子_12个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_PAY_DEN_12 is'(同期值)首次付费保养进站率分母_12个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_NUM_7 is'(同期值)首保进站率分子_7个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_DEN_7 is'(同期值)首保进站率分母_7个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_PAY_NUM_7 is'(同期值)首次付费保养进站率分子_7个月周期'/
comment on column tf_cstmr_retention_rpt.LY_FIRST_MA_PAY_DEN_7 is'(同期值)首次付费保养进站率分母_7个月周期'/
comment on column tf_cstmr_retention_rpt.LY_CSTMR_RETENTION_NUM_50 is'(同期值)原有基盘维持率分子_大于50元消费'/
comment on column tf_cstmr_retention_rpt.LY_CSTMR_RETENTION_DEN_50 is'(同期值)原有基盘维持率分母_大于50元消费'/
comment on column tf_cstmr_retention_rpt.LY_CSTMR_RETENTION_NUM_0 is'(同期值)原有基盘维持率分子_无消费要求'/
comment on column tf_cstmr_retention_rpt.LY_CSTMR_RETENTION_DEN_0 is'(同期值)原有基盘维持率分母_无消费要求'/
comment on column tf_cstmr_retention_rpt.FIRST_LOAD_DATE is'数据第一次加载日期'/
comment on column tf_cstmr_retention_rpt.LAST_LOAD_DATE is'数据最后一次加载日期'/
comment on column tf_cstmr_retention_rpt.LOAD_FROM is'数据来源'/


-- 维持率总览表
create table td_date
(
DATE_ID NUMBER(10) default NULL,
CALENDAR_DATE VARCHAR2(100) default NULL,
CALENDAR_WEEK CHAR(7) default NULL,
CALENDAR_MONTH NUMBER(10) default NULL,
CALENDAR_QUARTER CHAR(6) default NULL,
CALENDAR_YEAR NUMBER(10) default NULL,
WEEKDAY_NM CHAR(10) default NULL,
MONTH_NM CHAR(10) default NULL,
QUARTER_NM CHAR(10) default NULL,
HALF_YEAR CHAR(1) default NULL,
YEAR_DAY_NUM NUMBER(10) default NULL,
QUARTER_DAY_NUM NUMBER(10) default NULL,
MONTH_DAY_NUM NUMBER(10) default NULL,
WEEK_DAY_NUM NUMBER(10) default NULL,
WEEKEND_FLG CHAR(1) default NULL,
HOLIDAY_FLG CHAR(1) default NULL,
MONTH_END_DAY_FLG CHAR(1) default NULL,
WEEK_END_DAY_FLG CHAR(1) default NULL,
FISCAL_WEEK CHAR(7) default NULL,
FISCAL_MONTH CHAR(6) default NULL,
FISCAL_QUARTER CHAR(6) default NULL,
FISCAL_HALF_YEAR CHAR(1) default NULL,
FISCAL_YEAR CHAR(4) default NULL,
EFF_DT VARCHAR2(100) default NULL,
END_DT VARCHAR2(100) default NULL,
CREATE_TMSTP VARCHAR2(100) default NULL,
UPDATE_TMSTP VARCHAR2(100) default NULL,
CREATE_BY VARCHAR2(20) default NULL,
UPDATE_BY VARCHAR2(20) default NULL,
VALID NUMBER(1) default NULL,
DATA_OWNER CHAR(10) default NULL,
NEWS_WEEK NUMBER(5) default NULL,
NEWS_MONTH NUMBER(10) default NULL,
NEWS_MONTH_NAME VARCHAR2(17) default NULL,
ORDER_DAY NUMBER(6,2) default NULL,
DD_HOLIDAY_FLG CHAR(1) default NULL,
BLNG_DAY_FLG CHAR(1) default NULL
);

comment on column td_date.DATE_ID is'日期ID,eg. 20061009'/
comment on column td_date.CALENDAR_DATE is'日历日期'/
comment on column td_date.CALENDAR_WEEK is'日历周：eg 2006w01, 2006w52'/
comment on column td_date.CALENDAR_MONTH is'日历月：eg 200610'/
comment on column td_date.CALENDAR_QUARTER is'日历季度：eg, 2006Q3, 2007Q1'/
comment on column td_date.CALENDAR_YEAR is'日历年：eg, 2006'/
comment on column td_date.WEEKDAY_NM is'周日名称：eg Monday, Sunday'/
comment on column td_date.MONTH_NM is'月份名称：eg. October'/
comment on column td_date.QUARTER_NM is'季度名称：eg,Spring, Summer, Autumn, Winter'/
comment on column td_date.HALF_YEAR is'1: first half,2: 2nd half'/
comment on column td_date.YEAR_DAY_NUM is'the serial number of the year, such as 20060101 is the 1st day of the year, 20061231 is the 365 day of the year.'/
comment on column td_date.QUARTER_DAY_NUM is'the serial number of the quarter, such as 20061001 is the 1st day of Q4, 20061101 is the 32 day of the quarter.'/
comment on column td_date.MONTH_DAY_NUM is'the serial number of the month, such as 20061001 is the 1st day of October, 20061031 is the 31 day of October.'/
comment on column td_date.WEEK_DAY_NUM is'the serial number of the week, such as 20061001 is the 7 th day of week, 20061031 is the 2nd day of week.'/
comment on column td_date.WEEKEND_FLG is'y: weekend,n: not weekend'/
comment on column td_date.HOLIDAY_FLG is'y: holiday,n: not holiday'/
comment on column td_date.MONTH_END_DAY_FLG is'y: month last day, such as 20061031 is the end day of October,n: not month end day'/
comment on column td_date.WEEK_END_DAY_FLG is'y:  last day of the week, such as 20061031 is the end day of its week,n: not week end day'/
comment on column td_date.FISCAL_WEEK is'财务周'/
comment on column td_date.FISCAL_MONTH is'财务月'/
comment on column td_date.FISCAL_QUARTER is'财务季度'/
comment on column td_date.FISCAL_HALF_YEAR is'财务半年'/
comment on column td_date.FISCAL_YEAR is'财务年'/
comment on column td_date.EFF_DT is''/
comment on column td_date.END_DT is''/
comment on column td_date.CREATE_TMSTP is''/
comment on column td_date.UPDATE_TMSTP is''/
comment on column td_date.CREATE_BY is''/
comment on column td_date.UPDATE_BY is''/
comment on column td_date.VALID is''/
comment on column td_date.DATA_OWNER is''/
comment on column td_date.NEWS_WEEK is'NEWS审核周'/
comment on column td_date.NEWS_MONTH is'NEWS审核月'/
comment on column td_date.NEWS_MONTH_NAME is'NEWS审核月名称,包含news周.如200201(201-204)'/
comment on column td_date.ORDER_DAY is'订单日(星期一0.45, 星期二/三/四/五 1, 星期六0.55, 星期天0)，逢节假日由市场部自行调整'/
comment on column td_date.DD_HOLIDAY_FLG is''/
comment on column td_date.BLNG_DAY_FLG is'开票日标记'/

