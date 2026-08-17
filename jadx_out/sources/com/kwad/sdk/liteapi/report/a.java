package com.kwad.sdk.liteapi.report;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.kwad.sdk.api.SdkConfig;
import com.kwad.sdk.liteapi.InputParamHolder;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.PackageManagerUtils;
import com.umeng.analytics.pro.cl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
final class a {
    private String appId;
    private String name;
    private String packageName;
    private String version;

    public static a cB(Context context) {
        a aVar = new a();
        SdkConfig sDKConfig = InputParamHolder.getSDKConfig();
        if (sDKConfig != null) {
            aVar.appId = sDKConfig.appId;
            aVar.name = sDKConfig.appName;
        }
        aVar.packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = PackageManagerUtils.getPackageInfo(context.getApplicationContext(), context.getPackageName(), 64);
            if (packageInfo == null) {
                return aVar;
            }
            aVar.version = packageInfo.versionName;
            return aVar;
        } catch (Exception e2) {
            LiteApiLogger.printStackTraceOnly(e2);
            return aVar;
        }
    }

    public final String getAppId() {
        return this.appId;
    }

    public final JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("appId", this.appId);
            jSONObject.putOpt("name", this.name);
            jSONObject.putOpt("packageName", this.packageName);
            jSONObject.putOpt(cl.f49059n, this.version);
            return jSONObject;
        } catch (JSONException e2) {
            LiteApiLogger.printStackTrace(e2);
            return jSONObject;
        }
    }
}
