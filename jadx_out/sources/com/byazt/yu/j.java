package com.byazt.yu;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 38})
/* loaded from: classes3.dex */
public class j extends jx {

    /* renamed from: a, reason: collision with root package name */
    public final s f28290a;

    /* renamed from: w, reason: collision with root package name */
    public final Context f28291w;

    public j(Context context, s sVar) {
        super(true, false);
        this.f28291w = context;
        this.f28290a = sVar;
    }

    @Override // com.byazt.yu.jx
    @SuppressLint({"MissingPermission"})
    public boolean hp(JSONObject jSONObject) throws JSONException, SecurityException {
        jSONObject.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
        jSONObject.put(bv.f48924y, Build.VERSION.RELEASE);
        jSONObject.put("os_api", Build.VERSION.SDK_INT);
        jSONObject.put("device_model", com.byazt.gt.hp.w());
        jSONObject.put(bv.f48879F, Build.BRAND);
        jSONObject.put(bv.f48881H, com.byazt.gt.hp.a());
        jSONObject.put("cpu_abi", Build.CPU_ABI);
        jSONObject.put("build_serial", this.f28290a.kg() ? hp(this.f28291w) : this.f28290a.as());
        return true;
    }

    private static String hp(Context context) {
        String serial = null;
        if (context == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
            try {
                serial = Build.getSerial();
            } catch (Throwable unused) {
            }
        }
        if (TextUtils.isEmpty(serial) || TextUtils.equals(serial, "unknown")) {
            serial = Build.SERIAL;
        }
        return (TextUtils.isEmpty(serial) || TextUtils.equals(serial, "unknown")) ? "" : serial;
    }
}
