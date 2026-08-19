package com.meishu.sdk.platform.gdt.image;

import com.meishu.sdk.core.ad.image.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.comm.util.AdError;

/* loaded from: classes4.dex */
public class GDTNativeAdEventListenerImpl implements NativeADEventListener {
    private static final String TAG = "GDTNativeAdEventListene";
    private GDTImageAdDataAdapter adDataAdapter;
    private a nativeADEventListener;

    public GDTNativeAdEventListenerImpl(GDTImageAdDataAdapter gDTImageAdDataAdapter, a aVar) {
        this.adDataAdapter = gDTImageAdDataAdapter;
        this.nativeADEventListener = aVar;
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADClicked() {
        a aVar = this.nativeADEventListener;
        if (aVar != null) {
            aVar.onAdClicked();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADError(AdError adError) {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("onADError, code: ");
        sbA.append(adError.getErrorCode());
        sbA.append(", msg: ");
        sbA.append(adError.getErrorMsg());
        LogUtil.e(TAG, sbA.toString());
        if (this.adDataAdapter.getAdListener() != null) {
            this.adDataAdapter.getAdListener().onNoAD(adError);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADExposed() {
        if (this.adDataAdapter.getAdListener() != null) {
            this.adDataAdapter.getAdListener().onAdExposure();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADStatusChanged() {
        LogUtil.d(TAG, "onADStatusChanged: ");
    }
}
