package com.octopus.ad.topon;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.octopus.ad.BannerAd;
import com.octopus.ad.BannerAdListener;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import com.octopus.ad.internal.utilities.ViewUtil;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public class OctopusATBannerAdapter extends CustomBannerAdapter {
    private BannerAd mBannerAd;
    private View mBannerView;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";
    private int floorPrice = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoadBanner(final Context context) {
        if (context == null) {
            return;
        }
        BannerAd bannerAd = new BannerAd(context, this.mSlotId, new BannerAdListener() { // from class: com.octopus.ad.topon.OctopusATBannerAdapter.2
            @Override // com.octopus.ad.NativeAdListener
            public void onAdFailed(int i2) {
                String unused = OctopusATBannerAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onAdFailedToLoad errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATBannerAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }

            @Override // com.octopus.ad.NativeAdListener
            public void onAdLoaded(NativeAdResponse nativeAdResponse) {
                String unused = OctopusATBannerAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
                OctopusATBannerAdapter octopusATBannerAdapter = OctopusATBannerAdapter.this;
                if (octopusATBannerAdapter.mBiddingListener != null) {
                    double price = octopusATBannerAdapter.mBannerAd.getPrice();
                    if (price < OctopusATBannerAdapter.this.floorPrice) {
                        String unused2 = OctopusATBannerAdapter.this.TAG;
                        int unused3 = OctopusATBannerAdapter.this.floorPrice;
                        OctopusATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("floor price"), null);
                        OctopusATBannerAdapter.this.mBannerAd.sendLossNotice(OctopusATBannerAdapter.this.floorPrice, "1002", "CSJ");
                        return;
                    }
                    OctopusATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATBannerAdapter.this.mBannerAd), ATAdConst.CURRENCY.RMB_CENT), null);
                }
                if (OctopusATBannerAdapter.this.mBannerAd == null || !OctopusATBannerAdapter.this.mBannerAd.isValid()) {
                    return;
                }
                nativeAdResponse.setAdWidth(ViewUtil.getScreenWidth(context));
                OctopusATBannerAdapter.this.showBannerAd(nativeAdResponse);
            }
        });
        this.mBannerAd = bannerAd;
        bannerAd.openAdInNativeBrowser(true);
        this.mBannerAd.loadAd();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        BannerAd bannerAd = this.mBannerAd;
        if (bannerAd != null) {
            bannerAd.destroy();
            this.mBannerAd = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.mBannerView;
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

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        BannerAd bannerAd = this.mBannerAd;
        return bannerAd != null && bannerAd.isLoaded();
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
            OctopusATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATBannerAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str2) {
                    if (((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener.onAdLoadError("80000", str2);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATBannerAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str2), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATBannerAdapter.this.startLoadBanner(context);
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

    public void showBannerAd(NativeAdResponse nativeAdResponse) {
        if (nativeAdResponse == null) {
            return;
        }
        nativeAdResponse.setNativeAdEventListener(new NativeAdEventListener() { // from class: com.octopus.ad.topon.OctopusATBannerAdapter.3
            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onADExposed() {
                String unused = OctopusATBannerAdapter.this.TAG;
                CustomBannerEventListener customBannerEventListener = OctopusATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdShow();
                }
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClick() {
                String unused = OctopusATBannerAdapter.this.TAG;
                CustomBannerEventListener customBannerEventListener = OctopusATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClicked();
                }
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClose() {
                String unused = OctopusATBannerAdapter.this.TAG;
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdRenderFailed(int i2) {
                String unused = OctopusATBannerAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATBannerAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onAdFailedToLoad errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATBannerAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }
        });
        this.mBannerView = nativeAdResponse.getNativeView();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        loadCustomNetworkAd(context.getApplicationContext(), map, map2);
        return true;
    }
}
