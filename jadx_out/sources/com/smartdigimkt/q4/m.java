package com.smartdigimkt.q4;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.y3.s;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class m extends b {
    public m(int i2, com.smartdigimkt.m3.k kVar, String str, LinkedHashMap linkedHashMap) {
        super(new com.smartdigimkt.r4.k(i2, kVar, str, linkedHashMap));
    }

    @Override // com.smartdigimkt.q4.b
    public final void a(AdError adError) {
        try {
            JSONObject jSONObject = new JSONObject();
            Map mapE = this.f42855d.e();
            if (mapE != null) {
                try {
                    HashMap map = (HashMap) mapE;
                    for (String str : map.keySet()) {
                        jSONObject.put(str, map.get(str));
                    }
                } catch (Exception unused) {
                }
            }
            JSONObject jSONObject2 = ((com.smartdigimkt.r4.k) this.f42855d).f43073a;
            String string = jSONObject.toString();
            String string2 = jSONObject2 != null ? jSONObject2.toString() : "";
            String strK = this.f42855d.k();
            s.a().a(this.f42855d.j(), strK, string, string2, com.smartdigimkt.q3.d.a(1000));
            com.smartdigimkt.y3.h.a("tk", adError.getCode(), adError.getMessage(), strK, "", "1", "");
        } catch (Throwable unused2) {
        }
    }
}
