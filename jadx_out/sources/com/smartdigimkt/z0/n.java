package com.smartdigimkt.z0;

import android.content.Context;

/* loaded from: classes5.dex */
public final class n implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f45392a;

    /* renamed from: b, reason: collision with root package name */
    public final h f45393b;

    public n(Context context) {
        p pVar = new p();
        this.f45392a = context.getApplicationContext();
        this.f45393b = pVar;
    }

    @Override // com.smartdigimkt.z0.h
    public final i a() {
        return new m(this.f45392a, this.f45393b.a());
    }
}
