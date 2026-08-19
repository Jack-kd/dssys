package com.beizi.fusion.asnp.adn.ad.model.impl.req.ad.root.ctx.dev.ext;

import com.beizi.fusion.asnp.adn.ad.model.impl.req.ASNPJsonRequestModel;
import com.beizi.fusion.ng;

/* loaded from: classes2.dex */
public class ReqDeviceExtModel extends ASNPJsonRequestModel {

    @ng(key = "coaid")
    private String coaid;

    @ng(key = "coreVersion")
    private String coreVersion;

    @ng(key = "deviceName")
    private String deviceName;

    @ng(key = "fileMark")
    private String fileMark;

    @ng(key = "harddiskSize")
    private String hardDiskSize;

    @ng(key = "hoaid")
    private String honorOAID;

    @ng(key = "isDeveloper")
    private int isDeveloper;

    @ng(key = "isPrompt")
    private int isPrompt;

    @ng(key = "oaid")
    private String oaid;

    @ng(key = "openSDKVersion")
    private String openSDKVersion;

    @ng(key = "physicalMemory")
    private String physicalMemory;

    @ng(key = "romv")
    private String romVersion;

    @ng(key = "said")
    private String said;

    @ng(key = "storeVersion")
    private String storeVersion;

    @ng(key = "updateMark")
    private String updateMark;

    @ng(key = "wxInstall")
    private int wxInstall;

    @ng(key = "wxVersion")
    private String wxVersion;

    public void setCoaid(String str) {
        this.coaid = str;
    }

    public void setCoreVersion(String str) {
        this.coreVersion = str;
    }

    public void setDeviceName(String str) {
        this.deviceName = str;
    }

    public void setFileMark(String str) {
        this.fileMark = str;
    }

    public void setHardDiskSize(String str) {
        this.hardDiskSize = str;
    }

    public void setHonorOAID(String str) {
        this.honorOAID = str;
    }

    public void setIsDeveloper(int i2) {
        this.isDeveloper = i2;
    }

    public void setIsPrompt(int i2) {
        this.isPrompt = i2;
    }

    public void setOaid(String str) {
        this.oaid = str;
    }

    public void setOpenSDKVersion(String str) {
        this.openSDKVersion = str;
    }

    public void setPhysicalMemory(String str) {
        this.physicalMemory = str;
    }

    public void setRomVersion(String str) {
        this.romVersion = str;
    }

    public void setSaid(String str) {
        this.said = str;
    }

    public void setStoreVersion(String str) {
        this.storeVersion = str;
    }

    public void setUpdateMark(String str) {
        this.updateMark = str;
    }

    public void setWxInstall(boolean z2) {
        this.wxInstall = z2 ? 1 : 0;
    }

    public void setWxSupportApiVersion(String str) {
        this.wxVersion = str;
    }
}
