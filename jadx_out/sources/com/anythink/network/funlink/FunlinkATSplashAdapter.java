package com.anythink.network.funlink;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.fl.saas.adx.api.FLSpread;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewSpreadListener;
import com.fl.saas.adx.base.interfaces.SpreadLoadListener;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class FunlinkATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: a, reason: collision with root package name */
    private final String f9610a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    boolean f9611b = false;

    /* renamed from: c, reason: collision with root package name */
    private String f9612c = "";

    /* renamed from: d, reason: collision with root package name */
    private FLSpread f9613d;

    /* renamed from: e, reason: collision with root package name */
    private SpreadLoadListener.SpreadAd f9614e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f9615f;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9616a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9617b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9618c;

        public a(Context context, Map map, Map map2) {
            this.f9616a = context;
            this.f9617b = map;
            this.f9618c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            FunlinkATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            FunlinkATSplashAdapter.this.a(this.f9616a, this.f9617b, this.f9618c);
        }
    }

    public class b implements AdViewSpreadListener {
        public b() {
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerSpreadListener
        public void onAdClick(String str) {
            String unused = FunlinkATSplashAdapter.this.f9610a;
            if (((CustomSplashAdapter) FunlinkATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) FunlinkATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerSpreadListener
        public void onAdClose() {
            String unused = FunlinkATSplashAdapter.this.f9610a;
            if (((CustomSplashAdapter) FunlinkATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) FunlinkATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerSpreadListener
        public void onAdDisplay() {
            String unused = FunlinkATSplashAdapter.this.f9610a;
            if (((CustomSplashAdapter) FunlinkATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) FunlinkATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            String unused = FunlinkATSplashAdapter.this.f9610a;
            if (fLError != null) {
                fLError.getMsg();
            }
            FunlinkATSplashAdapter.this.notifyATLoadFail(fLError != null ? String.valueOf(fLError.getCode()) : "", fLError != null ? fLError.getMsg() : "unknown error");
        }
    }

    public class c implements SpreadLoadListener {
        public c() {
        }

        @Override // com.fl.saas.adx.base.interfaces.SpreadLoadListener
        public void onADLoaded(SpreadLoadListener.SpreadAd spreadAd) {
            String unused = FunlinkATSplashAdapter.this.f9610a;
            Objects.toString(spreadAd);
            if (spreadAd == null) {
                FunlinkATSplashAdapter.this.notifyATLoadFail("", "spreadAd is null");
                return;
            }
            FunlinkATSplashAdapter.this.f9614e = spreadAd;
            FunlinkATSplashAdapter.this.f9615f = true;
            FunlinkATInitManager funlinkATInitManager = FunlinkATInitManager.getInstance();
            FunlinkATSplashAdapter funlinkATSplashAdapter = FunlinkATSplashAdapter.this;
            boolean z2 = funlinkATSplashAdapter.f9611b;
            FLSpread fLSpread = funlinkATSplashAdapter.f9613d;
            long ecpm = FunlinkATSplashAdapter.this.f9613d.getECPM();
            FunlinkATSplashAdapter funlinkATSplashAdapter2 = FunlinkATSplashAdapter.this;
            funlinkATInitManager.handleAdCacheLoadedCallback(z2, fLSpread, ecpm, funlinkATSplashAdapter2.mBiddingListener, ((ATBaseAdInternalAdapter) funlinkATSplashAdapter2).mLoadListener, new BaseAd[0]);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return FunlinkATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        try {
            FLSpread fLSpread = this.f9613d;
            if (fLSpread != null) {
                fLSpread.destroy();
                this.f9613d = null;
            }
            this.f9614e = null;
            this.f9615f = false;
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return FunlinkATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return FunlinkATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9612c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return FunlinkATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        return (this.f9613d == null || this.f9614e == null || !this.f9615f) ? false : true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (a(map, map2)) {
            FunlinkATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        } else {
            notifyATLoadFail("", "unit_id is empty!");
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        try {
            Objects.toString(viewGroup);
            SpreadLoadListener.SpreadAd spreadAd = this.f9614e;
            if (spreadAd == null || !this.f9615f || viewGroup == null) {
                a("SpreadAd is null or is not ready or container is null");
            } else {
                spreadAd.show(activity, viewGroup);
            }
            this.f9615f = false;
        } catch (Throwable th) {
            a(th.getMessage());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9611b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f9615f = false;
            FLSpread fLSpreadBuild = new FLSpread.Builder(context).setKey(this.f9612c).setScreenPercentage(a(context, map2)).setSpreadLoadListener(new c()).setSpreadListener(new b()).build();
            this.f9613d = fLSpreadBuild;
            fLSpreadBuild.requestSpread();
        } catch (Throwable th) {
            notifyATLoadFail("", th.getMessage());
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
        this.f9612c = ATInitMediation.getStringFromMap(map, "unit_id");
        return !TextUtils.isEmpty(r1);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float a(android.content.Context r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            r3 = this;
            java.lang.String r0 = "key_height"
            r1 = 1061158912(0x3f400000, float:0.75)
            if (r5 == 0) goto L19
            boolean r2 = r5.containsKey(r0)     // Catch: java.lang.Throwable -> L39
            if (r2 == 0) goto L19
            java.lang.Object r5 = r5.get(r0)     // Catch: java.lang.Throwable -> L39
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L39
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L39
            goto L1a
        L19:
            r5 = 0
        L1a:
            if (r5 > 0) goto L1d
            goto L39
        L1d:
            android.content.res.Resources r4 = r4.getResources()     // Catch: java.lang.Throwable -> L39
            android.util.DisplayMetrics r4 = r4.getDisplayMetrics()     // Catch: java.lang.Throwable -> L39
            int r4 = r4.heightPixels     // Catch: java.lang.Throwable -> L39
            if (r4 > 0) goto L2a
            goto L39
        L2a:
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L39
            float r4 = (float) r4     // Catch: java.lang.Throwable -> L39
            float r5 = r5 / r4
            int r4 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r4 >= 0) goto L32
            return r1
        L32:
            r4 = 1065353216(0x3f800000, float:1.0)
            float r4 = java.lang.Math.min(r5, r4)     // Catch: java.lang.Throwable -> L39
            return r4
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.funlink.FunlinkATSplashAdapter.a(android.content.Context, java.util.Map):float");
    }
}
