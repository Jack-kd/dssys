package com.anythink.network.beizi;

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
import com.beizi.fusion.AdListener;
import com.beizi.fusion.SplashAd;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: a, reason: collision with root package name */
    private final String f9531a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f9532b = "";

    /* renamed from: c, reason: collision with root package name */
    boolean f9533c = false;

    /* renamed from: d, reason: collision with root package name */
    private SplashAd f9534d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9535e;

    /* renamed from: f, reason: collision with root package name */
    private Context f9536f;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, Object> f9537g;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9538a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9539b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9540c;

        public a(Context context, Map map, Map map2) {
            this.f9538a = context;
            this.f9539b = map;
            this.f9540c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            BzATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            BzATSplashAdapter.this.a(this.f9538a, this.f9539b, this.f9540c);
        }
    }

    public class b implements AdListener {
        public b() {
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdClicked() {
            String unused = BzATSplashAdapter.this.f9531a;
            if (((CustomSplashAdapter) BzATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) BzATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdClosed() {
            String unused = BzATSplashAdapter.this.f9531a;
            if (((CustomSplashAdapter) BzATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) BzATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
            }
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdFailedToLoad(int i2) {
            String unused = BzATSplashAdapter.this.f9531a;
            BzATSplashAdapter.this.notifyATLoadFail(String.valueOf(i2), "i:" + i2);
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdLoaded() {
            String unused = BzATSplashAdapter.this.f9531a;
            Objects.toString(BzATSplashAdapter.this.f9534d);
            if (BzATSplashAdapter.this.f9534d == null) {
                BzATSplashAdapter.this.notifyATLoadFail("", "mSplashAd is null");
                return;
            }
            BzATSplashAdapter.this.f9537g = BzATInitManager.getInstance().a(BzATSplashAdapter.this.f9534d.getCustomExtraJsonData(), BzATSplashAdapter.this.f9537g);
            BzATSplashAdapter.this.f9535e = true;
            BzATSplashAdapter bzATSplashAdapter = BzATSplashAdapter.this;
            if (!bzATSplashAdapter.f9533c) {
                if (((ATBaseAdInternalAdapter) bzATSplashAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BzATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (bzATSplashAdapter.mBiddingListener != null) {
                String unused2 = bzATSplashAdapter.f9531a;
                BzATSplashAdapter.this.f9534d.getECPM();
                int ecpm = BzATSplashAdapter.this.f9534d.getECPM();
                if (ecpm <= 0) {
                    BzATSplashAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                BzATBiddingNotice bzATBiddingNotice = new BzATBiddingNotice(BzATSplashAdapter.this.f9534d);
                BzATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", bzATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdShown() {
            String unused = BzATSplashAdapter.this.f9531a;
            if (((CustomSplashAdapter) BzATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) BzATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }
        }

        @Override // com.beizi.fusion.AdListener
        public void onAdTick(long j2) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BzATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        try {
            SplashAd splashAd = this.f9534d;
            if (splashAd != null) {
                splashAd.cancel(this.f9536f);
                this.f9534d = null;
            }
            this.f9535e = false;
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9537g;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BzATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9532b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BzATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        return this.f9534d != null && this.f9535e;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (!a(map, map2)) {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        } else {
            BzATInitManager.getInstance().initSDK(context, map, new a(context.getApplicationContext(), map, map2));
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        try {
            Objects.toString(viewGroup);
            SplashAd splashAd = this.f9534d;
            if (splashAd == null || !this.f9535e) {
                a("mSplashAd is null or is not ready");
            } else {
                splashAd.show(viewGroup);
            }
            this.f9535e = false;
        } catch (Throwable th) {
            a(th.getMessage());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9533c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        int iA = 0;
        try {
            this.f9535e = false;
            this.f9536f = context;
            Thread.currentThread().getName();
            int iA2 = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? a(context, Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString())) : 0;
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                    iA = a(context, Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString()));
                }
            } catch (Throwable unused) {
            }
            if (iA2 <= 0) {
                iA2 = a(context, context.getResources().getDisplayMetrics().widthPixels);
            }
            if (iA <= 0) {
                iA = a(context, context.getResources().getDisplayMetrics().heightPixels);
            }
            SplashAd splashAd = new SplashAd(context, null, this.f9532b, new b(), this.mFetchAdTimeout);
            this.f9534d = splashAd;
            splashAd.loadAd(iA2, iA);
        } catch (Throwable th) {
            notifyATLoadFail("", th.getMessage());
        }
    }

    private static int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
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
        this.f9532b = ATInitMediation.getStringFromMap(map, "unit_id");
        return (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f9532b)) ? false : true;
    }
}
