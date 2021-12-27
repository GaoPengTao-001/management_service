package com.org.management.entity;

import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Region {

    public Region(){
        List<Map<String,String>> regionList = new ArrayList<>();
        Map<String,String> map = new HashMap<>();
        map.put("regionId","");
        map.put("regionNm","全国");
        regionList.add(map);
        this.setRegionList(regionList);

        List<Map<String,String>> fmcList = new ArrayList<>();
        Map<String,String> map1 = new HashMap<>();
        map1.put("fmcId","");
        map1.put("fmcNm","所有");
        fmcList.add(map1);
        this.setFmcList(fmcList);

        List<Map<String,String>> groupList = new ArrayList<>();
        Map<String,String> map5 = new HashMap<>();
        map5.put("ascGrpId","");
        map5.put("ascGrpNm","所有");
        groupList.add(map5);
        this.setGroupList(groupList);

        List<Map<String,String>> provList = new ArrayList<>();
        Map<String,String> map2 = new HashMap<>();
        map2.put("provId","");
        map2.put("provComNm","所有");
        provList.add(map2);
        this.setProvList(provList);

        List<Map<String,String>> cityList = new ArrayList<>();
        Map<String,String> map3 = new HashMap<>();
        map3.put("cityId","");
        map3.put("cityComNm","所有");
        cityList.add(map3);
        this.setCityList(cityList);

        List<Map<String,String>> ascList = new ArrayList<>();
        Map<String,String> map4 = new HashMap<>();
        map4.put("ascCd","");
        map4.put("ascNm","所有");
        ascList.add(map4);
        this.setAscList(ascList);
    }

    private String id;

    /**
     * 大区列表
     */
    private List<Map<String, String>> regionList;


    /**
     * 小区列表
     */
    private List<Map<String, String>> fmcList;

    /**
     * 集团
     */
    private List<Map<String, String>> groupList;


    /**
     * 经销商列表
     */
    private List<Map<String, String>> ascList;

    /**
     * 省份列表
     */
    private List<Map<String, String>> provList;

    /**
     * 城市列表
     */
    private List<Map<String, String>> cityList;

    public List<Map<String, String>> getRegionList() {
        return regionList;
    }

    public void setRegionList(List<Map<String, String>> regionList) {
        this.regionList = regionList;
    }

    public void addRegionList(List<Map<String, String>> list) {
        if(!CollectionUtils.isEmpty(list)){
            this.regionList.addAll(list);
        }
    }

    public List<Map<String, String>> getFmcList() {
        return fmcList;
    }

    public void setFmcList(List<Map<String, String>> fmcList) {
        this.fmcList = fmcList;
    }

    public void addFmcList(List<Map<String, String>> list) {
        if(!CollectionUtils.isEmpty(list)){
            this.fmcList.addAll(list);
        }
    }

    public List<Map<String, String>> getAscList() {
        return ascList;
    }

    public void setAscList(List<Map<String, String>> ascList) {
        this.ascList = ascList;
    }

    public void addAscList(List<Map<String, String>> list) {
        if(!CollectionUtils.isEmpty(list)){
            this.ascList.addAll(list);
        }
    }

    public List<Map<String, String>> getProvList() {
        return provList;
    }

    public void setProvList(List<Map<String, String>> provList) {
        this.provList = provList;
    }

    public void addProvList(List<Map<String, String>> list) {
        if(!CollectionUtils.isEmpty(list)){
            this.provList.addAll(list);
        }
    }

    public List<Map<String, String>> getCityList() {
        return cityList;
    }

    public void setCityList(List<Map<String, String>> cityList) {
        this.cityList = cityList;
    }

    public void addCityList(List<Map<String, String>> list) {
        if(!CollectionUtils.isEmpty(list)){
            this.cityList.addAll(list);
        }
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List<Map<String, String>> getGroupList() {
        return groupList;
    }

    public void setGroupList(List<Map<String, String>> groupList) {
        this.groupList = groupList;
    }

    public void addGroupList(List<Map<String, String>> list) {
        if(!CollectionUtils.isEmpty(list)){
            this.groupList.addAll(list);
        }
    }
}
