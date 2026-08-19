package com.anythink.core.e;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class j extends e {

    /* renamed from: a, reason: collision with root package name */
    public static final int f8822a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f8823b = 3;

    /* renamed from: c, reason: collision with root package name */
    public static final int f8824c = 3;

    /* renamed from: e, reason: collision with root package name */
    public static final int f8825e = 5;

    /* renamed from: f, reason: collision with root package name */
    public static final long f8826f = 604800000;

    /* renamed from: g, reason: collision with root package name */
    private int f8827g;

    /* renamed from: h, reason: collision with root package name */
    private a f8828h;

    /* renamed from: i, reason: collision with root package name */
    private JSONObject f8829i;

    /* renamed from: j, reason: collision with root package name */
    private long f8830j;

    /* renamed from: k, reason: collision with root package name */
    private long f8831k;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f8832a;

        /* renamed from: b, reason: collision with root package name */
        public int f8833b;

        /* renamed from: c, reason: collision with root package name */
        public int f8834c;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static String f8835a = "adap_c";

        /* renamed from: b, reason: collision with root package name */
        public static String f8836b = "updateTime";

        /* renamed from: c, reason: collision with root package name */
        private static String f8837c = "rule";

        /* renamed from: d, reason: collision with root package name */
        private static String f8838d = "group_st";

        /* renamed from: e, reason: collision with root package name */
        private static String f8839e = "num";

        /* renamed from: f, reason: collision with root package name */
        private static String f8840f = "value_times";

        /* renamed from: g, reason: collision with root package name */
        private static String f8841g = "cold_times";

        /* renamed from: h, reason: collision with root package name */
        private static String f8842h = "st_timeout";
    }

    private void a(long j2) {
        this.f8831k = j2;
    }

    private long d() {
        return this.f8831k;
    }

    private JSONObject e() {
        return this.f8829i;
    }

    private long f() {
        return this.f8830j;
    }

    public final a b() {
        return this.f8828h;
    }

    public final boolean c() {
        return System.currentTimeMillis() - this.f8831k > this.f8830j;
    }

    private void b(long j2) {
        this.f8830j = j2;
    }

    private void e(JSONObject jSONObject) {
        this.f8829i = jSONObject;
    }

    public final int a() {
        return this.f8827g;
    }

    private void a(int i2) {
        this.f8827g = i2;
    }

    private void a(a aVar) {
        this.f8828h = aVar;
    }

    public static j a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        j jVar = new j();
        try {
            jVar.b(jSONObject);
            jVar.c(jSONObject);
            jVar.d(jSONObject);
            jVar.f8827g = jSONObject.optInt(b.f8837c, 1);
            String strOptString = jSONObject.optString(b.f8838d);
            if (!TextUtils.isEmpty(strOptString)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    a aVar = new a();
                    aVar.f8832a = jSONObject2.optInt(b.f8839e, 3);
                    aVar.f8833b = jSONObject2.optInt(b.f8840f, 3);
                    aVar.f8834c = jSONObject2.optInt(b.f8841g, 5);
                    jVar.f8828h = aVar;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            jVar.f8829i = jSONObject.optJSONObject(b.f8835a);
            jVar.f8831k = jSONObject.optLong(b.f8836b, 0L);
            jVar.f8830j = jSONObject.optLong(b.f8842h, 604800000L);
        } catch (Throwable unused) {
        }
        return jVar;
    }
}
