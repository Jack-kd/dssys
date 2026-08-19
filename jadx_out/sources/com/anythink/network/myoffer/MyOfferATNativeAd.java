package com.anythink.network.myoffer;

import android.content.Context;
import android.view.View;
import com.anythink.nativead.api.ATNativePrepareExInfo;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeAdListener;

/* loaded from: classes2.dex */
public class MyOfferATNativeAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    SDMNativeAd f10053a;

    /* renamed from: b, reason: collision with root package name */
    Context f10054b;

    /* renamed from: c, reason: collision with root package name */
    View f10055c;

    public class a implements SDMNativeAdListener {
        public a() {
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onAdClick() {
            MyOfferATNativeAd.this.notifyAdClicked();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onAdClosed() {
            MyOfferATNativeAd.this.notifyAdDislikeClick();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onAdShow() {
            MyOfferATNativeAd.this.notifyAdImpression();
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onDeeplinkCallback(boolean z2) {
            MyOfferATNativeAd.this.notifyDeeplinkCallback(z2);
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdListener
        public void onShowFailed(AdError adError) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MyOfferATNativeAd(android.content.Context r3, com.smartdigimkt.sdk.api.format.SDMNativeAd r4) {
        /*
            r2 = this;
            r2.<init>()
            android.content.Context r3 = r3.getApplicationContext()
            r2.f10054b = r3
            r2.f10053a = r4
            com.anythink.network.myoffer.MyOfferATNativeAd$a r3 = new com.anythink.network.myoffer.MyOfferATNativeAd$a
            r3.<init>()
            r4.setListener(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            java.lang.String r3 = r3.getAdChoiceIconUrl()
            r2.setAdChoiceIconUrl(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            java.lang.String r3 = r3.getTitle()
            r2.setTitle(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            java.lang.String r3 = r3.getDescription()
            r2.setDescriptionText(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            java.lang.String r3 = r3.getIcon()
            r2.setIconImageUrl(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            java.lang.String r3 = r3.getMainImageUrl()
            r2.setMainImageUrl(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            java.lang.String r3 = r3.getCallToAction()
            r2.setCallToActionText(r3)
            int r3 = r4.getInteractionType()
            r4 = 1
            if (r3 == r4) goto L68
            r0 = 2
            if (r3 == r0) goto L64
            r1 = 3
            if (r3 == r1) goto L64
            r0 = 4
            if (r3 == r0) goto L68
            r4 = 6
            if (r3 == r4) goto L60
            r4 = 7
            if (r3 == r4) goto L60
            goto L6b
        L60:
            r2.setNativeInteractionType(r1)
            goto L6b
        L64:
            r2.setNativeInteractionType(r0)
            goto L6b
        L68:
            r2.setNativeInteractionType(r4)
        L6b:
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            int r3 = r3.getAdImageWidth()
            r2.setMainImageWidth(r3)
            com.smartdigimkt.sdk.api.format.SDMNativeAd r3 = r2.f10053a
            int r3 = r3.getAdImageHeight()
            r2.setMainImageHeight(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.myoffer.MyOfferATNativeAd.<init>(android.content.Context, com.smartdigimkt.sdk.api.format.SDMNativeAd):void");
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
        SDMNativeAd sDMNativeAd = this.f10053a;
        if (sDMNativeAd != null) {
            sDMNativeAd.unregisterView();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        SDMNativeAd sDMNativeAd = this.f10053a;
        if (sDMNativeAd != null) {
            sDMNativeAd.setListener(null);
            this.f10053a.destroy();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        if (this.f10055c == null) {
            this.f10055c = this.f10053a.getMediaView(this.f10054b, null);
        }
        return this.f10055c;
    }

    @Override // com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public int getDownloadStatus() {
        int downloadStatus;
        SDMNativeAd sDMNativeAd = this.f10053a;
        if (sDMNativeAd == null || (downloadStatus = sDMNativeAd.getDownloadStatus()) < 0) {
            return 0;
        }
        return downloadStatus;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (this.f10053a != null) {
            this.f10053a.registerAdView(view, aTNativePrepareInfo.getClickViewList(), aTNativePrepareInfo instanceof ATNativePrepareExInfo ? ((ATNativePrepareExInfo) aTNativePrepareInfo).getCreativeClickViewList() : null, null, null);
        }
    }
}
