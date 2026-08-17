package com.meishu.sdk.platform.ms.splash;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class h extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f33180a;

    public h(g gVar) {
        this.f33180a = gVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            g gVar = this.f33180a;
            com.meishu.sdk.core.ad.splash.d dVar = gVar.f33165b;
            if (dVar != null) {
                dVar.onAdSkip(gVar.f33167d);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
