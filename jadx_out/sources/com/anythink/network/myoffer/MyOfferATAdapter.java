package com.anythink.network.myoffer;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.adx.AdxATConst;
import com.anythink.network.adx.AdxATInitManager;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeLoadListener;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferNative;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MyOfferATAdapter extends CustomNativeAdapter {

    /* renamed from: b, reason: collision with root package name */
    SDMMyOfferNative f10026b;

    /* renamed from: c, reason: collision with root package name */
    String f10027c;

    /* renamed from: e, reason: collision with root package name */
    MyOfferATNativeAd f10029e;

    /* renamed from: a, reason: collision with root package name */
    private String f10025a = "";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f10028d = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f10030a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f10031b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10032c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f10033d;

        /* renamed from: com.anythink.network.myoffer.MyOfferATAdapter$a$a, reason: collision with other inner class name */
        public class C0106a implements SDMNativeLoadListener {
            public C0106a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMNativeLoadListener
            public void onAdLoadFail(AdError adError) {
                MyOfferATAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMNativeLoadListener
            public void onAdLoaded(SDMNativeAd sDMNativeAd) {
                if (sDMNativeAd == null) {
                    MyOfferATAdapter.this.notifyATLoadFail("", "return empty");
                    return;
                }
                MyOfferATNativeAd myOfferATNativeAd = new MyOfferATNativeAd(a.this.f10033d, sDMNativeAd);
                myOfferATNativeAd.setNetworkInfoMap(MyOfferATAdapter.this.f10026b.getExtraInfoMap());
                if (((ATBaseAdInternalAdapter) MyOfferATAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MyOfferATAdapter.this).mLoadListener.onAdCacheLoaded(myOfferATNativeAd);
                } else {
                    MyOfferATAdapter.this.f10029e = myOfferATNativeAd;
                }
            }
        }

        public a(Map map, Context context, Map map2, Context context2) {
            this.f10030a = map;
            this.f10031b = context;
            this.f10032c = map2;
            this.f10033d = context2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MyOfferATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            String stringFromMap;
            int i2;
            Map map = this.f10030a;
            int i3 = 0;
            if (map != null) {
                int intFromMap = ATInitMediation.getIntFromMap(map, ATAdConst.KEY.AD_WIDTH, 0);
                int intFromMap2 = ATInitMediation.getIntFromMap(this.f10030a, ATAdConst.KEY.AD_HEIGHT, 0);
                stringFromMap = ATInitMediation.getStringFromMap(this.f10030a, AdxATConst.NATIVE_VIDEO_AUTO_PLAY, "1");
                i3 = intFromMap;
                i2 = intFromMap2;
            } else {
                stringFromMap = "";
                i2 = 0;
            }
            MyOfferATAdapter myOfferATAdapter = MyOfferATAdapter.this;
            myOfferATAdapter.f10026b = new SDMMyOfferNative(this.f10031b, myOfferATAdapter.f10027c);
            SDMAdRequest.Builder customEventMap = new SDMAdRequest.Builder().setExtraMap(this.f10032c).setCustomEventMap(MyOfferATAdapter.this.f10028d);
            if (!TextUtils.isEmpty(stringFromMap)) {
                customEventMap.setNativeVideoAutoPlay(stringFromMap);
            }
            if (i3 > 0) {
                customEventMap.setAdWidth(i3);
            }
            if (i2 > 0) {
                customEventMap.setAdHeight(i2);
            }
            MyOfferATAdapter.this.f10026b.setListener(new C0106a());
            MyOfferATAdapter.this.f10026b.load(customEventMap.build());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMMyOfferNative sDMMyOfferNative = this.f10026b;
        if (sDMMyOfferNative != null) {
            sDMMyOfferNative.destroy();
            this.f10026b = null;
        }
        if (this.f10029e != null) {
            this.f10029e = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public BaseAd getBaseAdObject(Context context) {
        MyOfferATNativeAd myOfferATNativeAd = this.f10029e;
        if (myOfferATNativeAd == null || !myOfferATNativeAd.isValid()) {
            return null;
        }
        return this.f10029e;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "MyOffer";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10025a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10028d.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10025a = ATInitMediation.getStringFromMap(map, "my_oid", "");
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f10027c = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f10027c = stringFromMap2;
        if (TextUtils.isEmpty(stringFromMap2)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            AdxATInitManager.getInstance().initSDK(context, map, new a(map2, context, map, applicationContext));
        }
    }
}
