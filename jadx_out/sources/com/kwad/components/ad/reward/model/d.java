package com.kwad.components.ad.reward.model;

import com.kwad.sdk.core.response.model.AdInfo;

/* loaded from: classes4.dex */
public final class d {
    public static String n(AdInfo adInfo) {
        return com.kwad.sdk.core.response.helper.a.cY(adInfo) ? "live" : com.kwad.sdk.core.response.helper.a.bj(adInfo) ? "image" : com.kwad.sdk.core.response.helper.a.cm(adInfo) ? "reward_preview" : "video";
    }
}
