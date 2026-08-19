package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.s;
import com.anythink.network.ks.KSATConst;
import com.kwad.components.core.video.a.d;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nx implements com.kwad.sdk.core.d<d.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((d.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((d.a) bVar, jSONObject);
    }

    private static void a(d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.code = jSONObject.optInt("code");
        aVar.msg = jSONObject.optString("msg");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.msg)) {
            aVar.msg = "";
        }
        aVar.videoUrl = jSONObject.optString(s.a.f3400b);
        if (obj.toString().equals(aVar.videoUrl)) {
            aVar.videoUrl = "";
        }
        aVar.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
        aVar.creativeId = jSONObject.optLong("creative_id");
        aVar.authorId = jSONObject.optLong("ad_info_uid");
        aVar.aon = jSONObject.optString("ad_info_user_name");
        if (obj.toString().equals(aVar.aon)) {
            aVar.aon = "";
        }
        aVar.aoo = jSONObject.optInt("ad_media_player_type");
    }

    private static JSONObject b(d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.code;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "code", i2);
        }
        String str = aVar.msg;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "msg", aVar.msg);
        }
        String str2 = aVar.videoUrl;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, s.a.f3400b, aVar.videoUrl);
        }
        long j2 = aVar.llsid;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, j2);
        }
        long j3 = aVar.creativeId;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j3);
        }
        long j4 = aVar.authorId;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_uid", j4);
        }
        String str3 = aVar.aon;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_user_name", aVar.aon);
        }
        int i3 = aVar.aoo;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_media_player_type", i3);
        }
        return jSONObject;
    }
}
