package com.org.management.mapper;


import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface OrganizationMapper {

    Region selectRegion(@Param("query") RegionQuery query);

    List<Map<String,String>> regionList(@Param("query") RegionQuery query);

    List<Map<String,String>> fmcList(@Param("query") RegionQuery query);

    List<Map<String,String>> provList(@Param("query") RegionQuery query);

    List<Map<String,String>> cityList(@Param("query") RegionQuery query);

    List<Map<String,String>> ascListByRegion(@Param("query") RegionQuery query);

    List<Map<String,String>> ascListByProvince(@Param("query") RegionQuery query);
}
