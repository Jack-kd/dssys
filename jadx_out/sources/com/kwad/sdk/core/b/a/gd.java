package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.LiveInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gd implements com.kwad.sdk.core.d<LiveInfo.User.HeadUrl> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((LiveInfo.User.HeadUrl) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((LiveInfo.User.HeadUrl) bVar, jSONObject);
    }

    private static void a(LiveInfo.User.HeadUrl headUrl, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        headUrl.cdn = jSONObject.optString("cdn");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(headUrl.cdn)) {
            headUrl.cdn = "";
        }
        headUrl.url = jSONObject.optString("url");
        if (obj.toString().equals(headUrl.url)) {
            headUrl.url = "";
        }
    }

    private static JSONObject b(LiveInfo.User.HeadUrl headUrl, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = headUrl.cdn;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cdn", headUrl.cdn);
        }
        String str2 = headUrl.url;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", headUrl.url);
        }
        return jSONObject;
    }
}
