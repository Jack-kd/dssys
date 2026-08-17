package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.api.IPromoteInstallAdInfo;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ap implements IPromoteInstallAdInfo {

    /* renamed from: a, reason: collision with root package name */
    private final aq f11023a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f11024b;

    /* renamed from: c, reason: collision with root package name */
    private String f11025c;

    /* renamed from: d, reason: collision with root package name */
    private String f11026d;

    /* renamed from: e, reason: collision with root package name */
    private String f11027e;

    /* renamed from: f, reason: collision with root package name */
    private String f11028f;

    /* renamed from: g, reason: collision with root package name */
    private String f11029g;

    /* renamed from: h, reason: collision with root package name */
    private String f11030h;

    /* renamed from: i, reason: collision with root package name */
    private String f11031i;

    /* renamed from: j, reason: collision with root package name */
    private String f11032j;

    /* renamed from: k, reason: collision with root package name */
    private String f11033k;

    /* renamed from: l, reason: collision with root package name */
    private String f11034l;

    public ap(JSONObject jSONObject, Context context, aq aqVar) {
        this.f11023a = aqVar;
        this.f11024b = context;
        try {
            this.f11025c = jSONObject.optString(com.umeng.analytics.pro.g.f49332S);
            this.f11026d = jSONObject.optString("icon");
            this.f11027e = jSONObject.optString("appname");
            this.f11028f = jSONObject.optString("bidlayer");
            this.f11029g = jSONObject.optString("enc_bid_price");
            this.f11030h = jSONObject.optString("publisher");
            this.f11031i = jSONObject.optString("app_version");
            this.f11032j = jSONObject.optString("privacy_link");
            this.f11033k = jSONObject.optString("permission_link");
            this.f11034l = jSONObject.optString("function_link");
        } catch (Throwable unused) {
        }
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getAppPublisher() {
        return this.f11030h;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getAppVersion() {
        return this.f11031i;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getBrandName() {
        return this.f11027e;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getECPMLevel() {
        return this.f11028f;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getFunctionUrl() {
        return this.f11034l;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getIconUrl() {
        return this.f11026d;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getPECPM() {
        return this.f11029g;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getPermissionUrl() {
        return this.f11033k;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getPrivacyUrl() {
        return this.f11032j;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getUnionLogoUrl() {
        return "https://union.baidu.com";
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public void handleAdInstall() {
        aq aqVar = this.f11023a;
        if (aqVar != null) {
            aqVar.a(this.f11024b, this.f11025c);
        }
    }
}
