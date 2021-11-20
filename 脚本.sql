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

