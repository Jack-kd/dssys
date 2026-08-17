package com.kuaishou.weapon.p0;

import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class cf {

    /* renamed from: a, reason: collision with root package name */
    private Context f30951a;

    /* renamed from: b, reason: collision with root package name */
    private int f30952b;

    public cf(Context context, int i2) {
        this.f30951a = context;
        this.f30952b = i2;
    }

    public JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (h.a(this.f30951a, "re_po_rt").b(dd.f31130y, 1) != 1) {
                return null;
            }
            try {
                JSONArray jSONArrayA = new x().a(this.f30951a);
                if (jSONArrayA != null && jSONArrayA.length() > 0) {
                    jSONObject.put(com.anythink.core.common.inner.b.b.f4585b, jSONArrayA);
                    jSONObject.put("11301", bf.c(com.kwad.sdk.e.b.QY().QX()));
                    jSONObject.put("11302", bf.c(com.kwad.sdk.e.b.QY().getSdkVersion()));
                    jSONObject.put("11303", bf.c(com.kwad.sdk.e.b.QY().getAppId()));
                }
            } catch (Throwable unused) {
            }
            return jSONObject;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public String a(String str) {
        JSONObject jSONObjectA;
        try {
            JSONObject jSONObjectA2 = new ck(str, ci.f30966j).a(this.f30951a);
            if (jSONObjectA2 != null && (jSONObjectA = a()) != null && jSONObjectA.length() != 0) {
                jSONObjectA2.put("module_section", jSONObjectA);
                return jSONObjectA2.toString();
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
