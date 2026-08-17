package com.meishu.sdk.core.loader.strategy;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class c extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.core.loader.loadbean.a f31647a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f31648b;

    public c(e eVar, com.meishu.sdk.core.loader.loadbean.a aVar) {
        this.f31648b = eVar;
        this.f31647a = aVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        int i2;
        com.meishu.sdk.core.loader.loadbean.a aVar = this.f31647a;
        if (aVar != null && ((i2 = aVar.f31640c) == 1 || i2 == 4)) {
            synchronized (aVar) {
                aVar.f31640c = 5;
            }
            this.f31647a.f31641d = 2;
        }
        this.f31648b.f31665p.remove(this.f31647a);
        this.f31648b.h();
    }
}
