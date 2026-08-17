package com.byazt.owd;

import android.os.SystemClock;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1061, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static long f24199a = 0;
    public static long eb = 0;
    public static long hp = 0;

    /* renamed from: j, reason: collision with root package name */
    public static long f24200j = 0;
    public static long jx = 0;

    /* renamed from: l, reason: collision with root package name */
    public static long f24201l = 0;

    /* renamed from: q, reason: collision with root package name */
    public static boolean f24202q = false;

    /* renamed from: s, reason: collision with root package name */
    public static long f24203s;

    /* renamed from: w, reason: collision with root package name */
    public static long f24204w;

    public static void hp() {
        f24202q = true;
    }

    public static void hp(JSONObject jSONObject, String str) throws JSONException {
        if (f24202q || jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, SystemClock.elapsedRealtime() - eb);
        } catch (JSONException unused) {
        }
    }

    public static void hp(JSONObject jSONObject, String str, long j2) throws JSONException {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, SystemClock.elapsedRealtime() - j2);
        } catch (JSONException unused) {
        }
    }
}
