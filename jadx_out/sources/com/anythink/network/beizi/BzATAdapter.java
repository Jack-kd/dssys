package com.anythink.network.beizi;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.beizi.BzATNativeAd;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATAdapter extends CustomNativeAdapter {
    public static final String TAG = "BzATAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f9460a;

    /* renamed from: d, reason: collision with root package name */
    private BzATNativeAd f9463d;

    /* renamed from: b, reason: collision with root package name */
    private String f9461b = "0";

    /* renamed from: c, reason: collision with root package name */
    boolean f9462c = false;

    /* renamed from: e, reason: collision with root package name */
    private int f9464e = 1;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9465a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9466b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9467c;

        public a(Context context, Map map, Map map2) {
            this.f9465a = context;
            this.f9466b = map;
            this.f9467c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            BzATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            BzATAdapter.this.a(this.f9465a, this.f9466b, this.f9467c);
        }
    }

    public class b implements BzATNativeAd.AdListener {
        public b() {
        }

        @Override // com.anythink.network.beizi.BzATNativeAd.AdListener
        public void onNativeAdFailToLoad(String str, String str2) {
            String str3 = BzATAdapter.TAG;
            BzATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.beizi.BzATNativeAd.AdListener
        public void onNativeAdLoadSuccess(List<CustomNativeAd> list, Object obj, double d2) {
            String str = BzATAdapter.TAG;
            Objects.toString(list);
            if (list == null || list.isEmpty()) {
                BzATAdapter.this.notifyATLoadFail("", "nativeAdDataList is null");
                return;
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) list.toArray(new CustomNativeAd[list.size()]);
            BzATAdapter bzATAdapter = BzATAdapter.this;
            if (!bzATAdapter.f9462c) {
                if (((ATBaseAdInternalAdapter) bzATAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BzATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            ATBiddingListener aTBiddingListener = bzATAdapter.mBiddingListener;
            if (aTBiddingListener != null) {
                if (d2 <= 0.0d) {
                    aTBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                BzATBiddingNotice bzATBiddingNotice = new BzATBiddingNotice(obj);
                BzATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", bzATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BzATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        BzATNativeAd bzATNativeAd = this.f9463d;
        if (bzATNativeAd != null) {
            bzATNativeAd.destroy();
            this.f9463d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BzATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9460a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BzATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9460a = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9461b = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        this.f9464e = ATInitMediation.getIntFromMap(map, "template_type", 1);
        if (TextUtils.isEmpty(this.f9460a) || context == null) {
            notifyATLoadFail("", "beizi: unit_id or context is empty");
        } else {
            BzATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new a(context, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9462c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            b bVar = new b();
            if (this.f9461b.equals("0")) {
                this.f9463d = new BzATNativeUnifiedAd(this.f9462c, bVar, 5000);
            } else if (this.f9461b.equals("1")) {
                this.f9463d = new BzATNativeExpressAd(this.f9462c, bVar, this.f9464e, 5000);
            } else {
                notifyATLoadFail("", "beizi not support this type");
                return;
            }
            this.f9463d.loadAd(context, this.f9460a, map, map2);
        } catch (Throwable th) {
            notifyATLoadFail("", "beizi startLoadAd exception:" + th.getMessage());
        }
    }
}
