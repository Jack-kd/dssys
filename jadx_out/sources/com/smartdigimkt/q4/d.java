package com.smartdigimkt.q4;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.y3.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d extends b {

    /* renamed from: j, reason: collision with root package name */
    public boolean f42861j;

    /* renamed from: k, reason: collision with root package name */
    public final int f42862k;

    public d(int i2, ArrayList arrayList) {
        super(new com.smartdigimkt.r4.b(i2, arrayList));
        this.f42862k = arrayList.size();
    }

    @Override // com.smartdigimkt.q4.b
    public final void a(int i2, com.smartdigimkt.l4.b bVar) {
        com.smartdigimkt.r4.d dVar = this.f42855d;
        if (!TextUtils.isEmpty(dVar != null ? dVar.k() : "")) {
            super.a(0, bVar);
        } else if (bVar != null) {
            ((com.smartdigimkt.y3.i) bVar).a(0, Integer.valueOf(this.f42862k));
        }
    }

    @Override // com.smartdigimkt.q4.b
    public final Object a(Object obj) {
        return Integer.valueOf(this.f42862k);
    }

    @Override // com.smartdigimkt.q4.b
    public final void a(AdError adError) {
        if (!this.f42861j || this.f42855d == null) {
            return;
        }
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
            String strI = this.f42855d.i();
            String strK = this.f42855d.k();
            s.a().a(this.f42855d.j(), strK, string, strI, com.smartdigimkt.q3.d.a(1001));
        } catch (Throwable unused2) {
        }
    }
}
