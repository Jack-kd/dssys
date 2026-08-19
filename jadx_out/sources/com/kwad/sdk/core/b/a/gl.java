package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.imageloader.ImageLoaderInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gl implements com.kwad.sdk.core.d<ImageLoaderInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ImageLoaderInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ImageLoaderInfo) bVar, jSONObject);
    }

    private static void a(ImageLoaderInfo imageLoaderInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        imageLoaderInfo.totalCount = jSONObject.optInt("total_count");
        imageLoaderInfo.failedCount = jSONObject.optInt("failed_count");
        imageLoaderInfo.successCount = jSONObject.optInt("success_count");
        imageLoaderInfo.duration = jSONObject.optDouble("duration");
    }

    private static JSONObject b(ImageLoaderInfo imageLoaderInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = imageLoaderInfo.totalCount;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "total_count", i2);
        }
        int i3 = imageLoaderInfo.failedCount;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "failed_count", i3);
        }
        int i4 = imageLoaderInfo.successCount;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "success_count", i4);
        }
        double d2 = imageLoaderInfo.duration;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "duration", d2);
        }
        return jSONObject;
    }
}
