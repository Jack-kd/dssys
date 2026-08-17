package com.anythink.network.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class GDTATBannerAdapter extends CustomBannerAdapter {

    /* renamed from: b, reason: collision with root package name */
    String f9642b;

    /* renamed from: c, reason: collision with root package name */
    String f9643c;

    /* renamed from: d, reason: collision with root package name */
    String f9644d;

    /* renamed from: e, reason: collision with root package name */
    UnifiedBannerView f9645e;

    /* renamed from: g, reason: collision with root package name */
    int f9647g;

    /* renamed from: h, reason: collision with root package name */
    boolean f9648h;

    /* renamed from: i, reason: collision with root package name */
    boolean f9649i;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, Object> f9650j;

    /* renamed from: a, reason: collision with root package name */
    private final String f9641a = GDTATBannerAdapter.class.getSimpleName();

    /* renamed from: f, reason: collision with root package name */
    int f9646f = 0;

    /* renamed from: k, reason: collision with root package name */
    DownloadConfirmListener f9651k = new a();

    public class a implements DownloadConfirmListener {
        public a() {
        }

        @Override // com.qq.e.comm.compliance.DownloadConfirmListener
        public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
            if (GDTATBannerAdapter.this.mImpressionEventListener != null) {
                GDTDownloadFirmInfo gDTDownloadFirmInfo = new GDTDownloadFirmInfo();
                gDTDownloadFirmInfo.appInfoUrl = str;
                gDTDownloadFirmInfo.scenes = i2;
                gDTDownloadFirmInfo.confirmCallBack = downloadConfirmCallBack;
                GDTATBannerAdapter.this.mImpressionEventListener.onDownloadConfirm(activity, gDTDownloadFirmInfo);
            }
        }
    }

    public class b implements UnifiedBannerADListener {
        public b() {
        }

        @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
        public void onADClicked() {
            CustomBannerEventListener customBannerEventListener = GDTATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClicked();
            }
        }

        @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
        public void onADClosed() {
            CustomBannerEventListener customBannerEventListener = GDTATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClose();
            }
        }

        @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
        public void onADExposure() {
            try {
                GDTATInitManager.getInstance().a(GDTATBannerAdapter.this.getShowId(), new WeakReference(GDTATBannerAdapter.this.f9645e));
            } catch (Throwable unused) {
            }
            CustomBannerEventListener customBannerEventListener = GDTATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdShow();
            }
        }

        @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
        public void onADLeftApplication() {
        }

        @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
        public void onADReceive() {
            UnifiedBannerView unifiedBannerView;
            GDTATBannerAdapter gDTATBannerAdapter = GDTATBannerAdapter.this;
            if (gDTATBannerAdapter.f9648h && (unifiedBannerView = gDTATBannerAdapter.f9645e) != null) {
                unifiedBannerView.setDownloadConfirmListener(gDTATBannerAdapter.f9651k);
            }
            GDTATBannerAdapter gDTATBannerAdapter2 = GDTATBannerAdapter.this;
            if (gDTATBannerAdapter2.f9645e != null) {
                gDTATBannerAdapter2.f9650j = GDTATInitManager.getInstance().a(GDTATBannerAdapter.this.f9645e.getExtraInfo(), GDTATBannerAdapter.this.f9650j);
            }
            GDTATBannerAdapter gDTATBannerAdapter3 = GDTATBannerAdapter.this;
            if (!gDTATBannerAdapter3.f9649i) {
                if (((ATBaseAdInternalAdapter) gDTATBannerAdapter3).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) GDTATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            } else if (gDTATBannerAdapter3.mBiddingListener != null) {
                UnifiedBannerView unifiedBannerView2 = gDTATBannerAdapter3.f9645e;
                if (unifiedBannerView2 == null) {
                    gDTATBannerAdapter3.notifyATLoadFail("", "GDT: Offer had been destroy.");
                    return;
                }
                double ecpm = unifiedBannerView2.getECPM();
                GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(GDTATBannerAdapter.this.f9645e);
                GDTATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
        public void onNoAD(AdError adError) {
            GDTATBannerAdapter gDTATBannerAdapter = GDTATBannerAdapter.this;
            gDTATBannerAdapter.f9645e = null;
            gDTATBannerAdapter.notifyATLoadFail(String.valueOf(adError.getErrorCode()), adError.getErrorMsg());
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9654a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9655b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9656c;

        public class a implements MediationInitCallback {
            public a() {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                GDTATBannerAdapter.this.notifyATLoadFail("", str);
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                c cVar = c.this;
                GDTATBannerAdapter.this.a((Activity) cVar.f9654a, cVar.f9655b, cVar.f9656c);
            }
        }

        public c(Context context, Map map, Map map2) {
            this.f9654a = context;
            this.f9655b = map;
            this.f9656c = map2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GDTATInitManager.getInstance().initSDK(this.f9654a, this.f9655b, new a());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return GDTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        UnifiedBannerView unifiedBannerView = this.f9645e;
        if (unifiedBannerView != null) {
            unifiedBannerView.destroy();
            this.f9645e = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f9645e;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9643c = ATInitMediation.getStringFromMap(map, "unit_id");
        GDTATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, GDTATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return GDTATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9650j;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return GDTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9643c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return GDTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9642b) || TextUtils.isEmpty(this.f9643c)) {
            notifyATLoadFail("", "GTD appid or unitId is empty.");
        } else if (context instanceof Activity) {
            runOnNetworkRequestThread(new c(context, map, map2));
        } else {
            notifyATLoadFail("", "Context must be activity.");
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9649i = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, Map<String, Object> map, Map<String, Object> map2) {
        UnifiedBannerView unifiedBannerView;
        GDTATInitManager.getInstance().setExtraUserData(map2);
        b bVar = new b();
        if (!TextUtils.isEmpty(this.f9644d) && !this.f9649i) {
            unifiedBannerView = new UnifiedBannerView(activity, this.f9643c, bVar, null, this.f9644d);
        } else {
            unifiedBannerView = new UnifiedBannerView(activity, this.f9643c, bVar);
            LoadAdParams loadAdParamsA = GDTATInitManager.getInstance().a(map);
            if (loadAdParamsA != null) {
                unifiedBannerView.setLoadAdParams(loadAdParamsA);
            }
        }
        int i2 = this.f9647g;
        if (i2 > 0) {
            unifiedBannerView.setRefresh(i2);
        } else {
            unifiedBannerView.setRefresh(0);
        }
        int intFromMap = -2;
        if (map2 != null) {
            try {
                intFromMap = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_WIDTH, -1) : -1;
                if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                    intFromMap = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_HEIGHT, -2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        unifiedBannerView.setLayoutParams(new FrameLayout.LayoutParams(intFromMap, intFromMap));
        this.f9645e = unifiedBannerView;
        unifiedBannerView.loadAD();
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9642b = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9643c = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9646f = ATInitMediation.getIntFromMap(map, "unit_version");
        this.f9644d = ATInitMediation.getStringFromMap(map, "payload");
        this.f9648h = ATInitMediation.getBooleanFromMap(map2, ATAdConst.KEY.AD_CLICK_CONFIRM_STATUS, false);
        this.f9647g = 0;
        try {
            if (map.containsKey("nw_rft")) {
                this.f9647g = (int) (ATInitMediation.getIntFromMap(map, "nw_rft") / 1000.0f);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
