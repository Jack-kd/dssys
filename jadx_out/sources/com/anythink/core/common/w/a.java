package com.anythink.core.common.w;

import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.h.n;
import java.util.Map;

/* loaded from: classes2.dex */
public class a implements ATCustomLoadListenerExt {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8361a = "a";

    /* renamed from: b, reason: collision with root package name */
    private final n f8362b;

    /* renamed from: c, reason: collision with root package name */
    private final String f8363c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Object> f8364d;

    /* renamed from: e, reason: collision with root package name */
    private final ATCustomLoadListener f8365e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f8366f = false;

    public a(n nVar, String str, Map<String, Object> map, ATCustomLoadListener aTCustomLoadListener) {
        this.f8362b = nVar;
        this.f8363c = str;
        this.f8365e = aTCustomLoadListener;
        this.f8364d = map;
    }

    private boolean a() {
        Map<String, Object> map = this.f8364d;
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

    @Override // com.anythink.core.api.ATCustomLoadListener
    public void onAdCacheLoaded(BaseAd... baseAdArr) {
        if (this.f8366f) {
            return;
        }
        this.f8366f = true;
        ATCustomLoadListener aTCustomLoadListener = this.f8365e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdCacheLoaded(baseAdArr);
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public void onAdDataLoaded() {
        ATCustomLoadListener aTCustomLoadListener = this.f8365e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdDataLoaded();
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListenerExt
    public void onAdDataLoadedWithAds(BaseAd... baseAdArr) {
        ATCustomLoadListener aTCustomLoadListener = this.f8365e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdDataLoaded();
        }
        if (a()) {
            n nVar = this.f8362b;
            if (nVar != null) {
                nVar.e();
            }
            onAdCacheLoaded(baseAdArr);
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public void onAdLoadError(String str, String str2) {
        ATCustomLoadListener aTCustomLoadListener = this.f8365e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }
}
