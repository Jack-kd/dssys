package com.ubix.ssp.ad.e.y.c;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f47830a = new int[0];

    /* renamed from: b, reason: collision with root package name */
    public static final long[] f47831b = new long[0];

    /* renamed from: c, reason: collision with root package name */
    public static final float[] f47832c = new float[0];

    /* renamed from: d, reason: collision with root package name */
    public static final double[] f47833d = new double[0];

    /* renamed from: e, reason: collision with root package name */
    public static final boolean[] f47834e = new boolean[0];

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f47835f = new String[0];

    /* renamed from: g, reason: collision with root package name */
    public static final byte[][] f47836g = new byte[0][];

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f47837h = new byte[0];

    private h() {
    }

    public static int a(int i2) {
        return i2 >>> 3;
    }

    public static int b(int i2) {
        return i2 & 7;
    }

    public static int a(int i2, int i3) {
        return (i2 << 3) | i3;
    }

    public static boolean b(a aVar, int i2) {
        return aVar.h(i2);
    }

    public static final int a(a aVar, int i2) throws d {
        int iB = aVar.b();
        aVar.h(i2);
        int i3 = 1;
        while (aVar.w() == i2) {
            aVar.h(i2);
            i3++;
        }
        aVar.g(iB);
        return i3;
    }
}
