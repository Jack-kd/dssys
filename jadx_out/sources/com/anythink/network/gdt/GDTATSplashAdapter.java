package com.anythink.network.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.qq.e.ads.splash.SplashAD;
import com.qq.e.ads.splash.SplashADListener;
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
public class GDTATSplashAdapter extends CustomSplashAdapter implements SplashADListener {

    /* renamed from: b, reason: collision with root package name */
    private String f9749b;

    /* renamed from: c, reason: collision with root package name */
    private String f9750c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f9751d;

    /* renamed from: e, reason: collision with root package name */
    private SplashAD f9752e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f9753f;

    /* renamed from: g, reason: collision with root package name */
    String f9754g;

    /* renamed from: i, reason: collision with root package name */
    private Map<String, Object> f9756i;

    /* renamed from: a, reason: collision with root package name */
    final String f9748a = GDTATSplashAdapter.class.getSimpleName();

    /* renamed from: h, reason: collision with root package name */
    boolean f9755h = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9757a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9758b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9759c;

        public a(Context context, Map map, Map map2) {
            this.f9757a = context;
            this.f9758b = map;
            this.f9759c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            GDTATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            GDTATSplashAdapter.this.a(this.f9757a, this.f9758b, this.f9759c);
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f9761a;

        public b(ViewGroup viewGroup) {
            this.f9761a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (GDTATSplashAdapter.this.f9752e == null || this.f9761a == null) {
                    return;
                }
                GDTATSplashAdapter.this.f9752e.showAd(this.f9761a);
            } catch (Throwable unused) {
                if (((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener != null) {
                    ((ATBaseAdInternalAdapter) GDTATSplashAdapter.this).mDismissType = 99;
                    ((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "GDT Splash show with exception"));
                    ((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }
        }
    }

    public class c implements DownloadConfirmListener {
        public c() {
        }

        @Override // com.qq.e.comm.compliance.DownloadConfirmListener
        public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
            if (((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener != null) {
                GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
                gDTDownloadFirmInfo.appInfoUrl = str;
                gDTDownloadFirmInfo.scenes = i2;
                gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
                ((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener.onDownloadConfirm(activity, gDTDownloadFirmInfo);
            }
        }
    }

    public class d implements ADRewardListener {
        public d() {
        }

        @Override // com.qq.e.comm.listeners.ADRewardListener
        public void onReward(Map<String, Object> map) {
            String str = GDTATSplashAdapter.this.f9748a;
            Objects.toString(map);
            if (GDTATSplashAdapter.this.f9756i == null) {
                GDTATSplashAdapter.this.f9756i = new HashMap();
            }
            GDTATSplashAdapter.this.f9756i.put(ATAdConst.REWARD_EXTRA.REWARD_INFO, map);
            try {
                if (((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) GDTATSplashAdapter.this).mImpressionListener.onSplashAdReward();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return GDTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f9752e = null;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9750c = ATInitMediation.getStringFromMap(map, "unit_id");
        GDTATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, GDTATAdapter.class);
        map.put(3, GDTATInterstitialAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return GDTATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9756i;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return GDTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9750c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return GDTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        return this.f9751d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9749b) || TextUtils.isEmpty(this.f9750c)) {
            notifyATLoadFail("", "GTD appid or unitId is empty.");
        } else {
            GDTATInitManager.getInstance().initSDK(context, map, new a(context.getApplicationContext(), map, map2));
        }
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADClicked() {
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdClicked();
        }
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADDismissed() {
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdDismiss();
        }
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADExposure() {
        try {
            GDTATInitManager.getInstance().a(getShowId(), new WeakReference(this.f9752e));
        } catch (Throwable unused) {
        }
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShow();
        }
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADLoaded(long j2) {
        this.f9751d = true;
        SplashAD splashAD = this.f9752e;
        if (splashAD != null && this.f9753f) {
            splashAD.setDownloadConfirmListener(new c());
        }
        SplashAD splashAD2 = this.f9752e;
        if (splashAD2 != null) {
            this.f9756i = GDTATInitManager.getInstance().a(splashAD2.getExtraInfo(), this.f9756i);
        }
        try {
            SplashAD splashAD3 = this.f9752e;
            if (splashAD3 != null) {
                splashAD3.setRewardListener(new d());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!this.f9755h) {
            ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
                return;
            }
            return;
        }
        if (this.mBiddingListener != null) {
            SplashAD splashAD4 = this.f9752e;
            if (splashAD4 == null) {
                notifyATLoadFail("", "GDT: SplashAD had been destroy.");
                return;
            }
            double ecpm = splashAD4.getECPM();
            GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(this.f9752e);
            this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
        }
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADPresent() {
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADTick(long j2) {
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onNoAD(AdError adError) {
        if (adError == null) {
            notifyATLoadFail("", "GDT Splash show fail");
            CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
            if (customSplashEventListener != null) {
                customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "GDT Splash show fail"));
                this.mImpressionListener.onSplashAdDismiss();
                return;
            }
            return;
        }
        notifyATLoadFail(adError.getErrorCode() + "", adError.getErrorMsg());
        if (this.mImpressionListener != null) {
            Log.e(this.f9748a, "GDT Splash show fail:[errorCode:" + adError.getErrorCode() + ",errorMsg:" + adError.getErrorMsg() + "]");
            this.mDismissType = 99;
            CustomSplashEventListener customSplashEventListener2 = this.mImpressionListener;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(adError.getErrorCode());
            customSplashEventListener2.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, sb.toString(), adError.getErrorMsg()));
            this.mImpressionListener.onSplashAdDismiss();
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        if (viewGroup != null) {
            if (!this.f9751d || this.f9752e == null) {
                return;
            }
            viewGroup.post(new b(viewGroup));
            return;
        }
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            this.mDismissType = 99;
            customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "Container is null"));
            this.mImpressionListener.onSplashAdDismiss();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9755h = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        GDTATSplashAdapter gDTATSplashAdapter;
        GDTATInitManager.getInstance().setExtraUserData(map2);
        if (!TextUtils.isEmpty(this.f9754g) && !this.f9755h) {
            gDTATSplashAdapter = this;
            gDTATSplashAdapter.f9752e = new SplashAD(context, this.f9750c, gDTATSplashAdapter, this.mFetchAdTimeout, this.f9754g);
        } else {
            gDTATSplashAdapter = this;
            gDTATSplashAdapter.f9752e = new SplashAD(context, gDTATSplashAdapter.f9750c, this, gDTATSplashAdapter.mFetchAdTimeout);
            LoadAdParams loadAdParamsA = GDTATInitManager.getInstance().a(map);
            if (loadAdParamsA != null) {
                gDTATSplashAdapter.f9752e.setLoadAdParams(loadAdParamsA);
            }
        }
        gDTATSplashAdapter.f9752e.fetchAdOnly();
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9749b = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9750c = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9754g = ATInitMediation.getStringFromMap(map, "payload");
        this.f9751d = false;
        this.f9753f = ATInitMediation.getBooleanFromMap(map2, ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS, false);
    }
}
