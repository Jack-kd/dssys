package com.anythink.network.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class GDTATInterstitialAdapter extends CustomInterstitialAdapter implements UnifiedInterstitialMediaListener {
    public static String TAG = "GDTATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    UnifiedInterstitialAD f9681a;

    /* renamed from: b, reason: collision with root package name */
    String f9682b;

    /* renamed from: c, reason: collision with root package name */
    String f9683c;

    /* renamed from: d, reason: collision with root package name */
    String f9684d;

    /* renamed from: f, reason: collision with root package name */
    String f9686f;

    /* renamed from: g, reason: collision with root package name */
    boolean f9687g;

    /* renamed from: h, reason: collision with root package name */
    boolean f9688h;

    /* renamed from: i, reason: collision with root package name */
    private Map<String, Object> f9689i;

    /* renamed from: e, reason: collision with root package name */
    int f9685e = 0;

    /* renamed from: j, reason: collision with root package name */
    private boolean f9690j = false;

    public class a implements UnifiedInterstitialADListener {

        /* renamed from: com.anythink.network.gdt.GDTATInterstitialAdapter$a$a, reason: collision with other inner class name */
        public class C0102a implements DownloadConfirmListener {
            public C0102a() {
            }

            @Override // com.qq.e.comm.compliance.DownloadConfirmListener
            public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
                if (((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener != null) {
                    GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
                    gDTDownloadFirmInfo.appInfoUrl = str;
                    gDTDownloadFirmInfo.scenes = i2;
                    gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
                    ((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener.onDownloadConfirm(activity, gDTDownloadFirmInfo);
                }
            }
        }

        public class b implements ADRewardListener {
            public b() {
            }

            @Override // com.qq.e.comm.listeners.ADRewardListener
            public void onReward(Map<String, Object> map) {
                String str = GDTATInterstitialAdapter.TAG;
                Objects.toString(map);
                if (GDTATInterstitialAdapter.this.f9689i == null) {
                    GDTATInterstitialAdapter.this.f9689i = new HashMap();
                }
                GDTATInterstitialAdapter.this.f9689i.put(ATAdConst.REWARD_EXTRA.REWARD_INFO, map);
                try {
                    if (((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener != null) {
                        ((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener.onInterstitialAdReward();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public a() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClicked() {
            String str = GDTATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClosed() {
            String str = GDTATInterstitialAdapter.TAG;
            GDTATInitManager.getInstance().b();
            GDTATInterstitialAdapter.this.a();
            UnifiedInterstitialAD unifiedInterstitialAD = GDTATInterstitialAdapter.this.f9681a;
            if (unifiedInterstitialAD != null) {
                unifiedInterstitialAD.destroy();
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADExposure() {
            String str = GDTATInterstitialAdapter.TAG;
            try {
                GDTATInitManager.getInstance().a(GDTATInterstitialAdapter.this.getShowId(), new WeakReference(GDTATInterstitialAdapter.this.f9681a));
            } catch (Throwable unused) {
            }
            if (((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) GDTATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
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
            GDTATInterstitialAdapter gDTATInterstitialAdapter = GDTATInterstitialAdapter.this;
            UnifiedInterstitialAD unifiedInterstitialAD2 = gDTATInterstitialAdapter.f9681a;
            if (unifiedInterstitialAD2 != null && gDTATInterstitialAdapter.f9687g) {
                unifiedInterstitialAD2.setDownloadConfirmListener(new C0102a());
            }
            GDTATInterstitialAdapter gDTATInterstitialAdapter2 = GDTATInterstitialAdapter.this;
            if (gDTATInterstitialAdapter2.f9681a != null) {
                gDTATInterstitialAdapter2.b();
            }
            try {
                UnifiedInterstitialAD unifiedInterstitialAD3 = GDTATInterstitialAdapter.this.f9681a;
                if (unifiedInterstitialAD3 != null) {
                    unifiedInterstitialAD3.setRewardListener(new b());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            GDTATInterstitialAdapter gDTATInterstitialAdapter3 = GDTATInterstitialAdapter.this;
            if (!gDTATInterstitialAdapter3.f9688h) {
                if (((ATBaseAdInternalAdapter) gDTATInterstitialAdapter3).mLoadListener instanceof ATCustomLoadListenerExt) {
                    ((ATCustomLoadListenerExt) ((ATBaseAdInternalAdapter) GDTATInterstitialAdapter.this).mLoadListener).onAdDataLoadedWithAds(new BaseAd[0]);
                }
            } else {
                if (!(gDTATInterstitialAdapter3.mBiddingListener instanceof ATBiddingListenerExt) || (unifiedInterstitialAD = gDTATInterstitialAdapter3.f9681a) == null) {
                    return;
                }
                double ecpm = unifiedInterstitialAD.getECPM();
                GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(GDTATInterstitialAdapter.this.f9681a);
                ((ATBiddingListenerExt) GDTATInterstitialAdapter.this.mBiddingListener).onC2SBiddingResultWithData(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onNoAD(AdError adError) {
            GDTATInterstitialAdapter.this.notifyATLoadFail(String.valueOf(adError.getErrorCode()), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderFail() {
            GDTATInterstitialAdapter.this.notifyATLoadFail("", "GDT: onRenderFail()");
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderSuccess() {
            GDTATInterstitialAdapter gDTATInterstitialAdapter = GDTATInterstitialAdapter.this;
            if (gDTATInterstitialAdapter.f9681a == null) {
                gDTATInterstitialAdapter.notifyATLoadFail("", "onRenderSuccess mUnifiedInterstitialAd is null");
                return;
            }
            gDTATInterstitialAdapter.b();
            GDTATInterstitialAdapter gDTATInterstitialAdapter2 = GDTATInterstitialAdapter.this;
            if (!gDTATInterstitialAdapter2.f9688h) {
                if (((ATBaseAdInternalAdapter) gDTATInterstitialAdapter2).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) GDTATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            } else if (gDTATInterstitialAdapter2.mBiddingListener != null) {
                double ecpm = gDTATInterstitialAdapter2.f9681a.getECPM();
                GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(GDTATInterstitialAdapter.this.f9681a);
                GDTATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onVideoCached() {
        }
    }

    public class b implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9694a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9695b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9696c;

        public b(Context context, Map map, Map map2) {
            this.f9694a = context;
            this.f9695b = map;
            this.f9696c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            GDTATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            GDTATInterstitialAdapter.this.a(this.f9694a, this.f9695b, this.f9696c);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return GDTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public String closeAd() {
        try {
            UnifiedInterstitialAD unifiedInterstitialAD = this.f9681a;
            if (unifiedInterstitialAD == null) {
                return "mUnifiedInterstitialAd is null";
            }
            unifiedInterstitialAD.close();
            a();
            return "";
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f9681a;
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.setMediaListener(null);
            this.f9681a.destroy();
            this.f9681a = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9683c = ATInitMediation.getStringFromMap(map, "unit_id");
        GDTATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, GDTATAdapter.class);
        map.put(4, GDTATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return GDTATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9689i;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return GDTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9683c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return GDTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f9681a;
        if (unifiedInterstitialAD != null) {
            return unifiedInterstitialAD.isValid();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9682b) || TextUtils.isEmpty(this.f9683c)) {
            notifyATLoadFail("", "GDT appid or unitId is empty.");
        } else {
            GDTATInitManager.getInstance().initSDK(context, map, new b(context, map, map2));
        }
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoComplete() {
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdVideoEnd();
        }
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoError(AdError adError) {
        GDTATInitManager.getInstance().b();
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdVideoError(adError.getErrorCode() + "", adError.getErrorMsg());
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
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdVideoStart();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f9681a;
        if (unifiedInterstitialAD != null) {
            this.f9690j = false;
            unifiedInterstitialAD.setMediaListener(this);
            if (TextUtils.equals("1", this.f9686f)) {
                if (activity == null) {
                    Log.e(TAG, "Gdt (Full Screen) show fail: context need be Activity");
                    return;
                } else {
                    GDTATInitManager.getInstance().a(this.f9683c, this.f9681a);
                    this.f9681a.showFullScreenAD(activity);
                    return;
                }
            }
            GDTATInitManager.getInstance().a(this.f9683c, this.f9681a);
            if (activity != null) {
                this.f9681a.show(activity);
            } else {
                this.f9681a.show();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9688h = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f9681a;
        if (unifiedInterstitialAD != null) {
            this.f9689i = GDTATInitManager.getInstance().a(unifiedInterstitialAD.getExtraInfo(), this.f9689i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9690j = false;
        this.f9686f = ATInitMediation.getStringFromMap(map, "is_fullscreen", "0");
        this.f9687g = ATInitMediation.getBooleanFromMap(map2, ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS, false);
        GDTATInitManager.getInstance().setExtraUserData(map2);
        a(context, map);
    }

    private void b(Context context, Map<String, Object> map) {
        int intFromMap = ATInitMediation.getIntFromMap(map, "video_muted", 0);
        int intFromMap2 = ATInitMediation.getIntFromMap(map, "video_autoplay", 1);
        int intFromMap3 = ATInitMediation.getIntFromMap(map, "video_duration", -1);
        if (this.f9681a != null) {
            boolean zIsPlayMute = GDTATInitManager.getInstance().isPlayMute(intFromMap);
            this.f9681a.setVideoOption(new VideoOption.Builder().setAutoPlayMuted(zIsPlayMute).setDetailPageMuted(zIsPlayMute).setAutoPlayPolicy(intFromMap2).build());
            if (intFromMap3 != -1) {
                this.f9681a.setMaxVideoDuration(intFromMap3);
            }
        }
    }

    private void a(Context context, Map<String, Object> map) {
        if (!(context instanceof Activity)) {
            notifyATLoadFail("", "GDT UnifiedInterstitial's context must be activity.");
            return;
        }
        a aVar = new a();
        if (!TextUtils.isEmpty(this.f9684d) && !this.f9688h) {
            this.f9681a = new UnifiedInterstitialAD((Activity) context, this.f9683c, aVar, null, this.f9684d);
        } else {
            this.f9681a = new UnifiedInterstitialAD((Activity) context, this.f9683c, aVar);
            LoadAdParams loadAdParamsA = GDTATInitManager.getInstance().a(map);
            if (loadAdParamsA != null) {
                this.f9681a.setLoadAdParams(loadAdParamsA);
            }
        }
        b(context, map);
        if (TextUtils.equals("1", this.f9686f)) {
            this.f9681a.loadFullScreenAD();
        } else {
            this.f9681a.loadAD();
        }
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9682b = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9683c = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9685e = ATInitMediation.getIntFromMap(map, "unit_version");
        this.f9684d = ATInitMediation.getStringFromMap(map, "payload");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f9690j) {
            return;
        }
        this.f9690j = true;
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdClose();
        }
    }
}
