package com.ad.main.bz;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.InterstitialAd;
import com.beizi.fusion.InterstitialAdListener;
import i.C1445a;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class BeiZiATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: r, reason: collision with root package name */
    public String f1258r = "";

    /* renamed from: s, reason: collision with root package name */
    public String f1259s = "";

    /* renamed from: t, reason: collision with root package name */
    public int f1260t = 5000;

    /* renamed from: u, reason: collision with root package name */
    public InterstitialAd f1261u;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Activity f1262b;

        public a(Activity activity) {
            this.f1262b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BeiZiATInterstitialAdapter.this.f1261u != null) {
                BeiZiATInterstitialAdapter.this.f1261u.showAd(this.f1262b);
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f1264b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ATBiddingListener f1265c;

        public class a implements InterstitialAdListener {
            public a() {
            }

            @Override // com.beizi.fusion.InterstitialAdListener
            public void onAdClick() {
                if (((CustomInterstitialAdapter) BeiZiATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) BeiZiATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
                }
            }

            @Override // com.beizi.fusion.InterstitialAdListener
            public void onAdClosed() {
                if (((CustomInterstitialAdapter) BeiZiATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) BeiZiATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
                }
            }

            @Override // com.beizi.fusion.InterstitialAdListener
            public void onAdFailed(int i2) {
                b bVar = b.this;
                ATBiddingListener aTBiddingListener = bVar.f1265c;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(i2 + ""), null);
                    return;
                }
                if (((ATBaseAdInternalAdapter) BeiZiATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BeiZiATInterstitialAdapter.this).mLoadListener.onAdLoadError(i2 + "", "");
                }
            }

            @Override // com.beizi.fusion.InterstitialAdListener
            public void onAdLoaded() {
                b bVar = b.this;
                if (bVar.f1265c == null) {
                    if (((ATBaseAdInternalAdapter) BeiZiATInterstitialAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) BeiZiATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    }
                } else {
                    double ecpm = BeiZiATInterstitialAdapter.this.f1261u.getECPM();
                    if (ecpm < 0.0d) {
                        ecpm = 0.0d;
                    }
                    b.this.f1265c.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, UUID.randomUUID().toString(), null, ATAdConst.CURRENCY.RMB_CENT), null);
                }
            }

            @Override // com.beizi.fusion.InterstitialAdListener
            public void onAdShown() {
                if (((CustomInterstitialAdapter) BeiZiATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) BeiZiATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                }
            }
        }

        public b(Context context, ATBiddingListener aTBiddingListener) {
            this.f1264b = context;
            this.f1265c = aTBiddingListener;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            C1445a.a().b(this.f1264b, BeiZiATInterstitialAdapter.this.f1258r);
            if (BeiZiATInterstitialAdapter.this.f1261u == null) {
                BeiZiATInterstitialAdapter beiZiATInterstitialAdapter = BeiZiATInterstitialAdapter.this;
                beiZiATInterstitialAdapter.f1261u = new InterstitialAd(this.f1264b, beiZiATInterstitialAdapter.f1259s, new a(), BeiZiATInterstitialAdapter.this.f1260t, 0);
            }
            BeiZiATInterstitialAdapter.this.f1261u.setAdVersion(1);
            BeiZiATInterstitialAdapter.this.f1261u.loadAd();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        InterstitialAd interstitialAd = this.f1261u;
        if (interstitialAd != null) {
            interstitialAd.destroy();
        }
        this.f1261u = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "BeiZi";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1259s;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BeiZis.getSdkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        return this.f1261u != null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            if (!map.containsKey("appid") || !map.containsKey("unitid")) {
                ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
                if (aTCustomLoadListener != null) {
                    aTCustomLoadListener.onAdLoadError("", "appid or unitid is empty!");
                    return;
                }
                return;
            }
            this.f1258r = (String) map.get("appid");
            this.f1259s = (String) map.get("unitid");
            if (map.containsKey("timeout") && !TextUtils.isEmpty((String) map.get("timeout"))) {
                this.f1260t = Integer.parseInt((String) map.get("timeout"));
            }
            p(context, map2, null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void p(Context context, Map map, ATBiddingListener aTBiddingListener) {
        postOnMainThread(new b(context, aTBiddingListener));
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        postOnMainThread(new a(activity));
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        if (map.containsKey("appid") && map.containsKey("unitid")) {
            this.f1258r = (String) map.get("appid");
            this.f1259s = (String) map.get("unitid");
            p(context, map2, aTBiddingListener);
            return true;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("", "appid or unitid is empty!");
        }
        return true;
    }
}
