package com.anythink.core.common.n.a;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final String f5988a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5989b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5990c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5991d;

    private h(String str, boolean z2, boolean z3) {
        this(str, z2, z3, (byte) 0);
    }

    private h(String str, boolean z2, boolean z3, byte b3) {
        this.f5988a = str;
        this.f5989b = z2;
        this.f5991d = z3;
        this.f5990c = 0;
    }

    private h(String str, boolean z2) {
        this(str, z2, false, (byte) 0);
    }

    public h(String str) {
        this(str, false, false, (byte) 0);
    }
}
