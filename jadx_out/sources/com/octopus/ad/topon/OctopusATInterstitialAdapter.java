package com.octopus.ad.topon;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.octopus.ad.InterstitialAd;
import com.octopus.ad.InterstitialAdListener;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public class OctopusATInterstitialAdapter extends CustomInterstitialAdapter {
    private boolean isClickBackClose;
    private InterstitialAd mInterstitialAd;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";
    private int floorPrice = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(Context context) {
        if (context == null) {
            return;
        }
        InterstitialAd interstitialAd = new InterstitialAd(context, this.mSlotId, new InterstitialAdListener() { // from class: com.octopus.ad.topon.OctopusATInterstitialAdapter.2
            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdCacheLoaded(boolean z2) {
                String unused = OctopusATInterstitialAdapter.this.TAG;
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdClicked() {
                String unused = OctopusATInterstitialAdapter.this.TAG;
                if (((CustomInterstitialAdapter) OctopusATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) OctopusATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdClosed() {
                String unused = OctopusATInterstitialAdapter.this.TAG;
                if (((CustomInterstitialAdapter) OctopusATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) OctopusATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdFailedToLoad(int i2) {
                String unused = OctopusATInterstitialAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATInterstitialAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onAdFailedToLoad errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATInterstitialAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdLoaded() {
                String unused = OctopusATInterstitialAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
                OctopusATInterstitialAdapter octopusATInterstitialAdapter = OctopusATInterstitialAdapter.this;
                if (octopusATInterstitialAdapter.mBiddingListener != null) {
                    double price = octopusATInterstitialAdapter.mInterstitialAd.getPrice();
                    if (price < OctopusATInterstitialAdapter.this.floorPrice) {
                        String unused2 = OctopusATInterstitialAdapter.this.TAG;
                        int unused3 = OctopusATInterstitialAdapter.this.floorPrice;
                        OctopusATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("floor price"), null);
                        OctopusATInterstitialAdapter.this.mInterstitialAd.sendLossNotice(OctopusATInterstitialAdapter.this.floorPrice, "1002", "CSJ");
                        return;
                    }
                    OctopusATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATInterstitialAdapter.this.mInterstitialAd), ATAdConst.CURRENCY.RMB_CENT), null);
                }
            }

            @Override // com.octopus.ad.InterstitialAdListener
            public void onAdShown() {
                String unused = OctopusATInterstitialAdapter.this.TAG;
                if (((CustomInterstitialAdapter) OctopusATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) OctopusATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                }
            }
        });
        this.mInterstitialAd = interstitialAd;
        interstitialAd.openAdInNativeBrowser(true);
        this.mInterstitialAd.setClickBackClose(this.isClickBackClose);
        this.mInterstitialAd.loadAd();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.mInterstitialAd = null;
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
        InterstitialAd interstitialAd = this.mInterstitialAd;
        return interstitialAd != null && interstitialAd.isLoaded();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        try {
            String str = (String) map.get("floor_price");
            if (str != null && !str.isEmpty()) {
                this.floorPrice = Integer.parseInt(str);
            }
        } catch (Exception unused) {
            this.floorPrice = 0;
        }
        try {
            Object obj = map.get("click_back_close");
            if (obj != null) {
                this.isClickBackClose = ((Boolean) obj).booleanValue();
            }
        } catch (Exception unused2) {
            this.isClickBackClose = false;
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATInterstitialAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str2) {
                    if (((ATBaseAdInternalAdapter) OctopusATInterstitialAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) OctopusATInterstitialAdapter.this).mLoadListener.onAdLoadError("80000", str2);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATInterstitialAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str2), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATInterstitialAdapter.this.startLoad(context);
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

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        InterstitialAd interstitialAd;
        if (activity == null || (interstitialAd = this.mInterstitialAd) == null || !interstitialAd.isLoaded()) {
            return;
        }
        this.mInterstitialAd.show(activity);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        loadCustomNetworkAd(context.getApplicationContext(), map, map2);
        return true;
    }
}
