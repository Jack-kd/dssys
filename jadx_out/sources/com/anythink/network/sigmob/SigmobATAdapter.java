package com.anythink.network.sigmob;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class SigmobATAdapter extends CustomNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    private WindNativeUnifiedAd f10162a;

    /* renamed from: b, reason: collision with root package name */
    private String f10163b = "";

    /* renamed from: c, reason: collision with root package name */
    private String f10164c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f10165d;

    /* renamed from: e, reason: collision with root package name */
    private double f10166e;

    public class a implements WindNativeUnifiedAd.WindNativeAdLoadListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10167a;

        public a(Context context) {
            this.f10167a = context;
        }

        @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
        public void onAdError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(SigmobATAdapter.this.f10163b, str) || windAdError == null) {
                return;
            }
            SigmobATAdapter.this.a(String.valueOf(windAdError.getErrorCode()), windAdError.getMessage());
        }

        @Override // com.sigmob.windad.natives.WindNativeUnifiedAd.WindNativeAdLoadListener
        public void onAdLoad(List<WindNativeAdData> list, String str) {
            if (TextUtils.equals(SigmobATAdapter.this.f10163b, str)) {
                if (list == null || list.isEmpty()) {
                    SigmobATAdapter.this.a("", "no ad return");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<WindNativeAdData> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new SigmobATNativeAd(this.f10167a, it.next(), SigmobATAdapter.this.f10162a));
                }
                CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
                if (!SigmobATAdapter.this.f10165d || SigmobATAdapter.this.f10162a == null) {
                    if (((ATBaseAdInternalAdapter) SigmobATAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) SigmobATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    }
                } else {
                    String ecpm = SigmobATAdapter.this.f10162a.getEcpm();
                    String currency = SigmobATAdapter.this.f10162a.getCurrency();
                    String str2 = SigmobATAdapter.this.f10163b;
                    SigmobATAdapter sigmobATAdapter = SigmobATAdapter.this;
                    SigmobATInitManager.onC2SBiddingResultWithCache(ecpm, currency, str2, sigmobATAdapter.mBiddingListener, sigmobATAdapter.f10162a, customNativeAdArr[0]);
                }
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10169a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10170b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f10171c;

        public class a implements MediationInitCallback {
            public a() {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                SigmobATAdapter.this.a("", str);
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                b bVar = b.this;
                SigmobATAdapter.this.a(bVar.f10169a, bVar.f10171c);
            }
        }

        public b(Context context, Map map, int i2) {
            this.f10169a = context;
            this.f10170b = map;
            this.f10171c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SigmobATInitManager.getInstance().initSDK(this.f10169a, this.f10170b, new a());
            } catch (Throwable th) {
                SigmobATAdapter.this.a("", th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return SigmobATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        WindNativeUnifiedAd windNativeUnifiedAd = this.f10162a;
        if (windNativeUnifiedAd != null) {
            windNativeUnifiedAd.destroy();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) throws SecurityException {
        this.f10163b = ATInitMediation.getStringFromMap(map, "placement_id");
        SigmobATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return SigmobATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10163b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return SigmobATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
        this.f10163b = ATInitMediation.getStringFromMap(map, "placement_id");
        this.f10164c = ATInitMediation.getStringFromMap(map, "payload");
        this.f10166e = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2) || TextUtils.isEmpty(this.f10163b)) {
            a("", "app_id、app_key、placement_id could not be null.");
            return;
        }
        if (this.mRequestNum > 3) {
            this.mRequestNum = 3;
        }
        postOnMainThread(new b(context, map, this.mRequestNum));
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10165d = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, int i2) {
        WindNativeUnifiedAd windNativeUnifiedAd;
        SigmobATInitManager.getInstance().setShakeStatus();
        if (this.f10162a == null) {
            this.f10162a = new WindNativeUnifiedAd(new WindNativeAdRequest(this.f10163b, null, i2, null));
        }
        this.f10162a.setNativeAdLoadListener(new a(context));
        if (this.f10165d && (windNativeUnifiedAd = this.f10162a) != null) {
            double d2 = this.f10166e;
            if (d2 > 0.0d) {
                windNativeUnifiedAd.setBidFloor(((int) d2) * 100);
            }
            this.f10162a.setCurrency("USD");
            this.f10162a.loadAd();
            return;
        }
        if (!TextUtils.isEmpty(this.f10164c)) {
            this.f10162a.loadAd(this.f10164c);
        } else {
            this.f10162a.loadAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        SigmobATInitManager.onAdLoadError(str, str2, this.f10165d, this.mBiddingListener, this.mLoadListener);
    }
}
