package com.org.management.service;

import com.org.management.entity.OrgInfo;
import com.org.management.entity.OutputValue;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.ValueQuery;
import com.org.management.mapper.OrganizationMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
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

    public OutputValue getOutputValue(ValueQuery query) {
        try {
            // 月
            if ("1".equals(query.getTimeDimension())) {
                String dateValue = query.getDateValue();
                query.setDateValue(dateValue.replaceAll("-", ""));
            }
            return organizationMapper.selectOutputValue(query);
        } catch (Exception e) {
            log.error("OrganizationService.getOutputValue异常", e);
            return null;
        }
    }

    public List<OutputValue> getOutputValueDetail(ValueQuery query) {
        try {
            // 月
            if ("1".equals(query.getTimeDimension())) {
                String dateValue = query.getDateValue();
                query.setDateValue(dateValue.replaceAll("-", ""));
            }
            List<OrgInfo> ids = new ArrayList<>();
            // 查询经销商详情
            if (CollectionUtils.isEmpty(ids) && StringUtils.hasLength(query.getAscCd())) {
                ids.addAll(organizationMapper.selectAscCdDetailByAsc(query.getAscCd()));
            }
            // 小区下查询经销商详情
            if (CollectionUtils.isEmpty(ids) && StringUtils.hasLength(query.getFmcId())) {
                ids.addAll(organizationMapper.selectAscCdByFmcId(query.getFmcId()));
            }
            // 大区下查询小区详情
            if (CollectionUtils.isEmpty(ids) && StringUtils.hasLength(query.getRegionId())) {
                ids.addAll(organizationMapper.selectFmcIdByRegionId(query.getRegionId()));
            }
            // 全国下查询大区详情
            if (CollectionUtils.isEmpty(ids)) {
                ids.addAll(organizationMapper.selectRegionId());
            }
            // 通过id查询详情列表
            List<OutputValue> outputValues = organizationMapper.selectOutputValueDetail(ids, query.getDateValue());
            // 设置名称
            if (!CollectionUtils.isEmpty(outputValues)) {
                outputValues.forEach(item -> ids.forEach(id -> {
                    if (id.getId().equals(item.getBusId())) {
                        item.setOrgName(id.getName());
                    }
                }));
            }
            return outputValues;
        } catch (Exception e) {
            log.error("OrganizationService.getOutputValueDetail异常", e);
            return null;
        }
    }
}
