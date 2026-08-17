package com.smartdigimkt.s4;

import com.smartdigimkt.c5.i;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.y3.s;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class f extends d {

    /* renamed from: c, reason: collision with root package name */
    public final List f43146c;

    public f(ArrayList arrayList) {
        this.f43146c = arrayList;
    }

    @Override // com.smartdigimkt.s4.d
    public final int a() {
        return 8;
    }

    @Override // com.smartdigimkt.s4.d
    public final byte[] b() {
        List list = this.f43146c;
        return (list == null || list.size() <= 0) ? new byte[0] : d.a(a(false));
    }

    @Override // com.smartdigimkt.s4.d
    public final void a(int i2, String str, String str2) {
        String str3 = str2 + ":" + i2;
        List list = this.f43146c;
        h.a("tk", "", str, str3, (String) null, String.valueOf(list != null ? list.size() : 0), String.valueOf(1));
        s.a().a(3, "", "", a(true), com.smartdigimkt.q3.d.a(1000));
    }

    public final String a(boolean z2) throws JSONException, NoSuchAlgorithmException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(6);
        JSONObject jSONObjectA2 = com.smartdigimkt.l4.a.a(6, (List) null);
        try {
            jSONObjectA.put("app_id", SDKContext.getInstance().a());
            jSONObjectA.put(com.anythink.core.common.m.f.f5769S, this.f43140a);
            jSONObjectA.put(com.anythink.core.common.m.f.f5771U, this.f43141b);
            Iterator<String> itKeys = jSONObjectA2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectA.put(next, jSONObjectA2.opt(next));
            }
        } catch (JSONException unused) {
        }
        String strB = com.smartdigimkt.c5.d.b(jSONObjectA.toString());
        JSONArray jSONArray = new JSONArray();
        List<com.smartdigimkt.q3.b> list = this.f43146c;
        if (list != null) {
            for (com.smartdigimkt.q3.b bVar : list) {
                JSONObject jSONObjectA3 = bVar.f42793b.a(bVar.f42792a);
                try {
                    jSONObjectA3.put(com.anythink.core.common.m.f.br, bVar.f42794c);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (z2) {
                    try {
                        jSONObjectA3.put(com.anythink.core.common.m.f.f5770T, 1);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                jSONArray.put(jSONObjectA3);
            }
        }
        String strB2 = com.smartdigimkt.c5.d.b(jSONArray.toString());
        String strA = i.a(SDKContext.getInstance().b() + "api_ver=1.0&common=" + strB + "&data=" + strB2);
        try {
            jSONObject.put(com.anythink.core.common.m.f.f5776Z, strB);
            jSONObject.put("data", strB2);
            jSONObject.put(com.anythink.core.common.m.f.f5766P, "1.0");
            jSONObject.put(com.anythink.core.common.m.f.f5775Y, strA);
        } catch (Exception unused2) {
        }
        return jSONObject.toString();
    }
}
