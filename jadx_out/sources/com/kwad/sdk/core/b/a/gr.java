package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.InnerEcUserLoginBindInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gr implements com.kwad.sdk.core.d<InnerEcUserLoginBindInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((InnerEcUserLoginBindInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((InnerEcUserLoginBindInfo) bVar, jSONObject);
    }

    private static void a(InnerEcUserLoginBindInfo innerEcUserLoginBindInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        innerEcUserLoginBindInfo.userId = jSONObject.optLong("userId");
        innerEcUserLoginBindInfo.userName = jSONObject.optString("userName");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(innerEcUserLoginBindInfo.userName)) {
            innerEcUserLoginBindInfo.userName = "";
        }
        innerEcUserLoginBindInfo.serviceToken = jSONObject.optString("serviceToken");
        if (obj.toString().equals(innerEcUserLoginBindInfo.serviceToken)) {
            innerEcUserLoginBindInfo.serviceToken = "";
        }
        innerEcUserLoginBindInfo.expire = jSONObject.optLong("expire");
        innerEcUserLoginBindInfo.sid = jSONObject.optString("sid");
        if (obj.toString().equals(innerEcUserLoginBindInfo.sid)) {
            innerEcUserLoginBindInfo.sid = "";
        }
    }

    private static JSONObject b(InnerEcUserLoginBindInfo innerEcUserLoginBindInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = innerEcUserLoginBindInfo.userId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userId", j2);
        }
        String str = innerEcUserLoginBindInfo.userName;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userName", innerEcUserLoginBindInfo.userName);
        }
        String str2 = innerEcUserLoginBindInfo.serviceToken;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "serviceToken", innerEcUserLoginBindInfo.serviceToken);
        }
        long j3 = innerEcUserLoginBindInfo.expire;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "expire", j3);
        }
        String str3 = innerEcUserLoginBindInfo.sid;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sid", innerEcUserLoginBindInfo.sid);
        }
        return jSONObject;
    }
}
