package com.anythink.network.baidu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.core.common.d.i;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.baidu.mobads.sdk.api.ExpressInterstitialAd;
import com.baidu.mobads.sdk.api.ExpressInterstitialListener;
import com.baidu.mobads.sdk.api.FullScreenVideoAd;
import com.baidu.mobads.sdk.api.RequestParameters;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class BaiduATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: q, reason: collision with root package name */
    private static final String f9326q = "BaiduATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    FullScreenVideoAd f9327a;

    /* renamed from: b, reason: collision with root package name */
    ExpressInterstitialAd f9328b;

    /* renamed from: h, reason: collision with root package name */
    FullScreenVideoAd.FullScreenVideoAdListener f9334h;

    /* renamed from: m, reason: collision with root package name */
    private Map<String, Object> f9339m;

    /* renamed from: n, reason: collision with root package name */
    private Map<String, Object> f9340n;

    /* renamed from: o, reason: collision with root package name */
    private WeakReference<Activity> f9341o;

    /* renamed from: c, reason: collision with root package name */
    private String f9329c = "";

    /* renamed from: d, reason: collision with root package name */
    private String f9330d = "";

    /* renamed from: e, reason: collision with root package name */
    private String f9331e = "";

    /* renamed from: f, reason: collision with root package name */
    private String f9332f = "";

    /* renamed from: g, reason: collision with root package name */
    private double f9333g = 0.0d;

    /* renamed from: i, reason: collision with root package name */
    boolean f9335i = false;

    /* renamed from: j, reason: collision with root package name */
    boolean f9336j = false;

    /* renamed from: k, reason: collision with root package name */
    boolean f9337k = false;

    /* renamed from: l, reason: collision with root package name */
    boolean f9338l = false;

    /* renamed from: p, reason: collision with root package name */
    boolean f9342p = false;

    public class a implements FullScreenVideoAd.FullScreenVideoAdListener {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdClick() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            if (((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdClose(float f2) {
            String unused = BaiduATInterstitialAdapter.f9326q;
            BaiduATInterstitialAdapter.this.d();
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdFailed(String str) {
            String unused = BaiduATInterstitialAdapter.f9326q;
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(BaiduATInterstitialAdapter.this.f9327a);
            BaiduATInterstitialAdapter.this.notifyATLoadFail("", "Baidu: " + str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdLoaded() {
            BaiduATInterstitialAdapter baiduATInterstitialAdapter = BaiduATInterstitialAdapter.this;
            if (baiduATInterstitialAdapter.f9338l) {
                baiduATInterstitialAdapter.f9337k = true;
            }
            BaiduATInitManager baiduATInitManager = BaiduATInitManager.getInstance();
            BaiduATInterstitialAdapter baiduATInterstitialAdapter2 = BaiduATInterstitialAdapter.this;
            baiduATInitManager.a(baiduATInterstitialAdapter2.f9336j, baiduATInterstitialAdapter2.f9327a, ((ATBaseAdInternalAdapter) baiduATInterstitialAdapter2).mLoadListener, BaiduATInterstitialAdapter.this.mBiddingListener);
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdShow() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            if (((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onAdSkip(float f2) {
            ((ATBaseAdInternalAdapter) BaiduATInterstitialAdapter.this).mDismissType = 2;
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onVideoDownloadFailed() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            BaiduATInterstitialAdapter.this.notifyATLoadFail("", "Baidu: onVideoDownloadFailed");
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void onVideoDownloadSuccess() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            BaiduATInterstitialAdapter.this.c();
        }

        @Override // com.baidu.mobads.sdk.api.FullScreenVideoAd.FullScreenVideoAdListener, com.baidu.mobads.sdk.api.ScreenVideoAdListener
        public void playCompletion() {
            if (((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
            }
        }
    }

    public class b implements ExpressInterstitialListener {
        public b() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onADExposed() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            if (((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            }
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onADExposureFailed() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            if (((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError("", "Baidu: onADExposureFailed()");
            }
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onADLoaded() {
            BaiduATInterstitialAdapter.this.e();
            Log.e(BaiduATInterstitialAdapter.f9326q, "onADLoaded:  isReady = " + BaiduATInterstitialAdapter.this.f9328b.isReady() + BaiduATInterstitialAdapter.this.f9330d);
            BaiduATInterstitialAdapter baiduATInterstitialAdapter = BaiduATInterstitialAdapter.this;
            if (baiduATInterstitialAdapter.f9338l) {
                baiduATInterstitialAdapter.f9337k = true;
            }
            BaiduATInitManager baiduATInitManager = BaiduATInitManager.getInstance();
            BaiduATInterstitialAdapter baiduATInterstitialAdapter2 = BaiduATInterstitialAdapter.this;
            baiduATInitManager.a(baiduATInterstitialAdapter2.f9336j, baiduATInterstitialAdapter2.f9328b, ((ATBaseAdInternalAdapter) baiduATInterstitialAdapter2).mLoadListener, BaiduATInterstitialAdapter.this.mBiddingListener);
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onAdCacheFailed() {
            BaiduATInterstitialAdapter.this.notifyATLoadFail("", "Baidu: onAdCacheFailed");
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onAdCacheSuccess() {
            BaiduATInterstitialAdapter.this.b();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onAdClick() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            if (((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BaiduATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onAdClose() {
            String unused = BaiduATInterstitialAdapter.f9326q;
            BaiduATInterstitialAdapter.this.d();
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onAdFailed(int i2, String str) {
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(BaiduATInterstitialAdapter.this.f9328b);
            BaiduATInterstitialAdapter.this.notifyATLoadFail("" + i2, str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onLpClosed() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialListener
        public void onNoAd(int i2, String str) {
            BaiduATBiddingNotice baiduATBiddingNotice = new BaiduATBiddingNotice(BaiduATInterstitialAdapter.this.f9328b);
            BaiduATInterstitialAdapter.this.notifyATLoadFail("" + i2, "onNoAd:" + str, baiduATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT);
        }

        public void onVideoDownloadFailed() {
        }

        public void onVideoDownloadSuccess() {
        }
    }

    public class c implements ExpressInterstitialAd.InterAdDownloadWindowListener {
        public c() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialAd.InterAdDownloadWindowListener
        public void adDownloadWindowClose() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialAd.InterAdDownloadWindowListener
        public void adDownloadWindowShow() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialAd.InterAdDownloadWindowListener
        public void onADPermissionClose() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialAd.InterAdDownloadWindowListener
        public void onADPermissionShow() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialAd.InterAdDownloadWindowListener
        public void onADPrivacyClick() {
        }

        @Override // com.baidu.mobads.sdk.api.ExpressInterstitialAd.InterAdDownloadWindowListener
        public void onADPrivacyClose() {
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f9346a;

        public d(Activity activity) {
            this.f9346a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullScreenVideoAd fullScreenVideoAd = BaiduATInterstitialAdapter.this.f9327a;
            if (fullScreenVideoAd != null) {
                fullScreenVideoAd.show(this.f9346a);
            }
        }
    }

    public class e implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9348a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9349b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9350c;

        public e(Context context, Map map, Map map2) {
            this.f9348a = context;
            this.f9349b = map;
            this.f9350c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            if (((ATBaseAdInternalAdapter) BaiduATInterstitialAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) BaiduATInterstitialAdapter.this).mLoadListener.onAdLoadError("", str);
            }
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                BaiduATInterstitialAdapter.this.c(this.f9348a, this.f9349b, this.f9350c);
            } catch (Throwable th) {
                th.printStackTrace();
                if (((ATBaseAdInternalAdapter) BaiduATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BaiduATInterstitialAdapter.this).mLoadListener.onAdLoadError("", "Baidu: init error, " + th.getMessage());
                }
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BaiduATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public String closeAd() {
        try {
            WeakReference<Activity> weakReference = this.f9341o;
            if (weakReference == null || weakReference.get() == null) {
                return "showingActivity is null";
            }
            this.f9341o.get().getClass();
            this.f9341o.get().finish();
            d();
            return "";
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        try {
            super.destory();
            if (this.f9327a != null) {
                this.f9327a = null;
                this.f9334h = null;
            }
            ExpressInterstitialAd expressInterstitialAd = this.f9328b;
            if (expressInterstitialAd != null) {
                expressInterstitialAd.destroy();
                this.f9328b = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, BaiduATAdapter.class);
        map.put(4, BaiduATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9339m;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BaiduATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9330d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BaiduATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        String str = this.f9332f;
        int iHashCode = str.hashCode();
        if (iHashCode != 49) {
            if (iHashCode == 50) {
                str.equals("2");
            }
        } else if (str.equals("1")) {
            FullScreenVideoAd fullScreenVideoAd = this.f9327a;
            if (fullScreenVideoAd == null) {
                return false;
            }
            if (this.f9338l && this.f9337k) {
                return true;
            }
            return fullScreenVideoAd.isReady();
        }
        ExpressInterstitialAd expressInterstitialAd = this.f9328b;
        if (expressInterstitialAd == null) {
            return false;
        }
        if (this.f9338l && this.f9337k) {
            return true;
        }
        return expressInterstitialAd.isReady();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public boolean isSupportAdCarousel() {
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9329c) || TextUtils.isEmpty(this.f9330d)) {
            notifyATLoadFail("", " app_id ,ad_place_id is empty.");
            return;
        }
        if (!TextUtils.isEmpty(this.f9332f) && !this.f9332f.equals("0")) {
            BaiduATInitManager.getInstance().initSDK(context.getApplicationContext(), map, TextUtils.equals("0", this.f9332f), new e(context, map, map2));
        } else {
            notifyATLoadFail("", "Baidu InterstitialAd not support: " + this.f9332f);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onCreate(Activity activity) {
        try {
            activity.getClass();
            try {
                Object obj = this.f9332f.equals("1") ? this.f9327a : this.f9328b;
                if (obj != null) {
                    String[] strArrSplit = obj.getClass().getName().split("\\.");
                    if (strArrSplit.length >= 3) {
                        if (activity.getClass().getName().startsWith(strArrSplit[0] + i.f2495E + strArrSplit[1] + i.f2495E + strArrSplit[2]) && this.f9341o == null) {
                            this.f9341o = new WeakReference<>(activity);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onDestroy(Activity activity) {
        try {
            activity.getClass();
            WeakReference<Activity> weakReference = this.f9341o;
            if (weakReference == null || weakReference.get() != activity) {
                return;
            }
            this.f9341o.clear();
            this.f9341o = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onPause(Activity activity) {
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onResume(Activity activity) {
    }

    public void setDismissType(int i2) {
        this.mDismissType = i2;
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        this.f9342p = false;
        this.f9337k = false;
        this.f9341o = null;
        try {
            String str = this.f9332f;
            int iHashCode = str.hashCode();
            if (iHashCode != 49) {
                if (iHashCode == 50) {
                    str.equals("2");
                }
            } else if (str.equals("1")) {
                if (this.carouselShowType == 1) {
                    postOnMainThreadDelayed(new d(activity), 500L);
                    return;
                }
                FullScreenVideoAd fullScreenVideoAd = this.f9327a;
                if (fullScreenVideoAd != null) {
                    fullScreenVideoAd.show(activity);
                    return;
                }
                return;
            }
            ExpressInterstitialAd expressInterstitialAd = this.f9328b;
            if (expressInterstitialAd != null) {
                expressInterstitialAd.show(activity);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9336j = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    private void b(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a aVar = new a();
        this.f9334h = aVar;
        this.f9327a = new FullScreenVideoAd(context, this.f9330d, aVar, false);
        if (this.f9336j && this.f9333g > 0.0d) {
            ATSDK.isNetworkLogDebug();
            this.f9327a.setBidFloor((int) this.f9333g);
        }
        RequestParameters.Builder builder = new RequestParameters.Builder();
        BaiduATInitManager.getInstance().a(this.f9330d, builder, map, map2);
        this.f9327a.setRequestParameters(builder.build());
        this.f9327a.setAppSid(BaiduATInitManager.getInstance().getApp_id());
        this.f9327a.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9342p = false;
        this.f9340n = map;
        String str = this.f9332f;
        int iHashCode = str.hashCode();
        if (iHashCode != 49) {
            if (iHashCode == 50) {
                str.equals("2");
            }
        } else if (str.equals("1")) {
            b(context, map, map2);
            return;
        }
        a(context.getApplicationContext(), map, map2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f9342p) {
            return;
        }
        this.f9342p = true;
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ExpressInterstitialAd expressInterstitialAd = this.f9328b;
        if (expressInterstitialAd != null) {
            this.f9339m = BaiduATInitManager.getInstance().a(expressInterstitialAd.getAdDataForKey("request_id"), this.f9339m, this.f9340n);
        }
    }

    private void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9328b = new ExpressInterstitialAd(context, this.f9330d);
        if (this.f9336j && this.f9333g > 0.0d) {
            ATSDK.isNetworkLogDebug();
            this.f9328b.setBidFloor((int) this.f9333g);
        }
        this.f9328b.setLoadListener(new b());
        this.f9328b.setDownloadListener(new c());
        this.f9328b.setDialogFrame(this.f9335i);
        RequestParameters.Builder builder = new RequestParameters.Builder();
        BaiduATInitManager.getInstance().a(this.f9330d, builder, map, map2);
        this.f9328b.setRequestParameters(builder.build());
        this.f9328b.setAppSid(BaiduATInitManager.getInstance().getApp_id());
        this.f9328b.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        double d2;
        if (this.f9336j) {
            if (this.mBiddingListener != null) {
                FullScreenVideoAd fullScreenVideoAd = this.f9327a;
                if (fullScreenVideoAd != null) {
                    String pecpm = fullScreenVideoAd.getPECPM();
                    if (this.f9339m == null) {
                        this.f9339m = new HashMap();
                    }
                    this.f9339m.put(BaiduATConst.EN_P_KEY, pecpm);
                    String eCPMLevel = this.f9327a.getECPMLevel();
                    if (TextUtils.isEmpty(eCPMLevel)) {
                        eCPMLevel = "0";
                    }
                    try {
                        d2 = Double.parseDouble(eCPMLevel);
                    } catch (Throwable th) {
                        th.printStackTrace();
                        d2 = 0.0d;
                    }
                    if (this.mBiddingListener != null) {
                        if (d2 <= 0.0d) {
                            notifyATLoadFail("", "Price is less than or equal to 0. Price: " + d2);
                            return;
                        }
                        ATBiddingResult aTBiddingResultSuccess = ATBiddingResult.success(d2, System.currentTimeMillis() + "", new BaiduATBiddingNotice(this.f9327a), ATAdConst.CURRENCY.RMB_CENT);
                        aTBiddingResultSuccess.setExtra(pecpm);
                        this.mBiddingListener.onC2SBiddingResultWithCache(aTBiddingResultSuccess, null);
                        return;
                    }
                    return;
                }
                notifyATLoadFail("", "Baidu: FullScreenVideoAd had been destroyed.");
                return;
            }
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        double d2;
        if (this.f9336j) {
            if (this.mBiddingListener != null) {
                ExpressInterstitialAd expressInterstitialAd = this.f9328b;
                if (expressInterstitialAd != null) {
                    String pecpm = expressInterstitialAd.getPECPM();
                    if (this.f9339m == null) {
                        this.f9339m = new HashMap();
                    }
                    this.f9339m.put(BaiduATConst.EN_P_KEY, pecpm);
                    String eCPMLevel = this.f9328b.getECPMLevel();
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
                    ATBiddingResult aTBiddingResultSuccess = ATBiddingResult.success(d2, System.currentTimeMillis() + "", new BaiduATBiddingNotice(this.f9328b), ATAdConst.CURRENCY.RMB_CENT);
                    aTBiddingResultSuccess.setExtra(pecpm);
                    this.mBiddingListener.onC2SBiddingResultWithCache(aTBiddingResultSuccess, null);
                    return;
                }
                notifyATLoadFail("", "Baidu: ExpressInterstitialAd had been destroyed.");
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
        this.f9329c = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9330d = ATInitMediation.getStringFromMap(map, "ad_place_id");
        this.f9332f = ATInitMediation.getStringFromMap(map, "unit_type");
        try {
            if (map.containsKey("bid_floor")) {
                this.f9333g = Double.parseDouble(map.get("bid_floor").toString());
            }
        } catch (Throwable unused) {
        }
        if (map2 != null) {
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS)) {
                    this.f9335i = Boolean.parseBoolean(map2.get(ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS).toString());
                }
            } catch (Exception unused2) {
            }
        }
        this.f9331e = ATInitMediation.getStringFromMap(map, "payload");
        this.f9338l = ATInitMediation.getIntFromMap(map, "ad_s_reqf_mode") == 2;
    }
}
