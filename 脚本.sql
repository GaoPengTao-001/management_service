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