package com.anythink.core.common.n.b.a.e;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    static final int f6515a = 65535;

    /* renamed from: b, reason: collision with root package name */
    static final int f6516b = 1;

    /* renamed from: c, reason: collision with root package name */
    static final int f6517c = 2;

    /* renamed from: d, reason: collision with root package name */
    static final int f6518d = 4;

    /* renamed from: e, reason: collision with root package name */
    static final int f6519e = 5;

    /* renamed from: f, reason: collision with root package name */
    static final int f6520f = 6;

    /* renamed from: g, reason: collision with root package name */
    static final int f6521g = 7;

    /* renamed from: h, reason: collision with root package name */
    static final int f6522h = 10;

    /* renamed from: i, reason: collision with root package name */
    private int f6523i;

    /* renamed from: j, reason: collision with root package name */
    private final int[] f6524j = new int[10];

    public final void a() {
        this.f6523i = 0;
        Arrays.fill(this.f6524j, 0);
    }

    public final int b(int i2) {
        return this.f6524j[i2];
    }

    public final int c() {
        if ((this.f6523i & 2) != 0) {
            return this.f6524j[1];
        }
        return -1;
    }

    public final int d() {
        if ((this.f6523i & 16) != 0) {
            return this.f6524j[4];
        }
        return Integer.MAX_VALUE;
    }

    public final int e() {
        if ((this.f6523i & 128) != 0) {
            return this.f6524j[7];
        }
        return 65535;
    }

    private int d(int i2) {
        return (this.f6523i & 64) != 0 ? this.f6524j[6] : i2;
    }

    public final int b() {
        return Integer.bitCount(this.f6523i);
    }

    public final int c(int i2) {
        return (this.f6523i & 32) != 0 ? this.f6524j[5] : i2;
    }

    public final m a(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.f6524j;
            if (i2 < iArr.length) {
                this.f6523i = (1 << i2) | this.f6523i;
                iArr[i2] = i3;
            }
        }
        return this;
    }

    public final boolean a(int i2) {
        return ((1 << i2) & this.f6523i) != 0;
    }

    private boolean a(boolean z2) {
        return ((this.f6523i & 4) != 0 ? this.f6524j[2] : z2 ? 1 : 0) == 1;
    }

    public final void a(m mVar) {
        for (int i2 = 0; i2 < 10; i2++) {
            if (mVar.a(i2)) {
                a(i2, mVar.f6524j[i2]);
            }
        }
    }
}
