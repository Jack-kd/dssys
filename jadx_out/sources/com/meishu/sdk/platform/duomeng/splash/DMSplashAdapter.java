package com.meishu.sdk.platform.duomeng.splash;

import android.app.Activity;
import com.domob.sdk.common.config.DMAdConfig;
import com.domob.sdk.platform.DMAdSdk;
import com.domob.sdk.platform.interfaces.ad.DMSplashAdListener;
import com.domob.sdk.platform.interfaces.ad.DMTemplateAd;
import com.meishu.sdk.activity.a;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.m;
import com.meishu.sdk.platform.custom.splash.MsCustomSplashAdapter;
import com.meishu.sdk.platform.duomeng.DmInitManager;

/* loaded from: classes4.dex */
public class DMSplashAdapter extends MsCustomSplashAdapter {
    private static final String TAG = "DMSplashAdapter";

    public DMSplashAdapter(SplashAdLoader splashAdLoader, SdkAdInfo sdkAdInfo) {
        super(splashAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        try {
            DMAdConfig codeId = new DMAdConfig().setTemplateViewSize(m.b(getContext(), getAdLoader().getAccept_ad_width().intValue()), m.b(getContext(), getAdLoader().getAccept_ad_height().intValue())).setCodeId(str);
            if (getContext() instanceof Activity) {
                DMAdSdk.getInstance().loadSplashAdTemplate((Activity) getContext(), codeId, new DMSplashAdListener() { // from class: com.meishu.sdk.platform.duomeng.splash.DMSplashAdapter.2
                    public void onLoadFail(int i2, String str2) {
                        DMSplashAdapter.this.onError(i2, str2);
                    }

                    public void onLoadSuccess(DMTemplateAd dMTemplateAd) {
                        StringBuilder sbA = a.a("onLoadSuccess: ");
                        sbA.append(dMTemplateAd.getBidPrice());
                        LogUtil.d(DMSplashAdapter.TAG, sbA.toString());
                        dMTemplateAd.startRender();
                    }

                    public void onRenderFail(int i2, String str2) {
                        DMSplashAdapter.this.onRenderFail(i2, str2);
                    }

                    public void onRenderSuccess(DMTemplateAd dMTemplateAd) {
                        try {
                            long bidPrice = dMTemplateAd.getBidPrice();
                            final DMSplashAd dMSplashAd = new DMSplashAd(DMSplashAdapter.this, dMTemplateAd);
                            if (DMSplashAdapter.this.getSdkAdInfo() != null) {
                                DMSplashAdapter.this.getSdkAdInfo().setEcpm(String.valueOf(bidPrice));
                            }
                            dMTemplateAd.setSplashAdListener(new DMTemplateAd.SplashAdListener() { // from class: com.meishu.sdk.platform.duomeng.splash.DMSplashAdapter.2.1
                                public void onAdClick() {
                                    DMSplashAdapter.this.onAdClick(dMSplashAd);
                                }

                                public void onAdClose() {
                                    DMSplashAdapter.this.onAdSkip(dMSplashAd);
                                }

                                public void onAdShow() {
                                    DMSplashAdapter.this.onAdExposure(dMSplashAd);
                                }
                            });
                            DMSplashAdapter.this.onRenderSuccess(dMSplashAd.getAdView(), dMSplashAd);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.custom.splash.MsCustomSplashAdapter
    public void loadCustomAd(String str, String str2, final String str3, String str4) {
        DmInitManager.getInstance().initSdk(getContext(), str, new DmInitManager.InitCallback() { // from class: com.meishu.sdk.platform.duomeng.splash.DMSplashAdapter.1
            @Override // com.meishu.sdk.platform.duomeng.DmInitManager.InitCallback
            public void onError(int i2, String str5) {
            }

            @Override // com.meishu.sdk.platform.duomeng.DmInitManager.InitCallback
            public void onSuccess() {
                DMSplashAdapter.this.loadAdWithCallback(str3);
            }
        });
    }
}
