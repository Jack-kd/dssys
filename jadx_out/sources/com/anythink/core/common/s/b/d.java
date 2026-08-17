package com.anythink.core.common.s.b;

import com.anythink.core.common.s.a.h;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f7647a = false;

    /* renamed from: com.anythink.core.common.s.b.d$1, reason: invalid class name */
    public class AnonymousClass1 implements Executor {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.v.b.c f7648a;

        public AnonymousClass1(com.anythink.core.common.v.b.c cVar) {
            this.f7648a = cVar;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f7648a.d(runnable instanceof com.anythink.core.common.v.b.d ? (com.anythink.core.common.v.b.d) runnable : new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dz, runnable));
        }
    }

    /* renamed from: com.anythink.core.common.s.b.d$2, reason: invalid class name */
    public class AnonymousClass2 implements Executor {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.anythink.core.common.v.b.c f7649a;

        public AnonymousClass2(com.anythink.core.common.v.b.c cVar) {
            this.f7649a = cVar;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f7649a.g(runnable instanceof com.anythink.core.common.v.b.d ? (com.anythink.core.common.v.b.d) runnable : new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dA, runnable));
        }
    }

    public static class a implements com.anythink.core.common.s.a.a.c {
        @Override // com.anythink.core.common.s.a.a.c
        public final void a(String str, Exception exc) {
        }

        @Override // com.anythink.core.common.s.a.a.c
        public final void b(String str, Exception exc) {
        }

        @Override // com.anythink.core.common.s.a.a.c
        public final void a(String str, String str2) {
        }
    }

    private static void a() {
        if (f7647a) {
            return;
        }
        f7647a = true;
        com.anythink.core.common.v.b.c cVarA = com.anythink.core.common.v.b.c.a();
        h.a(new AnonymousClass1(cVarA));
        h.b(new AnonymousClass2(cVarA));
        h.a(new a());
    }

    public static f b(com.anythink.core.common.s.c cVar) {
        if (cVar != null) {
            return new f(cVar);
        }
        return null;
    }

    public static com.anythink.core.common.s.a c(com.anythink.core.common.s.c cVar) {
        if (cVar != null) {
            return new e(cVar);
        }
        return null;
    }

    public static c a(com.anythink.core.common.s.c cVar) {
        if (cVar == null) {
            return null;
        }
        if (!f7647a) {
            f7647a = true;
            com.anythink.core.common.v.b.c cVarA = com.anythink.core.common.v.b.c.a();
            h.a(new AnonymousClass1(cVarA));
            h.b(new AnonymousClass2(cVarA));
            h.a(new a());
        }
        return new c(cVar);
    }
}
