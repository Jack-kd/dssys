package com.smartdigimkt.t3;

import java.io.File;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f44280a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f44281b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f44282c;

    /* renamed from: d, reason: collision with root package name */
    public c f44283d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f44284e;

    public d(f fVar, String str) {
        this.f44284e = fVar;
        this.f44280a = str;
        this.f44281b = new long[fVar.f44291f];
    }

    public final File a(int i2) {
        return new File(this.f44284e.f44286a, this.f44280a + com.anythink.core.common.d.i.f2495E + i2);
    }

    public final File b(int i2) {
        return new File(this.f44284e.f44286a, this.f44280a + com.anythink.core.common.d.i.f2495E + i2 + ".tmp");
    }
}
