package com.smartdigimkt.r4;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class m extends d {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.i0.d f43078a;

    public m(com.smartdigimkt.i0.d dVar) {
        this.f43078a = dVar;
    }

    @Override // com.smartdigimkt.r4.d
    public final Map e() {
        String str = this.f43078a.f40644c;
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
        } catch (Exception unused) {
        }
        return map;
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() {
        return new byte[0];
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        com.smartdigimkt.i0.d dVar = this.f43078a;
        if (dVar != null) {
            return dVar.f40643b;
        }
        return 2;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.i0.d dVar = this.f43078a;
        return dVar != null ? dVar.f40645d : "";
    }
}
