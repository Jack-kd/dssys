package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class v {

    /* renamed from: h, reason: collision with root package name */
    public static JSONObject f31311h = null;

    /* renamed from: i, reason: collision with root package name */
    public static final String f31312i = "1";

    /* renamed from: j, reason: collision with root package name */
    public static final String f31313j = "2";

    /* renamed from: k, reason: collision with root package name */
    public static final String f31314k = "3";

    /* renamed from: l, reason: collision with root package name */
    public static final String f31315l = "4";

    /* renamed from: m, reason: collision with root package name */
    public static final String f31316m = "5";

    /* renamed from: n, reason: collision with root package name */
    public static final String f31317n = "6";

    /* renamed from: o, reason: collision with root package name */
    public static final String f31318o = "7";

    /* renamed from: a, reason: collision with root package name */
    public int f31319a;

    /* renamed from: b, reason: collision with root package name */
    public long f31320b;

    /* renamed from: c, reason: collision with root package name */
    public long f31321c;

    /* renamed from: d, reason: collision with root package name */
    public String f31322d;

    /* renamed from: e, reason: collision with root package name */
    public String f31323e;

    /* renamed from: f, reason: collision with root package name */
    public String f31324f;

    /* renamed from: g, reason: collision with root package name */
    public int f31325g;

    /* renamed from: p, reason: collision with root package name */
    private PackageInfo f31326p;

    /* renamed from: q, reason: collision with root package name */
    private ApplicationInfo f31327q;

    /* renamed from: r, reason: collision with root package name */
    private Context f31328r;

    public v(PackageInfo packageInfo, Context context) {
        this.f31326p = packageInfo;
        this.f31328r = context;
    }

    public int a() {
        return this.f31319a;
    }

    public String b() {
        return this.f31323e;
    }

    public String c() {
        return this.f31324f;
    }

    public long d() {
        return this.f31320b;
    }

    public String e() {
        return this.f31322d;
    }

    public long f() {
        return this.f31321c;
    }

    public int g() {
        return this.f31325g;
    }

    public void h() {
        PackageInfo packageInfo = this.f31326p;
        if (packageInfo == null && this.f31327q == null) {
            return;
        }
        if (packageInfo == null) {
            try {
                if (this.f31327q != null) {
                    this.f31326p = this.f31328r.getPackageManager().getPackageInfo(this.f31327q.packageName, 0);
                }
            } catch (Exception unused) {
            }
        }
        PackageInfo packageInfo2 = this.f31326p;
        a(packageInfo2 == null ? this.f31327q.packageName : packageInfo2.packageName);
        PackageInfo packageInfo3 = this.f31326p;
        a((packageInfo3 == null ? this.f31327q : packageInfo3.applicationInfo).flags & 1);
        b(j());
        PackageInfo packageInfo4 = this.f31326p;
        if (packageInfo4 != null) {
            a(packageInfo4.firstInstallTime);
            b(this.f31326p.lastUpdateTime);
            c(this.f31326p.versionName);
            b(this.f31326p.versionCode);
        }
    }

    public void i() {
        PackageInfo packageInfo = this.f31326p;
        if (packageInfo == null && this.f31327q == null) {
            return;
        }
        if (packageInfo == null) {
            try {
                if (this.f31327q != null) {
                    this.f31326p = this.f31328r.getPackageManager().getPackageInfo(this.f31327q.packageName, 0);
                }
            } catch (Exception unused) {
            }
        }
        PackageInfo packageInfo2 = this.f31326p;
        a(packageInfo2 == null ? this.f31327q.packageName : packageInfo2.packageName);
        PackageInfo packageInfo3 = this.f31326p;
        a((packageInfo3 == null ? this.f31327q : packageInfo3.applicationInfo).flags & 1);
        PackageInfo packageInfo4 = this.f31326p;
        if (packageInfo4 != null) {
            a(packageInfo4.firstInstallTime);
            b(this.f31326p.lastUpdateTime);
            c(this.f31326p.versionName);
            b(this.f31326p.versionCode);
        }
    }

    public String j() {
        ApplicationInfo applicationInfo;
        try {
            PackageInfo packageInfo = this.f31326p;
            if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
                ApplicationInfo applicationInfo2 = this.f31327q;
                if (applicationInfo2 != null) {
                    String string = applicationInfo2.loadLabel(this.f31328r.getPackageManager()).toString();
                    if (!TextUtils.isEmpty(string)) {
                        return string;
                    }
                }
            } else {
                String string2 = applicationInfo.loadLabel(this.f31328r.getPackageManager()).toString();
                if (!TextUtils.isEmpty(string2)) {
                    return string2;
                }
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public JSONObject k() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("1", c());
            jSONObject.put("2", b());
            jSONObject.put("3", e());
            jSONObject.put("4", g());
            jSONObject.put("5", a());
            jSONObject.put("6", d());
            jSONObject.put("7", f());
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a(int i2) {
        this.f31319a = i2;
    }

    public void b(String str) {
        this.f31324f = str;
    }

    public void c(String str) {
        this.f31322d = str;
    }

    public void a(String str) {
        this.f31323e = str;
    }

    public void b(long j2) {
        this.f31321c = j2;
    }

    public v(ApplicationInfo applicationInfo, Context context) {
        this.f31327q = applicationInfo;
        this.f31328r = context;
    }

    public void a(long j2) {
        this.f31320b = j2;
    }

    public void b(int i2) {
        this.f31325g = i2;
    }
}
