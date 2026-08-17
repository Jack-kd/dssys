package com.anythink.core.common.l.e;

import android.content.Context;
import android.view.View;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.c;
import com.anythink.core.common.h.n;
import com.anythink.core.common.l.e.a.b;

/* loaded from: classes2.dex */
public abstract class a implements b {
    private c adCacheInfo;
    private int clickType;
    private int clickedArea;

    public a() {
    }

    public int getClickType() {
        return this.clickType;
    }

    public int getClickedArea() {
        return this.clickedArea;
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onAdClicked(View view) {
        ATBaseAdAdapter aTBaseAdAdapterE;
        c cVar = this.adCacheInfo;
        if (cVar == null || (aTBaseAdAdapterE = cVar.e()) == null || aTBaseAdAdapterE.getTrackingInfo() == null) {
            return;
        }
        n trackingInfo = aTBaseAdAdapterE.getTrackingInfo();
        trackingInfo.P(getClickedArea());
        trackingInfo.Q(getClickType());
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onAdDislikeButtonClick() {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onAdImpressed() {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onAdVideoEnd() {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onAdVideoProgress(int i2) {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onAdVideoStart() {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onClose() {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onDeeplinkCallback(boolean z2) {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
    }

    @Override // com.anythink.core.common.l.e.a.b
    public void onVideoError(String str, String str2) {
    }

    public void setClickType(int i2) {
        this.clickType = i2;
    }

    public void setClickedArea(int i2) {
        this.clickedArea = i2;
    }

    public a(c cVar) {
        this.adCacheInfo = cVar;
    }
}
