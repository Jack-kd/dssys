package com.anythink.network.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.ADRewardListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class GDTATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: m, reason: collision with root package name */
    private static final String f9725m = "GDTATRewardedVideoAdapter";

    /* renamed from: a, reason: collision with root package name */
    RewardVideoAD f9726a;

    /* renamed from: b, reason: collision with root package name */
    UnifiedInterstitialAD f9727b;

    /* renamed from: c, reason: collision with root package name */
    String f9728c;

    /* renamed from: d, reason: collision with root package name */
    String f9729d;

    /* renamed from: f, reason: collision with root package name */
    String f9731f;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, Object> f9732g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f9733h;

    /* renamed from: e, reason: collision with root package name */
    private int f9730e = 0;

    /* renamed from: i, reason: collision with root package name */
    private int f9734i = 1;

    /* renamed from: j, reason: collision with root package name */
    private boolean f9735j = false;

    /* renamed from: k, reason: collision with root package name */
    private int f9736k = 0;

    /* renamed from: l, reason: collision with root package name */
    private int f9737l = 0;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9738a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9739b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9740c;

        public a(Context context, Map map, Map map2) {
            this.f9738a = context;
            this.f9739b = map;
            this.f9740c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            GDTATRewardedVideoAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            GDTATRewardedVideoAdapter.this.a(this.f9738a, this.f9739b, this.f9740c);
        }
    }

    public class c implements UnifiedInterstitialADListener {

        public class a implements DownloadConfirmListener {
            public a() {
            }

            @Override // com.qq.e.comm.compliance.DownloadConfirmListener
            public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
                if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                    GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
                    gDTDownloadFirmInfo.appInfoUrl = str;
                    gDTDownloadFirmInfo.scenes = i2;
                    gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
                    ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onDownloadConfirm(activity, gDTDownloadFirmInfo);
                }
            }
        }

        public class b implements ADRewardListener {
            public b() {
            }

            @Override // com.qq.e.comm.listeners.ADRewardListener
            public void onReward(Map<String, Object> map) {
                if (GDTATRewardedVideoAdapter.this.f9732g == null) {
                    GDTATRewardedVideoAdapter.this.f9732g = new HashMap();
                }
                GDTATRewardedVideoAdapter.this.f9732g.put("gdt_trans_id", map.get("transId"));
                GDTATRewardedVideoAdapter.this.f9732g.put("third_trans_id", map.get("transId"));
                if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onReward();
                }
            }
        }

        public c() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClicked() {
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClosed() {
            GDTATInitManager.getInstance().b();
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADExposure() {
            try {
                GDTATInitManager.getInstance().a(GDTATRewardedVideoAdapter.this.getShowId(), new WeakReference(GDTATRewardedVideoAdapter.this.f9727b));
            } catch (Throwable unused) {
            }
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADLeftApplication() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADOpened() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADReceive() {
            UnifiedInterstitialAD unifiedInterstitialAD;
            try {
                Map<String, Object> extraInfo = GDTATRewardedVideoAdapter.this.f9727b.getExtraInfo();
                if (extraInfo != null) {
                    if (GDTATRewardedVideoAdapter.this.f9732g == null) {
                        GDTATRewardedVideoAdapter.this.f9732g = new HashMap();
                    }
                    GDTATInitManager.getInstance().a(extraInfo, GDTATRewardedVideoAdapter.this.f9732g);
                }
            } catch (Throwable unused) {
            }
            GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter = GDTATRewardedVideoAdapter.this;
            if (gDTATRewardedVideoAdapter.f9727b != null && gDTATRewardedVideoAdapter.f9733h) {
                GDTATRewardedVideoAdapter.this.f9727b.setDownloadConfirmListener(new a());
            }
            UnifiedInterstitialAD unifiedInterstitialAD2 = GDTATRewardedVideoAdapter.this.f9727b;
            if (unifiedInterstitialAD2 != null) {
                unifiedInterstitialAD2.setRewardListener(new b());
            }
            if (!GDTATRewardedVideoAdapter.this.f9735j) {
                if (((ATBaseAdInternalAdapter) GDTATRewardedVideoAdapter.this).mLoadListener instanceof ATCustomLoadListenerExt) {
                    ((ATCustomLoadListenerExt) ((ATBaseAdInternalAdapter) GDTATRewardedVideoAdapter.this).mLoadListener).onAdDataLoadedWithAds(new BaseAd[0]);
                    return;
                }
                return;
            }
            GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter2 = GDTATRewardedVideoAdapter.this;
            if (!(gDTATRewardedVideoAdapter2.mBiddingListener instanceof ATBiddingListenerExt) || (unifiedInterstitialAD = gDTATRewardedVideoAdapter2.f9727b) == null) {
                return;
            }
            double ecpm = unifiedInterstitialAD.getECPM();
            GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(GDTATRewardedVideoAdapter.this.f9727b);
            ((ATBiddingListenerExt) GDTATRewardedVideoAdapter.this.mBiddingListener).onC2SBiddingResultWithData(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onNoAD(AdError adError) {
            GDTATRewardedVideoAdapter.this.notifyATLoadFail(String.valueOf(adError.getErrorCode()), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderFail() {
            GDTATRewardedVideoAdapter.this.notifyATLoadFail("", "GDT: onRenderFail()");
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderSuccess() {
            if (!GDTATRewardedVideoAdapter.this.f9735j) {
                if (((ATBaseAdInternalAdapter) GDTATRewardedVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) GDTATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter = GDTATRewardedVideoAdapter.this;
            if (gDTATRewardedVideoAdapter.mBiddingListener != null) {
                UnifiedInterstitialAD unifiedInterstitialAD = gDTATRewardedVideoAdapter.f9727b;
                if (unifiedInterstitialAD == null) {
                    gDTATRewardedVideoAdapter.notifyATLoadFail("", "GDT : UnifiedInterstitialAD had been destroyed.");
                    return;
                }
                double ecpm = unifiedInterstitialAD.getECPM();
                GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(GDTATRewardedVideoAdapter.this.f9727b);
                GDTATRewardedVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onVideoCached() {
        }
    }

    public class d implements UnifiedInterstitialMediaListener {
        public d() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoComplete() {
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoError(AdError adError) {
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed(adError.getErrorCode() + "", adError.getErrorMsg());
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoInit() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoLoading() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPageClose() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPageOpen() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPause() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoReady(long j2) {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoStart() {
        }
    }

    public static /* synthetic */ int W(GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter) {
        int i2 = gDTATRewardedVideoAdapter.f9736k;
        gDTATRewardedVideoAdapter.f9736k = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int g(GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter) {
        int i2 = gDTATRewardedVideoAdapter.f9737l;
        gDTATRewardedVideoAdapter.f9737l = i2 + 1;
        return i2;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return GDTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        if (this.f9726a != null) {
            this.f9726a = null;
        }
        if (this.f9727b != null) {
            this.f9727b = null;
        }
        this.f9736k = 0;
        this.f9737l = 0;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9729d = ATInitMediation.getStringFromMap(map, "unit_id");
        GDTATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(4, GDTATSplashAdapter.class);
        map.put(3, GDTATInterstitialAdapter.class);
        map.put(0, GDTATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return GDTATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9732g;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return GDTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9729d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return GDTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        RewardVideoAD rewardVideoAD = this.f9726a;
        if (rewardVideoAD != null) {
            return rewardVideoAD.isValid();
        }
        UnifiedInterstitialAD unifiedInterstitialAD = this.f9727b;
        if (unifiedInterstitialAD != null) {
            return unifiedInterstitialAD.isValid();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9728c) || TextUtils.isEmpty(this.f9729d)) {
            notifyATLoadFail("", "GTD appid or unitId is empty.");
        } else {
            GDTATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new a(context, map, map2));
        }
    }

    public void setDismissType(int i2) {
        this.mDismissType = i2;
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        if (this.f9726a != null) {
            try {
                GDTATInitManager.getInstance().a(this.f9729d, this.f9726a);
                if (activity != null) {
                    this.f9726a.showAD(activity);
                } else {
                    this.f9726a.showAD();
                }
            } catch (Throwable th) {
                GDTATInitManager.getInstance().c();
                th.printStackTrace();
            }
        }
        if (this.f9727b != null) {
            try {
                GDTATInitManager.getInstance().a(this.f9729d, this.f9727b);
                this.f9727b.showFullScreenAD(activity);
            } catch (Throwable th2) {
                GDTATInitManager.getInstance().b();
                th2.printStackTrace();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9735j = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    private void b(Context context, Map<String, Object> map) {
        b bVar = new b();
        boolean zIsPlayMute = GDTATInitManager.getInstance().isPlayMute(this.f9730e);
        if (TextUtils.isEmpty(this.f9731f) || this.f9735j) {
            this.f9726a = new RewardVideoAD(context.getApplicationContext(), this.f9729d, bVar, !zIsPlayMute);
            LoadAdParams loadAdParamsA = GDTATInitManager.getInstance().a(map);
            if (loadAdParamsA != null) {
                this.f9726a.setLoadAdParams(loadAdParamsA);
            }
        } else {
            this.f9726a = new RewardVideoAD(context.getApplicationContext(), this.f9729d, bVar, !zIsPlayMute, this.f9731f);
        }
        try {
            ServerSideVerificationOptions.Builder builder = new ServerSideVerificationOptions.Builder();
            builder.setUserId(this.mUserId);
            if (!TextUtils.isEmpty(this.mUserData) && this.mUserData.contains(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME)) {
                this.mUserData = this.mUserData.replace(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME, this.f9729d);
            }
            builder.setCustomData(this.mUserData);
            ServerSideVerificationOptions serverSideVerificationOptionsBuild = builder.build();
            if (serverSideVerificationOptionsBuild != null && ATSDK.isNetworkLogDebug()) {
                serverSideVerificationOptionsBuild.getUserId();
                serverSideVerificationOptionsBuild.getCustomData();
            }
            this.f9726a.setServerSideVerificationOptions(serverSideVerificationOptionsBuild);
        } catch (Throwable unused) {
        }
        this.f9736k = 0;
        this.f9737l = 0;
        this.f9726a.loadAD();
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9728c = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9729d = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9731f = ATInitMediation.getStringFromMap(map, "payload");
        this.f9730e = ATInitMediation.getIntFromMap(map, "video_muted", 0);
        this.f9734i = ATInitMediation.getIntFromMap(map, "unit_type", 1);
        this.f9733h = ATInitMediation.getBooleanFromMap(map2, ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS, false);
    }

    public class b implements RewardVideoADListener {

        public class a implements DownloadConfirmListener {
            public a() {
            }

            @Override // com.qq.e.comm.compliance.DownloadConfirmListener
            public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
                if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                    GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
                    gDTDownloadFirmInfo.appInfoUrl = str;
                    gDTDownloadFirmInfo.scenes = i2;
                    gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
                    ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onDownloadConfirm(activity, gDTDownloadFirmInfo);
                }
            }
        }

        public b() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClick() {
            String unused = GDTATRewardedVideoAdapter.f9725m;
            int unused2 = GDTATRewardedVideoAdapter.this.f9736k;
            if (GDTATRewardedVideoAdapter.this.f9736k <= 1) {
                if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
                }
            } else if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdAgainPlayClicked();
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClose() {
            GDTATInitManager.getInstance().c();
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADExpose() {
            try {
                GDTATInitManager.getInstance().a(GDTATRewardedVideoAdapter.this.getShowId(), new WeakReference(GDTATRewardedVideoAdapter.this.f9726a));
            } catch (Throwable unused) {
            }
            GDTATRewardedVideoAdapter.W(GDTATRewardedVideoAdapter.this);
            String unused2 = GDTATRewardedVideoAdapter.f9725m;
            int unused3 = GDTATRewardedVideoAdapter.this.f9736k;
            if (GDTATRewardedVideoAdapter.this.f9736k <= 1) {
                if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
                }
            } else if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdAgainPlayStart();
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADLoad() {
            RewardVideoAD rewardVideoAD;
            RewardVideoAD rewardVideoAD2 = GDTATRewardedVideoAdapter.this.f9726a;
            if (rewardVideoAD2 != null) {
                GDTATRewardedVideoAdapter.this.f9732g = GDTATInitManager.getInstance().a(rewardVideoAD2.getExtraInfo(), GDTATRewardedVideoAdapter.this.f9732g);
            }
            GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter = GDTATRewardedVideoAdapter.this;
            if (gDTATRewardedVideoAdapter.f9726a != null && gDTATRewardedVideoAdapter.f9733h) {
                GDTATRewardedVideoAdapter.this.f9726a.setDownloadConfirmListener(new a());
            }
            if (!GDTATRewardedVideoAdapter.this.f9735j) {
                if (((ATBaseAdInternalAdapter) GDTATRewardedVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) GDTATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            GDTATRewardedVideoAdapter gDTATRewardedVideoAdapter2 = GDTATRewardedVideoAdapter.this;
            if (gDTATRewardedVideoAdapter2.mBiddingListener == null || (rewardVideoAD = gDTATRewardedVideoAdapter2.f9726a) == null) {
                return;
            }
            double ecpm = rewardVideoAD.getECPM();
            GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(GDTATRewardedVideoAdapter.this.f9726a);
            GDTATRewardedVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADShow() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onError(AdError adError) {
            GDTATRewardedVideoAdapter.this.notifyATLoadFail(adError.getErrorCode() + "", adError.getErrorMsg());
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed(adError.getErrorCode() + "", adError.getErrorMsg());
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onReward(Map<String, Object> map) {
            if (GDTATRewardedVideoAdapter.this.f9732g == null) {
                GDTATRewardedVideoAdapter.this.f9732g = new HashMap();
            }
            GDTATRewardedVideoAdapter.this.f9732g.put("gdt_trans_id", map.get("transId"));
            GDTATRewardedVideoAdapter.this.f9732g.put("third_trans_id", map.get("transId"));
            GDTATRewardedVideoAdapter.g(GDTATRewardedVideoAdapter.this);
            String unused = GDTATRewardedVideoAdapter.f9725m;
            int unused2 = GDTATRewardedVideoAdapter.this.f9737l;
            if (GDTATRewardedVideoAdapter.this.f9737l <= 1) {
                if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onReward();
                }
            } else if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onAgainReward();
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoCached() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoComplete() {
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        public void onReward() {
            if (((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) GDTATRewardedVideoAdapter.this).mImpressionListener.onReward();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        GDTATInitManager.getInstance().setExtraUserData(map2);
        if (this.f9734i == 2) {
            a(context, map);
        } else {
            b(context, map);
        }
    }

    private void a(Context context, Map<String, Object> map) {
        if (!(context instanceof Activity)) {
            notifyATLoadFail("", "GDT UnifiedInterstitial's context must be activity.");
            return;
        }
        c cVar = new c();
        if (!TextUtils.isEmpty(this.f9731f) && !this.f9735j) {
            this.f9727b = new UnifiedInterstitialAD((Activity) context, this.f9729d, cVar, null, this.f9731f);
        } else {
            this.f9727b = new UnifiedInterstitialAD((Activity) context, this.f9729d, cVar);
            LoadAdParams loadAdParamsA = GDTATInitManager.getInstance().a(map);
            if (loadAdParamsA != null) {
                this.f9727b.setLoadAdParams(loadAdParamsA);
            }
        }
        a(this.f9727b, map);
        ServerSideVerificationOptions.Builder builder = new ServerSideVerificationOptions.Builder();
        if (!TextUtils.isEmpty(this.mUserId)) {
            builder.setUserId(this.mUserId);
        }
        if (!TextUtils.isEmpty(this.mUserData)) {
            builder.setCustomData(this.mUserData);
        }
        ServerSideVerificationOptions serverSideVerificationOptionsBuild = builder.build();
        if (serverSideVerificationOptionsBuild != null && ATSDK.isNetworkLogDebug()) {
            serverSideVerificationOptionsBuild.getUserId();
            serverSideVerificationOptionsBuild.getCustomData();
        }
        this.f9727b.setServerSideVerificationOptions(serverSideVerificationOptionsBuild);
        this.f9727b.setMediaListener(new d());
        this.f9727b.loadFullScreenAD();
    }

    private void a(UnifiedInterstitialAD unifiedInterstitialAD, Map<String, Object> map) {
        int i2 = map.containsKey("video_muted") ? Integer.parseInt(map.get("video_muted").toString()) : 0;
        int i3 = map.containsKey("video_autoplay") ? Integer.parseInt(map.get("video_autoplay").toString()) : 1;
        int i4 = map.containsKey("video_duration") ? Integer.parseInt(map.get("video_duration").toString()) : -1;
        boolean zIsPlayMute = GDTATInitManager.getInstance().isPlayMute(i2);
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.setVideoOption(new VideoOption.Builder().setAutoPlayMuted(zIsPlayMute).setDetailPageMuted(zIsPlayMute).setAutoPlayPolicy(i3).build());
            if (i4 != -1) {
                unifiedInterstitialAD.setMaxVideoDuration(i4);
            }
        }
    }
}
