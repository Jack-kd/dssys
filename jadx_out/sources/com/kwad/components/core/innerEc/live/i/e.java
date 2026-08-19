package com.kwad.components.core.innerEc.live.i;

import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.LiveInfo;

/* loaded from: classes4.dex */
public final class e {
    public static String aM(AdTemplate adTemplate) {
        return adTemplate.liveInfo.liveStreamId;
    }

    public static String aN(AdTemplate adTemplate) {
        return String.valueOf(adTemplate.liveInfo.authorId);
    }

    public static void e(AdTemplate adTemplate, String str) {
        adTemplate.liveInfo.liveStreamId = str;
    }

    public static String g(AdTemplate adTemplate, int i2) {
        LiveInfo liveInfo = adTemplate.liveInfo;
        String str = liveInfo.liveStreamId + "_" + i2;
        liveInfo.pageDataKey = str;
        liveInfo.livePageType = 0;
        return str;
    }

    public static String getKwaiUserId() {
        StringBuilder sb = new StringBuilder();
        sb.append(com.kwad.components.core.innerEc.e.rf().getUserId());
        return sb.toString();
    }
}
