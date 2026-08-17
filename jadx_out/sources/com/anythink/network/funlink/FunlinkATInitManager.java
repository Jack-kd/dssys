package com.anythink.network.funlink;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.fl.saas.adx.api.FLConfig;
import com.fl.saas.adx.api.FLParamConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class FunlinkATInitManager extends ATInitMediation {

    /* renamed from: e, reason: collision with root package name */
    private static final String f9576e = "FunlinkATInitManager";

    /* renamed from: f, reason: collision with root package name */
    private static FunlinkATInitManager f9577f;

    /* renamed from: a, reason: collision with root package name */
    private final Object f9578a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f9579b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    private List<MediationInitCallback> f9580c;

    /* renamed from: d, reason: collision with root package name */
    private volatile FLParamConfig.Builder f9581d;
    public boolean mHasInit;

    private FunlinkATInitManager() {
    }

    private void a(boolean z2, String str) {
        synchronized (this.f9578a) {
            try {
                List<MediationInitCallback> list = this.f9580c;
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        MediationInitCallback mediationInitCallback = this.f9580c.get(i2);
                        if (mediationInitCallback != null) {
                            if (z2) {
                                mediationInitCallback.onSuccess();
                            } else {
                                mediationInitCallback.onFail(str);
                            }
                        }
                    }
                    this.f9580c.clear();
                }
                this.f9579b.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static FunlinkATInitManager getInstance() {
        if (f9577f == null) {
            synchronized (FunlinkATInitManager.class) {
                try {
                    if (f9577f == null) {
                        f9577f = new FunlinkATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9577f;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "2.9.1.1.1";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Funlink";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.fl.saas.adx.api.FLConfig";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return FLConfig.getInstance().getSdkVersion();
    }

    public void handleAdCacheLoadedCallback(boolean z2, Object obj, long j2, ATBiddingListener aTBiddingListener, ATCustomLoadListener aTCustomLoadListener, BaseAd... baseAdArr) {
        if (!z2) {
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdCacheLoaded(baseAdArr);
            }
        } else if (aTBiddingListener != null) {
            if (j2 <= 0) {
                aTBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + j2));
                return;
            }
            BaseAd baseAd = (baseAdArr == null || baseAdArr.length <= 0) ? null : baseAdArr[0];
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(j2, System.currentTimeMillis() + "", new FunlinkATBiddingNotice(obj), ATAdConst.CURRENCY.RMB_CENT), baseAd);
        }
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (this.mHasInit) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f9578a) {
            try {
                if (this.f9579b.get()) {
                    if (mediationInitCallback != null) {
                        if (this.f9580c == null) {
                            this.f9580c = new ArrayList();
                        }
                        this.f9580c.add(mediationInitCallback);
                    }
                    return;
                }
                if (this.f9580c == null) {
                    this.f9580c = new ArrayList();
                }
                this.f9579b.set(true);
                if (mediationInitCallback != null) {
                    this.f9580c.add(mediationInitCallback);
                }
                String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                Thread.currentThread().getName();
                if (TextUtils.isEmpty(stringFromMap)) {
                    a(false, "funlink init failed: appId is empty");
                    return;
                }
                try {
                    if (this.f9581d == null) {
                        this.f9581d = new FLParamConfig.Builder();
                    }
                    FLConfig.getInstance().init(context, stringFromMap, "", this.f9581d.setSourceTag("TAKU").build(), ATSDK.isNetworkLogDebug());
                    this.mHasInit = true;
                    a(true, "");
                } catch (Throwable th) {
                    a(false, th.getMessage());
                }
            } finally {
            }
        }
    }

    public void setFunlinkParamConfigBuilder(FLParamConfig.Builder builder) {
        this.f9581d = builder;
    }
}
