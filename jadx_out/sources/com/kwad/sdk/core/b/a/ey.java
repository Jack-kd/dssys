package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.feed.monitor.FeedErrorInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ey implements com.kwad.sdk.core.d<FeedErrorInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((FeedErrorInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((FeedErrorInfo) bVar, jSONObject);
    }

    private static void a(FeedErrorInfo feedErrorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        feedErrorInfo.materialType = jSONObject.optLong("material_type");
        feedErrorInfo.width = jSONObject.optLong("width");
        feedErrorInfo.feedType = jSONObject.optLong("feed_type");
        feedErrorInfo.errorType = jSONObject.optLong("error_type");
    }

    private static JSONObject b(FeedErrorInfo feedErrorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = feedErrorInfo.materialType;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", j2);
        }
        long j3 = feedErrorInfo.width;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", j3);
        }
        long j4 = feedErrorInfo.feedType;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "feed_type", j4);
        }
        long j5 = feedErrorInfo.errorType;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_type", j5);
        }
        return jSONObject;
    }
}
