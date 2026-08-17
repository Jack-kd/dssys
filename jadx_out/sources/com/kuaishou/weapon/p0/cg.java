package com.kuaishou.weapon.p0;

import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class cg {

    /* renamed from: a, reason: collision with root package name */
    private Context f30953a;

    /* renamed from: b, reason: collision with root package name */
    private int f30954b;

    public cg(Context context, int i2) {
        this.f30953a = context;
        this.f30954b = i2;
    }

    public JSONObject a() {
        long jCurrentTimeMillis;
        JSONObject jSONObject;
        JSONArray jSONArrayA;
        try {
            jCurrentTimeMillis = System.currentTimeMillis();
            jSONObject = new JSONObject();
        } catch (Throwable unused) {
        }
        if (!WeaponHI.as) {
            return null;
        }
        h hVarA = h.a(this.f30953a, "re_po_rt");
        int iB = hVarA.b(dd.f31120o, 0);
        boolean zE = hVarA.e("a1_p_s_p_s");
        boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
        if (iB == 1 && ((zE || zE2) && (jSONArrayA = new w(this.f30953a).a(0)) != null)) {
            jSONObject.put(com.anythink.core.common.inner.b.b.f4585b, jSONArrayA);
            try {
                jSONObject.put("11301", bf.c(com.kwad.sdk.e.b.QY().QX()));
                jSONObject.put("11302", bf.c(com.kwad.sdk.e.b.QY().getSdkVersion()));
                jSONObject.put("11303", bf.c(com.kwad.sdk.e.b.QY().getAppId()));
            } catch (Throwable unused2) {
            }
            jSONObject.put("11007", System.currentTimeMillis() - jCurrentTimeMillis);
            jSONObject.put("11017", jSONObject.toString().length());
            return jSONObject;
        }
        return null;
    }

    public String a(String str) {
        JSONObject jSONObjectA;
        try {
            JSONObject jSONObjectA2 = new ck(str, ci.f30966j).a(this.f30953a);
            if (jSONObjectA2 == null || (jSONObjectA = a()) == null) {
                return null;
            }
            jSONObjectA2.put("module_section", jSONObjectA);
            return jSONObjectA2.toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
