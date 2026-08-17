package com.kwad.sdk.core.b.a;

import com.sigmob.sdk.base.mta.PointType;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cf implements com.kwad.sdk.core.d<com.kwad.sdk.crash.online.monitor.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.crash.online.monitor.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.crash.online.monitor.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.crash.online.monitor.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bfn = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("systemFilterList");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                aVar.bfn.add((String) jSONArrayOptJSONArray.opt(i2));
            }
        }
        aVar.bfo = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("sdkFilterList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                aVar.bfo.add((String) jSONArrayOptJSONArray2.opt(i3));
            }
        }
        aVar.bfp = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("matrixPrinterNameList");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                aVar.bfp.add((String) jSONArrayOptJSONArray3.opt(i4));
            }
        }
        aVar.bfq = new ArrayList();
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("commonPrinterNameList");
        if (jSONArrayOptJSONArray4 != null) {
            for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                aVar.bfq.add((String) jSONArrayOptJSONArray4.opt(i5));
            }
        }
        aVar.bfr = new ArrayList();
        JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("featureConfigList");
        if (jSONArrayOptJSONArray5 != null) {
            for (int i6 = 0; i6 < jSONArrayOptJSONArray5.length(); i6++) {
                com.kwad.sdk.crash.online.monitor.a.b bVar = new com.kwad.sdk.crash.online.monitor.a.b();
                bVar.parseJson(jSONArrayOptJSONArray5.optJSONObject(i6));
                aVar.bfr.add(bVar);
            }
        }
        aVar.bft = jSONObject.optInt("afterFilterSystemCheckNum", new Integer("5").intValue());
        aVar.bfu = jSONObject.optInt("batchNum", new Integer(PointType.SIGMOB_APP).intValue());
        aVar.aJV = jSONObject.optDouble(com.sigmob.sdk.base.n.f36417C, new Double("0.01").doubleValue());
        aVar.bfv = jSONObject.optInt("monitorSwitch");
    }

    private static JSONObject b(com.kwad.sdk.crash.online.monitor.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "systemFilterList", aVar.bfn);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkFilterList", aVar.bfo);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "matrixPrinterNameList", aVar.bfp);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "commonPrinterNameList", aVar.bfq);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "featureConfigList", aVar.bfr);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "afterFilterSystemCheckNum", aVar.bft);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "batchNum", aVar.bfu);
        com.kwad.sdk.utils.ac.putValue(jSONObject, com.sigmob.sdk.base.n.f36417C, aVar.aJV);
        int i2 = aVar.bfv;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "monitorSwitch", i2);
        }
        return jSONObject;
    }
}
