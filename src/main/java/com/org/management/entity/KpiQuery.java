package com.org.management.entity;

import java.util.List;

public class KpiQuery {
    /**
     * 时间类型: D(日);W(周);M(月);Q(季);H(半年);Y(年);
     */
    private String periodTp;

    /**
     * 统计周期: yyyymmdd(日); yyyymm(月); yyyyQx(季度); yyyyHx(半年); yyyy(年);
     */
    private String periodCd;

    /**
     * ASC(维修站); FMC(小区); REGION(大区); CITY(城市); PROVINCE(省份); COUNTRY(全国)；ASCGROUP(经销商集团);
     */
    private String orgTp;

    /**
     * 存放ASC_ID/FMC_ID/REGION_ID/CITY_ID/PROV_ID/BRAND_ID....
     */
    private String orgId;

    /**
     * 下级orgId列表
     */
    private List<String> orgIds;


    public String getPeriodTp() {
        return periodTp;
    }

    public void setPeriodTp(String periodTp) {
        this.periodTp = periodTp;
    }

    public String getPeriodCd() {
        return periodCd;
    }

    public void setPeriodCd(String periodCd) {
        this.periodCd = periodCd;
    }

    public String getOrgTp() {
        return orgTp;
    }

    public void setOrgTp(String orgTp) {
        this.orgTp = orgTp;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }
}
