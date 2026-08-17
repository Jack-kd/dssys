package com.meishu.sdk.core.utils;

import java.io.Serializable;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class RecordBean implements Serializable {
    private int clickNum;
    private int dynamicClickNum;
    private int exposureNum;
    private long lastClickTime;
    private long lastDynamicClickTime;
    private long lastDynamicLoadedTime;
    private int loadNum;
    private int loadSucc;
    private String pid;

    public static RecordBean fromJson(JSONObject jSONObject) {
        try {
            RecordBean recordBean = new RecordBean();
            recordBean.setPid(jSONObject.optString("pid", ""));
            recordBean.setLoadNum(jSONObject.optInt("loadNum", 0));
            recordBean.setLoadSucc(jSONObject.optInt("loadSucc", 0));
            recordBean.setExposureNum(jSONObject.optInt("exposureNum", 0));
            recordBean.setClickNum(jSONObject.optInt("clickNum", 0));
            recordBean.setDynamicClickNum(jSONObject.optInt("dynamicClickNum", 0));
            recordBean.setLastDynamicLoadedTime(jSONObject.optLong("lastDynamicLoadedTime", 0L));
            recordBean.setLastDynamicClickTime(jSONObject.optLong("lastDynamicClickTime", 0L));
            recordBean.setLastClickTime(jSONObject.optLong("lastClickTime", 0L));
            return recordBean;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public int getClickNum() {
        return this.clickNum;
    }

    public int getDynamicClickNum() {
        return this.dynamicClickNum;
    }

    public int getExposureNum() {
        return this.exposureNum;
    }

    public long getLastClickTime() {
        return this.lastClickTime;
    }

    public long getLastDynamicClickTime() {
        return this.lastDynamicClickTime;
    }

    public long getLastDynamicLoadedTime() {
        return this.lastDynamicLoadedTime;
    }

    public int getLoadNum() {
        return this.loadNum;
    }

    public int getLoadSucc() {
        return this.loadSucc;
    }

    public String getPid() {
        return this.pid;
    }

    public void setClickNum(int i2) {
        this.clickNum = i2;
    }

    public void setDynamicClickNum(int i2) {
        this.dynamicClickNum = i2;
    }

    public void setExposureNum(int i2) {
        this.exposureNum = i2;
    }

    public void setLastClickTime(long j2) {
        this.lastClickTime = j2;
    }

    public void setLastDynamicClickTime(long j2) {
        this.lastDynamicClickTime = j2;
    }

    public void setLastDynamicLoadedTime(long j2) {
        this.lastDynamicLoadedTime = j2;
    }

    public void setLoadNum(int i2) {
        this.loadNum = i2;
    }

    public void setLoadSucc(int i2) {
        this.loadSucc = i2;
    }

    public void setPid(String str) {
        this.pid = str;
    }
}
