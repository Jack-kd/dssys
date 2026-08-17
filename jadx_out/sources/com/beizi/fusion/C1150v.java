package com.beizi.fusion;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.beizi.fusion.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1150v {

    /* renamed from: a, reason: collision with root package name */
    private final String f16549a;

    /* renamed from: b, reason: collision with root package name */
    private final String f16550b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f16551c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f16552d;

    /* renamed from: e, reason: collision with root package name */
    private final String f16553e;

    /* renamed from: f, reason: collision with root package name */
    private final List f16554f;

    /* renamed from: g, reason: collision with root package name */
    private final int f16555g;

    /* renamed from: h, reason: collision with root package name */
    private final EnumC1137i f16556h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f16557i;

    /* renamed from: j, reason: collision with root package name */
    private final r9 f16558j;

    /* renamed from: k, reason: collision with root package name */
    private final Map f16559k;

    /* renamed from: l, reason: collision with root package name */
    private final Map f16560l;

    /* renamed from: m, reason: collision with root package name */
    private final String f16561m;

    /* renamed from: com.beizi.fusion.v$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f16562a;

        /* renamed from: b, reason: collision with root package name */
        private String f16563b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f16564c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f16565d;

        /* renamed from: e, reason: collision with root package name */
        private String f16566e;

        /* renamed from: f, reason: collision with root package name */
        private final List f16567f;

        /* renamed from: h, reason: collision with root package name */
        private boolean f16569h;

        /* renamed from: j, reason: collision with root package name */
        private r9 f16571j;

        /* renamed from: k, reason: collision with root package name */
        private Map f16572k;

        /* renamed from: l, reason: collision with root package name */
        private String f16573l;

        /* renamed from: m, reason: collision with root package name */
        private Map f16574m;

        /* renamed from: g, reason: collision with root package name */
        private int f16568g = 1;

        /* renamed from: i, reason: collision with root package name */
        private EnumC1137i f16570i = EnumC1137i.UI_MODEL_LIGHT;

        public b(String str) {
            this.f16562a = str;
            ArrayList arrayList = new ArrayList();
            this.f16567f = arrayList;
            arrayList.add("CNY");
        }

        public C1150v a() {
            return new C1150v(this);
        }

        public b a(r9 r9Var) {
            this.f16571j = r9Var;
            return this;
        }

        public b a(boolean z2) {
            this.f16565d = z2;
            return this;
        }

        public b a(Map map) {
            this.f16572k = map;
            return this;
        }
    }

    private boolean a() {
        r9 r9Var = this.f16558j;
        return r9Var == null || r9Var.g();
    }

    private boolean u() {
        r9 r9Var = this.f16558j;
        return r9Var == null || r9Var.k();
    }

    public boolean b() {
        r9 r9Var = this.f16558j;
        return r9Var == null || r9Var.h();
    }

    public boolean c() {
        r9 r9Var = this.f16558j;
        return r9Var == null || r9Var.i();
    }

    public boolean d() {
        return a() && u();
    }

    public String e() {
        return this.f16549a;
    }

    public int f() {
        r9 r9Var = this.f16558j;
        return (r9Var == null || r9Var.e().b() != 1) ? 0 : 1;
    }

    public int g() {
        r9 r9Var = this.f16558j;
        return (r9Var == null || r9Var.e().b() != 1) ? 0 : 1;
    }

    public int h() {
        return this.f16555g;
    }

    public List i() {
        return this.f16554f;
    }

    public String j() {
        r9 r9Var = this.f16558j;
        return r9Var != null ? r9Var.b() : "";
    }

    public String k() {
        r9 r9Var = this.f16558j;
        return r9Var != null ? r9Var.c() : "";
    }

    public InterfaceC1129c0 l() {
        r9 r9Var = this.f16558j;
        if (r9Var != null) {
            return r9Var.a();
        }
        return null;
    }

    public String m() {
        r9 r9Var = this.f16558j;
        return r9Var != null ? r9Var.d() : "";
    }

    public String n() {
        r9 r9Var = this.f16558j;
        return r9Var != null ? r9Var.f() : "";
    }

    public String o() {
        Map map = this.f16560l;
        return map != null ? (String) map.get("darkColor") : "";
    }

    public Map p() {
        return this.f16559k;
    }

    public int q() {
        r9 r9Var = this.f16558j;
        return (r9Var == null || r9Var.e().b() != 1) ? 0 : 1;
    }

    public String r() {
        Map map = this.f16560l;
        return map != null ? (String) map.get("lightColor") : "";
    }

    public Map s() {
        return this.f16560l;
    }

    public String t() {
        return this.f16561m;
    }

    public EnumC1137i v() {
        return this.f16556h;
    }

    public String w() {
        return this.f16553e;
    }

    public boolean x() {
        r9 r9Var = this.f16558j;
        return r9Var == null || r9Var.j();
    }

    public boolean y() {
        return this.f16557i;
    }

    public boolean z() {
        return this.f16552d;
    }

    private C1150v(b bVar) {
        this.f16549a = bVar.f16562a;
        this.f16550b = bVar.f16563b;
        this.f16551c = bVar.f16564c;
        this.f16552d = bVar.f16565d;
        this.f16553e = bVar.f16566e;
        this.f16554f = bVar.f16567f;
        this.f16555g = bVar.f16568g;
        this.f16557i = bVar.f16569h;
        this.f16558j = bVar.f16571j;
        this.f16556h = bVar.f16570i;
        this.f16559k = bVar.f16572k;
        this.f16561m = bVar.f16573l;
        this.f16560l = bVar.f16574m;
    }
}
