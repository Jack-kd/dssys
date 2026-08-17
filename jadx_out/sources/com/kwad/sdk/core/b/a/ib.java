package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.scene.URLPackage;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ib implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.live.base.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.live.base.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.live.base.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.live.base.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.authorId = jSONObject.optString(URLPackage.KEY_AUTHOR_ID);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.authorId)) {
            bVar.authorId = "";
        }
        bVar.liveStreamId = jSONObject.optString("liveStreamId");
        if (obj.toString().equals(bVar.liveStreamId)) {
            bVar.liveStreamId = "";
        }
        bVar.kwaiUserId = jSONObject.optString("kwaiUserId");
        if (obj.toString().equals(bVar.kwaiUserId)) {
            bVar.kwaiUserId = "";
        }
        bVar.content = jSONObject.optString("content");
        if (obj.toString().equals(bVar.content)) {
            bVar.content = "";
        }
        bVar.Tt = jSONObject.optInt("likeCount");
        bVar.Tu = jSONObject.optLong("likeIntervalMs");
    }

    private static JSONObject b(com.kwad.components.core.innerEc.live.base.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.authorId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, URLPackage.KEY_AUTHOR_ID, bVar.authorId);
        }
        String str2 = bVar.liveStreamId;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "liveStreamId", bVar.liveStreamId);
        }
        String str3 = bVar.kwaiUserId;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "kwaiUserId", bVar.kwaiUserId);
        }
        String str4 = bVar.content;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "content", bVar.content);
        }
        int i2 = bVar.Tt;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "likeCount", i2);
        }
        long j2 = bVar.Tu;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "likeIntervalMs", j2);
        }
        return jSONObject;
    }
}
