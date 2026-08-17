package com.anythink.core.common.m;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.e.b;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class l extends AbstractC1114b {
    private static String t() {
        try {
            JSONObject jSONObject = new JSONObject();
            String strP = com.anythink.core.common.d.s.b().p();
            String strB = com.anythink.core.common.g.c.a().b();
            String strC = com.anythink.core.common.g.c.a().c();
            if (TextUtils.isEmpty(strP) || TextUtils.isEmpty(strB) || TextUtils.isEmpty(strC)) {
                com.anythink.core.common.u.f.b("cdn error 2", strP + "--" + strB + "--" + strC, com.anythink.core.common.d.s.b().r());
            }
            jSONObject.put("app_id", strP);
            jSONObject.put(b.a.f8705H, strB);
            jSONObject.put(b.a.f8706I, strC);
            com.anythink.core.common.d.s.b();
            jSONObject.put("t_type", 100);
            jSONObject.put("sdk_ver", "UA_6.6.22");
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String b() {
        com.anythink.core.common.i.a();
        return com.anythink.core.common.i.j();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, String> c() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final byte[] d() {
        return t().getBytes();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String e() {
        return com.anythink.core.common.d.s.b().p();
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Context f() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final String g() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Map<String, Object> h() {
        return null;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void l() {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final com.anythink.core.common.m.b.d o() {
        return com.anythink.core.common.m.b.d.a("get_cdn_domain");
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.m.AbstractC1114b
    public final boolean a(int i2) {
        return false;
    }
}
