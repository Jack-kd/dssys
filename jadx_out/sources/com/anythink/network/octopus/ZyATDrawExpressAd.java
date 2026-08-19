package com.anythink.network.octopus;

import android.view.View;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.octopus.ad.DrawAd;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;

/* loaded from: classes2.dex */
public class ZyATDrawExpressAd extends CustomNativeAd {

    /* renamed from: b, reason: collision with root package name */
    private DrawAd f10097b;

    /* renamed from: c, reason: collision with root package name */
    private NativeAdResponse f10098c;

    /* renamed from: a, reason: collision with root package name */
    private final String f10096a = ZyATDrawExpressAd.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private View f10099d = null;

    public class a implements NativeAdEventListener {
        public a() {
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onADExposed() {
            String unused = ZyATDrawExpressAd.this.f10096a;
            ZyATDrawExpressAd.this.notifyAdImpression();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClick() {
            String unused = ZyATDrawExpressAd.this.f10096a;
            ZyATDrawExpressAd.this.notifyAdClicked();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClose() {
            String unused = ZyATDrawExpressAd.this.f10096a;
            ZyATDrawExpressAd.this.notifyAdDislikeClick();
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdRenderFailed(int i2) {
            String unused = ZyATDrawExpressAd.this.f10096a;
        }
    }

    public ZyATDrawExpressAd(DrawAd drawAd, NativeAdResponse nativeAdResponse) {
        this.f10097b = drawAd;
        this.f10098c = nativeAdResponse;
        a();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        DrawAd drawAd = this.f10097b;
        if (drawAd != null) {
            drawAd.destroy();
            this.f10097b = null;
        }
        NativeAdResponse nativeAdResponse = this.f10098c;
        if (nativeAdResponse != null) {
            nativeAdResponse.destroy();
            this.f10098c = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return this.f10099d;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.core.api.BaseAd
    public boolean isValid() {
        DrawAd drawAd = this.f10097b;
        return drawAd != null ? drawAd.isValid() : super.isValid();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
    }

    private void a() {
        try {
            int materialType = this.f10098c.getMaterialType();
            int i2 = 1;
            if (materialType == 2) {
                this.mAdSourceType = "1";
            } else if (materialType == 1) {
                this.mAdSourceType = "2";
            }
            if (this.f10098c.getInteractionType() != 2) {
                i2 = 2;
            }
            setNativeInteractionType(i2);
            this.f10098c.setNativeAdEventListener(new a());
            this.f10099d = this.f10098c.getNativeView();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
