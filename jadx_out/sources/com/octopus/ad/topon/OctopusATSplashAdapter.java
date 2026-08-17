package com.octopus.ad.topon;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.octopus.ad.SplashAd;
import com.octopus.ad.SplashAdListener;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public class OctopusATSplashAdapter extends CustomSplashAdapter {
    private SplashAd mSplashAd;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";
    private int floorPrice = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(Context context) {
        if (context == null) {
            return;
        }
        SplashAd splashAd = new SplashAd(context, this.mSlotId, new SplashAdListener() { // from class: com.octopus.ad.topon.OctopusATSplashAdapter.2
            @Override // com.octopus.ad.SplashAdListener
            public void onAdCacheLoaded(boolean z2) {
                String unused = OctopusATSplashAdapter.this.TAG;
            }

            @Override // com.octopus.ad.SplashAdListener
            public void onAdClicked() {
                String unused = OctopusATSplashAdapter.this.TAG;
                if (((CustomSplashAdapter) OctopusATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) OctopusATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
                }
            }

            @Override // com.octopus.ad.SplashAdListener
            public void onAdClosed() {
                String unused = OctopusATSplashAdapter.this.TAG;
                ((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mDismissType = 0;
                if (((CustomSplashAdapter) OctopusATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) OctopusATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }

            @Override // com.octopus.ad.SplashAdListener
            public void onAdFailedToLoad(int i2) {
                String unused = OctopusATSplashAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onAdFailedToLoad errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATSplashAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }

            @Override // com.octopus.ad.SplashAdListener
            public void onAdLoaded() {
                String unused = OctopusATSplashAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
                OctopusATSplashAdapter octopusATSplashAdapter = OctopusATSplashAdapter.this;
                if (octopusATSplashAdapter.mBiddingListener != null) {
                    double price = octopusATSplashAdapter.mSplashAd.getPrice();
                    if (price < OctopusATSplashAdapter.this.floorPrice) {
                        String unused2 = OctopusATSplashAdapter.this.TAG;
                        int unused3 = OctopusATSplashAdapter.this.floorPrice;
                        OctopusATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("floor price"), null);
                        OctopusATSplashAdapter.this.mSplashAd.sendLossNotice(OctopusATSplashAdapter.this.floorPrice, "1002", "CSJ");
                        return;
                    }
                    OctopusATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATSplashAdapter.this.mSplashAd), ATAdConst.CURRENCY.RMB_CENT), null);
                }
            }

            @Override // com.octopus.ad.SplashAdListener
            public void onAdShown() {
                String unused = OctopusATSplashAdapter.this.TAG;
                if (((CustomSplashAdapter) OctopusATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) OctopusATSplashAdapter.this).mImpressionListener.onSplashAdShow();
                }
            }

            @Override // com.octopus.ad.SplashAdListener
            public void onAdTick(long j2) {
            }
        });
        this.mSplashAd = splashAd;
        splashAd.openAdInNativeBrowser(true);
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SplashAd splashAd = this.mSplashAd;
        if (splashAd != null) {
            splashAd.destroy();
            this.mSplashAd = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return OctopusATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.mSlotId;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return OctopusATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SplashAd splashAd = this.mSplashAd;
        return splashAd != null && splashAd.isLoaded();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        try {
            String str = (String) map.get("floor_price");
            if (!TextUtils.isEmpty(str)) {
                this.floorPrice = Integer.parseInt(str);
            }
        } catch (NumberFormatException unused) {
            this.floorPrice = 0;
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATSplashAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str2) {
                    if (((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) OctopusATSplashAdapter.this).mLoadListener.onAdLoadError("80000", str2);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATSplashAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str2), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATSplashAdapter.this.startLoad(context);
                }
            });
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("80000", "SlotId is empty!");
        }
        ATBiddingListener aTBiddingListener = this.mBiddingListener;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("SlotId is empty!"), null);
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        SplashAd splashAd = this.mSplashAd;
        if (splashAd == null || !splashAd.isLoaded() || viewGroup == null) {
            return;
        }
        this.mSplashAd.showAd(viewGroup);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        loadCustomNetworkAd(context.getApplicationContext(), map, map2);
        return true;
    }
}
