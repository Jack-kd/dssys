package com.anythink.network.octopus;

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
import com.octopus.ad.RewardItem;
import com.octopus.ad.RewardVideoAd;
import com.octopus.ad.RewardVideoAdListener;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATRewardAdapter extends CustomRewardVideoAdapter {
    public static final String TAG = "ZyATRewardAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10146a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f10147b = false;

    /* renamed from: c, reason: collision with root package name */
    private RewardVideoAd f10148c;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10149a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10150b;

        public a(Context context, Map map) {
            this.f10149a = context;
            this.f10150b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ZyATRewardAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            ZyATRewardAdapter.this.a(this.f10149a, this.f10150b);
        }
    }

    public class b implements RewardVideoAdListener {
        public b() {
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoAdClicked() {
            String str = ZyATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoAdClosed() {
            String str = ZyATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoAdComplete() {
            String str = ZyATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoAdFailedToLoad(int i2) {
            String str = ZyATRewardAdapter.TAG;
            ZyATRewardAdapter.this.notifyATLoadFail(String.valueOf(i2), "i:" + i2);
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoAdLoaded() {
            String str = ZyATRewardAdapter.TAG;
            if (ZyATRewardAdapter.this.f10148c == null) {
                ZyATRewardAdapter.this.notifyATLoadFail("", "mRewardVideoAd is null");
                return;
            }
            if (!ZyATRewardAdapter.this.f10147b) {
                if (((ATBaseAdInternalAdapter) ZyATRewardAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) ZyATRewardAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (ZyATRewardAdapter.this.mBiddingListener != null) {
                ZyATRewardAdapter.this.f10148c.getPrice();
                int price = ZyATRewardAdapter.this.f10148c.getPrice();
                if (price <= 0) {
                    ZyATRewardAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                ZyATBiddingNotice zyATBiddingNotice = new ZyATBiddingNotice(ZyATRewardAdapter.this.f10148c);
                ZyATRewardAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", zyATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoAdShown() {
            String str = ZyATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewardVideoCached(boolean z2) {
            String str = ZyATRewardAdapter.TAG;
        }

        @Override // com.octopus.ad.RewardVideoAdListener
        public void onRewarded(RewardItem rewardItem) {
            String str = ZyATRewardAdapter.TAG;
            Objects.toString(rewardItem);
            if (((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) ZyATRewardAdapter.this).mImpressionListener.onReward();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return ZyATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        RewardVideoAd rewardVideoAd = this.f10148c;
        if (rewardVideoAd != null) {
            rewardVideoAd.destroy();
            this.f10148c = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return ZyATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10146a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return ZyATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        RewardVideoAd rewardVideoAd = this.f10148c;
        return rewardVideoAd != null && rewardVideoAd.isValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10146a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "octopus: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            ZyATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f10148c);
            RewardVideoAd rewardVideoAd = this.f10148c;
            if (rewardVideoAd != null && rewardVideoAd.isValid()) {
                this.f10148c.show(activity);
                return;
            }
            CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
            if (customRewardedVideoEventListener != null) {
                customRewardedVideoEventListener.onRewardedVideoAdPlayFailed("", "rewardedAd is null or is not ready");
            }
        } catch (Throwable th) {
            CustomRewardedVideoEventListener customRewardedVideoEventListener2 = this.mImpressionListener;
            if (customRewardedVideoEventListener2 != null) {
                customRewardedVideoEventListener2.onRewardedVideoAdPlayFailed("", "rewardedAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10147b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            RewardVideoAd rewardVideoAd = new RewardVideoAd(context, this.f10146a, new b());
            this.f10148c = rewardVideoAd;
            rewardVideoAd.openAdInNativeBrowser(true);
            this.f10148c.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "octopus startLoadAd exception:" + th.getMessage());
        }
    }
}
