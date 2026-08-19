package com.anythink.network.octopus;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.octopus.ad.SplashAd;
import com.octopus.ad.SplashAdListener;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: a, reason: collision with root package name */
    private final String f10153a = ZyATSplashAdapter.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f10154b = "";

    /* renamed from: c, reason: collision with root package name */
    boolean f10155c = false;

    /* renamed from: d, reason: collision with root package name */
    private SplashAd f10156d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10157a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10158b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10159c;

        public a(Context context, Map map, Map map2) {
            this.f10157a = context;
            this.f10158b = map;
            this.f10159c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ZyATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            ZyATSplashAdapter.this.a(this.f10157a, this.f10158b, this.f10159c);
        }
    }

    public class b implements SplashAdListener {
        public b() {
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdCacheLoaded(boolean z2) {
            String unused = ZyATSplashAdapter.this.f10153a;
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdClicked() {
            String unused = ZyATSplashAdapter.this.f10153a;
            if (((CustomSplashAdapter) ZyATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) ZyATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdClosed() {
            String unused = ZyATSplashAdapter.this.f10153a;
            if (((CustomSplashAdapter) ZyATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) ZyATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
            }
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdFailedToLoad(int i2) {
            String unused = ZyATSplashAdapter.this.f10153a;
            ZyATSplashAdapter.this.notifyATLoadFail(String.valueOf(i2), "i:" + i2);
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdLoaded() {
            String unused = ZyATSplashAdapter.this.f10153a;
            Objects.toString(ZyATSplashAdapter.this.f10156d);
            if (ZyATSplashAdapter.this.f10156d == null) {
                ZyATSplashAdapter.this.notifyATLoadFail("", "mSplashAd is null");
                return;
            }
            ZyATSplashAdapter zyATSplashAdapter = ZyATSplashAdapter.this;
            if (!zyATSplashAdapter.f10155c) {
                if (((ATBaseAdInternalAdapter) zyATSplashAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) ZyATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (zyATSplashAdapter.mBiddingListener != null) {
                String unused2 = zyATSplashAdapter.f10153a;
                ZyATSplashAdapter.this.f10156d.getPrice();
                ZyATSplashAdapter.this.f10156d.isLoaded();
                int price = ZyATSplashAdapter.this.f10156d.getPrice();
                if (price <= 0) {
                    ZyATSplashAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                ZyATBiddingNotice zyATBiddingNotice = new ZyATBiddingNotice(ZyATSplashAdapter.this.f10156d);
                ZyATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", zyATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdShown() {
            String unused = ZyATSplashAdapter.this.f10153a;
            if (((CustomSplashAdapter) ZyATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) ZyATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }
        }

        @Override // com.octopus.ad.SplashAdListener
        public void onAdTick(long j2) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return ZyATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SplashAd splashAd = this.f10156d;
        if (splashAd != null) {
            splashAd.destroy();
            this.f10156d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return ZyATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10154b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return ZyATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SplashAd splashAd = this.f10156d;
        return splashAd != null && splashAd.isValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (!a(map, map2)) {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        } else {
            ZyATInitManager.getInstance().initSDK(context, map, new a(context.getApplicationContext(), map, map2));
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        try {
            Objects.toString(viewGroup);
            SplashAd splashAd = this.f10156d;
            if (splashAd == null || !splashAd.isValid()) {
                a("mSplashAd is null or is not ready");
            } else {
                this.f10156d.showAd(viewGroup);
            }
        } catch (Throwable th) {
            a(th.getMessage());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10155c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            SplashAd splashAd = new SplashAd(context, this.f10154b, new b());
            this.f10156d = splashAd;
            splashAd.openAdInNativeBrowser(true);
        } catch (Throwable th) {
            notifyATLoadFail("", th.getMessage());
        }
    }

    private void a(String str) {
        this.mDismissType = 99;
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", str));
            this.mImpressionListener.onSplashAdDismiss();
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        this.f10154b = ATInitMediation.getStringFromMap(map, "unit_id");
        return (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f10154b)) ? false : true;
    }
}
