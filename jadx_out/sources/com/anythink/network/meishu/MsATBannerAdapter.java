package com.anythink.network.meishu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.meishu.sdk.core.ad.MsAdSlot;
import com.meishu.sdk.core.ad.banner.BannerAdEventListener;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.ad.banner.IBannerAd;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.utils.AdErrorInfo;
import com.meishu.sdk.core.utils.ResultBean;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class MsATBannerAdapter extends CustomBannerAdapter {
    public static final String TAG = "MsATBannerAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f9938a;

    /* renamed from: b, reason: collision with root package name */
    private IBannerAd f9939b;

    /* renamed from: c, reason: collision with root package name */
    private BannerAdLoader f9940c;

    /* renamed from: d, reason: collision with root package name */
    private FrameLayout f9941d;

    /* renamed from: e, reason: collision with root package name */
    boolean f9942e = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9943a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9944b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9945c;

        /* renamed from: com.anythink.network.meishu.MsATBannerAdapter$a$a, reason: collision with other inner class name */
        public class RunnableC0105a implements Runnable {
            public RunnableC0105a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                MsATBannerAdapter.this.a(aVar.f9943a, aVar.f9944b, aVar.f9945c);
            }
        }

        public a(Context context, Map map, Map map2) {
            this.f9943a = context;
            this.f9944b = map;
            this.f9945c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MsATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MsATBannerAdapter.this.postOnMainThread(new RunnableC0105a());
        }
    }

    public class b implements BannerAdEventListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdError(AdErrorInfo adErrorInfo) {
            String str = MsATBannerAdapter.TAG;
            Objects.toString(adErrorInfo);
            MsATBannerAdapter.this.notifyATLoadFail(String.valueOf(adErrorInfo.getCode()), adErrorInfo.getMessage());
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdReady(IBannerAd iBannerAd) {
            ResultBean data;
            String str = MsATBannerAdapter.TAG;
            Objects.toString(iBannerAd);
            if (iBannerAd == null) {
                MsATBannerAdapter.this.notifyATLoadFail("", "ms: onAdReady rewardVideoAd is empty");
                return;
            }
            MsATBannerAdapter.this.f9939b = iBannerAd;
            MsATBannerAdapter.this.a();
            MsATBannerAdapter msATBannerAdapter = MsATBannerAdapter.this;
            if (!msATBannerAdapter.f9942e) {
                if (((ATBaseAdInternalAdapter) msATBannerAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MsATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (msATBannerAdapter.mBiddingListener != null) {
                try {
                    data = msATBannerAdapter.f9939b.getData();
                } catch (Exception unused) {
                }
                double d2 = data != null ? Double.parseDouble(data.getEcpm()) : 0.0d;
                String str2 = MsATBannerAdapter.TAG;
                if (d2 <= 0.0d) {
                    MsATBannerAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                MsATBiddingNotice msATBiddingNotice = new MsATBiddingNotice(MsATBannerAdapter.this.f9939b);
                MsATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", msATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    public class c implements InteractionListener {
        public c() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String str = MsATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = MsATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClicked();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String str = MsATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = MsATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClose();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String str = MsATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = MsATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdShow();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return MsATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        BannerAdLoader bannerAdLoader = this.f9940c;
        if (bannerAdLoader != null) {
            bannerAdLoader.destroy();
            this.f9940c = null;
        }
        IBannerAd iBannerAd = this.f9939b;
        if (iBannerAd != null) {
            iBannerAd.setInteractionListener(null);
            this.f9939b = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f9941d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return MsATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9938a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return MsATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        IBannerAd iBannerAd = this.f9939b;
        return iBannerAd != null && iBannerAd.isAdValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9938a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "ms: unit_id or context is empty");
        } else if (this.f9942e) {
            MsATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        } else {
            notifyATLoadFail("", "ms request must be bidding");
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9942e = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        int i2 = -2;
        try {
            try {
                i = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString()) : -1;
                if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                    i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Activity activity = context instanceof Activity ? (Activity) context : null;
            if (activity == null) {
                notifyATLoadFail("", "context is not activity");
                return;
            }
            Thread.currentThread().getName();
            MsAdSlot msAdSlotBuild = new MsAdSlot.Builder().setPid(this.f9938a).setChannel(MsATInitManager.CHANNEL).build();
            FrameLayout frameLayout = new FrameLayout(context);
            this.f9941d = frameLayout;
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(i, i2));
            BannerAdLoader bannerAdLoader = new BannerAdLoader(activity, msAdSlotBuild, new b());
            this.f9940c = bannerAdLoader;
            bannerAdLoader.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "ms startLoadAd exception:" + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        IBannerAd iBannerAd = this.f9939b;
        if (iBannerAd != null) {
            iBannerAd.setCloseButtonVisible(true);
            this.f9939b.setWidthAndHeight(this.f9941d.getMeasuredWidth(), this.f9941d.getMeasuredHeight());
            this.f9939b.setInteractionListener(new c());
            this.f9939b.showAd(this.f9941d);
        }
    }
}
