package com.smartdigimkt.v;

import android.content.Context;
import android.view.View;
import com.smartdigimkt.sdk.api.format.SDMBannerView;

/* loaded from: classes5.dex */
public final class i extends com.smartdigimkt.a4.a {
    final /* synthetic */ SDMBannerView this$0;
    final /* synthetic */ com.smartdigimkt.j1.a val$adCacheInfo;
    final /* synthetic */ Context val$context;
    final /* synthetic */ boolean val$isRefresh;

    public i(SDMBannerView sDMBannerView, Context context, com.smartdigimkt.j1.a aVar, boolean z2) {
        this.this$0 = sDMBannerView;
        this.val$context = context;
        this.val$adCacheInfo = aVar;
        this.val$isRefresh = z2;
    }

    @Override // com.smartdigimkt.a4.a
    public int getImpressionMinPercentageViewed() {
        return 50;
    }

    public int getImpressionMinTimeViewed() {
        return 0;
    }

    @Override // com.smartdigimkt.a4.a
    public void recordImpression(View view) {
        this.this$0.notifyBannerShow(this.val$context, this.val$adCacheInfo, this.val$isRefresh);
    }
}
