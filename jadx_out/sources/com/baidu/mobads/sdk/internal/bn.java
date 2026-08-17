package com.baidu.mobads.sdk.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class bn {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11188a = "mobads_builds";

    /* renamed from: b, reason: collision with root package name */
    public static final String f11189b = "brand_period";

    /* renamed from: c, reason: collision with root package name */
    public static final String f11190c = "version_period";

    /* renamed from: d, reason: collision with root package name */
    public static final long f11191d = 604800000;

    /* renamed from: e, reason: collision with root package name */
    public static final long f11192e = 172800000;

    /* renamed from: f, reason: collision with root package name */
    public static final String f11193f = "sdk_int";

    /* renamed from: g, reason: collision with root package name */
    public static final String f11194g = "sdk";

    /* renamed from: h, reason: collision with root package name */
    public static final String f11195h = "release";

    /* renamed from: i, reason: collision with root package name */
    public static final String f11196i = "model";

    /* renamed from: j, reason: collision with root package name */
    public static final String f11197j = "brand";

    /* renamed from: k, reason: collision with root package name */
    public static final String f11198k = "netopera";

    /* renamed from: l, reason: collision with root package name */
    public static final String f11199l = "tags";

    /* renamed from: m, reason: collision with root package name */
    private int f11200m;

    /* renamed from: n, reason: collision with root package name */
    private String f11201n;

    /* renamed from: o, reason: collision with root package name */
    private String f11202o;

    /* renamed from: p, reason: collision with root package name */
    private String f11203p;

    /* renamed from: q, reason: collision with root package name */
    private String f11204q;

    /* renamed from: r, reason: collision with root package name */
    private String f11205r;

    /* renamed from: s, reason: collision with root package name */
    private String f11206s;

    /* renamed from: t, reason: collision with root package name */
    private Context f11207t;

    /* renamed from: u, reason: collision with root package name */
    private SharedPreferences f11208u;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final bn f11209a = new bn();

        private a() {
        }
    }

    public static bn a(Context context) {
        a.f11209a.b(context);
        return a.f11209a;
    }

    private void h() {
        i();
        j();
    }

    private void i() {
        try {
            if (System.currentTimeMillis() <= b(f11189b).longValue()) {
                this.f11203p = a("model");
                this.f11204q = a("brand");
                this.f11205r = a(f11198k);
                this.f11206s = a(f11199l);
                return;
            }
            this.f11203p = Build.MODEL;
            this.f11204q = Build.BRAND;
            this.f11205r = ((TelephonyManager) this.f11207t.getSystemService("phone")).getNetworkOperator();
            this.f11206s = Build.TAGS;
            a("model", this.f11203p);
            a("brand", this.f11204q);
            a(f11198k, this.f11205r);
            a(f11199l, this.f11206s);
            a(f11189b, Long.valueOf(System.currentTimeMillis() + 604800000));
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    private void j() {
        try {
            if (System.currentTimeMillis() <= b(f11190c).longValue()) {
                this.f11200m = c(f11193f);
                this.f11201n = a("sdk");
                this.f11202o = a("release");
                return;
            }
            int i2 = Build.VERSION.SDK_INT;
            this.f11200m = i2;
            this.f11201n = Build.VERSION.SDK;
            this.f11202o = Build.VERSION.RELEASE;
            a(f11193f, i2);
            a("sdk", this.f11201n);
            a("release", this.f11202o);
            a(f11190c, Long.valueOf(System.currentTimeMillis() + f11192e));
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    private SharedPreferences.Editor k() throws Exception {
        return this.f11208u.edit();
    }

    public void b(Context context) {
        if (this.f11207t != null || context == null) {
            if (a.f11209a == null) {
                bc.a(context);
                return;
            }
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f11207t = applicationContext;
        try {
            if (this.f11208u == null) {
                this.f11208u = applicationContext.getSharedPreferences(f11188a, 0);
                h();
            }
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    public String c() {
        return this.f11202o;
    }

    public String d() {
        return this.f11203p;
    }

    public String e() {
        return this.f11204q;
    }

    public String f() {
        return this.f11205r;
    }

    public String g() {
        return this.f11206s;
    }

    private bn() {
        this.f11200m = 0;
        this.f11201n = "";
        this.f11202o = "";
        this.f11203p = "";
        this.f11204q = "";
        this.f11205r = "";
        this.f11206s = "";
    }

    private int c(String str) {
        try {
            return this.f11208u.getInt(str, 0);
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
            return 0;
        }
    }

    public int a() {
        if (this.f11200m == 0) {
            this.f11200m = Build.VERSION.SDK_INT;
        }
        return this.f11200m;
    }

    private String a(String str) {
        try {
            return this.f11208u.getString(str, "");
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
            return "";
        }
    }

    @TargetApi(9)
    private void a(String str, String str2) {
        try {
            SharedPreferences.Editor editorK = k();
            editorK.putString(str, str2);
            editorK.apply();
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    public String b() {
        if (TextUtils.isEmpty(this.f11201n)) {
            this.f11201n = Build.VERSION.SDK;
        }
        return this.f11201n;
    }

    @TargetApi(9)
    private void a(String str, Long l2) {
        try {
            SharedPreferences.Editor editorK = k();
            editorK.putLong(str, l2.longValue());
            editorK.apply();
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    private Long b(String str) {
        try {
            return Long.valueOf(this.f11208u.getLong(str, 0L));
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
            return 0L;
        }
    }

    @TargetApi(9)
    private void a(String str, int i2) {
        try {
            SharedPreferences.Editor editorK = k();
            editorK.putInt(str, i2);
            editorK.apply();
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }
}
