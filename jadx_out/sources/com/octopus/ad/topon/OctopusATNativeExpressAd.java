package com.octopus.ad.topon;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;

/* loaded from: classes4.dex */
public class OctopusATNativeExpressAd extends CustomNativeAd {
    private static final String TAG = "OctopusATNativeExpressAd";
    private NativeAdResponse mAdResponse;
    private Context mContext;
    private NativeAd mNativeAd;

    public OctopusATNativeExpressAd(Context context, NativeAd nativeAd, NativeAdResponse nativeAdResponse) {
        this.mContext = context.getApplicationContext();
        this.mNativeAd = nativeAd;
        this.mAdResponse = nativeAdResponse;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.mNativeAd = null;
        }
        this.mContext = null;
        this.mAdResponse = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public Bitmap getAdLogo() {
        NativeAdResponse nativeAdResponse = this.mAdResponse;
        if (nativeAdResponse != null) {
            return nativeAdResponse.getLogo(this.mContext);
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (view == null) {
            return;
        }
        this.mAdResponse.bindView((ViewGroup) view, new NativeAdEventListener() { // from class: com.octopus.ad.topon.OctopusATNativeExpressAd.1
            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onADExposed() {
                String unused = OctopusATNativeExpressAd.TAG;
                OctopusATNativeExpressAd.this.notifyAdImpression();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClick() {
                String unused = OctopusATNativeExpressAd.TAG;
                OctopusATNativeExpressAd.this.notifyAdClicked();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClose() {
                String unused = OctopusATNativeExpressAd.TAG;
                OctopusATNativeExpressAd.this.notifyAdDislikeClick();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdRenderFailed(int i2) {
                String unused = OctopusATNativeExpressAd.TAG;
            }
        });
    }
}
