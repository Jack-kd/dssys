package com.kwad.components.ad.splashscreen.monitor;

import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class c {
    public static void a(AdTemplate adTemplate, String str, long j2, int i2, String str2) {
        com.kwad.sdk.commercial.c.g(new SplashWebMonitorInfo().setEvent("webview_timeout").setSceneId("ad_splash").setDurationMs(j2).setTimeType(i2).setUrl(str).setErrorMsg(str2).setAdTemplate(adTemplate));
    }

    public static void ax(AdTemplate adTemplate) {
        com.kwad.sdk.commercial.c.g(new SplashWebMonitorInfo().setEvent("ad_show").setSceneId("ad_splash").setAdTemplate(adTemplate));
    }

    public static void ay(AdTemplate adTemplate) {
        com.kwad.sdk.commercial.c.g(new SplashWebMonitorInfo().setEvent("webview_init").setSceneId("ad_splash").setAdTemplate(adTemplate));
    }

    public static void b(AdTemplate adTemplate, String str, long j2) {
        com.kwad.sdk.commercial.c.g(new SplashWebMonitorInfo().setEvent("webview_load_finish").setSceneId("ad_splash").setDurationMs(j2).setUrl(str).setAdTemplate(adTemplate));
    }

    public static void d(String str, AdTemplate adTemplate) {
        com.kwad.sdk.commercial.c.g(new SplashWebMonitorInfo().setEvent("webview_load_url").setSceneId("ad_splash").setUrl(str).setAdTemplate(adTemplate));
    }
}
