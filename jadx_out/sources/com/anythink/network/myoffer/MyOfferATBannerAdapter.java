package com.anythink.network.myoffer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.network.adx.AdxATInitManager;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMBannerListener;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MyOfferATBannerAdapter extends CustomBannerAdapter {

    /* renamed from: b, reason: collision with root package name */
    SDMMyOfferBannerView f10037b;

    /* renamed from: c, reason: collision with root package name */
    String f10038c;

    /* renamed from: a, reason: collision with root package name */
    private String f10036a = "";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f10039d = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10040a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10041b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10042c;

        /* renamed from: com.anythink.network.myoffer.MyOfferATBannerAdapter$a$a, reason: collision with other inner class name */
        public class C0107a implements SDMBannerListener {
            public C0107a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdClick() {
                CustomBannerEventListener customBannerEventListener = MyOfferATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdClose() {
                CustomBannerEventListener customBannerEventListener = MyOfferATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClose();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdLoadFail(AdError adError) {
                MyOfferATBannerAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdLoaded() {
                if (((ATBaseAdInternalAdapter) MyOfferATBannerAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MyOfferATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdShow() {
                CustomBannerEventListener customBannerEventListener = MyOfferATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdShow();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onDeeplinkCallback(boolean z2) {
                CustomBannerEventListener customBannerEventListener = MyOfferATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map, Map map2) {
            this.f10040a = context;
            this.f10041b = map;
            this.f10042c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MyOfferATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MyOfferATBannerAdapter.this.f10037b = new SDMMyOfferBannerView(this.f10040a);
            MyOfferATBannerAdapter myOfferATBannerAdapter = MyOfferATBannerAdapter.this;
            myOfferATBannerAdapter.f10037b.setPlacementId(myOfferATBannerAdapter.f10038c);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f10041b).setCustomEventMap(MyOfferATBannerAdapter.this.f10039d).setAdWidth(ATInitMediation.getIntFromMap(this.f10042c, ATAdConst.KEY.AD_WIDTH, 0)).setAdHeight(ATInitMediation.getIntFromMap(this.f10042c, ATAdConst.KEY.AD_HEIGHT, 0)).setBannerRefresh(false).build();
            MyOfferATBannerAdapter.this.f10037b.setListener(new C0107a());
            MyOfferATBannerAdapter.this.f10037b.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMMyOfferBannerView sDMMyOfferBannerView = this.f10037b;
        if (sDMMyOfferBannerView != null) {
            sDMMyOfferBannerView.destroy();
            this.f10037b = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f10037b;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMMyOfferBannerView sDMMyOfferBannerView = this.f10037b;
        if (sDMMyOfferBannerView != null) {
            return sDMMyOfferBannerView.getExtraInfoMap();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "MyOffer";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10036a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10039d.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10036a = ATInitMediation.getStringFromMap(map, "my_oid", "");
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f10038c = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            AdxATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        }
    }
}
