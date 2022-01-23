package com.org.management.enumeration;

/**
 * 总产值的维修类型
 */
public enum NumberOfSetsRepairType {

    // '总产值','索赔','首保','索赔不含首保','非索赔','保养','维修','事故','销售','返工'
    TOTAIL("totail", "KPI_0201"),
    CLAIM("claim", "KPI_0208"),
    GUARANTEE("guarantee", "KPI_0203"),
    NOGUARANTEE("noGuarantee", "KPI_0210"),
    NOCLAIM("noClaim", "KPI_0202"),
    MAINTAIN("maintain", ""),
    REPAIR("repair", "KPI_0204"),
    ACCIDENT("accident", "KPI_0205"),
    SALE("sale", "KPI_0206"),
    REWORK("rework", "KPI_0207");

    private String repairType;
    private String kpiCd;


    private NumberOfSetsRepairType(String repairType, String kpiCd) {
        this.repairType = repairType;
        this.kpiCd = kpiCd;
    }

    public static String getKpiCd(String code) {
        for (NumberOfSetsRepairType c : NumberOfSetsRepairType.values()) {
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
