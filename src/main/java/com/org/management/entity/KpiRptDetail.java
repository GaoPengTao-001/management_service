package com.org.management.entity;

import java.util.List;

public class KpiRptDetail {

    private KpiRptVo kpiRptVo;

    private List<KpiRptVo> kpiRptVos;

    public KpiRptVo getKpiRptVo() {
        return kpiRptVo;
    }

    public void setKpiRptVo(KpiRptVo kpiRptVo) {
        this.kpiRptVo = kpiRptVo;
    }

    public List<KpiRptVo> getKpiRptVos() {
        return kpiRptVos;
    }

    public void setKpiRptVos(List<KpiRptVo> kpiRptVos) {
        this.kpiRptVos = kpiRptVos;
    }
}
