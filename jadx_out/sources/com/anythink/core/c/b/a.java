package com.anythink.core.c.b;

import android.os.SystemClock;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.h.n;
import java.util.Map;

/* loaded from: classes2.dex */
public class a implements ATBiddingListenerExt {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1975a = "a";

    /* renamed from: b, reason: collision with root package name */
    private final n f1976b;

    /* renamed from: c, reason: collision with root package name */
    private final String f1977c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Object> f1978d;

    /* renamed from: e, reason: collision with root package name */
    private final ATBiddingListener f1979e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f1980f = false;

    public a(n nVar, String str, Map<String, Object> map, ATBiddingListener aTBiddingListener) {
        this.f1976b = nVar;
        this.f1977c = str;
        this.f1978d = map;
        this.f1979e = aTBiddingListener;
    }

    private boolean a() {
        Map<String, Object> map = this.f1978d;
        if (map == null) {
            return false;
        }
        try {
            Object obj = map.get("ad_s_reqf_mode");
            if (obj != null) {
                return obj.toString().equals("2");
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.anythink.core.api.ATBiddingListener
    public void onC2SBidResult(ATBiddingResult aTBiddingResult) {
        ATBiddingListener aTBiddingListener = this.f1979e;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBidResult(aTBiddingResult);
        }
    }

    @Override // com.anythink.core.api.ATBiddingListener
    public void onC2SBiddingResultWithCache(ATBiddingResult aTBiddingResult, BaseAd baseAd) {
        if (this.f1980f) {
            return;
        }
        this.f1980f = true;
        ATBiddingListener aTBiddingListener = this.f1979e;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(aTBiddingResult, baseAd);
        }
    }

    @Override // com.anythink.core.api.ATBiddingListenerExt
    public void onC2SBiddingResultWithData(ATBiddingResult aTBiddingResult, BaseAd baseAd) {
        n nVar = this.f1976b;
        if (nVar != null) {
            nVar.y(System.currentTimeMillis());
            this.f1976b.l(SystemClock.elapsedRealtime());
        }
        if (a()) {
            n nVar2 = this.f1976b;
            if (nVar2 != null) {
                nVar2.e();
            }
            onC2SBiddingResultWithCache(aTBiddingResult, baseAd);
        }
    }
}
