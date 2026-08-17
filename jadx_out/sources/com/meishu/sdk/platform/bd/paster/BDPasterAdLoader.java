package com.meishu.sdk.platform.bd.paster;

import com.baidu.mobads.sdk.api.PatchVideoNative;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.meishu.sdk.core.ad.paster.PasterAdLoader;
import com.meishu.sdk.core.ad.paster.b;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.bd.BDPlatformError;

/* loaded from: classes4.dex */
public class BDPasterAdLoader extends BasePlatformLoader<PasterAdLoader, b> {
    private static final String TAG = "BDPasterAdLoader";
    private PatchVideoNative.IPatchVideoNativeListener listener;
    private PatchVideoNative patchVideoNative;

    public BDPasterAdLoader(PasterAdLoader pasterAdLoader, SdkAdInfo sdkAdInfo) {
        super(pasterAdLoader, sdkAdInfo);
        this.listener = new PatchVideoNative.IPatchVideoNativeListener() { // from class: com.meishu.sdk.platform.bd.paster.BDPasterAdLoader.1
            @Override // com.baidu.mobads.sdk.api.PatchVideoNative.IPatchVideoNativeListener
            public void onAdClick() {
            }

            @Override // com.baidu.mobads.sdk.api.PatchVideoNative.IPatchVideoNativeListener
            public void onAdFailed(int i2, String str) {
                LogUtil.e(BDPasterAdLoader.TAG, "onAdFailed: code=" + i2 + ", msg=" + str);
                new BDPlatformError(str, BDPasterAdLoader.this.getSdkAdInfo()).post(BDPasterAdLoader.this.getAdLoader().getLoaderListener());
            }

            @Override // com.baidu.mobads.sdk.api.PatchVideoNative.IPatchVideoNativeListener
            public void onAdLoad(String str) {
                if (BDPasterAdLoader.this.getAdLoader().getLoaderListener() != null) {
                    BDPasterAdLoader.this.getAdLoader().getLoaderListener().onAdLoaded(null);
                    BDPasterAdLoader.this.getAdLoader().getLoaderListener().onAdReady(null);
                }
            }

            @Override // com.baidu.mobads.sdk.api.PatchVideoNative.IPatchVideoNativeListener
            public void onAdShow() {
                if (BDPasterAdLoader.this.getAdLoader().getLoaderListener() != null) {
                    BDPasterAdLoader.this.getAdLoader().getLoaderListener().onAdExposure();
                }
            }

            @Override // com.baidu.mobads.sdk.api.PatchVideoNative.IPatchVideoNativeListener
            public void playCompletion() {
            }

            @Override // com.baidu.mobads.sdk.api.PatchVideoNative.IPatchVideoNativeListener
            public void playError() {
                if (BDPasterAdLoader.this.getAdLoader().getLoaderListener() != null) {
                    BDPasterAdLoader.this.getAdLoader().getLoaderListener().onAdError();
                }
            }
        };
        PatchVideoNative patchVideoNative = new PatchVideoNative(getContext(), sdkAdInfo.getPid(), null, this.listener);
        this.patchVideoNative = patchVideoNative;
        patchVideoNative.setAppSid(sdkAdInfo.getApp_id());
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        super.destroy();
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((PasterAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        this.patchVideoNative.requestAd(new RequestParameters.Builder().downloadAppConfirmPolicy(3).build());
    }
}
