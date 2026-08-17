package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;

/* renamed from: kotlinx.coroutines.h, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1664h {
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.coroutines.i r4, kotlin.jvm.functions.Function2 r5) {
        /*
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            kotlin.coroutines.f$b r1 = kotlin.coroutines.f.R2
            kotlin.coroutines.i$b r1 = r4.get(r1)
            kotlin.coroutines.f r1 = (kotlin.coroutines.f) r1
            if (r1 != 0) goto L1f
            kotlinx.coroutines.O0 r1 = kotlinx.coroutines.O0.f51523a
            kotlinx.coroutines.d0 r1 = r1.b()
            kotlinx.coroutines.n0 r2 = kotlinx.coroutines.C1692n0.f51824b
            kotlin.coroutines.i r4 = r4.plus(r1)
            kotlin.coroutines.i r4 = kotlinx.coroutines.F.k(r2, r4)
            goto L42
        L1f:
            boolean r2 = r1 instanceof kotlinx.coroutines.AbstractC1632d0
            r3 = 0
            if (r2 == 0) goto L27
            kotlinx.coroutines.d0 r1 = (kotlinx.coroutines.AbstractC1632d0) r1
            goto L28
        L27:
            r1 = r3
        L28:
            if (r1 == 0) goto L36
            boolean r2 = r1.K()
            if (r2 == 0) goto L31
            r3 = r1
        L31:
            if (r3 != 0) goto L34
            goto L36
        L34:
            r1 = r3
            goto L3c
        L36:
            kotlinx.coroutines.O0 r1 = kotlinx.coroutines.O0.f51523a
            kotlinx.coroutines.d0 r1 = r1.a()
        L3c:
            kotlinx.coroutines.n0 r2 = kotlinx.coroutines.C1692n0.f51824b
            kotlin.coroutines.i r4 = kotlinx.coroutines.F.k(r2, r4)
        L42:
            kotlinx.coroutines.e r2 = new kotlinx.coroutines.e
            r2.<init>(r4, r0, r1)
            kotlinx.coroutines.CoroutineStart r4 = kotlinx.coroutines.CoroutineStart.DEFAULT
            r2.V0(r4, r2, r5)
            java.lang.Object r4 = r2.W0()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AbstractC1664h.a(kotlin.coroutines.i, kotlin.jvm.functions.Function2):java.lang.Object");
    }

    public static /* synthetic */ Object b(kotlin.coroutines.i iVar, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            iVar = EmptyCoroutineContext.INSTANCE;
        }
        return AbstractC1662g.c(iVar, function2);
    }
}
