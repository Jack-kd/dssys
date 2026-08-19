package com.smartdigimkt.q4;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class c extends b {
    public c(com.smartdigimkt.l3.a aVar) {
        super(new com.smartdigimkt.r4.a(aVar));
    }

    @Override // com.smartdigimkt.q4.b
    public final void b(int i2, Object obj) {
        if (obj == null) {
            a(i2, com.anythink.core.common.m.q.f5855m, "Return Empty Ad.", com.smartdigimkt.k4.b.a("10010", "Return Empty Ad."));
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(obj.toString());
            if (TextUtils.isEmpty(jSONObject.optString("data"))) {
                a(i2, com.anythink.core.common.m.q.f5856n, "Return Empty Ad.", com.smartdigimkt.k4.b.a("10010", obj.toString()));
                return;
            }
            if (this.f42859h) {
                return;
            }
            this.f42859h = true;
            com.smartdigimkt.l4.b bVar = this.f42853b;
            if (bVar != null) {
                bVar.a(i2, jSONObject);
            }
            a(200, jSONObject);
        } catch (Throwable unused) {
            a(i2, com.anythink.core.common.m.q.f5857o, "Return Empty Ad.", com.smartdigimkt.k4.b.a("10010", obj.toString()));
        }
    }
}
