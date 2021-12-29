package com.org.management.controller;


import com.org.management.entity.KpiRptDetail;
import com.org.management.entity.KpiRptVo;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.KpiQuery;
import com.org.management.service.OrganizationService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/organization")
public class Organization {

    @Resource
    private OrganizationService organizationService;

    @PostMapping(value = "/getRegion")
    public Region getRegion(@RequestBody RegionQuery query) {
        return organizationService.getRegion(query);
    }

    @PostMapping(value = "/getOutputValue")
    public KpiRptDetail getOutputValue(@RequestBody KpiQuery query) {
        return organizationService.getOutputValue(query);
    }

}
