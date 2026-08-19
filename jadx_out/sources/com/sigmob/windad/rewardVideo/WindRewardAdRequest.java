package com.sigmob.windad.rewardVideo;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* loaded from: classes5.dex */
public class WindRewardAdRequest extends WindAdRequest {

    /* renamed from: b, reason: collision with root package name */
    private boolean f39201b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f39202c;

    public WindRewardAdRequest(String str, String str2, Map<String, Object> map) {
        super(str, str2, map, 1);
    }

    public static WindRewardAdRequest getWindVideoAdRequest(WindAdRequest windAdRequest) {
        if (windAdRequest == null) {
            return null;
        }
        return new WindRewardAdRequest(windAdRequest.getPlacementId(), windAdRequest.getUserId(), windAdRequest.getOptions());
    }

    public boolean isEnableKeepOn() {
        return this.f39202c;
    }

    public boolean isEnableScreenLockDisPlayAd() {
        return this.f39201b;
    }

    public void setEnableKeepOn(boolean z2) {
        this.f39202c = z2;
    }

    public void setEnableScreenLockDisPlayAd(boolean z2) {
        this.f39201b = z2;
    }
}
