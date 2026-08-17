package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.nativead.monitor.NativeAdMonitor;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class jg implements com.kwad.sdk.core.d<NativeAdMonitor.NativeReportMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((NativeAdMonitor.NativeReportMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((NativeAdMonitor.NativeReportMsg) bVar, jSONObject);
    }

    private static void a(NativeAdMonitor.NativeReportMsg nativeReportMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        nativeReportMsg.state = jSONObject.optInt("state");
        nativeReportMsg.containerType = jSONObject.optString("container_type");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(nativeReportMsg.containerType)) {
            nativeReportMsg.containerType = "";
        }
        nativeReportMsg.containerName = jSONObject.optString("container_name");
        if (obj.toString().equals(nativeReportMsg.containerName)) {
            nativeReportMsg.containerName = "";
        }
        nativeReportMsg.height = jSONObject.optInt("height");
        nativeReportMsg.width = jSONObject.optInt("width");
    }

    private static JSONObject b(NativeAdMonitor.NativeReportMsg nativeReportMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = nativeReportMsg.state;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "state", i2);
        }
        String str = nativeReportMsg.containerType;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "container_type", nativeReportMsg.containerType);
        }
        String str2 = nativeReportMsg.containerName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "container_name", nativeReportMsg.containerName);
        }
        int i3 = nativeReportMsg.height;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i3);
        }
        int i4 = nativeReportMsg.width;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i4);
        }
        return jSONObject;
    }
}
