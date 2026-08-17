package com.anythink.core.common.u.b;

import com.anythink.core.common.d.s;
import com.anythink.core.common.h.n;

/* loaded from: classes2.dex */
class b implements a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7817a = "b";

    /* renamed from: b, reason: collision with root package name */
    private static final long f7818b = 3000;

    /* renamed from: c, reason: collision with root package name */
    private final f f7819c;

    /* renamed from: com.anythink.core.common.u.b.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f7820a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f7821b;

        public AnonymousClass1(e eVar, String str) {
            this.f7820a = eVar;
            this.f7821b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                e eVar = this.f7820a;
                if (!eVar.f7833g && eVar.f7831e && b.c(eVar.f7829c)) {
                    b.f(this.f7820a);
                }
            } catch (Throwable unused) {
            }
            b.this.a(this.f7821b);
        }
    }

    public b(f fVar) {
        this.f7819c = fVar;
    }

    public static /* synthetic */ void f(e eVar) {
        n nVar = eVar.f7828b;
        if (eVar.f7835i) {
            return;
        }
        nVar.aj();
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(6, nVar);
        eVar.f7835i = true;
    }

    private void g(e eVar) {
        String str = eVar.f7827a;
        if (this.f7819c.b(str)) {
            return;
        }
        this.f7819c.a(str, new AnonymousClass1(eVar, str));
    }

    private static void h(e eVar) {
        n nVar = eVar.f7828b;
        if (eVar.f7835i) {
            return;
        }
        nVar.aj();
        com.anythink.core.common.u.e.a(s.b().g());
        com.anythink.core.common.u.e.a(6, nVar);
        eVar.f7835i = true;
    }

    @Override // com.anythink.core.common.u.b.a
    public final void a(e eVar) {
        eVar.f7830d = System.currentTimeMillis();
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
        a(eVar.f7827a);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(String str) {
        return "2".equals(str) || "0".equals(str);
    }

    @Override // com.anythink.core.common.u.b.a
    public final void a(String str) {
        this.f7819c.a(str);
    }

    @Override // com.anythink.core.common.u.b.a
    public final void b(e eVar) {
        eVar.f7831e = true;
        eVar.f7832f = System.currentTimeMillis();
        if (c(eVar.f7829c)) {
            String str = eVar.f7827a;
            if (this.f7819c.b(str)) {
                return;
            }
            this.f7819c.a(str, new AnonymousClass1(eVar, str));
        }
    }
}
