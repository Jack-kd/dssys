package com.anythink.network.octopus;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.octopus.ad.BannerAd;
import com.octopus.ad.BannerAdListener;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATBannerAdapter extends CustomBannerAdapter {
    public static final String TAG = "ZyATBannerAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10083a;

    /* renamed from: b, reason: collision with root package name */
    boolean f10084b = false;

    /* renamed from: c, reason: collision with root package name */
    private BannerAd f10085c;

    /* renamed from: d, reason: collision with root package name */
    private View f10086d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10087a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10088b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10089c;

        public a(Context context, Map map, Map map2) {
            this.f10087a = context;
            this.f10088b = map;
            this.f10089c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ZyATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            ZyATBannerAdapter.this.a(this.f10087a, this.f10088b, this.f10089c);
        }
    }

    public class b implements BannerAdListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10091a;

        public b(int i2) {
            this.f10091a = i2;
        }

        @Override // com.octopus.ad.NativeAdListener
        public void onAdFailed(int i2) {
            String str = ZyATBannerAdapter.TAG;
            ZyATBannerAdapter.this.notifyATLoadFail(String.valueOf(i2), "i:" + i2);
        }

        @Override // com.octopus.ad.NativeAdListener
        public void onAdLoaded(NativeAdResponse nativeAdResponse) {
            String str = ZyATBannerAdapter.TAG;
            Objects.toString(nativeAdResponse);
            Objects.toString(ZyATBannerAdapter.this.f10085c);
            if (nativeAdResponse == null || ZyATBannerAdapter.this.f10085c == null) {
                ZyATBannerAdapter.this.notifyATLoadFail("", "mBannerAd is null");
                return;
            }
            nativeAdResponse.setAdWidth(this.f10091a);
            ZyATBannerAdapter.this.a(nativeAdResponse);
            ZyATBannerAdapter.this.f10086d = nativeAdResponse.getNativeView();
            if (ZyATBannerAdapter.this.f10086d == null) {
                ZyATBannerAdapter.this.notifyATLoadFail("", "mBannerView is null");
                return;
            }
            ZyATBannerAdapter zyATBannerAdapter = ZyATBannerAdapter.this;
            if (!zyATBannerAdapter.f10084b) {
                if (((ATBaseAdInternalAdapter) zyATBannerAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) ZyATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (zyATBannerAdapter.mBiddingListener != null) {
                ZyATBannerAdapter.this.f10085c.getPrice();
                int price = ZyATBannerAdapter.this.f10085c.getPrice();
                if (price <= 0) {
                    ZyATBannerAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                ZyATBiddingNotice zyATBiddingNotice = new ZyATBiddingNotice(ZyATBannerAdapter.this.f10085c);
                ZyATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", zyATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    public class c implements NativeAdEventListener {
        public c() {
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onADExposed() {
            String str = ZyATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = ZyATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdShow();
            }
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClick() {
            String str = ZyATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = ZyATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClicked();
            }
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdClose() {
            String str = ZyATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = ZyATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClose();
            }
        }

        @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
        public void onAdRenderFailed(int i2) {
            String str = ZyATBannerAdapter.TAG;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return ZyATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        BannerAd bannerAd = this.f10085c;
        if (bannerAd != null) {
            bannerAd.destroy();
            this.f10085c = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f10086d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return ZyATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10083a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return ZyATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        BannerAd bannerAd = this.f10085c;
        return (bannerAd == null || !bannerAd.isValid() || this.f10086d == null) ? false : true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10083a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "octopus: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            ZyATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10084b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            int i2 = context.getResources().getDisplayMetrics().widthPixels;
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_WIDTH)) {
                    i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Thread.currentThread().getName();
            BannerAd bannerAd = new BannerAd(context, this.f10083a, new b(i2));
            this.f10085c = bannerAd;
            bannerAd.openAdInNativeBrowser(true);
            this.f10085c.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "octopus startLoadAd exception:" + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NativeAdResponse nativeAdResponse) {
        if (nativeAdResponse != null) {
            nativeAdResponse.setNativeAdEventListener(new c());
        }
    }
}
