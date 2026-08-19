package com.anythink.core.common.u.a.b;

import com.anythink.core.common.h.o;
import com.anythink.core.common.h.u;
import com.anythink.core.common.u.a.b.a.b;
import com.anythink.core.common.u.a.b.a.c;
import com.anythink.core.common.u.a.b.a.c.a;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final int f7747a = 5;

    /* renamed from: d, reason: collision with root package name */
    private static a f7748d;

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.core.common.u.a.b.a.c.a<com.anythink.core.common.u.a.b.a.a> f7749b = new com.anythink.core.common.u.a.b.a.c.a<>(new a.InterfaceC0082a<com.anythink.core.common.u.a.b.a.a>() { // from class: com.anythink.core.common.u.a.b.a.1
        private static com.anythink.core.common.u.a.b.a.a b() {
            return new com.anythink.core.common.u.a.b.a.a();
        }

        @Override // com.anythink.core.common.u.a.b.a.c.a.InterfaceC0082a
        public final /* synthetic */ b a() {
            return new com.anythink.core.common.u.a.b.a.a();
        }
    });

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.u.a.b.a.c.a<c> f7750c = new com.anythink.core.common.u.a.b.a.c.a<>(new a.InterfaceC0082a<c>() { // from class: com.anythink.core.common.u.a.b.a.2
        private static c b() {
            return new c();
        }

        @Override // com.anythink.core.common.u.a.b.a.c.a.InterfaceC0082a
        public final /* synthetic */ b a() {
            return new c();
        }
    });

    public static a a() {
        if (f7748d == null) {
            synchronized (a.class) {
                try {
                    if (f7748d == null) {
                        f7748d = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7748d;
    }

    public static void b(boolean z2) {
        new com.anythink.core.common.u.a.b.a.b.b().a(z2);
    }

    public final void a(u uVar) throws Throwable {
        com.anythink.core.common.u.a.b.a.a aVar = null;
        try {
            com.anythink.core.common.u.a.b.a.a aVar2 = (com.anythink.core.common.u.a.b.a.a) this.f7749b.a();
            try {
                aVar2.d(uVar);
                this.f7749b.a(aVar2);
            } catch (Throwable th) {
                th = th;
                aVar = aVar2;
                if (aVar != null) {
                    this.f7749b.a(aVar);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(o oVar) throws Throwable {
        c cVar = null;
        try {
            c cVar2 = (c) this.f7750c.a();
            try {
                cVar2.d(oVar);
                this.f7750c.a(cVar2);
            } catch (Throwable th) {
                th = th;
                cVar = cVar2;
                if (cVar != null) {
                    this.f7750c.a(cVar);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(boolean z2) {
        new com.anythink.core.common.u.a.b.a.b.c().a(z2);
    }
}
