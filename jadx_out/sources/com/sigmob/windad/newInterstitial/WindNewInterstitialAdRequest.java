package com.sigmob.windad.newInterstitial;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* loaded from: classes5.dex */
public class WindNewInterstitialAdRequest extends WindAdRequest {

    /* renamed from: b, reason: collision with root package name */
    private boolean f39199b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f39200c;

    public WindNewInterstitialAdRequest(String str, String str2, Map<String, Object> map) {
        super(str, str2, map, 6);
    }

    public boolean isEnableKeepOn() {
        return this.f39200c;
    }

    public boolean isEnableScreenLockDisPlayAd() {
        return this.f39199b;
    }

    public void setEnableKeepOn(boolean z2) {
        this.f39200c = z2;
    }

    public void setEnableScreenLockDisPlayAd(boolean z2) {
        this.f39199b = z2;
    }
}
