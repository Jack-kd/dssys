package org.eclipse.jetty.http;

/* loaded from: classes5.dex */
public class i extends L1.e {

    /* renamed from: d, reason: collision with root package name */
    public static final i f52223d;

    /* renamed from: e, reason: collision with root package name */
    public static final L1.d f52224e;

    /* renamed from: f, reason: collision with root package name */
    public static final L1.d f52225f;

    /* renamed from: g, reason: collision with root package name */
    public static final L1.d f52226g;

    /* renamed from: h, reason: collision with root package name */
    public static final L1.d f52227h;

    /* renamed from: i, reason: collision with root package name */
    public static final L1.d f52228i;

    /* renamed from: j, reason: collision with root package name */
    public static final L1.d f52229j;

    /* renamed from: k, reason: collision with root package name */
    public static final L1.d f52230k;

    /* renamed from: l, reason: collision with root package name */
    public static final L1.d f52231l;

    /* renamed from: m, reason: collision with root package name */
    public static final L1.d f52232m;

    /* renamed from: n, reason: collision with root package name */
    public static final L1.d f52233n;

    /* renamed from: o, reason: collision with root package name */
    public static final L1.d f52234o;

    static {
        i iVar = new i();
        f52223d = iVar;
        f52224e = iVar.a("close", 1);
        f52225f = iVar.a("chunked", 2);
        f52226g = iVar.a("gzip", 3);
        f52227h = iVar.a("identity", 4);
        f52228i = iVar.a("keep-alive", 5);
        f52229j = iVar.a("100-continue", 6);
        f52230k = iVar.a("102-processing", 7);
        f52231l = iVar.a("TE", 8);
        f52232m = iVar.a("bytes", 9);
        f52233n = iVar.a("no-cache", 10);
        f52234o = iVar.a("Upgrade", 11);
    }

    public static boolean i(int i2) {
        return i2 == 1 || i2 == 5 || i2 == 10;
    }
}
