package com.ubix.ssp.ad.d;

import android.os.Build;
import com.ubix.ssp.ad.e.a0.r;
import com.umeng.analytics.pro.bv;
import java.util.Locale;

/* loaded from: classes5.dex */
public class g {

    /* renamed from: A, reason: collision with root package name */
    public int f45874A;

    /* renamed from: B, reason: collision with root package name */
    public String f45875B;

    /* renamed from: C, reason: collision with root package name */
    public String f45876C;

    /* renamed from: D, reason: collision with root package name */
    public String f45877D;

    /* renamed from: E, reason: collision with root package name */
    public String f45878E;

    /* renamed from: F, reason: collision with root package name */
    public String f45879F;

    /* renamed from: G, reason: collision with root package name */
    public String f45880G;

    /* renamed from: H, reason: collision with root package name */
    public double[] f45881H;

    /* renamed from: I, reason: collision with root package name */
    public int f45882I;

    /* renamed from: a, reason: collision with root package name */
    public int f45883a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f45884b;

    /* renamed from: c, reason: collision with root package name */
    public String f45885c;

    /* renamed from: d, reason: collision with root package name */
    public String f45886d;

    /* renamed from: e, reason: collision with root package name */
    public int f45887e;

    /* renamed from: f, reason: collision with root package name */
    public int f45888f;

    /* renamed from: g, reason: collision with root package name */
    public String f45889g;

    /* renamed from: h, reason: collision with root package name */
    public String f45890h;

    /* renamed from: i, reason: collision with root package name */
    public String f45891i;

    /* renamed from: j, reason: collision with root package name */
    public String f45892j;

    /* renamed from: k, reason: collision with root package name */
    public String f45893k;

    /* renamed from: l, reason: collision with root package name */
    public String f45894l;

    /* renamed from: m, reason: collision with root package name */
    public String f45895m;

    /* renamed from: n, reason: collision with root package name */
    public String f45896n;

    /* renamed from: o, reason: collision with root package name */
    public String f45897o;

    /* renamed from: p, reason: collision with root package name */
    public float f45898p;

    /* renamed from: q, reason: collision with root package name */
    public float f45899q;

    /* renamed from: r, reason: collision with root package name */
    public String f45900r;

    /* renamed from: s, reason: collision with root package name */
    public int f45901s;

    /* renamed from: t, reason: collision with root package name */
    public int f45902t;

    /* renamed from: u, reason: collision with root package name */
    public String f45903u;

    /* renamed from: v, reason: collision with root package name */
    public int f45904v;

    /* renamed from: w, reason: collision with root package name */
    public String f45905w;

    /* renamed from: x, reason: collision with root package name */
    public String f45906x;

    /* renamed from: y, reason: collision with root package name */
    public int f45907y;

    /* renamed from: z, reason: collision with root package name */
    public int f45908z;

    public g() {
        this.f45883a = (com.ubix.ssp.ad.e.b.a("sim_status") && (b.f45818y & 2) == 2) ? com.ubix.ssp.ad.e.a0.c.p() : 0;
        this.f45884b = (com.ubix.ssp.ad.e.b.a("is_debug_mode") && (b.f45818y & 1) == 1) ? com.ubix.ssp.ad.e.a0.c.B() : false;
        this.f45885c = com.ubix.ssp.ad.e.b.a("custom_os_name") ? com.ubix.ssp.ad.e.a0.z.a.a().n() : "";
        this.f45886d = com.ubix.ssp.ad.e.b.a("custom_os_version") ? com.ubix.ssp.ad.e.a0.z.a.a().m() : "";
        this.f45887e = 1;
        this.f45888f = 1;
        this.f45889g = Build.VERSION.RELEASE;
        this.f45890h = Build.MANUFACTURER;
        this.f45891i = Build.BRAND;
        this.f45892j = com.ubix.ssp.ad.e.b.a("device_model") ? Build.MODEL : "";
        this.f45893k = com.ubix.ssp.ad.e.b.a("hw_model") ? Build.PRODUCT : "";
        this.f45894l = com.ubix.ssp.ad.e.b.a("hw_machine") ? Build.CPU_ABI : "";
        this.f45895m = Build.HARDWARE;
        this.f45896n = com.ubix.ssp.ad.e.b.a("language") ? Locale.getDefault().getLanguage() : "";
        this.f45897o = com.ubix.ssp.ad.e.a0.c.o();
        this.f45898p = r.b(com.ubix.ssp.ad.e.a0.c.f46112a);
        this.f45899q = r.a().a(com.ubix.ssp.ad.e.a0.c.f46112a);
        this.f45900r = com.ubix.ssp.ad.e.b.a(bv.f48883J) ? Build.DEVICE : "";
        this.f45901s = com.ubix.ssp.ad.e.a0.c.k();
        this.f45902t = com.ubix.ssp.ad.e.b.a("conn_type") ? com.ubix.ssp.ad.e.a0.c.i() : 0;
        this.f45903u = com.ubix.ssp.ad.e.b.a("carrier_type") ? com.ubix.ssp.ad.e.a0.c.c(b.a().isCanUsePhoneState()) : "";
        this.f45904v = com.ubix.ssp.ad.e.b.a("carrier_code") ? com.ubix.ssp.ad.e.a0.c.b(b.a().isCanUsePhoneState()) : 0;
        this.f45905w = (!com.ubix.ssp.ad.e.b.a("device_startup_time") || b()) ? "" : com.ubix.ssp.ad.e.a0.c.c();
        this.f45906x = com.ubix.ssp.ad.e.b.a("device_mb_time") ? com.ubix.ssp.ad.e.a0.c.s() : "";
        this.f45907y = com.ubix.ssp.ad.e.b.a("cpu_num") ? com.ubix.ssp.ad.e.a0.c.j() : 0;
        this.f45908z = 1;
        this.f45874A = 0;
        this.f45875B = com.ubix.ssp.ad.e.b.a("country_code") ? com.ubix.ssp.ad.e.a0.c.f() : "";
        this.f45876C = "28800000";
        this.f45877D = a();
        this.f45878E = com.ubix.ssp.ad.e.b.a("vivo_store_ver") ? com.ubix.ssp.ad.e.a0.c.f(com.ubix.ssp.ad.e.a0.c.f46112a) : "";
        this.f45879F = com.ubix.ssp.ad.e.b.a("huawei_ver_code_of_ag") ? com.ubix.ssp.ad.e.a0.c.c(com.ubix.ssp.ad.e.a0.c.f46112a) : "";
        this.f45880G = com.ubix.ssp.ad.e.b.a("huawei_ver_code_of_hms") ? com.ubix.ssp.ad.e.a0.c.b(com.ubix.ssp.ad.e.a0.c.f46112a) : "";
        this.f45881H = b.a().getLocation();
        this.f45882I = com.ubix.ssp.ad.e.b.a("is_vpn_on") ? com.ubix.ssp.ad.e.a0.c.v() : 0;
    }

    private boolean b() {
        return com.ubix.ssp.ad.e.a0.z.a.a().g() || com.ubix.ssp.ad.e.a0.z.a.a().f() || com.ubix.ssp.ad.e.a0.z.a.a().l();
    }

    public String a() {
        return this.f45888f == 1 ? "android" : "harmony";
    }
}
