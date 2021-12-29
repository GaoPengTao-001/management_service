package com.org.management.service;

import com.org.management.entity.KpiRptDetail;
import com.org.management.entity.KpiRptVo;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.KpiQuery;
import com.org.management.mapper.OrganizationMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrganizationService {
    @Resource
    OrganizationMapper organizationMapper;

    /**
     * 日志打印
     */
    private static final Logger log = LoggerFactory.getLogger(OrganizationService.class);

    /**
     * 查询过滤条件
     *
     * @param query
     * @return
     */
    public Region getRegion(RegionQuery query) {
        try {
            Region region = new Region();
            if ((!StringUtils.hasLength(query.getRegionId()) && !StringUtils.hasLength(query.getFmcId())) &&
                    !StringUtils.hasLength(query.getProvId()) && !StringUtils.hasLength(query.getCityId())) {
                // 如果搜索条件为空，查询所有内容
                region.addRegionList(organizationMapper.regionList(query));
                region.addFmcList(organizationMapper.fmcList(query));
                region.addGroupList(organizationMapper.groupList(query));
                region.addProvList(organizationMapper.provList(query));
                region.addCityList(organizationMapper.cityList(query));
                region.addAscList(organizationMapper.ascList(query));
            } else if (StringUtils.hasLength(query.getRegionId())) {
                // 如果大区有值，判断小区或集团是否有值
                region.addRegionList(organizationMapper.regionList(query));
                region.addAscList(organizationMapper.ascList(query));
                if (StringUtils.hasLength(query.getFmcId())) {
                    region.addFmcList(organizationMapper.fmcList(query));
                } else if (StringUtils.hasLength(query.getAscGrpId())) {
                    region.addGroupList(organizationMapper.groupList(query));
                } else {
                    region.addFmcList(organizationMapper.fmcList(query));
                    region.addGroupList(organizationMapper.groupList(query));
                }
            } else if (StringUtils.hasLength(query.getFmcId())) {
                // 如果小区不为空，查询大区，小区
                region.addRegionList(organizationMapper.regionList(query));
                region.addFmcList(organizationMapper.fmcList(query));
                region.addAscList(organizationMapper.ascList(query));
            } else if (StringUtils.hasLength(query.getAscGrpId())) {
                // 如果集团id不为空，查询大区，集团
                region.addRegionList(organizationMapper.regionList(query));
                region.addGroupList(organizationMapper.groupList(query));
                region.addAscList(organizationMapper.ascList(query));
            } else if ((StringUtils.hasLength(query.getProvId()) || StringUtils.hasLength(query.getCityId()))) {
                // 如果省份，城市不为空，查询省份城市
                region.addProvList(organizationMapper.provList(query));
                region.addCityList(organizationMapper.cityList(query));
                region.addAscList(organizationMapper.ascList(query));
            }
            return region;
        } catch (Exception e) {
            log.error("OrganizationService.getRegion异常", e);
        }
        return null;
    }

    public KpiRptDetail getOutputValue(KpiQuery query) {
        try {
            KpiRptDetail kpiRptDetail = new KpiRptDetail();
            // 查询当前orgId的kpi
            List<KpiRptVo> kpiRptVos = organizationMapper.selectKpiRpt(query);
            if (!CollectionUtils.isEmpty(kpiRptVos)) {
                kpiRptDetail.setKpiRptVo(kpiRptVos.get(0));
            }
            // 查询当前orgId下级的kpi
            // COUNTRY(全国);REGION(大区);FMC(小区);ASCGROUP(经销商集团);CITY(城市);PROVINCE(省份);ASC(维修站);
            if("COUNTRY".equals(query.getOrgTp())){

            }


            return null;
        } catch (Exception e) {
            log.error("OrganizationService.getOutputValue异常", e);
            return null;
        }
    }

}
