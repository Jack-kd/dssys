package com.smartdigimkt.v;

import com.smartdigimkt.sdk.api.format.SDMBannerView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class j implements Runnable {
    final /* synthetic */ SDMBannerView this$0;
    final /* synthetic */ com.smartdigimkt.j1.a val$adCacheInfo;

    public j(SDMBannerView sDMBannerView, com.smartdigimkt.j1.a aVar) {
        this.this$0 = sDMBannerView;
        this.val$adCacheInfo = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.smartdigimkt.j1.a aVar = this.val$adCacheInfo;
        if (aVar != null) {
            aVar.c();
        }
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(13, this.val$adCacheInfo.f41076l, -1L);
    }
}
