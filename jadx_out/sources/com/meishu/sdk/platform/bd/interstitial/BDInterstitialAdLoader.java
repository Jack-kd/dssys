package com.meishu.sdk.platform.bd.interstitial;

import android.text.TextUtils;
import android.util.Log;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressInterstitialListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.core.ad.interstitial.InterstitialAd;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.ad.interstitial.b;
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
import java.util.List;
import java.util.Random;

/* loaded from: classes4.dex */
public class BDInterstitialAdLoader extends BasePlatformLoader<InterstitialAdLoader, b> {
    private static final String TAG = "BDInterstitialAdLoader";
    private BDExpressInterstitialAd expressInterAd;
    private ExpressInterstitialAd expressInterstitialAd;
    private InterstitialAd interAd;

    public BDInterstitialAdLoader(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo) {
        super(interstitialAdLoader, sdkAdInfo);
    }

    private void loadExpress(String str) {
        ExpressInterstitialAd expressInterstitialAd = new ExpressInterstitialAd(((InterstitialAdLoader) this.adLoader).getContext().getApplicationContext(), str);
        this.expressInterstitialAd = expressInterstitialAd;
        this.expressInterAd = new BDExpressInterstitialAd(expressInterstitialAd, getContext(), this);
        this.expressInterstitialAd.setLoadListener(new ExpressInterstitialListener() { // from class: com.meishu.sdk.platform.bd.interstitial.BDInterstitialAdLoader.2
            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onADExposed() {
                try {
                    if (BDInterstitialAdLoader.this.getLoaderListener() != null) {
                        BDInterstitialAdLoader.this.getLoaderListener().onAdExposure();
                    }
                    if (BDInterstitialAdLoader.this.expressInterAd.getInteractionListener() != null) {
                        BDInterstitialAdLoader.this.expressInterAd.getInteractionListener().onAdExposure();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onADExposureFailed() {
                try {
                    if (BDInterstitialAdLoader.this.getLoaderListener() != null) {
                        BDInterstitialAdLoader.this.getLoaderListener().onAdRenderFail("ADExposureFailed", -1);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onADLoaded() {
                Log.e(BDInterstitialAdLoader.TAG, "onAdReady: ");
                try {
                    if (BDInterstitialAdLoader.this.getLoaderListener() != null) {
                        BDInterstitialAdLoader.this.getSdkAdInfo().setEcpm(BDInterstitialAdLoader.this.expressInterstitialAd.getECPMLevel());
                        BDInterstitialAdLoader.this.getLoaderListener().onAdLoaded(BDInterstitialAdLoader.this.expressInterAd);
                        BDInterstitialAdLoader.this.getLoaderListener().onAdReady(BDInterstitialAdLoader.this.expressInterAd);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onAdCacheFailed() {
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onAdCacheSuccess() {
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onAdClick() {
                try {
                    if (BDInterstitialAdLoader.this.getSdkAdInfo() != null && !TextUtils.isEmpty(BDInterstitialAdLoader.this.getSdkAdInfo().getClk())) {
                        LogUtil.d(BDInterstitialAdLoader.TAG, "send onAdClick");
                        a0.a(BDInterstitialAdLoader.this.getContext(), f.a(BDInterstitialAdLoader.this.getSdkAdInfo().getClk(), BDInterstitialAdLoader.this.expressInterAd), new i());
                    }
                    if (BDInterstitialAdLoader.this.expressInterAd.getInteractionListener() != null) {
                        BDInterstitialAdLoader.this.expressInterAd.getInteractionListener().onAdClicked();
                    }
                    BDInterstitialAdLoader.this.getSdkAdInfo().getMsLoadedTime();
                    BDInterstitialAdLoader.this.getAdLoader().getPosId();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onAdClose() {
                try {
                    LogUtil.e(BDInterstitialAdLoader.TAG, "onAdClose");
                    if (BDInterstitialAdLoader.this.getLoaderListener() != null) {
                        BDInterstitialAdLoader.this.getLoaderListener().onAdClosed();
                    }
                    if (BDInterstitialAdLoader.this.expressInterAd.getInteractionListener() != null) {
                        BDInterstitialAdLoader.this.expressInterAd.getInteractionListener().onAdClosed();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onAdFailed(int i2, String str2) {
                try {
                    LogUtil.e(BDInterstitialAdLoader.TAG, "onAdFailed: " + str2);
                    if (str2 == null || str2.startsWith("exception")) {
                        return;
                    }
                    new BDPlatformError(str2, BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onLpClosed() {
            }

            @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
            public void onNoAd(int i2, String str2) {
                try {
                    LogUtil.e(BDInterstitialAdLoader.TAG, "onAdFailed: " + str2);
                    if (str2 == null || str2.startsWith("exception")) {
                        return;
                    }
                    new BDPlatformError(str2, BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            public void onVideoDownloadFailed() {
            }

            public void onVideoDownloadSuccess() {
            }
        });
        this.expressInterstitialAd.setDialogFrame(true);
        this.expressInterstitialAd.load();
    }

    private void loadNativeAd() {
        BaiduNativeManager baiduNativeManager = new BaiduNativeManager(getContext().getApplicationContext(), this.sdkAdInfo.getPid());
        baiduNativeManager.setAppSid(this.sdkAdInfo.getApp_id());
        baiduNativeManager.setCacheVideoOnlyWifi(true);
        baiduNativeManager.loadFeedAd(new RequestParameters.Builder().downloadAppConfirmPolicy(3).build(), new BaiduNativeManager.FeedAdListener() { // from class: com.meishu.sdk.platform.bd.interstitial.BDInterstitialAdLoader.1
            @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
            public void onLpClosed() {
            }

            @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
            public void onNativeFail(int i2, String str, NativeResponse nativeResponse) {
                if (str != null) {
                    try {
                        if (str.startsWith("exception")) {
                            return;
                        }
                        new BDPlatformError(str, BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
            public void onNativeLoad(List<NativeResponse> list) {
                if (list != null) {
                    try {
                        if (list.size() != 0) {
                            NativeResponse nativeResponse = list.get(0);
                            BDNativeInterstitialAd bDNativeInterstitialAd = new BDNativeInterstitialAd(BDInterstitialAdLoader.this, nativeResponse);
                            if (BDInterstitialAdLoader.this.getLoaderListener() != null) {
                                try {
                                    BDInterstitialAdLoader.this.getSdkAdInfo().setEcpm(nativeResponse.getECPMLevel());
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                                BDInterstitialAdLoader.this.getLoaderListener().onAdLoaded(bDNativeInterstitialAd);
                                BDInterstitialAdLoader.this.getLoaderListener().onAdReady(bDNativeInterstitialAd);
                                return;
                            }
                            return;
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                new BDPlatformError("list is null", BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
            }

            @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
            public void onNoAd(int i2, String str, NativeResponse nativeResponse) {
                if (str != null) {
                    try {
                        if (str.startsWith("exception")) {
                            return;
                        }
                        new BDPlatformError(str, BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
            public void onVideoDownloadFailed() {
            }

            @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
            public void onVideoDownloadSuccess() {
            }

            public void onNativeFail(int i2, String str) {
                if (str != null) {
                    try {
                        if (str.startsWith("exception")) {
                            return;
                        }
                        new BDPlatformError(str, BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            public void onNoAd(int i2, String str) {
                if (str != null) {
                    try {
                        if (str.startsWith("exception")) {
                            return;
                        }
                        new BDPlatformError(str, BDInterstitialAdLoader.this.getSdkAdInfo()).post(BDInterstitialAdLoader.this.getLoaderListener());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        });
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        Log.e(TAG, "startloadBaiduInterstitialAd: ");
        try {
            a0.a(((InterstitialAdLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
            if (this.sdkAdInfo.getDrawing() != 1) {
                loadExpress(getSdkAdInfo().getPid());
            } else {
                loadNativeAd();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader
    public void sendGdtWinResult(boolean z2, int i2) {
        LogUtil.e(TAG, "isWin=" + z2 + ",price=" + i2);
        try {
            if (!z2) {
                SplashAd.class.getDeclaredMethod("biddingFail", String.class).invoke(this.expressInterstitialAd, "203");
                return;
            }
            Method declaredMethod = SplashAd.class.getDeclaredMethod("biddingSuccess", String.class);
            ExpressInterstitialAd expressInterstitialAd = this.expressInterstitialAd;
            declaredMethod.invoke(expressInterstitialAd, String.valueOf(u0.a(Integer.parseInt(expressInterstitialAd.getECPMLevel()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
        } catch (Throwable unused) {
            int i3 = 1;
            try {
                if (z2) {
                    LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
                    linkedHashMap.put("ecpm", Integer.valueOf(u0.a(Integer.parseInt(this.expressInterstitialAd.getECPMLevel()), i2, this.sdkAdInfo.getAt_rate(), this.sdkAdInfo.getPrice())));
                    linkedHashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    linkedHashMap.put("bid_t", 1);
                    this.expressInterstitialAd.biddingSuccess(linkedHashMap, new BiddingListener() { // from class: com.meishu.sdk.platform.bd.interstitial.BDInterstitialAdLoader.3
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
                    this.expressInterstitialAd.biddingFail(linkedHashMap2, new BiddingListener() { // from class: com.meishu.sdk.platform.bd.interstitial.BDInterstitialAdLoader.4
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
