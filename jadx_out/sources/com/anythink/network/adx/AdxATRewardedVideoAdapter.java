package com.anythink.network.adx;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.rewardvideo.api.ATRewardRetryTaskInfo;
import com.anythink.rewardvideo.api.ATRewardRetryTaskManager;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResult;
import com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResultListener;
import com.smartdigimkt.sdk.api.format.SDMRewardVideoListener;
import com.smartdigimkt.sdk.api.format.SDMRewardedVideoAd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class AdxATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: f, reason: collision with root package name */
    private static final String f9246f = "AdxATRewardedVideoAdapter";

    /* renamed from: a, reason: collision with root package name */
    SDMRewardedVideoAd f9247a;

    /* renamed from: b, reason: collision with root package name */
    String f9248b;

    /* renamed from: d, reason: collision with root package name */
    private String f9250d;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f9249c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private boolean f9251e = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9252a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9253b;

        /* renamed from: com.anythink.network.adx.AdxATRewardedVideoAdapter$a$a, reason: collision with other inner class name */
        public class C0097a implements SDMRewardVideoListener {
            public C0097a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdClick() {
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdClose() {
                AdxATRewardRetryTaskContractManager.notifyAdClosedIncompleteRetryReward(AdxATRewardedVideoAdapter.this.f9250d, AdxATRewardedVideoAdapter.this.f9251e);
                AdxATRewardedVideoAdapter.this.b();
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdLoadFail(AdError adError) {
                AdxATRewardedVideoAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdLoaded() {
                if (((ATBaseAdInternalAdapter) AdxATRewardedVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) AdxATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdPlayEnd() {
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdPlayFailed(AdError adError) {
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed(adError.getCode(), adError.getMessage());
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdPlayStart() {
                AdxATRewardedVideoAdapter.this.c();
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdReward() {
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onReward();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onDeeplinkCallback(boolean z2) {
                if (((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) AdxATRewardedVideoAdapter.this).mImpressionListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map) {
            this.f9252a = context;
            this.f9253b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            AdxATRewardedVideoAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            AdxATRewardedVideoAdapter adxATRewardedVideoAdapter = AdxATRewardedVideoAdapter.this;
            adxATRewardedVideoAdapter.f9247a = new SDMRewardedVideoAd(this.f9252a, adxATRewardedVideoAdapter.f9248b);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f9253b).setCustomEventMap(AdxATRewardedVideoAdapter.this.f9249c).build();
            AdxATRewardedVideoAdapter.this.f9247a.setListener(new C0097a());
            AdxATRewardedVideoAdapter.this.a();
            AdxATRewardedVideoAdapter.this.f9247a.load(sDMAdRequestBuild);
        }
    }

    public class b implements SDMAdDeepRewardResultListener {
        public b() {
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResultListener
        public void onError(int i2, String str) {
            String str2 = AdxATRewardedVideoAdapter.this.f9250d;
            boolean z2 = AdxATRewardedVideoAdapter.this.f9251e;
            if (str == null) {
                str = "";
            }
            AdxATRewardRetryTaskContractManager.notifyRetryRewardResultFailed(str2, z2, i2, str);
        }

        @Override // com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResultListener
        public void onSuccess(List<SDMAdDeepRewardResult> list) {
            AdxATRewardRetryTaskContractManager.notifyRetryRewardResult(AdxATRewardedVideoAdapter.this.f9250d, AdxATRewardedVideoAdapter.this.f9251e);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        if (this.f9247a != null) {
            AdxATRewardRetryTaskContractManager.clearPendingRetryRewardQueryIfSession(this.f9250d);
            b();
            this.f9247a.destroy();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public Map<String, Object> getAdExtraInfoMap() {
        return this.f9249c;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        AdxATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, false);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMAd sDMAd;
        try {
            SDMRewardedVideoAd sDMRewardedVideoAd = this.f9247a;
            if (sDMRewardedVideoAd == null || (sDMAd = sDMRewardedVideoAd.getSDMAd()) == null) {
                return null;
            }
            return sDMAd.getExtraInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return AdxATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9248b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9249c.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMRewardedVideoAd sDMRewardedVideoAd = this.f9247a;
        if (sDMRewardedVideoAd != null) {
            return sDMRewardedVideoAd.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f9248b = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            AdxATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter
    public void notifyWLInfo(int i2, Map<String, Object> map) {
        AdxATInitManager.getInstance().notifyWLInfo(i2, map, this.f9247a);
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        if (this.f9247a != null) {
            this.f9249c.put("extra_scenario", this.mScenario);
            this.f9247a.show(activity);
        } else {
            CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
            if (customRewardedVideoEventListener != null) {
                customRewardedVideoEventListener.onRewardedVideoAdPlayFailed("-1", "sdmRewardedVideoAd is empty");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        SDMRewardedVideoAd sDMRewardedVideoAd = this.f9247a;
        if (sDMRewardedVideoAd == null) {
            return;
        }
        sDMRewardedVideoAd.setDeepRewardListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f9250d = null;
        this.f9251e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        SDMRewardedVideoAd sDMRewardedVideoAd = this.f9247a;
        if (sDMRewardedVideoAd == null) {
            return;
        }
        try {
            ATRewardRetryTaskInfo aTRewardRetryTaskInfoA = a(sDMRewardedVideoAd.getSDMAd().getExtraInfo(), String.valueOf(66), this.f9247a.getSDMAd().getPlaceInfo().getRequestId());
            if (aTRewardRetryTaskInfoA.getConvertType() <= 0) {
                aTRewardRetryTaskInfoA.getConvertType();
                return;
            }
            this.f9251e = true;
            this.f9250d = aTRewardRetryTaskInfoA.getRequestId();
            ATRewardRetryTaskManager.getInstance().notifyATRewardRetryTask(aTRewardRetryTaskInfoA);
        } catch (Throwable unused) {
        }
    }

    private ATRewardRetryTaskInfo a(Map<String, Object> map, String str, String str2) {
        ATRewardRetryTaskInfo aTRewardRetryTaskInfo = new ATRewardRetryTaskInfo();
        if (str == null) {
            str = String.valueOf(66);
        }
        aTRewardRetryTaskInfo.setFirmId(str);
        if (!TextUtils.isEmpty(str2)) {
            aTRewardRetryTaskInfo.setRequestId(str2);
        }
        Object obj = map.get(SDMAdDeepRewardResult.KEY_TASK_TYPE);
        try {
            if ((obj instanceof Integer) && ((Integer) obj).intValue() == 1) {
                aTRewardRetryTaskInfo.setConvertType(6006104);
            }
        } catch (Throwable unused) {
        }
        return aTRewardRetryTaskInfo;
    }
}
