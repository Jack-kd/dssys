package com.anythink.network.baidu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import com.baidu.mobads.sdk.api.SplashInteractionListener;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class BaiduATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: d, reason: collision with root package name */
    SplashAd f9405d;

    /* renamed from: e, reason: collision with root package name */
    String f9406e;

    /* renamed from: k, reason: collision with root package name */
    private Map<String, Object> f9412k;

    /* renamed from: l, reason: collision with root package name */
    private Map<String, Object> f9413l;

    /* renamed from: a, reason: collision with root package name */
    private final String f9402a = BaiduATSplashAdapter.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    String f9403b = "";

    /* renamed from: c, reason: collision with root package name */
    String f9404c = "2";

    /* renamed from: f, reason: collision with root package name */
    private double f9407f = 0.0d;

    /* renamed from: g, reason: collision with root package name */
    boolean f9408g = false;

    /* renamed from: h, reason: collision with root package name */
    boolean f9409h = false;

    /* renamed from: i, reason: collision with root package name */
    boolean f9410i = false;

    /* renamed from: j, reason: collision with root package name */
    boolean f9411j = false;

    public class a implements SplashInteractionListener {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.api.SplashAdListener
        public void onADLoaded() {
            BaiduATSplashAdapter.this.b();
            BaiduATSplashAdapter baiduATSplashAdapter = BaiduATSplashAdapter.this;
            if (baiduATSplashAdapter.f9411j) {
                baiduATSplashAdapter.f9409h = true;
            }
            BaiduATInitManager baiduATInitManager = BaiduATInitManager.getInstance();
            BaiduATSplashAdapter baiduATSplashAdapter2 = BaiduATSplashAdapter.this;
            baiduATInitManager.a(baiduATSplashAdapter2.f9410i, baiduATSplashAdapter2.f9405d, ((ATBaseAdInternalAdapter) baiduATSplashAdapter2).mLoadListener, BaiduATSplashAdapter.this.mBiddingListener);
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdCacheFailed() {
            BaiduATSplashAdapter baiduATSplashAdapter = BaiduATSplashAdapter.this;
            if (baiduATSplashAdapter.f9409h) {
                return;
            }
            baiduATSplashAdapter.notifyATLoadFail("", "onAdCacheFailed");
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdCacheSuccess() {
            BaiduATSplashAdapter baiduATSplashAdapter = BaiduATSplashAdapter.this;
            baiduATSplashAdapter.f9409h = true;
            baiduATSplashAdapter.a();
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdClick() {
            if (((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdDismissed() {
            if (((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
            }
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdExposed() {
            String unused = BaiduATSplashAdapter.this.f9402a;
            if (!BaiduATSplashAdapter.this.f9404c.equals("2") || ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener.onSplashAdShow();
        }

        @Override // com.baidu.mobads.sdk.api.SplashAdListener
        public void onAdFailed(String str) {
            BaiduATSplashAdapter baiduATSplashAdapter = BaiduATSplashAdapter.this;
            if (!baiduATSplashAdapter.f9409h) {
                BaiduATSplashAdapter.this.notifyATLoadFail("", str, new BaiduATBiddingNotice(baiduATSplashAdapter.f9405d), ATAdConst.CURRENCY.RMB_CENT);
                return;
            }
            Log.e(baiduATSplashAdapter.f9402a, "onAdFailed: " + str);
            ((ATBaseAdInternalAdapter) BaiduATSplashAdapter.this).mDismissType = 99;
            if (((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", str));
                ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
            }
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdPresent() {
            String unused = BaiduATSplashAdapter.this.f9402a;
            if (!BaiduATSplashAdapter.this.f9404c.equals("1") || ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener == null) {
                return;
            }
            ((CustomSplashAdapter) BaiduATSplashAdapter.this).mImpressionListener.onSplashAdShow();
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onAdSkip() {
            ((ATBaseAdInternalAdapter) BaiduATSplashAdapter.this).mDismissType = 2;
        }

        @Override // com.baidu.mobads.sdk.api.SplashInteractionListener
        public void onLpClosed() {
        }
    }

    public class b implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9415a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9416b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9417c;

        public b(Context context, Map map, Map map2) {
            this.f9415a = context;
            this.f9416b = map;
            this.f9417c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            if (((ATBaseAdInternalAdapter) BaiduATSplashAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) BaiduATSplashAdapter.this).mLoadListener.onAdLoadError("", str);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            BaiduATSplashAdapter baiduATSplashAdapter = BaiduATSplashAdapter.this;
            baiduATSplashAdapter.a(this.f9415a, baiduATSplashAdapter.f9408g, this.f9416b, this.f9417c);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BaiduATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SplashAd splashAd = this.f9405d;
        if (splashAd != null) {
            splashAd.destroy();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, BaiduATAdapter.class);
        map.put(3, BaiduATInterstitialAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9412k;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BaiduATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9403b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BaiduATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SplashAd splashAd = this.f9405d;
        if (splashAd == null) {
            return false;
        }
        if (this.f9411j && this.f9409h) {
            return true;
        }
        return splashAd.isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9409h = false;
        a(map, map2);
        if (TextUtils.isEmpty(this.f9406e) || TextUtils.isEmpty(this.f9403b)) {
            notifyATLoadFail("", " app_id ,ad_place_id is empty.");
        } else {
            Context applicationContext = context.getApplicationContext();
            BaiduATInitManager.getInstance().initSDK(applicationContext, map, new b(applicationContext, map, map2));
        }
    }

    public void setDismissType(int i2) {
        this.mDismissType = i2;
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) throws JSONException {
        this.f9409h = false;
        SplashAd splashAd = this.f9405d;
        if (splashAd != null) {
            splashAd.show(viewGroup);
            return;
        }
        this.mDismissType = 99;
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "Baidu Splash show fail: mSplashAd = null"));
            this.mImpressionListener.onSplashAdDismiss();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9410i = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        SplashAd splashAd = this.f9405d;
        if (splashAd != null) {
            this.f9412k = BaiduATInitManager.getInstance().a(splashAd.getAdDataForKey("request_id"), this.f9412k, this.f9413l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, boolean z2, Map<String, Object> map, Map<String, Object> map2) {
        RequestParameters.Builder builder = new RequestParameters.Builder();
        builder.addExtra("timeout", String.valueOf(this.mFetchAdTimeout));
        builder.addExtra(SplashAd.KEY_DISPLAY_DOWNLOADINFO, "true");
        builder.addExtra(SplashAd.KEY_POPDIALOG_DOWNLOAD, String.valueOf(z2));
        int intFromMap = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_WIDTH, 0);
        int intFromMap2 = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_HEIGHT, 0);
        if (intFromMap > 0 && intFromMap2 > 0) {
            builder.setWidth(a(context, intFromMap));
            builder.setHeight(a(context, intFromMap2));
        }
        BaiduATInitManager.getInstance().a(this.f9403b, builder, map, map2);
        this.f9405d = new SplashAd(context.getApplicationContext(), this.f9403b, builder.build(), new a());
        if (this.f9410i && this.f9407f > 0.0d) {
            ATSDK.isNetworkLogDebug();
            this.f9405d.setBidFloor((int) this.f9407f);
        }
        this.f9405d.setAppSid(BaiduATInitManager.getInstance().getApp_id());
        this.f9405d.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        double d2;
        if (this.f9410i) {
            if (this.mBiddingListener != null) {
                SplashAd splashAd = this.f9405d;
                if (splashAd != null) {
                    String pecpm = splashAd.getPECPM();
                    if (this.f9412k == null) {
                        this.f9412k = new HashMap();
                    }
                    this.f9412k.put(BaiduATConst.EN_P_KEY, pecpm);
                    String eCPMLevel = this.f9405d.getECPMLevel();
                    if (TextUtils.isEmpty(eCPMLevel)) {
                        eCPMLevel = "0";
                    }
                    try {
                        d2 = Double.parseDouble(eCPMLevel);
                    } catch (Throwable th) {
                        th.printStackTrace();
                        d2 = 0.0d;
                    }
                    if (d2 <= 0.0d) {
                        notifyATLoadFail("", "Price is less than or equal to 0. Price: " + d2);
                        return;
                    }
                    ATBiddingResult aTBiddingResultSuccess = ATBiddingResult.success(d2, System.currentTimeMillis() + "", new BaiduATBiddingNotice(this.f9405d), ATAdConst.CURRENCY.RMB_CENT);
                    aTBiddingResultSuccess.setExtra(pecpm);
                    this.mBiddingListener.onC2SBiddingResultWithCache(aTBiddingResultSuccess, null);
                    return;
                }
                notifyATLoadFail("", "Baidu: SplashAd had been destroyed.");
                return;
            }
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
        }
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9413l = map;
        this.f9406e = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9403b = ATInitMediation.getStringFromMap(map, "ad_place_id");
        this.f9404c = ATInitMediation.getStringFromMap(map, "bd_imp_type", "2");
        this.f9407f = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        this.f9408g = ATInitMediation.getBooleanFromMap(map2, ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS);
        this.f9411j = ATInitMediation.getIntFromMap(map, "ad_s_reqf_mode") == 2;
    }

    private static int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }
}
