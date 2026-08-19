package com.anythink.network.ks;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.core.common.k;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.api.KsFeedAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.model.NativeAdExtraData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATAdapter extends CustomNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    long f9767a;

    /* renamed from: e, reason: collision with root package name */
    String f9771e;

    /* renamed from: f, reason: collision with root package name */
    Context f9772f;

    /* renamed from: g, reason: collision with root package name */
    boolean f9773g;

    /* renamed from: h, reason: collision with root package name */
    double f9774h;

    /* renamed from: b, reason: collision with root package name */
    String f9768b = "0";

    /* renamed from: c, reason: collision with root package name */
    boolean f9769c = false;

    /* renamed from: d, reason: collision with root package name */
    String f9770d = "0";

    /* renamed from: i, reason: collision with root package name */
    boolean f9775i = false;

    /* renamed from: j, reason: collision with root package name */
    boolean f9776j = false;

    /* renamed from: k, reason: collision with root package name */
    int f9777k = -1;

    /* renamed from: l, reason: collision with root package name */
    int f9778l = -1;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f9779a;

        public a(Map map) {
            this.f9779a = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            KSATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            KSATAdapter kSATAdapter = KSATAdapter.this;
            kSATAdapter.a(kSATAdapter.f9772f, this.f9779a, ((ATBaseAdInternalAdapter) kSATAdapter).mRequestNum);
        }
    }

    public class b implements KsLoadManager.DrawAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9781a;

        public b(Context context) {
            this.f9781a = context;
        }

        @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
        public void onDrawAdLoad(List<KsDrawAd> list) {
            double ecpm;
            if (list == null || list.isEmpty()) {
                KSATAdapter.this.notifyATLoadFail("", "kuaishou no fill");
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<KsDrawAd> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new KSATDrawAd(this.f9781a, it.next(), KSATAdapter.this.f9769c));
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
            KSATAdapter kSATAdapter = KSATAdapter.this;
            if (!kSATAdapter.f9773g) {
                if (((ATBaseAdInternalAdapter) kSATAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            KsDrawAd ksDrawAd = list.get(0);
            if (KSATAdapter.this.mBiddingListener != null) {
                try {
                    ecpm = ksDrawAd.getECPM();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ecpm = 0.0d;
                }
                if (ecpm <= 0.0d) {
                    KSATAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(ksDrawAd);
                KSATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }

        @Override // com.kwad.sdk.api.KsLoadManager.DrawAdListener
        public void onError(int i2, String str) {
            KSATAdapter.this.notifyATLoadFail(i2 + "", str);
        }
    }

    public class c implements KsLoadManager.FeedAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9783a;

        public c(Context context) {
            this.f9783a = context;
        }

        @Override // com.kwad.sdk.api.KsLoadManager.FeedAdListener
        public void onError(int i2, String str) {
            KSATAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.FeedAdListener
        public void onFeedAdLoad(List<KsFeedAd> list) {
            double ecpm;
            if (list == null || list.size() == 0) {
                KSATAdapter.this.notifyATLoadFail("", "kuaishou no fill");
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<KsFeedAd> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new KSATFeedAd(this.f9783a, it.next(), KSATAdapter.this.f9769c));
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
            KSATAdapter kSATAdapter = KSATAdapter.this;
            if (!kSATAdapter.f9773g) {
                if (((ATBaseAdInternalAdapter) kSATAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            KsFeedAd ksFeedAd = list.get(0);
            if (KSATAdapter.this.mBiddingListener != null) {
                try {
                    ecpm = ksFeedAd.getECPM();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ecpm = 0.0d;
                }
                if (ecpm <= 0.0d) {
                    KSATAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(ksFeedAd);
                KSATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }
    }

    public class d implements KsLoadManager.NativeAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9785a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9786b;

        public d(Context context, Map map) {
            this.f9785a = context;
            this.f9786b = map;
        }

        @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
        public void onError(int i2, String str) {
            KSATAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.NativeAdListener
        public void onNativeAdLoad(List<KsNativeAd> list) {
            double ecpm;
            if (list == null || list.size() == 0) {
                KSATAdapter.this.notifyATLoadFail("", "kuaishou no fill");
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<KsNativeAd> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new KSATNativeAd(this.f9785a, it.next(), KSATAdapter.this.f9769c, this.f9786b));
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
            KSATAdapter kSATAdapter = KSATAdapter.this;
            if (!kSATAdapter.f9773g) {
                if (((ATBaseAdInternalAdapter) kSATAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            KsNativeAd ksNativeAd = list.get(0);
            if (KSATAdapter.this.mBiddingListener != null) {
                try {
                    ecpm = ksNativeAd.getECPM();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ecpm = 0.0d;
                }
                if (ecpm <= 0.0d) {
                    KSATAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(ksNativeAd);
                KSATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return KSATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9767a = ATInitMediation.getLongFromMap(map, "position_id");
        KSATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, 0);
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return KSATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        try {
            return String.valueOf(this.f9767a);
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
        if (!a(map, map2)) {
            notifyATLoadFail("", "kuaishou app_id or position_id is empty.");
        } else {
            this.f9772f = context.getApplicationContext();
            KSATInitManager.getInstance().initSDK(context, map, new a(map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9773g = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, int i2) {
        int i3;
        Object obj = map.containsKey(ATAdConst.KEY.AD_WIDTH) ? map.get(ATAdConst.KEY.AD_WIDTH) : null;
        Object obj2 = map.containsKey(ATAdConst.KEY.AD_HEIGHT) ? map.get(ATAdConst.KEY.AD_HEIGHT) : null;
        KsScene.Builder builderAdNum = new KsScene.Builder(this.f9767a).adNum(this.f9773g ? 1 : Math.min(i2, 5));
        NativeAdExtraData nativeAdExtraData = new NativeAdExtraData();
        Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(28);
        if (boolIsShakeEnabled != null) {
            nativeAdExtraData.setEnableShake(boolIsShakeEnabled.booleanValue());
            nativeAdExtraData.setEnableRotate(boolIsShakeEnabled.booleanValue());
        } else {
            nativeAdExtraData.setEnableShake(this.f9775i);
            nativeAdExtraData.setEnableRotate(this.f9776j);
        }
        if (TextUtils.equals("0", this.f9770d) && TextUtils.equals("0", this.f9768b) && ((i3 = this.f9777k) >= 0 || this.f9778l >= 0)) {
            if (i3 >= 0) {
                nativeAdExtraData.setShowLiveStatus(i3);
            }
            int i4 = this.f9778l;
            if (i4 >= 0) {
                nativeAdExtraData.setShowLiveStyle(i4);
            }
        }
        builderAdNum.setNativeAdExtraData(nativeAdExtraData);
        if (obj != null) {
            try {
                int i5 = (int) Double.parseDouble(obj.toString());
                if (i5 > 0) {
                    builderAdNum.width(i5);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (obj2 != null) {
            try {
                int i6 = (int) Double.parseDouble(obj2.toString());
                if (i6 > 0) {
                    builderAdNum.height(i6);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(this.f9771e)) {
            builderAdNum.setBidResponseV2(this.f9771e);
            builderAdNum.adNum(1);
        }
        KsScene ksSceneBuild = builderAdNum.build();
        if (TextUtils.equals("1", this.f9770d)) {
            KsAdSDK.getLoadManager().loadDrawAd(ksSceneBuild, new b(context));
        } else if (TextUtils.equals("1", this.f9768b)) {
            KsAdSDK.getLoadManager().loadConfigFeedAd(ksSceneBuild, new c(context));
        } else {
            KsAdSDK.getLoadManager().loadNativeAd(ksSceneBuild, new d(context, map));
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, "position_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2)) {
            return false;
        }
        try {
            this.f9767a = Long.parseLong(stringFromMap2);
        } catch (NumberFormatException unused) {
        }
        this.f9768b = ATInitMediation.getStringFromMap(map, "layout_type", "0");
        if (map.containsKey("video_sound")) {
            this.f9769c = TextUtils.equals("1", ATInitMediation.getStringFromMap(map, "video_sound"));
        }
        if (ATSDKGlobalSetting.isGlobalMute != null) {
            this.f9769c = !r0.booleanValue();
        }
        this.f9770d = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        this.f9774h = ATInitMediation.getDoubleFromMap(map, "anythink_gsp");
        if (map.containsKey("payload")) {
            this.f9771e = KSATInitManager.getInstance().getPayloadInfo(ATInitMediation.getStringFromMap(map, "payload"), this.f9774h);
        }
        this.f9775i = ATInitMediation.getIntFromMap(map, k.aH) == 1;
        this.f9776j = ATInitMediation.getIntFromMap(map, "rotate_type") == 1;
        this.f9777k = ATInitMediation.getIntFromMap(map2, KSATConst.NATIVE_SHOW_LIVE_STATUS, -1);
        this.f9778l = ATInitMediation.getIntFromMap(map2, KSATConst.NATIVE_SHOW_LIVE_STYLE, -1);
        return true;
    }
}
