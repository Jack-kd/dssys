package com.smartdigimkt.u3;

import com.smartdigimkt.e0.n;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f44406a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44407b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f44408c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f44409d;

    public d(n nVar, String str, int i2, String str2) {
        this.f44406a = nVar;
        this.f44407b = str;
        this.f44408c = i2;
        this.f44409d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44406a.a(this.f44408c, this.f44407b, this.f44409d);
    }
}
