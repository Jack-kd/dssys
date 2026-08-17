package com.kwad.components.ad.reward.monitor;

import com.kwad.components.core.webview.tachikoma.TKRenderFailReason;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class c {
    public static void a(boolean z2, AdTemplate adTemplate) {
        a(z2, z2 ? "ad_sdk_neo_video_cache_monitor" : "ad_sdk_fullscreen_video_cache_monitor", adTemplate, z2 ? 102001 : 103001);
    }

    public static void b(boolean z2, AdTemplate adTemplate) {
        a(z2, z2 ? "ad_sdk_neo_page_enter_monitor" : "ad_sdk_fullscreen_page_enter_monitor", adTemplate, z2 ? 102002 : 103002);
    }

    public static void c(boolean z2, int i2) {
        a(z2, z2 ? "ad_sdk_neo_request_monitor" : "ad_sdk_fullscreen_request_monitor", null, i2);
    }

    public static void a(AdTemplate adTemplate, TKRenderFailReason tKRenderFailReason) {
        String str;
        int i2;
        boolean z2 = com.kwad.sdk.core.response.helper.e.eI(adTemplate) == 2;
        if (z2) {
            str = "ad_sdk_neo_page_native_monitor";
        } else {
            str = "ad_sdk_fullscreen_page_native_monitor";
        }
        if (TKRenderFailReason.SWITCH_CLOSE.equals(tKRenderFailReason)) {
            i2 = z2 ? 102003 : 103003;
        } else {
            i2 = TKRenderFailReason.TK_FILE_LOAD_ERROR.equals(tKRenderFailReason) ? z2 ? 102004 : 103004 : 102005;
        }
        a(z2, str, adTemplate, i2);
    }

    public static void c(boolean z2, AdTemplate adTemplate) {
        String str;
        if (z2) {
            str = "ad_sdk_neo_video_play_monitor";
        } else {
            str = "ad_sdk_fullscreen_video_play_monitor";
        }
        a(z2, str, adTemplate, z2 ? 102007 : 103007);
    }

    private static void a(boolean z2, String str, AdTemplate adTemplate, int i2) {
        AdInfo adInfoEO;
        com.kwad.sdk.commercial.c.a(z2, str, new RewardMonitorInfo().setErrorCode(i2).setCreativeId((adTemplate == null || (adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate)) == null) ? 0L : com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setAdTemplate(adTemplate));
    }
}
