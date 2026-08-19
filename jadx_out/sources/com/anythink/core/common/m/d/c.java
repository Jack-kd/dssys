package com.anythink.core.common.m.d;

import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.i;
import com.anythink.core.common.m.d.f;
import com.anythink.core.e.b;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c extends f {
    private static String j() {
        try {
            JSONObject jSONObject = new JSONObject();
            String strP = s.b().p();
            String strB = com.anythink.core.common.g.c.a().b();
            String strC = com.anythink.core.common.g.c.a().c();
            if (TextUtils.isEmpty(strP) || TextUtils.isEmpty(strB) || TextUtils.isEmpty(strC)) {
                com.anythink.core.common.u.f.b("cdn error 1", strP + "--" + strB + "--" + strC, s.b().r());
            }
            jSONObject.put("app_id", strP);
            jSONObject.put(b.a.f8705H, strB);
            jSONObject.put(b.a.f8706I, strC);
            s.b();
            jSONObject.put("t_type", 100);
            jSONObject.put("sdk_ver", "UA_6.6.22");
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.anythink.core.common.m.d.f
    public final int a() {
        return 6;
    }

    @Override // com.anythink.core.common.m.d.f
    public final com.anythink.core.common.m.b.h a_() {
        try {
            i.a();
            return new com.anythink.core.common.m.b.h(i.k(), i.l());
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.anythink.core.common.m.d.f
    public final int b() {
        return 3;
    }

    @Override // com.anythink.core.common.m.d.f
    public final byte[] c() {
        return f.a(j());
    }

    @Override // com.anythink.core.common.m.d.f
    public final boolean d() {
        return false;
    }

    public final void a(final com.anythink.core.common.m.s sVar) {
        a(new f.a() { // from class: com.anythink.core.common.m.d.c.1
            @Override // com.anythink.core.common.m.d.f.a
            public final void a(Object obj) {
                com.anythink.core.common.m.s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.onLoadFinish(0, obj);
                }
            }

            @Override // com.anythink.core.common.m.d.f.a
            public final void a(Throwable th) {
                com.anythink.core.common.m.s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.onLoadError(0, th.getMessage(), null);
                }
            }
        });
    }
}
