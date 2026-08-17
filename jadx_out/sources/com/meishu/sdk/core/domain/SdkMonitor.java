package com.meishu.sdk.core.domain;

import androidx.core.app.NotificationCompat;
import com.umeng.analytics.pro.be;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class SdkMonitor {
    private String clk;
    private String err;
    private String imp;
    private String req;
    private String rsp;

    public static SdkMonitor fromJson(String str) {
        SdkMonitor sdkMonitor = new SdkMonitor();
        try {
            JSONObject jSONObject = new JSONObject(str);
            sdkMonitor.setReq(jSONObject.optString("req"));
            sdkMonitor.setRsp(jSONObject.optString("rsp"));
            sdkMonitor.setImp(jSONObject.optString(be.f48800c));
            sdkMonitor.setClk(jSONObject.optString("clk"));
            sdkMonitor.setErr(jSONObject.optString(NotificationCompat.CATEGORY_ERROR));
            return sdkMonitor;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return sdkMonitor;
        }
    }

    public String getClk() {
        return this.clk;
    }

    public String getErr() {
        return this.err;
    }

    public String getImp() {
        return this.imp;
    }

    public String getReq() {
        return this.req;
    }

    public String getRsp() {
        return this.rsp;
    }

    public void setClk(String str) {
        this.clk = str;
    }

    public void setErr(String str) {
        this.err = str;
    }

    public void setImp(String str) {
        this.imp = str;
    }

    public void setReq(String str) {
        this.req = str;
    }

    public void setRsp(String str) {
        this.rsp = str;
    }
}
