package com.sigmob.windad.Splash;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* loaded from: classes5.dex */
public class WindSplashAdRequest extends WindAdRequest {

    /* renamed from: b, reason: collision with root package name */
    private int f39135b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f39136c;

    public WindSplashAdRequest(String str, String str2, Map<String, Object> map) {
        super(str, str2, map, 2);
        this.f39135b = 5;
        this.f39136c = false;
    }

    public int getFetchDelay() {
        return Math.max(this.f39135b, 3);
    }

    public boolean isDisableAutoHideAd() {
        return this.f39136c;
    }

    public void setDisableAutoHideAd(boolean z2) {
        this.f39136c = z2;
    }

    public void setFetchDelay(int i2) {
        this.f39135b = i2;
    }
}
