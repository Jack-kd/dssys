package com.smartdigimkt.r4;

import android.text.TextUtils;
import com.smartdigimkt.sdk.core.SDKContext;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class o extends d {

    /* renamed from: c, reason: collision with root package name */
    public final List f43083c;

    /* renamed from: e, reason: collision with root package name */
    public final int f43085e;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43084d = false;

    /* renamed from: a, reason: collision with root package name */
    public final String f43081a = SDKContext.getInstance().a();

    /* renamed from: b, reason: collision with root package name */
    public final String f43082b = SDKContext.getInstance().b();

    public o(int i2, ArrayList arrayList) {
        this.f43085e = i2;
        this.f43083c = arrayList;
    }

    @Override // com.smartdigimkt.r4.d
    public final JSONObject b() {
        JSONObject jSONObjectA = com.smartdigimkt.l4.a.a(6);
        JSONObject jSONObjectA2 = com.smartdigimkt.l4.a.a(6, (List) null);
        try {
            jSONObjectA.put("app_id", this.f43081a);
            jSONObjectA.put(com.anythink.core.common.m.f.f5769S, this.f43085e);
            Iterator<String> itKeys = jSONObjectA2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectA.put(next, jSONObjectA2.opt(next));
            }
        } catch (Throwable unused) {
        }
        return jSONObjectA;
    }

    @Override // com.smartdigimkt.r4.d
    public final int c() {
        return 6;
    }

    @Override // com.smartdigimkt.r4.d
    public final byte[] h() {
        return d.a(i());
    }

    @Override // com.smartdigimkt.r4.d
    public final String i() throws JSONException, NoSuchAlgorithmException {
        JSONObject jSONObject = new JSONObject();
        String strB = com.smartdigimkt.c5.d.b(b().toString());
        JSONArray jSONArray = new JSONArray();
        List<com.smartdigimkt.q3.b> list = this.f43083c;
        if (list != null) {
            for (com.smartdigimkt.q3.b bVar : list) {
                JSONObject jSONObjectA = bVar.f42793b.a(bVar.f42792a);
                try {
                    jSONObjectA.put(com.anythink.core.common.m.f.br, bVar.f42794c);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (this.f43084d) {
                    try {
                        jSONObjectA.put(com.anythink.core.common.m.f.f5770T, 1);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                jSONArray.put(jSONObjectA);
            }
        }
        String strB2 = com.smartdigimkt.c5.d.b(jSONArray.toString());
        String strA = com.smartdigimkt.c5.i.a(this.f43082b + "api_ver=1.0&common=" + strB + "&data=" + strB2);
        try {
            jSONObject.put(com.anythink.core.common.m.f.f5776Z, strB);
            jSONObject.put("data", strB2);
            jSONObject.put(com.anythink.core.common.m.f.f5766P, "1.0");
            jSONObject.put(com.anythink.core.common.m.f.f5775Y, strA);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.smartdigimkt.r4.d
    public final int j() {
        return 1;
    }

    @Override // com.smartdigimkt.r4.d
    public final String k() {
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        String str = aVarA != null ? aVarA.f39381l : "";
        return TextUtils.isEmpty(str) ? "https://tk.statisticslinks.com/v2/open/a_tk" : str;
    }
}
