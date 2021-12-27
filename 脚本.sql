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
