package com.smartdigimkt.q4;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.y3.s;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class j extends b {

    /* renamed from: j, reason: collision with root package name */
    public final JSONObject f42864j;

    public j(int i2, com.smartdigimkt.p3.a aVar, String str) {
        com.smartdigimkt.r4.h hVar = new com.smartdigimkt.r4.h(i2, aVar, str);
        super(hVar);
        this.f42864j = hVar.f43066b;
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
            String string = jSONObject.toString();
            JSONObject jSONObject2 = this.f42864j;
            String string2 = jSONObject2 != null ? jSONObject2.toString() : "";
            String strK = this.f42855d.k();
            s.a().a(this.f42855d.j(), strK, string, string2, com.smartdigimkt.q3.d.a(1000));
            com.smartdigimkt.y3.h.a("tk", adError.getCode(), adError.getMessage(), strK, "", "1", "");
        } catch (Throwable unused2) {
        }
    }
}
