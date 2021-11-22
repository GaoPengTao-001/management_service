package com.org.management.service;

import com.org.management.entity.OutputValue;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.ValueQuery;
import com.org.management.mapper.OrganizationMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;

@Service
public class OrganizationService {
    @Resource
    OrganizationMapper organizationMapper;

    /**
     * 日志打印
     */
    private static final Logger log = LoggerFactory.getLogger(OrganizationService.class);

    public Region getRegion(RegionQuery query) {
        try {
            Region region = new Region();
            if ((!StringUtils.hasLength(query.getRegionId()) && !StringUtils.hasLength(query.getFmcId())) &&
                    !StringUtils.hasLength(query.getProvId()) && !StringUtils.hasLength(query.getCityId())) {
                region.addRegionList(organizationMapper.regionList(query));
                region.addFmcList(organizationMapper.fmcList(query));
                region.addProvList(organizationMapper.provList(query));
                region.addCityList(organizationMapper.cityList(query));
                region.addAscList(organizationMapper.ascListByRegion(query));
            } else if ((StringUtils.hasLength(query.getRegionId()) || StringUtils.hasLength(query.getFmcId()))) {
                region.addRegionList(organizationMapper.regionList(query));
                region.addFmcList(organizationMapper.fmcList(query));
                region.addAscList(organizationMapper.ascListByRegion(query));
            } else if ((StringUtils.hasLength(query.getProvId()) || StringUtils.hasLength(query.getCityId()))) {
                region.addProvList(organizationMapper.provList(query));
                region.addCityList(organizationMapper.cityList(query));
                region.addAscList(organizationMapper.ascListByProvince(query));
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
}
