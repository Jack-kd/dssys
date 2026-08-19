package com.umeng.analytics.pro;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ce implements cd {

    /* renamed from: a, reason: collision with root package name */
    private static final String f49027a = "cache_domain";

    /* renamed from: b, reason: collision with root package name */
    private static volatile String f49028b = "";

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final ce f49029a = new ce();

        private a() {
        }
    }

    public static ce b() {
        return a.f49029a;
    }

    private void d() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(UMGlobalContext.getAppContext());
        if (sharedPreferences != null) {
            f49028b = sharedPreferences.getString(f49027a, "");
        }
    }

    private void e() {
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(UMGlobalContext.getAppContext());
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString(f49027a, f49028b).commit();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.cd
    public void a() {
    }

    public String c() {
        return f49028b;
    }

    private ce() {
        d();
    }

    @Override // com.umeng.analytics.pro.cd
    public void a(Throwable th) {
    }

    @Override // com.umeng.analytics.pro.cd
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("Status") && jSONObject.getInt("Status") == 0 && jSONObject.has("Answer")) {
                String strOptString = jSONObject.optString("Answer");
                String strOptString2 = "";
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                if (jSONObject.has("ip")) {
                    strOptString2 = jSONObject.optString("ip");
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> domain下发结果：" + strOptString);
                if (!TextUtils.isEmpty(strOptString2)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 对应domain下发请求ip：" + strOptString2);
                }
                f49028b = strOptString;
                e();
            }
        } catch (Throwable unused) {
        }
    }
}
