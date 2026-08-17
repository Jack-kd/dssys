package com.anythink.core.common.m.d;

import com.anythink.core.common.d.s;
import com.anythink.core.common.h.au;
import com.anythink.core.common.i;
import com.anythink.core.common.m.d.f;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d extends f {

    /* renamed from: a, reason: collision with root package name */
    List<au> f5717a;

    public d(List<au> list) {
        this.f5717a = list;
    }

    private String j() {
        try {
            JSONObject jSONObject = new JSONObject();
            com.anythink.core.common.m.f.a(s.b().g(), jSONObject);
            List<au> list = this.f5717a;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (au auVar : this.f5717a) {
                    if (auVar != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        auVar.b(jSONObject2);
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.put("t_items", jSONArray);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.anythink.core.common.m.d.f
    public final int a() {
        return 9;
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
        a(new f.a() { // from class: com.anythink.core.common.m.d.d.1
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
