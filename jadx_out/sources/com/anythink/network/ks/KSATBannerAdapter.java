package com.anythink.network.ks;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsBannerAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATBannerAdapter extends CustomBannerAdapter {

    /* renamed from: k, reason: collision with root package name */
    static final String f9788k = "KSATBannerAdapter";

    /* renamed from: a, reason: collision with root package name */
    long f9789a;

    /* renamed from: b, reason: collision with root package name */
    String f9790b;

    /* renamed from: c, reason: collision with root package name */
    int f9791c;

    /* renamed from: d, reason: collision with root package name */
    KsLoadManager.BannerAdListener f9792d;

    /* renamed from: e, reason: collision with root package name */
    KsBannerAd.BannerAdInteractionListener f9793e;

    /* renamed from: f, reason: collision with root package name */
    View f9794f;

    /* renamed from: g, reason: collision with root package name */
    boolean f9795g;

    /* renamed from: h, reason: collision with root package name */
    String f9796h;

    /* renamed from: i, reason: collision with root package name */
    double f9797i;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, Object> f9798j;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9799a;

        public a(Context context) {
            this.f9799a = context;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            KSATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            KSATBannerAdapter.this.a(this.f9799a);
        }
    }

    public class b implements KsLoadManager.BannerAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9801a;

        public class a implements KsBannerAd.BannerAdInteractionListener {
            public a() {
            }

            @Override // com.kwad.sdk.api.KsBannerAd.BannerAdInteractionListener
            public void onAdClicked() {
                CustomBannerEventListener customBannerEventListener = KSATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClicked();
                }
            }

            @Override // com.kwad.sdk.api.KsBannerAd.BannerAdInteractionListener
            public void onAdClose() {
                CustomBannerEventListener customBannerEventListener = KSATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClose();
                }
            }

            @Override // com.kwad.sdk.api.KsBannerAd.BannerAdInteractionListener
            public void onAdShow() {
                CustomBannerEventListener customBannerEventListener = KSATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdShow();
                }
            }

            @Override // com.kwad.sdk.api.KsBannerAd.BannerAdInteractionListener
            public void onAdShowError(int i2, String str) {
                Log.e(KSATBannerAdapter.f9788k, "onAdShowError: " + i2 + ", " + str);
            }
        }

        public b(Context context) {
            this.f9801a = context;
        }

        @Override // com.kwad.sdk.api.KsLoadManager.BannerAdListener
        public void onBannerAdLoad(KsBannerAd ksBannerAd) {
            double ecpm;
            if (ksBannerAd == null) {
                KSATBannerAdapter.this.notifyATLoadFail("", "Kuaishou banner ad is null");
                return;
            }
            KSATBannerAdapter.this.f9798j = KSATInitManager.getInstance().a(ksBannerAd.getMediaExtraInfo(), KSATBannerAdapter.this.f9798j);
            KsAdVideoPlayConfig ksAdVideoPlayConfigBuild = new KsAdVideoPlayConfig.Builder().build();
            KSATBannerAdapter.this.f9793e = new a();
            KSATBannerAdapter kSATBannerAdapter = KSATBannerAdapter.this;
            kSATBannerAdapter.f9794f = ksBannerAd.getView(this.f9801a, kSATBannerAdapter.f9793e, ksAdVideoPlayConfigBuild);
            KSATBannerAdapter kSATBannerAdapter2 = KSATBannerAdapter.this;
            if (kSATBannerAdapter2.f9794f == null) {
                kSATBannerAdapter2.notifyATLoadFail("", "Kuaishou: banner view is null");
                return;
            }
            KSATBannerAdapter.this.f9794f.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            KSATBannerAdapter kSATBannerAdapter3 = KSATBannerAdapter.this;
            if (!kSATBannerAdapter3.f9795g) {
                if (((ATBaseAdInternalAdapter) kSATBannerAdapter3).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (kSATBannerAdapter3.mBiddingListener != null) {
                try {
                    ecpm = ksBannerAd.getECPM();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ecpm = 0.0d;
                }
                if (ecpm <= 0.0d) {
                    KSATBannerAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(ksBannerAd);
                KSATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.kwad.sdk.api.KsLoadManager.BannerAdListener
        public void onError(int i2, String str) {
            KSATBannerAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return KSATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f9792d = null;
        this.f9793e = null;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f9794f;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        KSATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, 2);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, KSATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9798j;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return KSATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        try {
            return String.valueOf(this.f9789a);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return KSATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (!a(context, map, map2)) {
            notifyATLoadFail("", "kuaishou app_id or position_id is empty.");
        } else {
            Context applicationContext = context.getApplicationContext();
            KSATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9795g = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        KsScene.Builder builder = new KsScene.Builder(this.f9789a);
        if (this.f9791c > 0) {
            builder.width(this.f9791c);
        }
        if (!TextUtils.isEmpty(this.f9796h)) {
            builder.setBidResponseV2(this.f9796h);
        }
        KsScene ksSceneBuild = builder.build();
        this.f9792d = new b(context);
        KsAdSDK.getLoadManager().loadBannerAd(ksSceneBuild, this.f9792d);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0079 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(android.content.Context r6, java.util.Map<java.lang.String, java.lang.Object> r7, java.util.Map<java.lang.String, java.lang.Object> r8) {
        /*
            r5 = this;
            java.lang.String r0 = "app_id"
            java.lang.String r0 = com.anythink.core.api.ATInitMediation.getStringFromMap(r7, r0)
            java.lang.String r1 = "position_id"
            java.lang.String r1 = com.anythink.core.api.ATInitMediation.getStringFromMap(r7, r1)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r0 != 0) goto Lb5
            boolean r0 = android.text.TextUtils.isEmpty(r1)
            if (r0 == 0) goto L1b
            goto Lb5
        L1b:
            long r0 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L21
            r5.f9789a = r0     // Catch: java.lang.NumberFormatException -> L21
        L21:
            java.lang.String r0 = "key_width"
            int r8 = com.anythink.core.api.ATInitMediation.getIntFromMap(r8, r0, r2)
            r0 = 1
            if (r8 <= 0) goto L2d
            r5.f9791c = r8
            goto L8e
        L2d:
            java.lang.String r8 = "size"
            java.lang.String r1 = "320x50"
            java.lang.String r8 = com.anythink.core.api.ATInitMediation.getStringFromMap(r7, r8, r1)
            int r1 = r8.hashCode()
            r3 = -559800631(0xffffffffdea21ec9, float:-5.840998E18)
            r4 = 2
            if (r1 == r3) goto L6c
            r3 = 1505962662(0x59c32aa6, float:6.866814E15)
            if (r1 == r3) goto L63
            r2 = 1505962755(0x59c32b03, float:6.866864E15)
            if (r1 == r2) goto L59
            r2 = 1507809704(0x59df59a8, float:7.858437E15)
            if (r1 == r2) goto L4f
            goto L76
        L4f:
            java.lang.String r1 = "320x45"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L76
            r2 = 3
            goto L77
        L59:
            java.lang.String r1 = "300x75"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L76
            r2 = r0
            goto L77
        L63:
            java.lang.String r1 = "300x45"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L76
            goto L77
        L6c:
            java.lang.String r1 = "300x130"
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L76
            r2 = r4
            goto L77
        L76:
            r2 = -1
        L77:
            if (r2 == 0) goto L86
            if (r2 == r0) goto L86
            if (r2 == r4) goto L86
            r8 = 1134559232(0x43a00000, float:320.0)
            int r6 = com.anythink.core.api.ATSDKUtils.dip2px(r6, r8)
            r5.f9791c = r6
            goto L8e
        L86:
            r8 = 1133903872(0x43960000, float:300.0)
            int r6 = com.anythink.core.api.ATSDKUtils.dip2px(r6, r8)
            r5.f9791c = r6
        L8e:
            java.lang.String r6 = "anythink_gsp"
            boolean r8 = r7.containsKey(r6)
            if (r8 == 0) goto L9c
            double r1 = com.anythink.core.api.ATInitMediation.getDoubleFromMap(r7, r6)
            r5.f9797i = r1
        L9c:
            java.lang.String r6 = "payload"
            boolean r8 = r7.containsKey(r6)
            if (r8 == 0) goto Lb4
            java.lang.String r6 = com.anythink.core.api.ATInitMediation.getStringFromMap(r7, r6)
            com.anythink.network.ks.KSATInitManager r7 = com.anythink.network.ks.KSATInitManager.getInstance()
            double r1 = r5.f9797i
            java.lang.String r6 = r7.getPayloadInfo(r6, r1)
            r5.f9796h = r6
        Lb4:
            return r0
        Lb5:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.ks.KSATBannerAdapter.a(android.content.Context, java.util.Map, java.util.Map):boolean");
    }
}
