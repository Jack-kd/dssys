package com.sigmob.windad.natives;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* loaded from: classes5.dex */
public class WindNativeAdRequest extends WindAdRequest {
    @Deprecated
    public WindNativeAdRequest(String str, String str2, int i2, Map<String, Object> map) {
        super(str, str2, map, 5);
        this.f39161a = i2;
    }

    public static WindNativeAdRequest getWindVideoAdRequest(WindAdRequest windAdRequest) {
        if (windAdRequest == null) {
            return null;
        }
        return new WindNativeAdRequest(windAdRequest.getPlacementId(), windAdRequest.getUserId(), 1, windAdRequest.getOptions());
    }

    public WindNativeAdRequest(String str, String str2, Map<String, Object> map) {
        super(str, str2, map, 5);
    }
}
