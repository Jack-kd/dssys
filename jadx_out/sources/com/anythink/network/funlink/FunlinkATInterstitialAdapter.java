package com.anythink.network.funlink;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.anythink.network.funlink.FunlinkATInterstitialLoader;
import java.util.Map;

/* loaded from: classes2.dex */
public class FunlinkATInterstitialAdapter extends CustomInterstitialAdapter {
    public static final String TAG = "FunlinkATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    boolean f9582a = false;

    /* renamed from: b, reason: collision with root package name */
    private FunlinkATInterstitialLoader f9583b;

    /* renamed from: c, reason: collision with root package name */
    private String f9584c;

    /* renamed from: d, reason: collision with root package name */
    private String f9585d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9586a;

        public a(Context context) {
            this.f9586a = context;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            FunlinkATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            FunlinkATInterstitialAdapter.this.a(this.f9586a);
        }
    }

    public class b implements FunlinkATInterstitialLoader.Listener {
        public b() {
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader.Listener
        public void onClick() {
            String str = FunlinkATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) FunlinkATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) FunlinkATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader.Listener
        public void onClose() {
            String str = FunlinkATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) FunlinkATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) FunlinkATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
            }
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader.Listener
        public void onFail(String str, String str2) {
            String str3 = FunlinkATInterstitialAdapter.TAG;
            FunlinkATInterstitialAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader.Listener
        public void onPrepared(int i2, Object obj) {
            if (obj == null) {
                FunlinkATInterstitialAdapter.this.notifyATLoadFail("", "originAd is null");
                return;
            }
            FunlinkATInitManager funlinkATInitManager = FunlinkATInitManager.getInstance();
            FunlinkATInterstitialAdapter funlinkATInterstitialAdapter = FunlinkATInterstitialAdapter.this;
            funlinkATInitManager.handleAdCacheLoadedCallback(funlinkATInterstitialAdapter.f9582a, obj, i2, funlinkATInterstitialAdapter.mBiddingListener, ((ATBaseAdInternalAdapter) funlinkATInterstitialAdapter).mLoadListener, new BaseAd[0]);
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader.Listener
        public void onShow() {
            String str = FunlinkATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) FunlinkATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) FunlinkATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return FunlinkATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        FunlinkATInterstitialLoader funlinkATInterstitialLoader = this.f9583b;
        if (funlinkATInterstitialLoader != null) {
            try {
                funlinkATInterstitialLoader.destroy();
            } catch (Throwable unused) {
            }
            this.f9583b = null;
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
        return this.f9584c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return FunlinkATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        FunlinkATInterstitialLoader funlinkATInterstitialLoader = this.f9583b;
        return funlinkATInterstitialLoader != null && funlinkATInterstitialLoader.isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9584c = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9585d = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        if (TextUtils.isEmpty(this.f9584c) || context == null) {
            notifyATLoadFail("", "funlink: unit_id or context is empty");
        } else if (this.f9585d.equals("0")) {
            FunlinkATInitManager.getInstance().initSDK(context, map, new a(context));
        } else {
            notifyATLoadFail("", "not support FullScreenVideo");
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        try {
            FunlinkATInterstitialLoader funlinkATInterstitialLoader = this.f9583b;
            if (funlinkATInterstitialLoader == null || !funlinkATInterstitialLoader.isReady()) {
                a("ad is not ready");
            } else {
                this.f9583b.show(activity);
            }
        } catch (Throwable th) {
            a("show exception:" + th.getMessage());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9582a = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            b bVar = new b();
            FunlinkATInterstitialLoader.InterstitialLoader interstitialLoader = new FunlinkATInterstitialLoader.InterstitialLoader();
            this.f9583b = interstitialLoader;
            interstitialLoader.load(context, this.f9584c, bVar);
        } catch (Throwable th) {
            notifyATLoadFail("", "funlink startLoadAd exception:" + th.getMessage());
        }
    }

    private void a(String str) {
        this.mDismissType = 99;
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdVideoError("", str);
        }
    }
}
