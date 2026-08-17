package com.smartdigimkt.sdk.api.format;

/* loaded from: classes5.dex */
public final class d implements Runnable {
    final /* synthetic */ e this$1;
    final /* synthetic */ com.smartdigimkt.j1.a val$adCacheInfo;

    public d(e eVar, com.smartdigimkt.j1.a aVar) {
        this.this$1 = eVar;
        this.val$adCacheInfo = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        e eVar = this.this$1;
        eVar.this$0.renderBannerView(this.val$adCacheInfo, eVar.val$currentRefreshStatus);
    }
}
