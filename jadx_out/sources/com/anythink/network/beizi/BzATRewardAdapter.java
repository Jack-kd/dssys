package com.anythink.network.beizi;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.beizi.fusion.RewardedVideoAd;
import com.beizi.fusion.RewardedVideoAdListener;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATRewardAdapter extends CustomRewardVideoAdapter {
    public static final String TAG = "BzATRewardAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f9522a;

    /* renamed from: b, reason: collision with root package name */
    private int f9523b = 1;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9524c = false;

    /* renamed from: d, reason: collision with root package name */
    private RewardedVideoAd f9525d;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, Object> f9526e;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9527a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9528b;

        public a(Context context, Map map) {
            this.f9527a = context;
            this.f9528b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            BzATRewardAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            BzATRewardAdapter.this.a(this.f9527a, (Map<String, Object>) this.f9528b);
        }
    }

    public class b implements RewardedVideoAdListener {
        public b() {
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewarded() {
            String str = BzATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener.onReward();
            }
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoAdClosed() {
            String str = BzATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoAdFailedToLoad(int i2) {
            String str = BzATRewardAdapter.TAG;
            BzATRewardAdapter.this.notifyATLoadFail(String.valueOf(i2), "i:" + i2);
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoAdLoaded() {
            String str = BzATRewardAdapter.TAG;
            Objects.toString(BzATRewardAdapter.this.f9525d);
            if (BzATRewardAdapter.this.f9525d == null) {
                BzATRewardAdapter.this.notifyATLoadFail("", "rewardVideoAd is null");
                return;
            }
            BzATRewardAdapter.this.f9526e = BzATInitManager.getInstance().a(BzATRewardAdapter.this.f9525d.getCustomExtraJsonData(), BzATRewardAdapter.this.f9526e);
            if (!BzATRewardAdapter.this.f9524c) {
                if (((ATBaseAdInternalAdapter) BzATRewardAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BzATRewardAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (BzATRewardAdapter.this.mBiddingListener != null) {
                BzATRewardAdapter.this.f9525d.getECPM();
                int ecpm = BzATRewardAdapter.this.f9525d.getECPM();
                if (ecpm <= 0) {
                    BzATRewardAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                BzATBiddingNotice bzATBiddingNotice = new BzATBiddingNotice(BzATRewardAdapter.this.f9525d);
                BzATRewardAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", bzATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoAdShown() {
            String str = BzATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoCacheSuccess() {
            String str = BzATRewardAdapter.TAG;
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoClick() {
            String str = BzATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoComplete() {
            String str = BzATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.beizi.fusion.RewardedVideoAdListener
        public void onRewardedVideoPlayError() {
            String str = BzATRewardAdapter.TAG;
            if (((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) BzATRewardAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed("", "no message");
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BzATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        RewardedVideoAd rewardedVideoAd = this.f9525d;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
            this.f9525d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(4, BzATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9526e;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BzATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9522a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BzATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        RewardedVideoAd rewardedVideoAd = this.f9525d;
        return rewardedVideoAd != null && rewardedVideoAd.isLoaded();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9522a = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9523b = ATInitMediation.getIntFromMap(map, "template_type", 1);
        if (TextUtils.isEmpty(this.f9522a) || context == null) {
            notifyATLoadFail("", "beizi: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            BzATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f9525d);
            RewardedVideoAd rewardedVideoAd = this.f9525d;
            if (rewardedVideoAd != null && rewardedVideoAd.isLoaded()) {
                this.f9525d.showAd(activity);
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
        this.f9524c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(context, this.f9522a, new b(), 10000L, this.f9523b);
            this.f9525d = rewardedVideoAd;
            rewardedVideoAd.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "beizi startLoadAd exception:" + th.getMessage());
        }
    }
}
