package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.B;
import kotlinx.coroutines.internal.E;

/* loaded from: classes5.dex */
public abstract class SemaphoreKt {

    /* renamed from: a, reason: collision with root package name */
    public static final int f51896a = E.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);

    /* renamed from: b, reason: collision with root package name */
    public static final B f51897b = new B("PERMIT");

    /* renamed from: c, reason: collision with root package name */
    public static final B f51898c = new B("TAKEN");

    /* renamed from: d, reason: collision with root package name */
    public static final B f51899d = new B("BROKEN");

    /* renamed from: e, reason: collision with root package name */
    public static final B f51900e = new B("CANCELLED");

    /* renamed from: f, reason: collision with root package name */
    public static final int f51901f = E.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);

    public static final i h(long j2, i iVar) {
        return new i(j2, iVar, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object i(kotlinx.coroutines.sync.g r4, kotlin.jvm.functions.Function0 r5, kotlin.coroutines.e r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = (kotlinx.coroutines.sync.SemaphoreKt$withPermit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = new kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.L$1
            r5 = r4
            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
            java.lang.Object r4 = r0.L$0
            t.f.a(r4)
            kotlin.e.b(r6)
            r4 = 0
            goto L4c
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            kotlin.e.b(r6)
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r4.a(r0)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            java.lang.Object r5 = r5.invoke()     // Catch: java.lang.Throwable -> L5a
            kotlin.jvm.internal.i.b(r3)
            r4.release()
            kotlin.jvm.internal.i.a(r3)
            return r5
        L5a:
            r5 = move-exception
            kotlin.jvm.internal.i.b(r3)
            r4.release()
            kotlin.jvm.internal.i.a(r3)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreKt.i(kotlinx.coroutines.sync.g, kotlin.jvm.functions.Function0, kotlin.coroutines.e):java.lang.Object");
    }
}
