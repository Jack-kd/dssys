package com.anythink.network.octopus;

import android.view.View;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;

/* loaded from: classes2.dex */
public class ZyATExpressAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f10101a = ZyATExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private NativeAdResponse f10102b;

    /* renamed from: c, reason: collision with root package name */
    private NativeAd f10103c;

    /* renamed from: d, reason: collision with root package name */
    private View f10104d;

    public class a implements NativeAdEventListener {
        public a() {
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onADExposed() {
            String unused = ZyATExpressAd.this.f10101a;
            ZyATExpressAd.this.notifyAdImpression();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClick() {
            String unused = ZyATExpressAd.this.f10101a;
            ZyATExpressAd.this.notifyAdClicked();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClose() {
            String unused = ZyATExpressAd.this.f10101a;
            ZyATExpressAd.this.notifyAdDislikeClick();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdRenderFailed(int i2) {
            String unused = ZyATExpressAd.this.f10101a;
        }
    }

    public ZyATExpressAd(NativeAd nativeAd, NativeAdResponse nativeAdResponse) {
        this.f10103c = nativeAd;
        this.f10102b = nativeAdResponse;
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.f10103c;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f10103c = null;
        }
        NativeAdResponse nativeAdResponse = this.f10102b;
        if (nativeAdResponse != null) {
            nativeAdResponse.destroy();
            this.f10102b = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return this.f10104d;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.core.api.BaseAd
    public boolean isValid() {
        NativeAd nativeAd = this.f10103c;
        return nativeAd != null ? nativeAd.isValid() : super.isValid();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
    }

    private void a() {
        try {
            int materialType = this.f10102b.getMaterialType();
            int i2 = 1;
            if (materialType == 2) {
                this.mAdSourceType = "1";
            } else if (materialType == 1) {
                this.mAdSourceType = "2";
            }
            if (this.f10102b.getInteractionType() != 2) {
                i2 = 2;
            }
            setNativeInteractionType(i2);
            this.f10102b.setNativeAdEventListener(new a());
            this.f10104d = this.f10102b.getNativeView();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
