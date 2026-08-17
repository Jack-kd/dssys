package com.meishu.sdk.platform.bd.recycler;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.meishu.sdk.core.ad.recycler.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.bd.BDPlatformError;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class BDRecyclerExpressListener implements BaiduNativeManager.ExpressAdListener {
    private static final String TAG = "BDRecyclerExpressListen";
    private BDRecyclerLoader adNativeWrapper;
    private List<ExpressResponse> list;
    private a loadListener;

    public BDRecyclerExpressListener(BDRecyclerLoader bDRecyclerLoader, a aVar) {
        this.adNativeWrapper = bDRecyclerLoader;
        this.loadListener = aVar;
    }

    public List<ExpressResponse> getList() {
        return this.list;
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
    public void onLpClosed() {
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
    public void onNativeFail(int i2, String str, ExpressResponse expressResponse) {
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
    public void onNativeLoad(List<ExpressResponse> list) {
        try {
            this.list = list;
            Log.e(TAG, "onNativeLoad: ");
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (final ExpressResponse expressResponse : list) {
                final BDRecyclerExpressAd bDRecyclerExpressAd = new BDRecyclerExpressAd(this.adNativeWrapper, expressResponse);
                expressResponse.setInteractionListener(new ExpressResponse.ExpressInteractionListener() { // from class: com.meishu.sdk.platform.bd.recycler.BDRecyclerExpressListener.1
                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                    public void onAdClick() {
                        try {
                            if (BDRecyclerExpressListener.this.adNativeWrapper != null && !TextUtils.isEmpty(BDRecyclerExpressListener.this.adNativeWrapper.getSdkAdInfo().getClk())) {
                                LogUtil.d(BDRecyclerExpressListener.TAG, "send onAdClicked");
                                a0.a(BDRecyclerExpressListener.this.adNativeWrapper.getContext().getApplicationContext(), f.a(BDRecyclerExpressListener.this.adNativeWrapper.getSdkAdInfo().getClk(), bDRecyclerExpressAd), new i());
                            }
                            if (bDRecyclerExpressAd.getRecylcerAdInteractionListener() != null) {
                                bDRecyclerExpressAd.getRecylcerAdInteractionListener().onAdClicked();
                            }
                            BDRecyclerExpressListener.this.adNativeWrapper.getSdkAdInfo().getMsLoadedTime();
                            BDRecyclerExpressListener.this.adNativeWrapper.getAdLoader().getPosId();
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                    public void onAdExposed() {
                        try {
                            if (BDRecyclerExpressListener.this.loadListener == null || bDRecyclerExpressAd.isHasExposed()) {
                                return;
                            }
                            bDRecyclerExpressAd.setHasExposed(true);
                            BDRecyclerExpressListener.this.loadListener.onAdExposure();
                            if (bDRecyclerExpressAd.getRecylcerAdInteractionListener() != null) {
                                bDRecyclerExpressAd.getRecylcerAdInteractionListener().onAdExposure();
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                    public void onAdRenderFail(View view, String str, int i2) {
                        try {
                            if (BDRecyclerExpressListener.this.loadListener != null) {
                                BDRecyclerExpressListener.this.loadListener.onAdError();
                                BDRecyclerExpressListener.this.loadListener.onAdRenderFail(str, i2);
                                if (bDRecyclerExpressAd.getRecylcerAdInteractionListener() != null) {
                                    bDRecyclerExpressAd.getRecylcerAdInteractionListener().onAdRenderFailed();
                                }
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                    public void onAdRenderSuccess(View view, float f2, float f3) {
                        try {
                            i0.a(BDRecyclerExpressListener.this.adNativeWrapper.getSdkAdInfo(), view);
                            if (BDRecyclerExpressListener.this.loadListener != null) {
                                ArrayList arrayList2 = new ArrayList();
                                bDRecyclerExpressAd.setAdView(view);
                                arrayList2.add(bDRecyclerExpressAd);
                                BDRecyclerExpressListener.this.loadListener.onAdReady(arrayList2);
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressInteractionListener
                    public void onAdUnionClick() {
                    }
                });
                expressResponse.setAdDislikeListener(new ExpressResponse.ExpressDislikeListener() { // from class: com.meishu.sdk.platform.bd.recycler.BDRecyclerExpressListener.2
                    public void onDislikeItemClick() {
                        try {
                            if (BDRecyclerExpressListener.this.loadListener != null) {
                                BDRecyclerExpressListener.this.loadListener.onAdClosed();
                            }
                            if (bDRecyclerExpressAd.getRecylcerAdInteractionListener() != null) {
                                bDRecyclerExpressAd.getRecylcerAdInteractionListener().onAdClosed();
                            }
                            View expressAdView = expressResponse.getExpressAdView();
                            if (expressAdView == null || expressAdView.getParent() == null || !(expressAdView.getParent() instanceof ViewGroup)) {
                                return;
                            }
                            ((ViewGroup) expressAdView.getParent()).removeView(expressAdView);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
                    public void onDislikeWindowClose() {
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
                    public void onDislikeWindowShow() {
                    }

                    @Override // com.baidu.mobads.sdk.api.ExpressResponse.ExpressDislikeListener
                    public void onDislikeItemClick(String str) {
                        try {
                            if (BDRecyclerExpressListener.this.loadListener != null) {
                                BDRecyclerExpressListener.this.loadListener.onAdClosed();
                            }
                            if (bDRecyclerExpressAd.getRecylcerAdInteractionListener() != null) {
                                bDRecyclerExpressAd.getRecylcerAdInteractionListener().onAdClosed();
                            }
                            View expressAdView = expressResponse.getExpressAdView();
                            if (expressAdView == null || expressAdView.getParent() == null || !(expressAdView.getParent() instanceof ViewGroup)) {
                                return;
                            }
                            ((ViewGroup) expressAdView.getParent()).removeView(expressAdView);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
                expressResponse.render();
                arrayList.add(bDRecyclerExpressAd);
            }
            this.loadListener.onAdLoaded(arrayList);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
    public void onNoAd(int i2, String str, ExpressResponse expressResponse) {
        try {
            Log.e(TAG, "onNoAd: ");
            if (str == null || str.startsWith("exception")) {
                return;
            }
            new BDPlatformError(str, this.adNativeWrapper.getSdkAdInfo()).post(this.loadListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
    public void onVideoDownloadFailed() {
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.ExpressAdListener
    public void onVideoDownloadSuccess() {
    }

    public void onNativeFail(int i2, String str) {
        Log.e(TAG, "onNativeFail: ");
    }

    public void onNoAd(int i2, String str) {
        try {
            Log.e(TAG, "onNoAd: ");
            if (str == null || str.startsWith("exception")) {
                return;
            }
            new BDPlatformError(str, this.adNativeWrapper.getSdkAdInfo()).post(this.loadListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
