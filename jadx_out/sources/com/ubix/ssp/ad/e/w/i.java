package com.ubix.ssp.ad.e.w;

/* loaded from: classes5.dex */
public final class i extends a implements Cloneable {

    /* renamed from: j, reason: collision with root package name */
    boolean f47318j;

    public i(String str) {
        this.f47260a = str;
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public i clone() {
        try {
            return (i) super.clone();
        } catch (CloneNotSupportedException e2) {
            h.a(e2);
            return this;
        }
    }

    public i b() {
        this.f47261b = true;
        return this;
    }

    public i a(int i2) {
        this.f47263d = Math.max(1, i2);
        return this;
    }

    public i b(int i2) {
        this.f47262c = Math.max(5, i2);
        return this;
    }

    public i a(long j2) {
        this.f47264e = Math.max(com.anythink.china.a.c.f1404y, j2);
        return this;
    }

    public i a(boolean z2) {
        this.f47266g = z2;
        this.f47318j = true;
        return this;
    }
}
