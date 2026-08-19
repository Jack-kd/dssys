package com.anythink.network.funlink;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.fl.saas.adx.api.FLVideo;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewVideoListener;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class FunlinkATRewardedVideoAdapter extends CustomRewardVideoAdapter {
    public static final String TAG = "FunlinkATRewardedVideoAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f9598a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f9599b = false;

    /* renamed from: c, reason: collision with root package name */
    private FLVideo f9600c;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9601a;

        public a(Context context) {
            this.f9601a = context;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            FunlinkATRewardedVideoAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            FunlinkATRewardedVideoAdapter.this.a(this.f9601a);
        }
    }

    public class b implements AdViewVideoListener {
        public b() {
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onAdClick(String str) {
            String str2 = FunlinkATRewardedVideoAdapter.TAG;
            if (((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onAdClose() {
            String str = FunlinkATRewardedVideoAdapter.TAG;
            if (((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            String strValueOf = fLError != null ? String.valueOf(fLError.getCode()) : "";
            String msg = fLError != null ? fLError.getMsg() : "unknown error";
            String str = FunlinkATRewardedVideoAdapter.TAG;
            FunlinkATRewardedVideoAdapter.this.notifyATLoadFail(strValueOf, msg);
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onAdShow() {
            String str = FunlinkATRewardedVideoAdapter.TAG;
            if (((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onSkipVideo() {
            String str = FunlinkATRewardedVideoAdapter.TAG;
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onVideoCompleted() {
            String str = FunlinkATRewardedVideoAdapter.TAG;
            if (((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onVideoPrepared() {
            String str = FunlinkATRewardedVideoAdapter.TAG;
            Objects.toString(FunlinkATRewardedVideoAdapter.this.f9600c);
            if (FunlinkATRewardedVideoAdapter.this.f9600c == null) {
                FunlinkATRewardedVideoAdapter.this.notifyATLoadFail("", "rewardVideoAd is null");
                return;
            }
            FunlinkATInitManager funlinkATInitManager = FunlinkATInitManager.getInstance();
            boolean z2 = FunlinkATRewardedVideoAdapter.this.f9599b;
            FLVideo fLVideo = FunlinkATRewardedVideoAdapter.this.f9600c;
            long ecpm = FunlinkATRewardedVideoAdapter.this.f9600c.getECPM();
            FunlinkATRewardedVideoAdapter funlinkATRewardedVideoAdapter = FunlinkATRewardedVideoAdapter.this;
            funlinkATInitManager.handleAdCacheLoadedCallback(z2, fLVideo, ecpm, funlinkATRewardedVideoAdapter.mBiddingListener, ((ATBaseAdInternalAdapter) funlinkATRewardedVideoAdapter).mLoadListener, new BaseAd[0]);
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
        public void onVideoReward(double d2) {
            String str = FunlinkATRewardedVideoAdapter.TAG;
            if (((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) FunlinkATRewardedVideoAdapter.this).mImpressionListener.onReward();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return FunlinkATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        FLVideo fLVideo = this.f9600c;
        if (fLVideo != null) {
            fLVideo.destroy();
            this.f9600c = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return FunlinkATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return FunlinkATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9598a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return FunlinkATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        FLVideo fLVideo = this.f9600c;
        return fLVideo != null && fLVideo.isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9598a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "funlink: unit_id or context is empty");
        } else {
            FunlinkATInitManager.getInstance().initSDK(context, map, new a(context));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f9600c);
            FLVideo fLVideo = this.f9600c;
            if (fLVideo != null && fLVideo.isReady()) {
                this.f9600c.show(activity);
                return;
            }
            CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
            if (customRewardedVideoEventListener != null) {
                customRewardedVideoEventListener.onRewardedVideoAdPlayFailed("", "RewardVideoAd is null or is not ready");
            }
        } catch (Throwable th) {
            CustomRewardedVideoEventListener customRewardedVideoEventListener2 = this.mImpressionListener;
            if (customRewardedVideoEventListener2 != null) {
                customRewardedVideoEventListener2.onRewardedVideoAdPlayFailed("", "RewardVideoAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9599b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            Thread.currentThread().getName();
            FLVideo fLVideoBuild = new FLVideo.Builder(context).setKey(this.f9598a).setUserId(this.mUserId).setVideoListener(new b()).build();
            this.f9600c = fLVideoBuild;
            fLVideoBuild.requestRewardVideo();
        } catch (Throwable th) {
            notifyATLoadFail("", "funlink startLoadAd exception:" + th.getMessage());
        }
    }
}
