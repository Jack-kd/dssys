package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nh implements com.kwad.sdk.core.d<com.kwad.sdk.core.threads.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.threads.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.threads.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.threads.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.aYy = jSONObject.optString("pool_name");
        if (JSONObject.NULL.toString().equals(bVar.aYy)) {
            bVar.aYy = "";
        }
        bVar.aYz = jSONObject.optInt("core_pool_size");
        bVar.aYA = jSONObject.optInt("max_pool_size");
        bVar.aYB = jSONObject.optInt("current_pool_size");
        bVar.aYC = jSONObject.optInt("active_count");
        bVar.aYD = jSONObject.optLong("task_wait_avg_ms");
        bVar.aYE = jSONObject.optLong("task_succ_count");
        bVar.interval = jSONObject.optLong("interval_ms");
        bVar.aYF = jSONObject.optInt("queue_size");
        bVar.aYG = jSONObject.optLong("pass_timestamp");
        bVar.aYH = jSONObject.optInt("func_ratio_count");
    }

    private static JSONObject b(com.kwad.sdk.core.threads.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.aYy;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pool_name", bVar.aYy);
        }
        int i2 = bVar.aYz;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "core_pool_size", i2);
        }
        int i3 = bVar.aYA;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "max_pool_size", i3);
        }
        int i4 = bVar.aYB;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "current_pool_size", i4);
        }
        int i5 = bVar.aYC;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "active_count", i5);
        }
        long j2 = bVar.aYD;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "task_wait_avg_ms", j2);
        }
        long j3 = bVar.aYE;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "task_succ_count", j3);
        }
        long j4 = bVar.interval;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interval_ms", j4);
        }
        int i6 = bVar.aYF;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "queue_size", i6);
        }
        long j5 = bVar.aYG;
        if (j5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pass_timestamp", j5);
        }
        int i7 = bVar.aYH;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "func_ratio_count", i7);
        }
        return jSONObject;
    }
}
