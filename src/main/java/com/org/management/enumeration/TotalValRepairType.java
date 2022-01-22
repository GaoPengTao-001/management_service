package com.org.management.enumeration;

/**
 * 总产值的维修类型
 */
public enum TotalValRepairType {

    TOTAIL("totail", ""),
    CLAIM("claim", "KPI_0109"),
    GUARANTEE("guarantee", "KPI_0110"),
    NOGUARANTEE("noGuarantee", "KPI_0111"),
    NOCLAIM("noClaim", "KPI_0103"),
    MAINTAIN("maintain", "KPI_0104"),
    REPAIR("repair", "KPI_0105"),
    ACCIDENT("accident", "KPI_0106"),
    SALE("sale", "KPI_0107"),
    REWORK("rework", "KPI_0108");

    private String repairType;
    private String kpiCd;


    private TotalValRepairType(String repairType, String kpiCd) {
        this.repairType = repairType;
        this.kpiCd = kpiCd;
    }

    public static String getKpiCd(String code) {
        for (TotalValRepairType c : TotalValRepairType.values()) {
            if (c.getRepairType().equals(code) ) {
                return c.getKpiCd();
            }
        }
        return null;
    }


    public String getRepairType() {
        return repairType;
    }

    public void setRepairType(String repairType) {
        this.repairType = repairType;
    }

    public String getKpiCd() {
        return kpiCd;
    }

    public void setKpiCd(String kpiCd) {
        this.kpiCd = kpiCd;
    }}
