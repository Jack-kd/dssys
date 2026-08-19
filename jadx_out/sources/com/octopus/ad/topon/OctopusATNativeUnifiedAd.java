package com.octopus.ad.topon;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class OctopusATNativeUnifiedAd extends CustomNativeAd {
    private static final String TAG = "OctopusATNativeUnifiedAd";
    private NativeAdResponse mAdResponse;
    private Context mContext;
    private NativeAd mNativeAd;

    public OctopusATNativeUnifiedAd(Context context, NativeAd nativeAd, NativeAdResponse nativeAdResponse) {
        this.mContext = context.getApplicationContext();
        this.mNativeAd = nativeAd;
        this.mAdResponse = nativeAdResponse;
        setAdData();
    }

    private void getChildView(List<View> list, View view) {
        if (!(view instanceof ViewGroup)) {
            list.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            getChildView(list, viewGroup.getChildAt(i2));
        }
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
        try {
            NativeAdResponse nativeAdResponse = this.mAdResponse;
            if (nativeAdResponse != null) {
                return nativeAdResponse.getVideoView(this.mContext);
            }
            return null;
        } catch (Exception e2) {
            Log.e("OctopusAd", e2.getMessage());
            return null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (view == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
        if (clickViewList == null) {
            clickViewList = new ArrayList<>();
            getChildView(clickViewList, view);
        }
        this.mAdResponse.bindUnifiedView(viewGroup, clickViewList, new NativeAdEventListener() { // from class: com.octopus.ad.topon.OctopusATNativeUnifiedAd.1
            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onADExposed() {
                String unused = OctopusATNativeUnifiedAd.TAG;
                OctopusATNativeUnifiedAd.this.notifyAdImpression();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClick() {
                String unused = OctopusATNativeUnifiedAd.TAG;
                OctopusATNativeUnifiedAd.this.notifyAdClicked();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClose() {
                String unused = OctopusATNativeUnifiedAd.TAG;
                OctopusATNativeUnifiedAd.this.notifyAdDislikeClick();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdRenderFailed(int i2) {
                String unused = OctopusATNativeUnifiedAd.TAG;
            }
        });
    }

    public void setAdData() {
        setTitle(this.mAdResponse.getTitle());
        setDescriptionText(this.mAdResponse.getDescription());
        setIconImageUrl(this.mAdResponse.getIconUrl());
        setMainImageUrl(this.mAdResponse.getImageUrl());
        setImageUrlList(this.mAdResponse.getImageUrls());
        setCallToActionText(this.mAdResponse.getButtonText());
    }
}
