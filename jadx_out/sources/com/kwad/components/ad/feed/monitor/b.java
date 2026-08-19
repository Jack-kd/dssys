package com.kwad.components.ad.feed.monitor;

import com.kwad.components.ad.feed.monitor.FeedPageInfo;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.api.KsFeedAd;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.o;
import com.kwad.sdk.utils.ac;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {
    public static void M(int i2) {
        a(new FeedPageInfo().setStatus(1).setAdNum(i2));
    }

    public static void N(int i2) {
        a(new FeedPageInfo().setStatus(2).setAdNum(i2));
    }

    public static void a(AdTemplate adTemplate, int i2, int i3, String str, String str2, long j2) {
        if (i3 == 1 && adTemplate.mHasReportVideoLoad) {
            return;
        }
        if (i3 == 1) {
            adTemplate.mHasReportVideoLoad = true;
        }
        c(new FeedPageInfo().setStatus(3).setType(adTemplate.type).setLoadStatus(i2).setResourceLoadDuration(j2).setMaterialType(i3).setMaterialUrl(str).setErrorMsg(str2).setAdTemplate(adTemplate), i2 == 2);
    }

    private static void b(com.kwad.sdk.commercial.c.a aVar) {
        try {
            c.d(d.In().m57do(ILoggerReporter.Category.APM_LOG).g(0.01d).Q("ad_sdk_feed_callback", "callback_type").b(BusinessType.AD_FEED).A(aVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("reportFeedCallback", e2.toString());
        }
    }

    private static void c(com.kwad.sdk.commercial.c.a aVar, boolean z2) {
        try {
            c.d(d.In().m57do(z2 ? ILoggerReporter.Category.ERROR_LOG : ILoggerReporter.Category.APM_LOG).g(z2 ? 0.01d : 0.001d).Q("ad_sdk_feed_load", "status").b(BusinessType.AD_FEED).A(aVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("reportFeedPageLineLog", e2.toString());
        }
    }

    public static void cn() {
        a("ad_sdk_feed_adnum_monitor", new FeedErrorInfo(), 1.0E-4d);
    }

    public static void co() {
        c.g(new FeedWebViewInfo().setEvent("webview_init").setSceneId("ad_feed"));
    }

    public static void f(int i2, String str) {
        c(new FeedPageInfo().setStatus(9).setErrorCode(i2).setErrorMsg(str), true);
    }

    public static void g(int i2, String str) {
        c(new FeedPageInfo().setStatus(10).setLoadStatus(i2).setErrorMsg(str), i2 == 2);
    }

    public static void h(int i2, String str) {
        a("ad_sdk_feed_request_monitor", (FeedErrorInfo) new FeedErrorInfo().setErrorCode(i2).setErrorMsg(str), 1.0d);
    }

    public static void i(AdTemplate adTemplate, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, "feedLoadOptimizeType", e.Jl());
        ac.putValue(jSONObject, "feedLoadOptimizeExternalEnable", e.Jo());
        ac.putValue(jSONObject, "isExternal", o.Gs().Fu());
        a(new FeedPageInfo().setStatus(7).setType(adTemplate.type).setLoadType(adTemplate.loadType).setMaterialType(com.kwad.sdk.core.response.helper.a.bk(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setRenderType(i2).setExpectedRenderType(i3).setAbParams(jSONObject.toString()).setAdTemplate(adTemplate));
    }

    public static void r(AdTemplate adTemplate) {
        a(new FeedPageInfo().setStatus(11).setAdTemplate(adTemplate));
    }

    public static void s(AdTemplate adTemplate) {
        c.g(new FeedWebViewInfo().setEvent("ad_show").setSceneId("ad_feed").setAdTemplate(adTemplate));
    }

    public static void b(int i2, int i3, AdTemplate adTemplate) {
        a("ad_sdk_feed_showType_monitor", (FeedErrorInfo) new FeedErrorInfo().setMaterialType(i2).setFeedType(i3).setAdTemplate(adTemplate), 1.0d);
    }

    private static List<FeedPageInfo.a> c(List<KsFeedAd> list) {
        ArrayList arrayList = new ArrayList();
        for (KsFeedAd ksFeedAd : list) {
            if (ksFeedAd instanceof com.kwad.components.ad.feed.c) {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(((com.kwad.components.ad.feed.c) ksFeedAd).getAdTemplate());
                arrayList.add(new FeedPageInfo.a().l(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).O(com.kwad.sdk.core.response.helper.a.bk(adInfoEO)).v(com.kwad.sdk.core.response.helper.a.bh(adInfoEO)));
            }
        }
        return arrayList;
    }

    public static void a(AdTemplate adTemplate, int i2, int i3, long j2, String str) {
        c(new FeedPageInfo().setStatus(5).setType(adTemplate.type).setMaterialType(com.kwad.sdk.core.response.helper.a.bk(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setRenderType(i2).setLoadType(adTemplate.loadType).setExpectedRenderType(i3).setErrorMsg(str).setRenderDuration(j2).setAdTemplate(adTemplate), (i2 == 2 || i2 == 3) ? false : true);
    }

    public static void a(int i2, long j2) {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, "feedLoadOptimizeType", e.Jl());
        ac.putValue(jSONObject, "feedLoadOptimizeExternalEnable", e.Jo());
        ac.putValue(jSONObject, "isExternal", o.Gs().Fu());
        a(new FeedPageInfo().setStatus(6).setAdNum(i2).setLoadDataDuration(j2).setAbParams(jSONObject.toString()));
    }

    public static void a(AdTemplate adTemplate, int i2, long j2) {
        a(new FeedPageInfo().setStatus(8).setType(adTemplate.type).setMaterialType(com.kwad.sdk.core.response.helper.a.bk(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setRenderType(i2).setConvertDuration(j2).setAdTemplate(adTemplate));
    }

    private static void a(com.kwad.sdk.commercial.c.a aVar) {
        c(aVar, false);
    }

    public static void a(int i2, AdTemplate adTemplate, String str, int i3) {
        b(new FeedPageInfo().setCallbackType(i2).setMaterialType(com.kwad.sdk.core.response.helper.a.bk(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setMaterialUrl(str).setRenderType(i3).setAdTemplate(adTemplate));
    }

    public static void a(long j2, List<KsFeedAd> list) {
        if (list == null || list.size() == 0 || !(list.get(0) instanceof com.kwad.components.ad.feed.c)) {
            return;
        }
        b(new FeedPageInfo().setCallbackType(1).setPosId(j2).setMaterialInfoList(c(list)).setAdTemplate(((com.kwad.components.ad.feed.c) list.get(0)).getAdTemplate()));
    }

    private static void a(String str, FeedErrorInfo feedErrorInfo, double d2) {
        try {
            c.d(d.In().m57do(ILoggerReporter.Category.ERROR_LOG).b(BusinessType.AD_FEED).Q(str, "default").dp(str).a(com.kwai.adclient.kscommerciallogger.model.a.buA).A(feedErrorInfo).g(d2));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.d("reportFeedError", e2.toString());
        }
    }

    public static void a(long j2, int i2, int i3, AdTemplate adTemplate) {
        a("ad_sdk_feed_width_monitor", (FeedErrorInfo) new FeedErrorInfo().setWidth(j2).setMaterialType(i2).setFeedType(i3).setAdTemplate(adTemplate), 1.0d);
    }

    public static void a(int i2, int i3, AdTemplate adTemplate, int i4) {
        a("ad_sdk_feed_h5_monitor", (FeedErrorInfo) new FeedErrorInfo().setMaterialType(i3).setErrorType(i4).setErrorCode(i2).setAdTemplate(adTemplate), 1.0d);
    }

    public static void a(AdTemplate adTemplate, String str) {
        c.g(new FeedWebViewInfo().setEvent("webview_load_url").setSceneId("ad_feed").setUrl(str).setAdTemplate(adTemplate));
    }

    public static void a(AdTemplate adTemplate, String str, long j2, int i2) {
        c.g(new FeedWebViewInfo().setEvent("webview_timeout").setSceneId("ad_feed").setTimeType(i2).setDurationMs(j2).setUrl(str).setAdTemplate(adTemplate));
    }

    public static void a(AdTemplate adTemplate, String str, long j2) {
        c.g(new FeedWebViewInfo().setEvent("webview_load_finish").setSceneId("ad_feed").setDurationMs(j2).setUrl(str).setAdTemplate(adTemplate));
    }
}
