package com.beizi.fusion;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;

/* loaded from: classes2.dex */
class z6 implements ac {

    /* renamed from: B, reason: collision with root package name */
    private String f17808B;

    /* renamed from: C, reason: collision with root package name */
    private String f17809C;

    /* renamed from: D, reason: collision with root package name */
    private String f17810D;

    /* renamed from: E, reason: collision with root package name */
    private boolean f17811E;

    /* renamed from: F, reason: collision with root package name */
    private String f17812F;

    /* renamed from: a, reason: collision with root package name */
    private final Context f17813a;

    /* renamed from: b, reason: collision with root package name */
    private String f17814b;

    /* renamed from: c, reason: collision with root package name */
    private int f17815c;

    /* renamed from: d, reason: collision with root package name */
    private String f17816d;

    /* renamed from: e, reason: collision with root package name */
    private String f17817e;

    /* renamed from: f, reason: collision with root package name */
    private String f17818f;

    /* renamed from: h, reason: collision with root package name */
    private String f17820h;

    /* renamed from: i, reason: collision with root package name */
    private String f17821i;

    /* renamed from: j, reason: collision with root package name */
    private int f17822j;

    /* renamed from: k, reason: collision with root package name */
    private String f17823k;

    /* renamed from: l, reason: collision with root package name */
    private int f17824l;

    /* renamed from: m, reason: collision with root package name */
    private int f17825m;

    /* renamed from: n, reason: collision with root package name */
    private int f17826n;

    /* renamed from: o, reason: collision with root package name */
    private int f17827o;

    /* renamed from: p, reason: collision with root package name */
    private int f17828p;

    /* renamed from: q, reason: collision with root package name */
    private int f17829q;

    /* renamed from: r, reason: collision with root package name */
    private String f17830r;

    /* renamed from: s, reason: collision with root package name */
    private String f17831s;

    /* renamed from: t, reason: collision with root package name */
    private String f17832t;

    /* renamed from: u, reason: collision with root package name */
    private String f17833u;

    /* renamed from: v, reason: collision with root package name */
    private String f17834v;

    /* renamed from: w, reason: collision with root package name */
    private float f17835w;

    /* renamed from: x, reason: collision with root package name */
    private String f17836x;

    /* renamed from: y, reason: collision with root package name */
    private String f17837y;

    /* renamed from: z, reason: collision with root package name */
    private String f17838z;

    /* renamed from: A, reason: collision with root package name */
    private int f17807A = -1;

    /* renamed from: g, reason: collision with root package name */
    private final int f17819g = b7.i();

    public z6(Context context) {
        this.f17813a = context.getApplicationContext();
    }

    private String b(String str) {
        str.getClass();
        switch (str) {
            case "1":
                return "CMCC";
            case "2":
                return "CUCC";
            case "3":
                return "CTCC";
            default:
                return "UNKNOW";
        }
    }

    @Override // com.beizi.fusion.ac
    public String A() {
        if (TextUtils.isEmpty(this.f17830r)) {
            this.f17830r = b7.c();
        }
        return this.f17830r;
    }

    @Override // com.beizi.fusion.ac
    public int B() {
        return this.f17819g;
    }

    @Override // com.beizi.fusion.ac
    public int C() {
        if (this.f17825m == 0) {
            this.f17825m = jn.f(this.f17813a);
        }
        return this.f17825m;
    }

    @Override // com.beizi.fusion.ac
    public String D() {
        if (TextUtils.isEmpty(this.f17823k)) {
            this.f17823k = b7.f();
        }
        return this.f17823k;
    }

    @Override // com.beizi.fusion.ac
    public String E() {
        if (TextUtils.isEmpty(this.f17808B)) {
            gk.a().c();
            this.f17808B = gk.a().b();
        }
        return this.f17808B;
    }

    @Override // com.beizi.fusion.ac
    public String F() {
        if (TextUtils.isEmpty(this.f17834v)) {
            this.f17834v = b7.j();
        }
        return this.f17834v;
    }

    public int G() {
        return Settings.Global.getInt(this.f17813a.getContentResolver(), "development_settings_enabled", 0);
    }

    @Override // com.beizi.fusion.ac
    public int a() {
        if (this.f17822j == 0) {
            this.f17822j = zi.a(this.f17813a);
        }
        return this.f17822j;
    }

    @Override // com.beizi.fusion.ac
    public int c() {
        if (this.f17828p == 0) {
            this.f17828p = jn.c(this.f17813a);
        }
        return this.f17828p;
    }

    @Override // com.beizi.fusion.ac
    public String d() {
        if (TextUtils.isEmpty(this.f17814b)) {
            this.f17814b = tp.a().b(this.f17813a);
        }
        return this.f17814b;
    }

    @Override // com.beizi.fusion.ac
    public String e() {
        if (TextUtils.isEmpty(this.f17816d)) {
            this.f17816d = b7.g();
        }
        return this.f17816d;
    }

    @Override // com.beizi.fusion.ac
    public int f() {
        return (G() == 1 || zi.a()) ? 1 : 0;
    }

    @Override // com.beizi.fusion.ac
    public String g() {
        if (TextUtils.isEmpty(this.f17818f)) {
            this.f17818f = b7.h();
        }
        return this.f17818f;
    }

    @Override // com.beizi.fusion.ac
    public String getOAID() {
        if (TextUtils.isEmpty(this.f17833u)) {
            this.f17833u = zj.a().c(this.f17813a);
        }
        return TextUtils.isEmpty(this.f17833u) ? TextUtils.isEmpty(this.f17810D) ? "" : this.f17810D : this.f17833u;
    }

    @Override // com.beizi.fusion.ac
    public String h() {
        if (TextUtils.isEmpty(this.f17817e)) {
            this.f17817e = b7.b();
        }
        return this.f17817e;
    }

    @Override // com.beizi.fusion.ac
    public float i() {
        if (this.f17835w == 0.0f) {
            this.f17835w = jn.a(this.f17813a);
        }
        return this.f17835w;
    }

    @Override // com.beizi.fusion.ac
    public String j() {
        if (TextUtils.isEmpty(this.f17820h)) {
            this.f17820h = b7.a();
        }
        return this.f17820h;
    }

    @Override // com.beizi.fusion.ac
    public int k() {
        if (this.f17829q == 0) {
            this.f17829q = jn.b(this.f17813a);
        }
        return this.f17829q;
    }

    @Override // com.beizi.fusion.ac
    public String l() {
        if (TextUtils.isEmpty(this.f17832t)) {
            this.f17832t = b7.e();
        }
        return this.f17832t;
    }

    @Override // com.beizi.fusion.ac
    public String m() {
        return "";
    }

    @Override // com.beizi.fusion.ac
    public String n() {
        if (TextUtils.isEmpty(this.f17831s)) {
            this.f17831s = b7.g(this.f17813a);
        }
        return this.f17831s;
    }

    @Override // com.beizi.fusion.ac
    public int o() {
        return sn.c(this.f17813a);
    }

    @Override // com.beizi.fusion.ac
    public int p() {
        if (this.f17827o == 0) {
            this.f17827o = jn.g(this.f17813a);
        }
        return this.f17827o;
    }

    @Override // com.beizi.fusion.ac
    public String q() {
        if (this.f17811E) {
            return b(this.f17812F);
        }
        if (TextUtils.isEmpty(this.f17821i)) {
            this.f17821i = b7.a(this.f17813a);
        }
        return this.f17821i;
    }

    @Override // com.beizi.fusion.ac
    public String r() {
        if (TextUtils.isEmpty(this.f17837y)) {
            this.f17837y = b7.d() + "";
        }
        return this.f17837y;
    }

    @Override // com.beizi.fusion.ac
    public String s() {
        if (TextUtils.isEmpty(this.f17836x)) {
            this.f17836x = b7.c(this.f17813a);
        }
        return this.f17836x;
    }

    @Override // com.beizi.fusion.ac
    public String t() {
        return gk.a().a(this.f17813a);
    }

    @Override // com.beizi.fusion.ac
    public int u() {
        if (this.f17824l == 0) {
            this.f17824l = jn.d(this.f17813a);
        }
        return this.f17824l;
    }

    @Override // com.beizi.fusion.ac
    public int v() {
        if (this.f17826n == 0) {
            this.f17826n = jn.e(this.f17813a);
        }
        return this.f17826n;
    }

    @Override // com.beizi.fusion.ac
    public String w() {
        if (TextUtils.isEmpty(this.f17809C)) {
            this.f17809C = zj.a().a(this.f17813a);
        }
        return this.f17809C;
    }

    @Override // com.beizi.fusion.ac
    public int x() {
        if (this.f17807A == -1) {
            this.f17807A = b7.b(this.f17813a);
        }
        return this.f17807A;
    }

    @Override // com.beizi.fusion.ac
    public int y() {
        if (this.f17815c == 0) {
            this.f17815c = b7.e(this.f17813a);
        }
        return this.f17815c;
    }

    @Override // com.beizi.fusion.ac
    public String z() {
        return gk.a().b(this.f17813a);
    }

    @Override // com.beizi.fusion.ac
    public void a(String str) {
        this.f17810D = str;
    }

    @Override // com.beizi.fusion.ac
    public void a(boolean z2, String str) {
        this.f17811E = z2;
        this.f17812F = str;
    }

    @Override // com.beizi.fusion.ac
    public String b() {
        if (TextUtils.isEmpty(this.f17838z)) {
            this.f17838z = b7.d(this.f17813a);
        }
        return this.f17838z;
    }
}
