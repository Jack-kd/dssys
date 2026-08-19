package com.anythink.core.common.m.c;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.v.ad;
import java.util.Map;

/* loaded from: classes2.dex */
public final class a extends d {
    public a(Context context) {
        super(context);
    }

    @Override // com.anythink.core.common.m.c.d, com.anythink.core.common.m.c.i
    public final com.anythink.core.common.m.b.f a(com.anythink.core.common.m.b.d dVar) {
        if (!b(dVar)) {
            return null;
        }
        com.anythink.core.common.m.b.f fVarA = super.a(dVar);
        if (fVarA != null && fVarA.e()) {
            fVarA.b(AbstractC1114b.f5586d);
        }
        return fVarA;
    }

    @Override // com.anythink.core.common.m.c.d
    public final boolean b(com.anythink.core.common.m.b.d dVar) {
        if (this.f5665b != null && dVar != null) {
            String strB = dVar.b();
            String strA = dVar.a();
            if (("app_strategy".equals(strB) || "placement_strategy".equals(strB) || "get_plugin".equals(strB)) && !TextUtils.isEmpty(strA)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.anythink.core.common.m.c.i
    public final void a(com.anythink.core.common.m.b.f fVar, com.anythink.core.common.m.b.d dVar) {
        if (!b(dVar) || fVar == null) {
            return;
        }
        int iC = fVar.c();
        String strB = fVar.b();
        long jD = fVar.d();
        if (iC != 699 || jD <= 0) {
            return;
        }
        synchronized (this.f5667d) {
            try {
                Map<String, Long> map = this.f5666c;
                if (map != null) {
                    map.put(strB, Long.valueOf(jD));
                }
                ad.a(this.f5665b, "anythink_app_pl_cl_retry", strB, jD);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(String str, long j2) {
        Map<String, Long> map = this.f5666c;
        if (map != null) {
            map.put(str, Long.valueOf(j2));
        }
        ad.a(this.f5665b, "anythink_app_pl_cl_retry", str, j2);
    }
}
