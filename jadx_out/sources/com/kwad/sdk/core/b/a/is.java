package com.kwad.sdk.core.b.a;

import com.anythink.china.activity.TransparentActivity;
import com.kwad.sdk.monitor.MediaMessageInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class is implements com.kwad.sdk.core.d<MediaMessageInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((MediaMessageInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((MediaMessageInfo) bVar, jSONObject);
    }

    private static void a(MediaMessageInfo mediaMessageInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        mediaMessageInfo.Nq = jSONObject.optString(com.umeng.analytics.pro.bv.f48879F);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(mediaMessageInfo.Nq)) {
            mediaMessageInfo.Nq = "";
        }
        mediaMessageInfo.bjd = jSONObject.optString(TransparentActivity.f1409d);
        if (obj.toString().equals(mediaMessageInfo.bjd)) {
            mediaMessageInfo.bjd = "";
        }
        mediaMessageInfo.bje = jSONObject.optString("appid");
        if (obj.toString().equals(mediaMessageInfo.bje)) {
            mediaMessageInfo.bje = "";
        }
        mediaMessageInfo.bjf = jSONObject.optInt("device_os_id");
    }

    private static JSONObject b(MediaMessageInfo mediaMessageInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = mediaMessageInfo.Nq;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.bv.f48879F, mediaMessageInfo.Nq);
        }
        String str2 = mediaMessageInfo.bjd;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, TransparentActivity.f1409d, mediaMessageInfo.bjd);
        }
        String str3 = mediaMessageInfo.bje;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appid", mediaMessageInfo.bje);
        }
        int i2 = mediaMessageInfo.bjf;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "device_os_id", i2);
        }
        return jSONObject;
    }
}
