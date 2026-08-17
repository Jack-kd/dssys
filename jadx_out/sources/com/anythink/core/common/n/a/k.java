package com.anythink.core.common.n.a;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final int f5995a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final int f5996b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f5997c = 1;

    /* renamed from: d, reason: collision with root package name */
    public static final int f5998d = 2;

    /* renamed from: e, reason: collision with root package name */
    public static final int f5999e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f6000f = 3;

    /* renamed from: g, reason: collision with root package name */
    public static final int f6001g = 3;

    /* renamed from: h, reason: collision with root package name */
    public static final int f6002h = 999;

    /* renamed from: i, reason: collision with root package name */
    public static final k f6003i = new k(a.NO_NETWORK);

    /* renamed from: j, reason: collision with root package name */
    public static final k f6004j = new k(a.WIFI);

    /* renamed from: k, reason: collision with root package name */
    public final int f6005k = 0;

    /* renamed from: l, reason: collision with root package name */
    public final a f6006l;

    public enum a {
        NO_NETWORK,
        WIFI,
        MOBILE;

        private static /* synthetic */ a[] a() {
            return new a[]{NO_NETWORK, WIFI, MOBILE};
        }
    }

    private k(a aVar) {
        this.f6006l = aVar;
    }
}
