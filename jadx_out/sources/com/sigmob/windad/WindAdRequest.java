package com.sigmob.windad;

import android.text.TextUtils;
import com.czhj.sdk.common.Constants;
import java.util.Map;

/* loaded from: classes5.dex */
public class WindAdRequest {

    /* renamed from: a, reason: collision with root package name */
    protected int f39161a = 1;

    /* renamed from: b, reason: collision with root package name */
    private final int f39162b;

    /* renamed from: c, reason: collision with root package name */
    private final String f39163c;

    /* renamed from: d, reason: collision with root package name */
    private String f39164d;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, Object> f39165e;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, Object> f39166f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f39167g;

    public WindAdRequest(String str, String str2, Map<String, Object> map, int i2) {
        this.f39163c = str;
        this.f39164d = str2;
        this.f39165e = map;
        this.f39162b = i2;
    }

    public static boolean isPlacementEmpty(WindAdRequest windAdRequest) {
        return windAdRequest == null || TextUtils.isEmpty(windAdRequest.getPlacementId());
    }

    public int getAdCount() {
        return this.f39161a;
    }

    public int getAdType() {
        return this.f39162b;
    }

    public String getAdxId() {
        Map<String, Object> map = this.f39166f;
        if (map == null) {
            return null;
        }
        Object obj = map.get(WindAds.ADX_ID);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public String getLoadId() {
        Map<String, Object> map = this.f39166f;
        if (map == null) {
            return null;
        }
        Object obj = map.get(Constants.LOAD_ID);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public Map<String, Object> getOptions() {
        return this.f39165e;
    }

    public String getPlacementId() {
        return this.f39163c;
    }

    public Map<?, ?> getTBAdxInfo() {
        Object obj;
        Map<String, Object> map = this.f39166f;
        if (map == null || (obj = map.get(WindAds.SAAS_OPTIONS)) == null || !(obj instanceof Map)) {
            return null;
        }
        return (Map) obj;
    }

    public String getUserId() {
        return this.f39164d;
    }

    public boolean hasOptions() {
        return this.f39165e != null;
    }

    public boolean isHalfInterstitial() {
        return this.f39167g;
    }

    public void setAdCount(int i2) {
        this.f39161a = i2;
    }

    public void setExtOptions(Map<String, Object> map) {
        this.f39166f = map;
    }

    public void setHalfInterstitial(boolean z2) {
        this.f39167g = z2;
    }

    public void setOptions(Map<String, Object> map) {
        this.f39165e = map;
    }

    public void setUserId(String str) {
        this.f39164d = str;
    }
}
