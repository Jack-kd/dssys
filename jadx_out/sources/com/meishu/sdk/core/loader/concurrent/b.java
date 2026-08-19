package com.meishu.sdk.core.loader.concurrent;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class b extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f31616a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f31617b;

    public b(e eVar, Object obj) {
        this.f31617b = eVar;
        this.f31616a = obj;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        e.a(this.f31617b, this.f31616a);
    }
}
