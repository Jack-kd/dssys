package com.kwad.sdk.core.b.a;

import com.anythink.network.ks.KSATConst;
import com.kwad.components.core.innerEc.qcpx.ReceiveQcpxBody;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ko implements com.kwad.sdk.core.d<ReceiveQcpxBody> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ReceiveQcpxBody) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ReceiveQcpxBody) bVar, jSONObject);
    }

    private static void a(ReceiveQcpxBody receiveQcpxBody, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        receiveQcpxBody.flowTag = jSONObject.optString("flowTag");
        if (JSONObject.NULL.toString().equals(receiveQcpxBody.flowTag)) {
            receiveQcpxBody.flowTag = "";
        }
        receiveQcpxBody.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
        receiveQcpxBody.creativeId = jSONObject.optLong("creativeId");
    }

    private static JSONObject b(ReceiveQcpxBody receiveQcpxBody, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = receiveQcpxBody.flowTag;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "flowTag", receiveQcpxBody.flowTag);
        }
        long j2 = receiveQcpxBody.llsid;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, j2);
        }
        long j3 = receiveQcpxBody.creativeId;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", j3);
        }
        return jSONObject;
    }
}
