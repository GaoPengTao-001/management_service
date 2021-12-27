package com.org.management.mapper;


import com.org.management.entity.OrgInfo;
import com.org.management.entity.OutputValue;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.ValueQuery;
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

    OutputValue selectOutputValue(@Param("query") ValueQuery query);

    List<OutputValue> selectOutputValueDetail(@Param("ids") List<OrgInfo> ids, @Param("dateValue") String dateValue);

    // 查询大区的id
    List<OrgInfo> selectRegionId();

    // 通过大区id查询小区的id
    List<OrgInfo> selectFmcIdByRegionId(@Param("id") String id);

    // 通过小区的id查询经销商的id
    List<OrgInfo> selectAscCdByFmcId(@Param("id") String id);

    // 根据经销商id查询经销商详情
    List<OrgInfo> selectAscCdDetailByAsc(@Param("id") String id);
}
