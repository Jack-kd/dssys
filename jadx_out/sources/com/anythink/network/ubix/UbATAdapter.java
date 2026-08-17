package com.anythink.network.ubix;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.ubix.UbATNativeAd;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class UbATAdapter extends CustomNativeAdapter {
    public static final String TAG = "UbATAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10456a;

    /* renamed from: b, reason: collision with root package name */
    private String f10457b = "0";

    /* renamed from: c, reason: collision with root package name */
    private boolean f10458c = false;

    /* renamed from: d, reason: collision with root package name */
    private UbATNativeAd f10459d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10460a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10461b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10462c;

        public a(Context context, Map map, Map map2) {
            this.f10460a = context;
            this.f10461b = map;
            this.f10462c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            UbATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            UbATAdapter.this.a(this.f10460a, this.f10461b, this.f10462c);
        }
    }

    public class b implements UbATNativeAd.AdListener {
        public b() {
        }

        @Override // com.anythink.network.ubix.UbATNativeAd.AdListener
        public void onNativeAdDataLoaded(List<CustomNativeAd> list, Object obj, double d2) {
            String str = UbATAdapter.TAG;
            if (list != null) {
                list.size();
            }
            if (list == null || list.isEmpty()) {
                return;
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) list.toArray(new CustomNativeAd[list.size()]);
            if (!UbATAdapter.this.f10458c) {
                if (((ATBaseAdInternalAdapter) UbATAdapter.this).mLoadListener instanceof ATCustomLoadListenerExt) {
                    ((ATCustomLoadListenerExt) ((ATBaseAdInternalAdapter) UbATAdapter.this).mLoadListener).onAdDataLoadedWithAds(customNativeAdArr);
                }
            } else {
                if (!(UbATAdapter.this.mBiddingListener instanceof ATBiddingListenerExt) || d2 <= 0.0d) {
                    return;
                }
                UbATBiddingNotice ubATBiddingNotice = new UbATBiddingNotice(obj);
                ((ATBiddingListenerExt) UbATAdapter.this.mBiddingListener).onC2SBiddingResultWithData(ATBiddingResult.success(d2, System.currentTimeMillis() + "", ubATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }

        @Override // com.anythink.network.ubix.UbATNativeAd.AdListener
        public void onNativeAdFailToLoad(String str, String str2) {
            String str3 = UbATAdapter.TAG;
            UbATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.ubix.UbATNativeAd.AdListener
        public void onNativeAdLoadSuccess(List<CustomNativeAd> list, Object obj, double d2) {
            String str = UbATAdapter.TAG;
            Objects.toString(list);
            if (list == null || list.isEmpty()) {
                UbATAdapter.this.notifyATLoadFail("", "nativeAdDataList is null");
                return;
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) list.toArray(new CustomNativeAd[list.size()]);
            if (!UbATAdapter.this.f10458c) {
                if (((ATBaseAdInternalAdapter) UbATAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) UbATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            ATBiddingListener aTBiddingListener = UbATAdapter.this.mBiddingListener;
            if (aTBiddingListener != null) {
                if (d2 <= 0.0d) {
                    aTBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                UbATBiddingNotice ubATBiddingNotice = new UbATBiddingNotice(obj);
                UbATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", ubATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return UbATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        UbATNativeAd ubATNativeAd = this.f10459d;
        if (ubATNativeAd != null) {
            ubATNativeAd.destroy();
            this.f10459d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return UbATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10456a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return UbATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10456a = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10457b = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        if (TextUtils.isEmpty(this.f10456a) || context == null) {
            notifyATLoadFail("", "ubix: unit_id or context is empty");
        } else {
            UbATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new a(context, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10458c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            b bVar = new b();
            if ("0".equals(this.f10457b)) {
                this.f10459d = new UbATNativeUnifiedAd(bVar);
            } else if ("1".equals(this.f10457b)) {
                this.f10459d = new UbATNativeExpressAd(bVar);
            } else {
                notifyATLoadFail("", "ubix not support this unit_type:" + this.f10457b);
                return;
            }
            this.f10459d.loadAd(context, this.f10456a, map, map2);
        } catch (Throwable th) {
            notifyATLoadFail("", "ubix startLoadAd exception:" + th.getMessage());
        }
    }
}
