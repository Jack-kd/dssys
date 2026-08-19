package com.octopus.ad.topon;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdListener;
import com.octopus.ad.NativeAdResponse;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public class OctopusATNativeAdapter extends CustomNativeAdapter {
    private final String TAG = getClass().getSimpleName();
    private int floorPrice = 0;
    private String mIsUnified;
    private NativeAd mNativeAd;
    private OctopusATNativeExpressAd mOctopusATNativeExpressAd;
    private OctopusATNativeUnifiedAd mOctopusATNativeUnifiedAd;
    private String mSlotId;

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(final Context context) {
        if (context == null) {
            return;
        }
        final boolean zEquals = TextUtils.equals("1", this.mIsUnified);
        NativeAd nativeAd = new NativeAd(context, this.mSlotId, new NativeAdListener() { // from class: com.octopus.ad.topon.OctopusATNativeAdapter.2
            @Override // com.octopus.ad.NativeAdListener
            public void onAdFailed(int i2) {
                String unused = OctopusATNativeAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener.onAdLoadError(String.valueOf(i2), "onAdFailed errorCode：" + i2);
                }
                ATBiddingListener aTBiddingListener = OctopusATNativeAdapter.this.mBiddingListener;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i2)), null);
                }
            }

            @Override // com.octopus.ad.NativeAdListener
            public void onAdLoaded(NativeAdResponse nativeAdResponse) {
                String unused = OctopusATNativeAdapter.this.TAG;
                if (((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener != null && nativeAdResponse != null) {
                    if (zEquals) {
                        OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd = new OctopusATNativeUnifiedAd(context, OctopusATNativeAdapter.this.mNativeAd, nativeAdResponse);
                        ((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener.onAdCacheLoaded(OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd);
                    } else {
                        OctopusATNativeAdapter.this.mOctopusATNativeExpressAd = new OctopusATNativeExpressAd(context, OctopusATNativeAdapter.this.mNativeAd, nativeAdResponse);
                        ((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener.onAdCacheLoaded(OctopusATNativeAdapter.this.mOctopusATNativeExpressAd);
                    }
                }
                OctopusATNativeAdapter octopusATNativeAdapter = OctopusATNativeAdapter.this;
                if (octopusATNativeAdapter.mBiddingListener == null || nativeAdResponse == null) {
                    return;
                }
                double price = octopusATNativeAdapter.mNativeAd.getPrice();
                if (price < OctopusATNativeAdapter.this.floorPrice) {
                    String unused2 = OctopusATNativeAdapter.this.TAG;
                    int unused3 = OctopusATNativeAdapter.this.floorPrice;
                    OctopusATNativeAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("floor price"), null);
                    OctopusATNativeAdapter.this.mNativeAd.sendLossNotice(OctopusATNativeAdapter.this.floorPrice, "1002", "CSJ");
                    return;
                }
                ATAdConst.CURRENCY currency = ATAdConst.CURRENCY.RMB_CENT;
                String string = UUID.randomUUID().toString();
                OctopusBiddingNotice octopusBiddingNotice = new OctopusBiddingNotice(OctopusATNativeAdapter.this.mNativeAd);
                if (zEquals) {
                    OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd = new OctopusATNativeUnifiedAd(context, OctopusATNativeAdapter.this.mNativeAd, nativeAdResponse);
                    OctopusATNativeAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, string, octopusBiddingNotice, currency), OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd);
                } else {
                    OctopusATNativeAdapter.this.mOctopusATNativeExpressAd = new OctopusATNativeExpressAd(context, OctopusATNativeAdapter.this.mNativeAd, nativeAdResponse);
                    OctopusATNativeAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, string, octopusBiddingNotice, currency), OctopusATNativeAdapter.this.mOctopusATNativeExpressAd);
                }
            }
        });
        this.mNativeAd = nativeAd;
        nativeAd.openAdInNativeBrowser(true);
        this.mNativeAd.loadAd();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.mNativeAd = null;
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
            this.mIsUnified = "0";
            if (map.containsKey("is_unified")) {
                this.mIsUnified = (String) map.get("is_unified");
            }
            OctopusATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATNativeAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str2) {
                    if (((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) OctopusATNativeAdapter.this).mLoadListener.onAdLoadError("80000", str2);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATNativeAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str2), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATNativeAdapter.this.startLoad(context);
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

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        loadCustomNetworkAd(context.getApplicationContext(), map, map2);
        return true;
    }
}
