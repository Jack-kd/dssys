package kotlinx.coroutines.internal;

import kotlinx.coroutines.AbstractC1632d0;
import kotlinx.coroutines.O0;

/* renamed from: kotlinx.coroutines.internal.h, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1675h {

    /* renamed from: a, reason: collision with root package name */
    public static final B f51783a = new B("UNDEFINED");

    /* renamed from: b, reason: collision with root package name */
    public static final B f51784b = new B("REUSABLE_CLAIMED");

    /* JADX WARN: Removed duplicated region for block: B:27:0x008e A[Catch: all -> 0x0067, DONT_GENERATE, TryCatch #0 {all -> 0x0067, blocks: (B:11:0x003e, B:13:0x004c, B:15:0x0052, B:28:0x0091, B:18:0x0069, B:20:0x0079, B:25:0x0088, B:27:0x008e, B:33:0x009e, B:36:0x00a7, B:35:0x00a4, B:23:0x007f), top: B:45:0x003e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(kotlin.coroutines.e r6, java.lang.Object r7) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.internal.C1674g
            if (r0 == 0) goto Lb2
            kotlinx.coroutines.internal.g r6 = (kotlinx.coroutines.internal.C1674g) r6
            java.lang.Object r0 = kotlinx.coroutines.B.b(r7)
            kotlinx.coroutines.H r1 = r6.f51779e
            kotlin.coroutines.i r2 = r6.getContext()
            boolean r1 = r1.isDispatchNeeded(r2)
            r2 = 1
            if (r1 == 0) goto L26
            r6.f51781g = r0
            r6.f51537d = r2
            kotlinx.coroutines.H r7 = r6.f51779e
            kotlin.coroutines.i r0 = r6.getContext()
            r7.dispatch(r0, r6)
            goto Lac
        L26:
            kotlinx.coroutines.O0 r1 = kotlinx.coroutines.O0.f51523a
            kotlinx.coroutines.d0 r1 = r1.b()
            boolean r3 = r1.G()
            if (r3 == 0) goto L3b
            r6.f51781g = r0
            r6.f51537d = r2
            r1.n(r6)
            goto Lac
        L3b:
            r1.D(r2)
            kotlin.coroutines.i r3 = r6.getContext()     // Catch: java.lang.Throwable -> L67
            kotlinx.coroutines.u0$b r4 = kotlinx.coroutines.InterfaceC1705u0.T2     // Catch: java.lang.Throwable -> L67
            kotlin.coroutines.i$b r3 = r3.get(r4)     // Catch: java.lang.Throwable -> L67
            kotlinx.coroutines.u0 r3 = (kotlinx.coroutines.InterfaceC1705u0) r3     // Catch: java.lang.Throwable -> L67
            if (r3 == 0) goto L69
            boolean r4 = r3.isActive()     // Catch: java.lang.Throwable -> L67
            if (r4 != 0) goto L69
            java.util.concurrent.CancellationException r7 = r3.z()     // Catch: java.lang.Throwable -> L67
            r6.a(r0, r7)     // Catch: java.lang.Throwable -> L67
            kotlin.Result$a r0 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L67
            java.lang.Object r7 = kotlin.e.a(r7)     // Catch: java.lang.Throwable -> L67
            java.lang.Object r7 = kotlin.Result.m66constructorimpl(r7)     // Catch: java.lang.Throwable -> L67
            r6.resumeWith(r7)     // Catch: java.lang.Throwable -> L67
            goto L91
        L67:
            r7 = move-exception
            goto La8
        L69:
            kotlin.coroutines.e r0 = r6.f51780f     // Catch: java.lang.Throwable -> L67
            java.lang.Object r3 = r6.f51782h     // Catch: java.lang.Throwable -> L67
            kotlin.coroutines.i r4 = r0.getContext()     // Catch: java.lang.Throwable -> L67
            java.lang.Object r3 = kotlinx.coroutines.internal.I.i(r4, r3)     // Catch: java.lang.Throwable -> L67
            kotlinx.coroutines.internal.B r5 = kotlinx.coroutines.internal.I.f51756a     // Catch: java.lang.Throwable -> L67
            if (r3 == r5) goto L7e
            kotlinx.coroutines.S0 r0 = kotlinx.coroutines.F.m(r0, r4, r3)     // Catch: java.lang.Throwable -> L67
            goto L7f
        L7e:
            r0 = 0
        L7f:
            kotlin.coroutines.e r5 = r6.f51780f     // Catch: java.lang.Throwable -> L9b
            r5.resumeWith(r7)     // Catch: java.lang.Throwable -> L9b
            kotlin.j r7 = kotlin.j.f51397a     // Catch: java.lang.Throwable -> L9b
            if (r0 == 0) goto L8e
            boolean r7 = r0.W0()     // Catch: java.lang.Throwable -> L67
            if (r7 == 0) goto L91
        L8e:
            kotlinx.coroutines.internal.I.f(r4, r3)     // Catch: java.lang.Throwable -> L67
        L91:
            boolean r7 = r1.J()     // Catch: java.lang.Throwable -> L67
            if (r7 != 0) goto L91
        L97:
            r1.j(r2)
            goto Lac
        L9b:
            r7 = move-exception
            if (r0 == 0) goto La4
            boolean r0 = r0.W0()     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto La7
        La4:
            kotlinx.coroutines.internal.I.f(r4, r3)     // Catch: java.lang.Throwable -> L67
        La7:
            throw r7     // Catch: java.lang.Throwable -> L67
        La8:
            r6.g(r7)     // Catch: java.lang.Throwable -> Lad
            goto L97
        Lac:
            return
        Lad:
            r6 = move-exception
            r1.j(r2)
            throw r6
        Lb2:
            r6.resumeWith(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.AbstractC1675h.b(kotlin.coroutines.e, java.lang.Object):void");
    }

    public static final boolean c(C1674g c1674g) {
        kotlin.j jVar = kotlin.j.f51397a;
        AbstractC1632d0 abstractC1632d0B = O0.f51523a.b();
        if (abstractC1632d0B.H()) {
            return false;
        }
        if (abstractC1632d0B.G()) {
            c1674g.f51781g = jVar;
            c1674g.f51537d = 1;
            abstractC1632d0B.n(c1674g);
            return true;
        }
        abstractC1632d0B.D(true);
        try {
            c1674g.run();
            do {
            } while (abstractC1632d0B.J());
        } finally {
            try {
                return false;
            } finally {
            }
        }
        return false;
    }
}
