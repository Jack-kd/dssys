package com.smartdigimkt.q4;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.y3.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class q extends b {

    /* renamed from: j, reason: collision with root package name */
    public final List f42869j;

    public q(int i2, ArrayList arrayList) {
        super(new com.smartdigimkt.r4.o(i2, arrayList));
        this.f42869j = arrayList;
    }

    @Override // com.smartdigimkt.q4.b
    public final boolean a() {
        return true;
    }

    @Override // com.smartdigimkt.q4.b
    public final void b(AdError adError) {
        List list = this.f42869j;
        com.smartdigimkt.y3.h.a("tk", adError.getCode(), adError.getMessage(), this.f42855d.k(), (String) null, String.valueOf(list != null ? list.size() : 1), String.valueOf(0));
    }

    @Override // com.smartdigimkt.q4.b
    public final void a(AdError adError) throws JSONException {
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
        try {
            String string = jSONObject.toString();
            com.smartdigimkt.r4.d dVar = this.f42855d;
            ((com.smartdigimkt.r4.o) dVar).f43084d = true;
            String strI = dVar.i();
            com.smartdigimkt.r4.d dVar2 = this.f42855d;
            ((com.smartdigimkt.r4.o) dVar2).f43084d = false;
            String strK = dVar2.k();
            s.a().a(this.f42855d.j(), strK, string, strI, com.smartdigimkt.q3.d.a(1000));
        } catch (Throwable unused2) {
        }
    }
}
