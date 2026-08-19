package com.ad.main.bz;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.beizi.fusion.AdListener;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.SplashAd;
import i.C1445a;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class BeiZiATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: u, reason: collision with root package name */
    public SplashAd f1271u;

    /* renamed from: r, reason: collision with root package name */
    public final String f1268r = getClass().getSimpleName();

    /* renamed from: s, reason: collision with root package name */
    public String f1269s = "";

    /* renamed from: t, reason: collision with root package name */
    public String f1270t = "";

    /* renamed from: v, reason: collision with root package name */
    public int f1272v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f1273w = 0;

    /* renamed from: x, reason: collision with root package name */
    public int f1274x = 5000;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f1275b;

        public a(ViewGroup viewGroup) {
            this.f1275b = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BeiZiATSplashAdapter.this.f1271u != null) {
                BeiZiATSplashAdapter.this.f1271u.show(this.f1275b);
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f1277b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ATBiddingListener f1278c;

        public class a implements AdListener {
            public a() {
            }

            @Override // com.beizi.fusion.AdListener
            public void onAdClicked() {
                if (((CustomSplashAdapter) BeiZiATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) BeiZiATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
                }
            }

            @Override // com.beizi.fusion.AdListener
            public void onAdClosed() {
                if (((CustomSplashAdapter) BeiZiATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) BeiZiATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }

            @Override // com.beizi.fusion.AdListener
            public void onAdFailedToLoad(int i2) {
                b bVar = b.this;
                ATBiddingListener aTBiddingListener = bVar.f1278c;
                if (aTBiddingListener != null) {
                    aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(i2 + ""), null);
                    return;
                }
                if (((ATBaseAdInternalAdapter) BeiZiATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BeiZiATSplashAdapter.this).mLoadListener.onAdLoadError(i2 + "", "");
                }
            }

            @Override // com.beizi.fusion.AdListener
            public void onAdLoaded() {
                b bVar = b.this;
                if (bVar.f1278c == null) {
                    if (((ATBaseAdInternalAdapter) BeiZiATSplashAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) BeiZiATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    }
                } else {
                    double ecpm = BeiZiATSplashAdapter.this.f1271u.getECPM();
                    if (ecpm < 0.0d) {
                        ecpm = 0.0d;
                    }
                    b.this.f1278c.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, UUID.randomUUID().toString(), null, ATAdConst.CURRENCY.RMB_CENT), null);
                }
            }

            @Override // com.beizi.fusion.AdListener
            public void onAdShown() {
                if (((CustomSplashAdapter) BeiZiATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) BeiZiATSplashAdapter.this).mImpressionListener.onSplashAdShow();
                }
            }

            @Override // com.beizi.fusion.AdListener
            public void onAdTick(long j2) {
            }
        }

        public b(Context context, ATBiddingListener aTBiddingListener) {
            this.f1277b = context;
            this.f1278c = aTBiddingListener;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            C1445a.a().b(this.f1277b, BeiZiATSplashAdapter.this.f1269s);
            if (BeiZiATSplashAdapter.this.f1271u == null) {
                BeiZiATSplashAdapter beiZiATSplashAdapter = BeiZiATSplashAdapter.this;
                beiZiATSplashAdapter.f1271u = new SplashAd(this.f1277b, null, beiZiATSplashAdapter.f1270t, new a(), BeiZiATSplashAdapter.this.f1274x);
            }
            BeiZiATSplashAdapter.this.f1271u.loadAd(BeiZiATSplashAdapter.this.f1272v, BeiZiATSplashAdapter.this.f1273w);
        }
    }

    private void r(Context context, Map map, ATBiddingListener aTBiddingListener) {
        try {
            if (map.containsKey(ATAdConst.KEY.AD_WIDTH)) {
                this.f1272v = Integer.parseInt(map.get(ATAdConst.KEY.AD_WIDTH).toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (map.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                this.f1273w = Integer.parseInt(map.get(ATAdConst.KEY.AD_HEIGHT).toString());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        this.f1272v = i.b.a(context, this.f1272v);
        this.f1273w = i.b.a(context, this.f1273w);
        postOnMainThread(new b(context, aTBiddingListener));
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SplashAd splashAd = this.f1271u;
        if (splashAd != null) {
            splashAd.cancel(null);
        }
        this.f1271u = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "BeiZi";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1270t;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BeiZis.getSdkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        return this.f1271u != null;
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
            this.f1269s = (String) map.get("appid");
            this.f1270t = (String) map.get("unitid");
            if (map.containsKey("timeout") && !TextUtils.isEmpty((String) map.get("timeout"))) {
                this.f1274x = Integer.parseInt((String) map.get("timeout"));
            }
            r(context, map2, null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        postOnMainThread(new a(viewGroup));
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        if (map.containsKey("appid") && map.containsKey("unitid")) {
            this.f1269s = (String) map.get("appid");
            this.f1270t = (String) map.get("unitid");
            r(context, map2, aTBiddingListener);
            return true;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("", "appid or unitid is empty!");
        }
        return true;
    }
}
