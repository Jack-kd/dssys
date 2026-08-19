package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.LiveInfo;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nt implements com.kwad.sdk.core.d<LiveInfo.User> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((LiveInfo.User) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((LiveInfo.User) bVar, jSONObject);
    }

    private static void a(LiveInfo.User user, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        user.headurls = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("headurls");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                LiveInfo.User.HeadUrl headUrl = new LiveInfo.User.HeadUrl();
                headUrl.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                user.headurls.add(headUrl);
            }
        }
        user.user_id = jSONObject.optLong("user_id");
        user.user_name = jSONObject.optString("user_name");
        if (JSONObject.NULL.toString().equals(user.user_name)) {
            user.user_name = "";
        }
    }

    private static JSONObject b(LiveInfo.User user, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "headurls", user.headurls);
        long j2 = user.user_id;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "user_id", j2);
        }
        String str = user.user_name;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "user_name", user.user_name);
        }
        return jSONObject;
    }
}
