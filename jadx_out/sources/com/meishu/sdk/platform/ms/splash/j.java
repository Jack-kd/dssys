package com.meishu.sdk.platform.ms.splash;

import com.meishu.sdk.core.safe.l;

/* loaded from: classes4.dex */
public class j extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f33182a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f33183b;

    public j(g gVar, long j2) {
        this.f33183b = gVar;
        this.f33182a = j2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        com.meishu.sdk.core.ad.splash.d dVar = this.f33183b.f33165b;
        if (dVar != null) {
            dVar.onAdTick(this.f33182a);
        }
    }
}
