package com.anythink.network.meishu;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.meishu.MsNativeAd;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class MsATAdapter extends CustomNativeAdapter {
    public static final String TAG = "MsATAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f9928a;

    /* renamed from: b, reason: collision with root package name */
    MsNativeAd f9929b;

    /* renamed from: c, reason: collision with root package name */
    String f9930c = "0";

    /* renamed from: d, reason: collision with root package name */
    boolean f9931d = false;

    /* renamed from: e, reason: collision with root package name */
    private int f9932e = 0;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9933a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9934b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9935c;

        public a(Context context, Map map, Map map2) {
            this.f9933a = context;
            this.f9934b = map;
            this.f9935c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MsATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MsATAdapter.this.a(this.f9933a, this.f9934b, this.f9935c);
        }
    }

    public class b implements MsNativeAd.AdListener {
        public b() {
        }

        @Override // com.anythink.network.meishu.MsNativeAd.AdListener
        public void onNativeAdFailToLoad(String str, String str2) {
            String str3 = MsATAdapter.TAG;
            MsATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.meishu.MsNativeAd.AdListener
        public void onNativeAdLoadSuccess(List<CustomNativeAd> list, Object obj, double d2) {
            String str = MsATAdapter.TAG;
            Objects.toString(list);
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) list.toArray(new CustomNativeAd[list.size()]);
            MsATAdapter msATAdapter = MsATAdapter.this;
            if (!msATAdapter.f9931d) {
                if (((ATBaseAdInternalAdapter) msATAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MsATAdapter.this).mLoadListener.onAdCacheLoaded(customNativeAdArr);
                    return;
                }
                return;
            }
            ATBiddingListener aTBiddingListener = msATAdapter.mBiddingListener;
            if (aTBiddingListener != null) {
                if (d2 <= 0.0d) {
                    aTBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                MsATBiddingNotice msATBiddingNotice = new MsATBiddingNotice(obj);
                MsATAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", msATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), customNativeAdArr[0]);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return MsATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        MsNativeAd msNativeAd = this.f9929b;
        if (msNativeAd != null) {
            msNativeAd.destroy();
            this.f9929b = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return MsATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9928a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return MsATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9928a = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9930c = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        this.f9932e = ATInitMediation.getIntFromMap(map, "video_muted", 0);
        Boolean bool = ATSDKGlobalSetting.isGlobalMute;
        if (bool != null) {
            this.f9932e = bool.booleanValue() ? 1 : 0;
        }
        if (TextUtils.isEmpty(this.f9928a) || context == null) {
            notifyATLoadFail("", "ms: unit_id or context is empty");
        } else if (!this.f9931d) {
            notifyATLoadFail("", "ms request must be bidding");
        } else {
            MsATInitManager.getInstance().initSDK(context.getApplicationContext(), map, new a(context, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9931d = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            b bVar = new b();
            if (!this.f9930c.equals("0")) {
                notifyATLoadFail("", "ms native only support native");
                return;
            }
            MsNativeExpressAd msNativeExpressAd = new MsNativeExpressAd(this.f9931d, this.mRequestNum, this.f9932e, bVar);
            this.f9929b = msNativeExpressAd;
            msNativeExpressAd.loadAd(context, this.f9928a, map, map2);
        } catch (Throwable th) {
            notifyATLoadFail("", "ms startLoadAd exception:" + th.getMessage());
        }
    }
}
