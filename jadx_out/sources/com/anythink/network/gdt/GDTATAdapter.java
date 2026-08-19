package com.anythink.network.gdt;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.core.common.k;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.qq.e.ads.nativ.NativeADUnifiedListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.util.AdError;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class GDTATAdapter extends CustomNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    String f9622a;

    /* renamed from: b, reason: collision with root package name */
    String f9623b;

    /* renamed from: c, reason: collision with root package name */
    int f9624c;

    /* renamed from: d, reason: collision with root package name */
    String f9625d;

    /* renamed from: g, reason: collision with root package name */
    int f9628g;

    /* renamed from: h, reason: collision with root package name */
    int f9629h;

    /* renamed from: i, reason: collision with root package name */
    int f9630i;

    /* renamed from: j, reason: collision with root package name */
    int f9631j;

    /* renamed from: e, reason: collision with root package name */
    private int f9626e = -1;

    /* renamed from: f, reason: collision with root package name */
    private int f9627f = -2;

    /* renamed from: k, reason: collision with root package name */
    boolean f9632k = false;

    /* renamed from: l, reason: collision with root package name */
    boolean f9633l = false;

    public class a implements com.anythink.network.gdt.a {
        public a() {
        }

        @Override // com.anythink.network.gdt.a
        public void notifyError(String str, String str2) {
            GDTATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.gdt.a
        public void notifyLoaded(CustomNativeAd... customNativeAdArr) {
            GDTATAdapter gDTATAdapter = GDTATAdapter.this;
            if (gDTATAdapter.f9632k) {
                CustomNativeAd customNativeAd = customNativeAdArr[0];
                if (customNativeAd instanceof GDTATNativeExpressAd) {
                    GDTATNativeExpressAd gDTATNativeExpressAd = (GDTATNativeExpressAd) customNativeAd;
                    if (gDTATAdapter.mBiddingListener != null) {
                        double ecpm = gDTATNativeExpressAd.f9717b.getECPM();
                        GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(gDTATNativeExpressAd);
                        GDTATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), gDTATNativeExpressAd);
                        return;
                    }
                    return;
                }
            }
            if (((ATBaseAdInternalAdapter) gDTATAdapter).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) GDTATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
            }
        }
    }

    public class b implements NativeADUnifiedListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9635a;

        public b(Context context) {
            this.f9635a = context;
        }

        @Override // com.qq.e.ads.nativ.NativeADUnifiedListener
        public void onADLoaded(List<NativeUnifiedADData> list) {
            ArrayList arrayList = new ArrayList();
            if (list == null || list.size() <= 0) {
                GDTATAdapter.this.notifyATLoadFail("", "Ad list is empty");
                return;
            }
            GDTATNativePatchAd gDTATNativePatchAd = null;
            GDTATNativeAd gDTATNativeAd = null;
            for (NativeUnifiedADData nativeUnifiedADData : list) {
                if (GDTATAdapter.this.f9628g == 4) {
                    Context context = this.f9635a;
                    GDTATAdapter gDTATAdapter = GDTATAdapter.this;
                    GDTATNativePatchAd gDTATNativePatchAd2 = new GDTATNativePatchAd(context, nativeUnifiedADData, gDTATAdapter.f9629h, gDTATAdapter.f9630i, gDTATAdapter.f9631j, gDTATAdapter.f9633l);
                    arrayList.add(gDTATNativePatchAd2);
                    gDTATNativePatchAd = gDTATNativePatchAd2;
                } else {
                    Context context2 = this.f9635a;
                    GDTATAdapter gDTATAdapter2 = GDTATAdapter.this;
                    GDTATNativeAd gDTATNativeAd2 = new GDTATNativeAd(context2, nativeUnifiedADData, gDTATAdapter2.f9629h, gDTATAdapter2.f9630i, gDTATAdapter2.f9631j, gDTATAdapter2.f9633l);
                    arrayList.add(gDTATNativeAd2);
                    gDTATNativeAd = gDTATNativeAd2;
                }
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
            GDTATAdapter gDTATAdapter3 = GDTATAdapter.this;
            if (!gDTATAdapter3.f9632k) {
                if (((ATBaseAdInternalAdapter) gDTATAdapter3).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) GDTATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            if (gDTATAdapter3.mBiddingListener != null) {
                if (gDTATAdapter3.f9628g == 4 && gDTATNativePatchAd != null) {
                    double ecpm = gDTATNativePatchAd.f9701c.getECPM();
                    GDTATBiddingNotice gDTATBiddingNotice = new GDTATBiddingNotice(gDTATNativePatchAd);
                    GDTATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", gDTATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), gDTATNativePatchAd);
                    return;
                }
                if (gDTATNativeAd != null) {
                    double ecpm2 = gDTATNativeAd.f9701c.getECPM();
                    GDTATBiddingNotice gDTATBiddingNotice2 = new GDTATBiddingNotice(gDTATNativeAd);
                    GDTATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm2, System.currentTimeMillis() + "", gDTATBiddingNotice2, ATAdConst.CURRENCY.RMB_CENT), gDTATNativeAd);
                }
            }
        }

        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
        public void onNoAD(AdError adError) {
            GDTATAdapter.this.notifyATLoadFail(adError.getErrorCode() + "", adError.getErrorMsg());
        }
    }

    public class c implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9637a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9638b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9639c;

        public c(Context context, Map map, Map map2) {
            this.f9637a = context;
            this.f9638b = map;
            this.f9639c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            GDTATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            GDTATAdapter.this.a(this.f9637a, this.f9638b, this.f9639c);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return GDTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9623b = ATInitMediation.getStringFromMap(map, "unit_id");
        GDTATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return GDTATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return GDTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9623b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return GDTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(map, map2);
        if (TextUtils.isEmpty(this.f9622a) || TextUtils.isEmpty(this.f9623b)) {
            notifyATLoadFail("", "GTD appid or unitId is empty.");
        } else {
            GDTATInitManager.getInstance().initSDK(context, map, new c(context, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9632k = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            GDTATInitManager.getInstance().setExtraUserData(map2);
            int i2 = this.f9628g;
            if (i2 != 2 && i2 != 4) {
                a aVar = new a();
                if (this.f9628g == 3) {
                    new GDTATNativeExpressPatchAd(context, this.f9623b, this.f9626e, this.f9627f, this.f9629h, this.f9630i, this.f9631j, this.f9625d).a(aVar, GDTATInitManager.getInstance().a(map));
                    return;
                } else {
                    new GDTATNativeExpressAd(context, this.f9623b, this.f9626e, this.f9627f, this.f9629h, this.f9630i, this.f9631j, this.f9625d).a(aVar, GDTATInitManager.getInstance().a(map));
                    return;
                }
            }
            a(context.getApplicationContext(), map);
        } catch (Throwable th) {
            notifyATLoadFail("", th.getMessage());
        }
    }

    private void a(Context context, Map<String, Object> map) {
        NativeUnifiedAD nativeUnifiedAD;
        b bVar = new b(context);
        if (TextUtils.isEmpty(this.f9625d)) {
            nativeUnifiedAD = new NativeUnifiedAD(context, this.f9623b, bVar);
        } else {
            nativeUnifiedAD = new NativeUnifiedAD(context, this.f9623b, bVar, this.f9625d);
        }
        int i2 = this.f9631j;
        if (i2 != -1) {
            nativeUnifiedAD.setMaxVideoDuration(i2);
        }
        if (TextUtils.isEmpty(this.f9625d)) {
            LoadAdParams loadAdParamsA = GDTATInitManager.getInstance().a(map);
            if (loadAdParamsA != null) {
                nativeUnifiedAD.loadData(this.f9624c, loadAdParamsA);
                return;
            } else {
                nativeUnifiedAD.loadData(this.f9624c);
                return;
            }
        }
        nativeUnifiedAD.loadData(this.f9624c);
    }

    public void a(Map<String, Object> map, Map<String, Object> map2) {
        this.f9622a = ATInitMediation.getStringFromMap(map, "app_id");
        this.f9623b = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9628g = ATInitMediation.getIntFromMap(map, "unit_type");
        this.f9625d = ATInitMediation.getStringFromMap(map, "payload");
        this.f9624c = this.f9632k ? 1 : this.mRequestNum;
        try {
            this.f9626e = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_WIDTH, -1);
            if (map2.containsKey(GDTATConst.AD_HEIGHT)) {
                this.f9627f = ATInitMediation.getIntFromMap(map2, GDTATConst.AD_HEIGHT, -2);
            } else if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                this.f9627f = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_HEIGHT, -2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        int intFromMap = ATInitMediation.getIntFromMap(map, "video_muted", 0);
        int intFromMap2 = ATInitMediation.getIntFromMap(map, "video_autoplay", 1);
        int intFromMap3 = ATInitMediation.getIntFromMap(map, "video_duration", -1);
        this.f9629h = intFromMap;
        this.f9630i = intFromMap2;
        this.f9631j = intFromMap3;
        this.f9633l = ATInitMediation.getIntFromMap(map, k.aK, -1) == 2;
    }
}
