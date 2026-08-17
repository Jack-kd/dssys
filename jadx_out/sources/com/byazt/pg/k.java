package com.byazt.pg;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface k {
    void onAdEventReport(String str, String str2, String str3, String str4);

    void onAdEventReport(String str, String str2, String str3, String str4, String str5, JSONObject jSONObject, com.byazt.dhy.hp hpVar);

    void onAppLogMiscEvent(String str, JSONObject jSONObject);

    void onExceptionEvent(String str, JSONObject jSONObject, Throwable th);

    void onStatsEvent(String str, JSONObject jSONObject);

    void onStatsEvent(String str, JSONObject jSONObject, JSONObject jSONObject2);
}
