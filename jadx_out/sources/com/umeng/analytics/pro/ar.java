package com.umeng.analytics.pro;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ar implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48702a = "https://aspect-upush.umeng.com/occa/v1/event/report";

    /* renamed from: b, reason: collision with root package name */
    public static final String f48703b = "https://cnlogs.umeng.com/ext_event";

    /* renamed from: c, reason: collision with root package name */
    public static final String f48704c = "https://cnlogs.umeng.com/uapp_ekverr_logs";

    /* renamed from: d, reason: collision with root package name */
    public static final String f48705d = "https://cnlogs.umeng.com/common_inout_logs";

    /* renamed from: e, reason: collision with root package name */
    private String f48706e;

    /* renamed from: f, reason: collision with root package name */
    private String f48707f;

    /* renamed from: g, reason: collision with root package name */
    private String f48708g;

    public ar(String str, JSONObject jSONObject) {
        this.f48708g = null;
        this.f48706e = str;
        this.f48707f = jSONObject.toString();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (TextUtils.isEmpty(this.f48707f)) {
                return;
            }
            aq.a(this.f48706e, this.f48707f.getBytes(), this.f48708g);
        } catch (Throwable unused) {
        }
    }

    public ar(String str, JSONObject jSONObject, String str2) {
        this.f48708g = null;
        this.f48706e = str;
        this.f48707f = jSONObject.toString();
        this.f48708g = str2;
    }
}
