package com.anythink.network.meishu;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.MsAdSlot;
import com.meishu.sdk.core.ad.splash.ISplashAd;
import com.meishu.sdk.core.ad.splash.SplashAdEventListener;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.utils.AdErrorInfo;
import com.meishu.sdk.core.utils.ResultBean;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class MsATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: b, reason: collision with root package name */
    private SplashAdLoader f10001b;

    /* renamed from: c, reason: collision with root package name */
    private ISplashAd f10002c;

    /* renamed from: a, reason: collision with root package name */
    private final String f10000a = getClass().getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private String f10003d = "";

    /* renamed from: e, reason: collision with root package name */
    boolean f10004e = false;

    /* renamed from: f, reason: collision with root package name */
    private String f10005f = "0";

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10006a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10007b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10008c;

        public a(Context context, Map map, Map map2) {
            this.f10006a = context;
            this.f10007b = map;
            this.f10008c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MsATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MsATSplashAdapter.this.a(this.f10006a, this.f10007b, this.f10008c);
        }
    }

    public class b implements SplashAdEventListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdError(AdErrorInfo adErrorInfo) {
            String unused = MsATSplashAdapter.this.f10000a;
            Objects.toString(adErrorInfo);
            MsATSplashAdapter.this.notifyATLoadFail(adErrorInfo.getCode() + "", adErrorInfo.getMessage());
        }

        @Override // com.meishu.sdk.core.ad.splash.SplashAdEventListener
        public void onAdPresent(ISplashAd iSplashAd) {
        }

        @Override // com.meishu.sdk.core.ad.splash.SplashAdEventListener
        public void onAdSkip(ISplashAd iSplashAd) {
            ((ATBaseAdInternalAdapter) MsATSplashAdapter.this).mDismissType = 2;
        }

        @Override // com.meishu.sdk.core.ad.splash.SplashAdEventListener
        public void onAdTick(long j2) {
        }

        @Override // com.meishu.sdk.core.ad.splash.SplashAdEventListener
        public void onAdTimeOver(ISplashAd iSplashAd) {
            ((ATBaseAdInternalAdapter) MsATSplashAdapter.this).mDismissType = 3;
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdReady(ISplashAd iSplashAd) {
            ResultBean data;
            String unused = MsATSplashAdapter.this.f10000a;
            Objects.toString(iSplashAd);
            if (iSplashAd == null) {
                MsATSplashAdapter.this.notifyATLoadFail("", "ms: onAdReady rewardVideoAd is empty");
                return;
            }
            MsATSplashAdapter.this.f10002c = iSplashAd;
            MsATSplashAdapter msATSplashAdapter = MsATSplashAdapter.this;
            if (!msATSplashAdapter.f10004e) {
                if (((ATBaseAdInternalAdapter) msATSplashAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MsATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (msATSplashAdapter.mBiddingListener != null) {
                try {
                    data = msATSplashAdapter.f10002c.getData();
                } catch (Exception unused2) {
                }
                double d2 = data != null ? Double.parseDouble(data.getEcpm()) : 0.0d;
                if (d2 <= 0.0d) {
                    MsATSplashAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                MsATBiddingNotice msATBiddingNotice = new MsATBiddingNotice(MsATSplashAdapter.this.f10002c);
                MsATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", msATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    public class c implements InteractionListener {
        public c() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String unused = MsATSplashAdapter.this.f10000a;
            if (((CustomSplashAdapter) MsATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) MsATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String unused = MsATSplashAdapter.this.f10000a;
            if (((CustomSplashAdapter) MsATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) MsATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String unused = MsATSplashAdapter.this.f10000a;
            if (((CustomSplashAdapter) MsATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) MsATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return MsATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SplashAdLoader splashAdLoader = this.f10001b;
        if (splashAdLoader != null) {
            splashAdLoader.destroy();
            this.f10001b = null;
        }
        ISplashAd iSplashAd = this.f10002c;
        if (iSplashAd != null) {
            iSplashAd.setInteractionListener(null);
            this.f10002c = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return MsATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10003d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return MsATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        ISplashAd iSplashAd = this.f10002c;
        return iSplashAd != null && iSplashAd.isAdValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (!a(map, map2)) {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        } else if (!this.f10004e) {
            notifyATLoadFail("", "ms request must be bidding");
        } else {
            MsATInitManager.getInstance().initSDK(context, map, new a(context.getApplicationContext(), map, map2));
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        try {
            Objects.toString(this.f10002c);
            ISplashAd iSplashAd = this.f10002c;
            if (iSplashAd == null || !iSplashAd.isAdValid()) {
                a("SplashAd is null or is not ready");
            } else {
                this.f10002c.setInteractionListener(new c());
                this.f10002c.showAd(viewGroup);
            }
        } catch (Throwable th) {
            a(th.getMessage());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10004e = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            int i2 = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString()) : 0;
            try {
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            int i3 = map2.containsKey(ATAdConst.KEY.AD_HEIGHT) ? Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString()) : 0;
            if (i2 <= 0) {
                i2 = context.getResources().getDisplayMetrics().widthPixels;
            }
            if (i3 <= 0) {
                i3 = context.getResources().getDisplayMetrics().heightPixels;
            }
            Thread.currentThread().getName();
            if (AdSdk.adConfig() != null) {
                AdSdk.adConfig().setSplashClickToClosed(this.f10005f.equals("1"));
            }
            SplashAdLoader splashAdLoader = new SplashAdLoader(context, new MsAdSlot.Builder().setPid(this.f10003d).setFetchCount(1).setWidth(i2).setHeight(i3).setChannel(MsATInitManager.CHANNEL).setIsHideSkipBtn(false).build(), new b(), this.mFetchAdTimeout);
            this.f10001b = splashAdLoader;
            splashAdLoader.loadAd();
        } catch (Throwable th3) {
            notifyATLoadFail("", th3.getMessage());
        }
    }

    private void a(String str) {
        this.mDismissType = 99;
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", str));
            this.mImpressionListener.onSplashAdDismiss();
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        this.f10003d = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10005f = ATInitMediation.getStringFromMap(map, "click_close", "0");
        return (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f10003d)) ? false : true;
    }
}
