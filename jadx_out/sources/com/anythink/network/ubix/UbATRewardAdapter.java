package com.anythink.network.ubix;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.manager.UBiXAdManager;
import com.ubix.ssp.open.video.UBiXRewardInfo;
import com.ubix.ssp.open.video.UBiXRewardVideoAdListener;
import com.ubix.ssp.open.video.UBiXRewardVideoManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATRewardAdapter extends CustomRewardVideoAdapter {
    public static final String TAG = "UbATRewardAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10511a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f10512b = false;

    /* renamed from: c, reason: collision with root package name */
    private UBiXRewardVideoManager f10513c;

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f10514d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10515a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10516b;

        public a(Context context, Map map) {
            this.f10515a = context;
            this.f10516b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            UbATRewardAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            UbATRewardAdapter.this.a(this.f10515a, (Map<String, Object>) this.f10516b);
        }
    }

    public class b implements UBiXRewardVideoAdListener {
        public b() {
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onAdClosed() {
            String str = UbATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onAdExposed() {
            String str = UbATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onAdLoadSucceed() {
            String str = UbATRewardAdapter.TAG;
            if (UbATRewardAdapter.this.f10513c == null) {
                UbATRewardAdapter.this.notifyATLoadFail("", "mRewardVideoAd is null");
                return;
            }
            if (!UbATRewardAdapter.this.f10512b) {
                if (((ATBaseAdInternalAdapter) UbATRewardAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) UbATRewardAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            UbATRewardAdapter ubATRewardAdapter = UbATRewardAdapter.this;
            if (ubATRewardAdapter.mBiddingListener != null) {
                long price = ubATRewardAdapter.f10513c.getPrice();
                if (price <= 0) {
                    UbATRewardAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                UbATBiddingNotice ubATBiddingNotice = new UbATBiddingNotice(UbATRewardAdapter.this.f10513c);
                UbATRewardAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", ubATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onError(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String str = UbATRewardAdapter.TAG;
            UbATRewardAdapter.this.notifyATLoadFail(String.valueOf(errorCode), errorMessage);
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoCached() {
            String str = UbATRewardAdapter.TAG;
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoClicked() {
            String str = UbATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoPlayCompleted() {
            String str = UbATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoPlayStarted() {
            String str = UbATRewardAdapter.TAG;
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoRewardVerify(boolean z2, UBiXRewardInfo uBiXRewardInfo) {
            String str = UbATRewardAdapter.TAG;
            UbATRewardAdapter.this.a(uBiXRewardInfo);
            if (z2) {
                if (((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener.onReward();
                }
            } else if (((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) UbATRewardAdapter.this).mImpressionListener.onRewardFailed();
            }
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoRewarded() {
            String str = UbATRewardAdapter.TAG;
        }

        @Override // com.ubix.ssp.open.video.UBiXRewardVideoAdListener
        public void onVideoSkipped() {
            String str = UbATRewardAdapter.TAG;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return UbATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        UBiXRewardVideoManager uBiXRewardVideoManager = this.f10513c;
        if (uBiXRewardVideoManager != null) {
            try {
                uBiXRewardVideoManager.destroy();
            } catch (Throwable unused) {
            }
            this.f10513c = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        Map<String, Object> map = this.f10514d;
        return map != null ? map : super.getNetworkInfoMap();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return UbATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10511a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return UbATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        UBiXRewardVideoManager uBiXRewardVideoManager = this.f10513c;
        return uBiXRewardVideoManager != null && uBiXRewardVideoManager.isValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10511a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "ubix: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            UbATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map2));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        try {
            UBiXRewardVideoManager uBiXRewardVideoManager = this.f10513c;
            if (uBiXRewardVideoManager != null && uBiXRewardVideoManager.isValid()) {
                this.f10513c.showRewardVideo(activity);
                return;
            }
            CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
            if (customRewardedVideoEventListener != null) {
                customRewardedVideoEventListener.onRewardedVideoAdPlayFailed("", "mRewardVideoAd is null or is not ready");
            }
        } catch (Throwable th) {
            CustomRewardedVideoEventListener customRewardedVideoEventListener2 = this.mImpressionListener;
            if (customRewardedVideoEventListener2 != null) {
                customRewardedVideoEventListener2.onRewardedVideoAdPlayFailed("", "mRewardVideoAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10512b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            UBiXRewardVideoManager uBiXRewardVideoManagerCreateRewardVideoAd = UBiXAdManager.createRewardVideoAd();
            this.f10513c = uBiXRewardVideoManagerCreateRewardVideoAd;
            uBiXRewardVideoManagerCreateRewardVideoAd.setExtraInfo(UbATConst.toExtraMap(map));
            this.f10513c.loadRewardVideoAd(context, this.f10511a, new b());
            this.f10513c.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "ubix startLoadAd exception:" + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(UBiXRewardInfo uBiXRewardInfo) {
        try {
            if (this.f10514d == null) {
                this.f10514d = new HashMap();
            }
            if (uBiXRewardInfo != null) {
                this.f10514d.put(ATAdConst.REWARD_EXTRA.REWARD_INFO, uBiXRewardInfo.getExtra());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
