package com.org.management.entity;

public class KpiRptVo {
    private String kpiId;
    private String periodTp;
    private String periodCd;
    private String orgTp;
    private String orgId;
    private String orgName;
    private String vehAgeId;
    private String modelId;
    private String kpiVal;
    private String lpKpiVal;
    private String lyKpiVal;
    private String firstLoadDate;
    private String lastLoadDate;
    private String loadFrom;

    public String getKpiId() {
        return kpiId;
    }

    public void setKpiId(String kpiId) {
        this.kpiId = kpiId;
    }

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

    public String getVehAgeId() {
        return vehAgeId;
    }

    public void setVehAgeId(String vehAgeId) {
        this.vehAgeId = vehAgeId;
    }

    public String getModelId() {
        return modelId;
    }

    public void setModelId(String modelId) {
        this.modelId = modelId;
    }

    public String getKpiVal() {
        return kpiVal;
    }

    public void setKpiVal(String kpiVal) {
        this.kpiVal = kpiVal;
    }

    public String getLpKpiVal() {
        return lpKpiVal;
    }

    public void setLpKpiVal(String lpKpiVal) {
        this.lpKpiVal = lpKpiVal;
    }

    public String getLyKpiVal() {
        return lyKpiVal;
    }

    public void setLyKpiVal(String lyKpiVal) {
        this.lyKpiVal = lyKpiVal;
    }

    public String getFirstLoadDate() {
        return firstLoadDate;
    }

    public void setFirstLoadDate(String firstLoadDate) {
        this.firstLoadDate = firstLoadDate;
    }

    public String getLastLoadDate() {
        return lastLoadDate;
    }

    public void setLastLoadDate(String lastLoadDate) {
        this.lastLoadDate = lastLoadDate;
    }

    public String getLoadFrom() {
        return loadFrom;
    }

    public void setLoadFrom(String loadFrom) {
        this.loadFrom = loadFrom;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }
}
