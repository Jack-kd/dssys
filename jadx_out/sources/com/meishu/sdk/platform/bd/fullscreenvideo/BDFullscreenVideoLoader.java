package com.meishu.sdk.platform.bd.fullscreenvideo;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import com.meishu.sdk.core.ad.fullscreenvideo.c;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.u0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.bd.BDPlatformError;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Random;

/* loaded from: classes4.dex */
public class BDFullscreenVideoLoader extends BasePlatformLoader<FullScreenVideoAdLoader, c> {
    private static final String TAG = "BDFullscreenVideoLoader";
    private BdFullScreenVideoAd mBdAd;
    private FullScreenVideoAd mFullScreenVideoAd;

    public BDFullscreenVideoLoader(FullScreenVideoAdLoader fullScreenVideoAdLoader, SdkAdInfo sdkAdInfo) {
        super(fullScreenVideoAdLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
        this.mFullScreenVideoAd = null;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            a0.a(getAdLoader().getContext(), i0.a(getSdkAdInfo().getReq()), new i());
            FullScreenVideoAd fullScreenVideoAd = new FullScreenVideoAd(getContext().getApplicationContext(), getSdkAdInfo().getPid(), new FullScreenVideoAd.FullScreenVideoAdListener() { // from class: com.meishu.sdk.platform.bd.fullscreenvideo.BDFullscreenVideoLoader.1
                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdClick() {
                    try {
                        if (BDFullscreenVideoLoader.this.getSdkAdInfo() != null && !TextUtils.isEmpty(BDFullscreenVideoLoader.this.getSdkAdInfo().getClk())) {
                            LogUtil.d(BDFullscreenVideoLoader.TAG, "send onADClicked");
                            a0.a(BDFullscreenVideoLoader.this.getContext(), f.a(BDFullscreenVideoLoader.this.getSdkAdInfo().getClk(), BDFullscreenVideoLoader.this.mBdAd), new i());
                        }
                        if (BDFullscreenVideoLoader.this.mBdAd.getInteractionListener() != null) {
                            BDFullscreenVideoLoader.this.mBdAd.getInteractionListener().onAdClicked();
                        }
                        BDFullscreenVideoLoader.this.getSdkAdInfo().getMsLoadedTime();
                        BDFullscreenVideoLoader.this.getAdLoader().getPosId();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdClose(float f2) {
                    try {
                        if (BDFullscreenVideoLoader.this.mBdAd.getInteractionListener() != null) {
                            BDFullscreenVideoLoader.this.mBdAd.getInteractionListener().onAdClosed();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdFailed(String str) {
                    try {
                        LogUtil.e(BDFullscreenVideoLoader.TAG, "onAdFailed, msg: " + str);
                        if (str == null || str.startsWith("exception")) {
                            return;
                        }
                        new BDPlatformError(str, BDFullscreenVideoLoader.this.getSdkAdInfo()).post(BDFullscreenVideoLoader.this.getLoaderListener());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdLoaded() {
                    try {
                        if (BDFullscreenVideoLoader.this.getLoaderListener() != null) {
                            BDFullscreenVideoLoader.this.sdkAdInfo.setEcpm(BDFullscreenVideoLoader.this.mFullScreenVideoAd.getECPMLevel());
                            BDFullscreenVideoLoader.this.getLoaderListener().onAdLoaded(BDFullscreenVideoLoader.this.mBdAd);
                            BDFullscreenVideoLoader.this.getLoaderListener().onAdReady(BDFullscreenVideoLoader.this.mBdAd);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdShow() {
                    try {
                        if (BDFullscreenVideoLoader.this.getLoaderListener() != null) {
                            BDFullscreenVideoLoader.this.getLoaderListener().onAdExposure();
                        }
                        if (BDFullscreenVideoLoader.this.mBdAd.getInteractionListener() != null) {
                            BDFullscreenVideoLoader.this.mBdAd.getInteractionListener().onAdExposure();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onAdSkip(float f2) {
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onVideoDownloadFailed() {
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void onVideoDownloadSuccess() {
                }

                @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
                public void playCompletion() {
                    try {
                        if (BDFullscreenVideoLoader.this.mBdAd.getMediaListener() != null) {
                            BDFullscreenVideoLoader.this.mBdAd.getMediaListener().onVideoCompleted();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            this.mFullScreenVideoAd = fullScreenVideoAd;
            this.mBdAd = new BdFullScreenVideoAd(this, fullScreenVideoAd);
            this.mFullScreenVideoAd.load();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        try {
            if (!z2) {
                FullScreenVideoAd.class.getDeclaredMethod("biddingFail", String.class).invoke(this.mFullScreenVideoAd, "203");
                return;
            }
            Method declaredMethod = FullScreenVideoAd.class.getDeclaredMethod("biddingSuccess", String.class);
            FullScreenVideoAd fullScreenVideoAd = this.mFullScreenVideoAd;
            declaredMethod.invoke(fullScreenVideoAd, String.valueOf(u0.a(Integer.parseInt(fullScreenVideoAd.getECPMLevel()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
        } catch (Throwable unused) {
            int i3 = 1;
            try {
                if (z2) {
                    LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
                    linkedHashMap.put("ecpm", Integer.valueOf(u0.a(Integer.parseInt(this.mFullScreenVideoAd.getECPMLevel()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
                    linkedHashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    linkedHashMap.put("bid_t", 1);
                    this.mFullScreenVideoAd.biddingSuccess(linkedHashMap, new BiddingListener() { // from class: com.meishu.sdk.platform.bd.fullscreenvideo.BDFullscreenVideoLoader.2
                        @Override // com.baidu.mobads.sdk.api.BiddingListener
                        public void onBiddingResult(boolean z3, String str, HashMap<String, Object> map) {
                        }
                    });
                } else {
                    LinkedHashMap<String, Object> linkedHashMap2 = new LinkedHashMap<>();
                    linkedHashMap2.put("ecpm", Integer.valueOf(i2));
                    int iNextInt = new Random().nextInt(10);
                    if (iNextInt != 0) {
                        i3 = iNextInt;
                    }
                    linkedHashMap2.put(SplashAd.KEY_BIDFAIL_ADN, Integer.valueOf(i3));
                    linkedHashMap2.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    linkedHashMap2.put("bid_t", 3);
                    linkedHashMap2.put(MediationConstant.KEY_REASON, "203");
                    this.mFullScreenVideoAd.biddingFail(linkedHashMap2, new BiddingListener() { // from class: com.meishu.sdk.platform.bd.fullscreenvideo.BDFullscreenVideoLoader.3
                        @Override // com.baidu.mobads.sdk.api.BiddingListener
                        public void onBiddingResult(boolean z3, String str, HashMap<String, Object> map) {
                        }
                    });
                }
            } catch (Throwable unused2) {
            }
        }
    }
}
