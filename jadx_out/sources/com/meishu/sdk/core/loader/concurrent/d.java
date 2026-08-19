package com.meishu.sdk.core.loader.concurrent;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class d extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f31619a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f31620b;

    public d(e eVar, Object obj) {
        this.f31620b = eVar;
        this.f31619a = obj;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        e.a(this.f31620b, this.f31619a);
    }
}
