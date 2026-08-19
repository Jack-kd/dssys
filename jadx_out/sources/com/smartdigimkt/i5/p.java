package com.smartdigimkt.i5;

import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDKContext f40766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40767b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q f40768c;

    public p(q qVar, SDKContext sDKContext, com.smartdigimkt.g5.a aVar) {
        this.f40768c = qVar;
        this.f40766a = sDKContext;
        this.f40767b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f40766a.a(new o(this));
    }
}
