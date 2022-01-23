package com.org.management.service;

import com.org.management.entity.KpiRptDetail;
import com.org.management.entity.KpiRptVo;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.KpiQuery;
import com.org.management.enumeration.NumberOfSetsRepairType;
import com.org.management.enumeration.TotalValRepairType;
import com.org.management.mapper.OrganizationMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
            // 总产值
            if ("1".equals(query.getMouldId())) {
                query.setKpiCd(TotalValRepairType.getKpiCd(query.getRepairType()));
            }
            // 台次
            if ("2".equals(query.getMouldId())) {
                query.setKpiCd(NumberOfSetsRepairType.getKpiCd(query.getRepairType()));
            }
            KpiRptDetail kpiRptDetail = new KpiRptDetail();
            // 查询当前orgId的kpi
            List<KpiRptVo> kpiRptVos = organizationMapper.selectKpiRpt(query);
            if (!CollectionUtils.isEmpty(kpiRptVos)) {
                kpiRptDetail.setKpiRptVo(kpiRptVos.get(0));
            }

            // 查询当前orgId下级的kpi
            KpiQuery downKpiQuery = new KpiQuery();
            downKpiQuery.setKpiCd(query.getKpiCd());
            downKpiQuery.setPeriodTp(query.getPeriodTp());
            downKpiQuery.setPeriodCd(query.getPeriodCd());
            List<Map<String, String>> orgList;
            List<Map<String, String>> orgs = null;
            RegionQuery regionQuery = new RegionQuery();
            // COUNTRY(全国);REGION(大区);FMC(小区);ASCGROUP(经销商集团);CITY(城市);PROVINCE(省份);ASC(维修站);
            if ("COUNTRY".equals(query.getOrgTp())) {
                // 查询所有大区id
                orgList = organizationMapper.regionList(null);
                orgs = getIds(orgList, "regionId", "regionNm");
                downKpiQuery.setOrgTp("REGION");
            } else if ("REGION".equals(query.getOrgTp())) {
                // 查询所有小区id
                regionQuery.setRegionId(query.getOrgId());
                orgList = organizationMapper.fmcList(regionQuery);
                orgs = getIds(orgList, "fmcId", "fmcNm");
                downKpiQuery.setOrgTp("FMC");
            } else if ("FMC".equals(query.getOrgTp())) {
                // 查询所有经销商id
                regionQuery.setFmcId(query.getOrgId());
                orgList = organizationMapper.ascList(regionQuery);
                orgs = getIds(orgList, "ascId", "ascNm");
                downKpiQuery.setOrgTp("ASC");
            } else if ("ASCGROUP".equals(query.getOrgTp())) {
                // 经销商id
                regionQuery.setAscGrpId(query.getOrgId());
                orgList = organizationMapper.groupList(regionQuery);
                orgs = getIds(orgList, "ascGrpId", "ascGrpNm");
                downKpiQuery.setOrgTp("ASC");
            } else if ("PROVINCE".equals(query.getOrgTp())) {
                // 城市id
                regionQuery.setProvId(query.getOrgId());
                orgList = organizationMapper.cityList(regionQuery);
                orgs = getIds(orgList, "cityId", "cityCnNm");
                downKpiQuery.setOrgTp("REGION");
            } else if ("CITY".equals(query.getOrgTp())) {
                regionQuery.setCityId(query.getOrgId());
                orgList = organizationMapper.ascList(regionQuery);
                orgs = getIds(orgList, "ascId", "ascNm");
                downKpiQuery.setOrgTp("ASC");
            } else if ("ASC".equals(query.getOrgTp())) {
                regionQuery.setAscCd(query.getOrgId());
                orgList = organizationMapper.ascList(regionQuery);
                orgs = getIds(orgList, "ascId", "ascNm");
                downKpiQuery.setOrgTp("ASC");
            }
            if (!CollectionUtils.isEmpty(orgs)) {
                List<String> ids = orgs.stream().map(map -> map.get("id")).collect(Collectors.toList());
                downKpiQuery.setOrgIds(ids);
                List<KpiRptVo> kpiVos = organizationMapper.selectKpiRpt(downKpiQuery);
                if (!CollectionUtils.isEmpty(kpiVos)) {
                    orgs.forEach(org -> kpiVos.forEach(item -> {
                        if (org.get("id").equals(item.getOrgId())) {
                            item.setOrgName(org.get("name"));
                        }
                    }));
                }
                kpiRptDetail.setKpiRptVos(kpiVos);
            }
            return kpiRptDetail;
        } catch (Exception e) {
            log.error("OrganizationService.getOutputValue异常", e);
            return null;
        }
    }

    private List<Map<String, String>> getIds(List<Map<String, String>> orgList, String idKey, String nameKey) {
        if (CollectionUtils.isEmpty(orgList) || !StringUtils.hasLength(idKey) || !StringUtils.hasLength(nameKey)) {
            return null;
        }

        List<Map<String, String>> orgs = new ArrayList<>();
        for (Map<String, String> map : orgList) {
            Map<String, String> orgMap = new HashMap<>();
            for (Map.Entry entry : map.entrySet()) {
                if (idKey.equals(entry.getKey())) {
                    orgMap.put("id", String.valueOf(entry.getValue()));
                }
                if (nameKey.equals(entry.getKey())) {
                    orgMap.put("name", String.valueOf(entry.getValue()));
                }
            }
            orgs.add(orgMap);
        }
        return orgs;
    }

}
