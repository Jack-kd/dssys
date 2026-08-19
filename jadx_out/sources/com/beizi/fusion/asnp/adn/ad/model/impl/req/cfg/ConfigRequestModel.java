package com.beizi.fusion.asnp.adn.ad.model.impl.req.cfg;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;
import com.umeng.analytics.pro.bv;
import java.util.List;

/* loaded from: classes2.dex */
public final class ConfigRequestModel extends ASNPJsonRequestModel {

    @ng(key = "appId")
    private String appID;

    @ng(key = "brand")
    private String brand;

    @ng(key = bv.f48889P)
    private String carrier;

    @ng(key = "coaid")
    private String coaid;

    @ng(key = "connectType")
    private int connectType;

    @ng(key = bv.f48888O)
    private String country;

    @ng(key = "country_CN")
    private int country_CN;

    @ng(key = "density")
    private float density;

    @ng(key = "deviceName")
    private String deviceName;

    @ng(key = "deviceType")
    private int deviceType;

    @ng(key = "fileMark")
    private String fileMark;

    @ng(key = "harddiskSize")
    private String hardDiskSize;

    @ng(key = "language")
    private String language;

    @ng(key = "manufacturer")
    private String manufacturer;

    @ng(key = "model")
    private String model;

    @ng(key = "oaid")
    private String oaid;

    @ng(key = "orientation")
    private int orientation;

    @ng(key = bv.f48923x)
    private int os;

    @ng(key = "osVersion")
    private String osVersion;

    @ng(key = "physicalMemory")
    private String physicalMemory;

    @ng(key = "planIds")
    private List<String> planIds;

    @ng(key = "ppi")
    private float ppi;

    @ng(key = "requestUrlMD5")
    private String requestUrlMD5;

    @ng(key = "resolutionHeight")
    private int resolutionHeight;

    @ng(key = "resolutionWidth")
    private int resolutionWidth;

    @ng(key = "said")
    private String said;

    @ng(key = "screenHeight")
    private int screenHeight;

    @ng(key = "screenWidth")
    private int screenWidth;

    @ng(key = "sdkVersion")
    private String sdkVersion;

    @ng(key = "spaceStrategyMD5")
    private String spaceStrategyMD5 = "";

    @ng(key = "statisticsMD5")
    private String statisticsMD5;

    @ng(key = "timeStamp")
    private long timeStamp;

    @ng(key = "timeZone")
    private String timeZone;

    @ng(key = "updateMark")
    private String updateMark;

    @ng(key = "updateMD5")
    private String updateMd5;

    @ng(key = "userAgent")
    private String userAgent;

    public void setAppID(String str) {
        this.appID = str;
    }

    public void setBetaPlanIds(List<String> list) {
        this.planIds = list;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setCOAID(String str) {
        this.coaid = str;
    }

    public void setCarrier(String str) {
        this.carrier = str;
    }

    public void setConnectType(int i2) {
        this.connectType = i2;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountry_CN(int i2) {
        this.country_CN = i2;
    }

    public void setDensity(float f2) {
        this.density = f2;
    }

    public void setDeviceName(String str) {
        this.deviceName = str;
    }

    public void setDeviceType(int i2) {
        this.deviceType = i2;
    }

    public void setFileMark(String str) {
        this.fileMark = str;
    }

    public void setHardDiskSize(String str) {
        this.hardDiskSize = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setOAID(String str) {
        this.oaid = str;
    }

    public void setOrientation(int i2) {
        this.orientation = i2;
    }

    public void setOs(int i2) {
        this.os = i2;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public void setPhysicalMemory(String str) {
        this.physicalMemory = str;
    }

    public void setPpi(float f2) {
        this.ppi = f2;
    }

    public void setRequestUrlMD5(String str) {
        this.requestUrlMD5 = str;
    }

    public void setResolutionHeight(int i2) {
        this.resolutionHeight = i2;
    }

    public void setResolutionWidth(int i2) {
        this.resolutionWidth = i2;
    }

    public void setSAID(String str) {
        this.said = str;
    }

    public void setScreenHeight(int i2) {
        this.screenHeight = i2;
    }

    public void setScreenWidth(int i2) {
        this.screenWidth = i2;
    }

    public void setSdkVersion(String str) {
        this.sdkVersion = str;
    }

    public void setStatisticsMD5(String str) {
        this.statisticsMD5 = str;
    }

    public void setStrategyMD5(String str) {
        this.spaceStrategyMD5 = str;
    }

    public void setTimeStamp(long j2) {
        this.timeStamp = j2;
    }

    public void setTimeZone(String str) {
        this.timeZone = str;
    }

    public void setUpdateMark(String str) {
        this.updateMark = str;
    }

    public void setUpdateMd5(String str) {
        this.updateMd5 = str;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }
}
