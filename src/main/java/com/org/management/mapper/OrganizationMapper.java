package com.org.management.mapper;


import com.org.management.entity.OrgInfo;
import com.org.management.entity.KpiRptVo;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.KpiQuery;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface OrganizationMapper {
    /**
     * 大区
     *
     * @param query
     * @return
     */
    List<Map<String, String>> regionList(@Param("query") RegionQuery query);

    /**
     * 小区
     *
     * @param query
     * @return
     */
    List<Map<String, String>> fmcList(@Param("query") RegionQuery query);

    /**
     * 集团
     *
     * @param query
     * @return
     */
    List<Map<String, String>> groupList(@Param("query") RegionQuery query);

    /**
     * 省份
     *
     * @param query
     * @return
     */
    List<Map<String, String>> provList(@Param("query") RegionQuery query);

    /**
     * 城市
     *
     * @param query
     * @return
     */
    List<Map<String, String>> cityList(@Param("query") RegionQuery query);

    /**
     * 经销商
     *
     * @param query
     * @return
     */
    List<Map<String, String>> ascList(@Param("query") RegionQuery query);

    /**
     * 总产值
     *
     * @param query
     * @return
     */
    List<KpiRptVo> selectKpiRpt(@Param("query") KpiQuery query);

    /**
     * 基盘
     *
     * @return
     */
    List<Map<String, String>> selectDDSBaseCustomerChartOverView();

    /**
     * 客户维持
     *
     * @return
     */
    List<Map<String, String>> selectDDSRetentionRateOverView();
}
