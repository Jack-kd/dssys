package com.umeng.analytics.pro;

/* loaded from: classes5.dex */
public class dd extends dk {

    /* renamed from: a, reason: collision with root package name */
    public static final int f49161a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f49162b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f49163c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f49164d = 3;

    /* renamed from: e, reason: collision with root package name */
    public static final int f49165e = 4;

    /* renamed from: f, reason: collision with root package name */
    public static final int f49166f = 5;

    /* renamed from: g, reason: collision with root package name */
    public static final int f49167g = 6;

    /* renamed from: h, reason: collision with root package name */
    public static final int f49168h = 7;

    /* renamed from: j, reason: collision with root package name */
    private static final ei f49169j = new ei("TApplicationException");

    /* renamed from: k, reason: collision with root package name */
    private static final dy f49170k = new dy("message", (byte) 11, 1);

    /* renamed from: l, reason: collision with root package name */
    private static final dy f49171l = new dy("type", (byte) 8, 2);

    /* renamed from: m, reason: collision with root package name */
    private static final long f49172m = 1;

    /* renamed from: i, reason: collision with root package name */
    protected int f49173i;

    public dd() {
        this.f49173i = 0;
    }

    public int a() {
        return this.f49173i;
    }

    public void b(ed edVar) throws dk {
        edVar.a(f49169j);
        if (getMessage() != null) {
            edVar.a(f49170k);
            edVar.a(getMessage());
            edVar.c();
        }
        edVar.a(f49171l);
        edVar.a(this.f49173i);
        edVar.c();
        edVar.d();
        edVar.b();
    }

    public static dd a(ed edVar) throws dk {
        edVar.j();
        String strZ = null;
        int iW = 0;
        while (true) {
            dy dyVarL = edVar.l();
            byte b3 = dyVarL.f49250b;
            if (b3 == 0) {
                edVar.k();
                return new dd(iW, strZ);
            }
            short s2 = dyVarL.f49251c;
            if (s2 != 1) {
                if (s2 != 2) {
                    eg.a(edVar, b3);
                } else if (b3 == 8) {
                    iW = edVar.w();
                } else {
                    eg.a(edVar, b3);
                }
            } else if (b3 == 11) {
                strZ = edVar.z();
            } else {
                eg.a(edVar, b3);
            }
            edVar.m();
        }
    }

    public dd(int i2) {
        this.f49173i = i2;
    }

    public dd(int i2, String str) {
        super(str);
        this.f49173i = i2;
    }

    public dd(String str) {
        super(str);
        this.f49173i = 0;
    }
}
