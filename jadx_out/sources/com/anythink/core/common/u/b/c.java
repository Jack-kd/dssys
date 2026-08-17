package com.anythink.core.common.u.b;

import com.anythink.core.common.d.s;
import com.anythink.core.common.h.n;

/* loaded from: classes2.dex */
class c implements a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7823a = "c";

    private static void f(e eVar) {
        n nVar = eVar.f7828b;
        try {
            if (eVar.f7835i) {
                return;
            }
            nVar.aj();
            com.anythink.core.common.u.e.a(s.b().g());
            com.anythink.core.common.u.e.a(6, nVar);
            eVar.f7835i = true;
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.u.b.a
    public final void a(String str) {
    }

    @Override // com.anythink.core.common.u.b.a
    public final void b(e eVar) {
    }

    @Override // com.anythink.core.common.u.b.a
    public final void c(e eVar) {
        eVar.f7833g = true;
    }

    @Override // com.anythink.core.common.u.b.a
    public final void d(e eVar) {
        eVar.f7834h = true;
    }

    @Override // com.anythink.core.common.u.b.a
    public final boolean e(e eVar) {
        if (!eVar.f7834h || eVar.f7833g) {
            return false;
        }
        n nVar = eVar.f7828b;
        try {
            if (!eVar.f7835i) {
                nVar.aj();
                com.anythink.core.common.u.e.a(s.b().g());
                com.anythink.core.common.u.e.a(6, nVar);
                eVar.f7835i = true;
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    @Override // com.anythink.core.common.u.b.a
    public final void a(e eVar) {
        eVar.f7830d = System.currentTimeMillis();
    }
}
