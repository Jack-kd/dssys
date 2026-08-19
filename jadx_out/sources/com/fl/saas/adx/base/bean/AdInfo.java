package com.fl.saas.adx.base.bean;

import com.fl.saas.adx.util.DeviceUtil;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class AdInfo {
    private int abFlag;
    private ConcurrentHashMap<String, Object> customMap;
    private String groupId;
    private int mAdv_id = 0;
    private String mTagid = "";

    public static AdInfo create(int i2, String str, String str2, int i3) {
        AdInfo adInfoCreateEmpty = createEmpty();
        adInfoCreateEmpty.setAdv_id(i2);
        adInfoCreateEmpty.setTagid(str);
        adInfoCreateEmpty.setGroupId(str2);
        adInfoCreateEmpty.setAbFlag(i3);
        ConcurrentHashMap<String, Object> concurrentHashMap = DeviceUtil.customMap;
        if (concurrentHashMap != null) {
            adInfoCreateEmpty.setCustomMap(concurrentHashMap);
        }
        return adInfoCreateEmpty;
    }

    public static AdInfo createEmpty() {
        return new AdInfo();
    }

    public int getAbFlag() {
        return this.abFlag;
    }

    public int getAdv_id() {
        return this.mAdv_id;
    }

    public Map<String, Object> getCustomMap() {
        return this.customMap;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getTagid() {
        return this.mTagid;
    }

    public void setAbFlag(int i2) {
        this.abFlag = i2;
    }

    public void setAdv_id(int i2) {
        this.mAdv_id = i2;
    }

    public void setCustomMap(ConcurrentHashMap<String, Object> concurrentHashMap) {
        this.customMap = concurrentHashMap;
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }

    public void setTagid(String str) {
        this.mTagid = str;
    }
}
