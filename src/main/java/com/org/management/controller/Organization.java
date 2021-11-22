package com.org.management.controller;


import com.org.management.entity.OutputValue;
import com.org.management.entity.Region;
import com.org.management.entity.RegionQuery;
import com.org.management.entity.ValueQuery;
import com.org.management.service.OrganizationService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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
    public OutputValue getOutputValue(@RequestParam ValueQuery query) {
        return organizationService.getOutputValue(query);
    }
}
