package kotlinx.coroutines;

import androidx.core.location.LocationRequestCompat;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.time.DurationUnit;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class DelayKt {
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.coroutines.e r4) throws java.lang.Throwable {
        /*
            boolean r0 = r4 instanceof kotlinx.coroutines.DelayKt$awaitCancellation$1
            if (r0 == 0) goto L13
            r0 = r4
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = (kotlinx.coroutines.DelayKt$awaitCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = new kotlinx.coroutines.DelayKt$awaitCancellation$1
            r0.<init>(r4)
        L18:
            java.lang.Object r4 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L2d:
            kotlin.e.b(r4)
            goto L52
        L31:
            kotlin.e.b(r4)
            r0.label = r3
            kotlinx.coroutines.n r4 = new kotlinx.coroutines.n
            kotlin.coroutines.e r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.c(r0)
            r4.<init>(r2, r3)
            r4.F()
            java.lang.Object r4 = r4.y()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.e()
            if (r4 != r2) goto L4f
            w1.AbstractC1795e.c(r0)
        L4f:
            if (r4 != r1) goto L52
            return r1
        L52:
            kotlin.KotlinNothingValueException r4 = new kotlin.KotlinNothingValueException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DelayKt.a(kotlin.coroutines.e):java.lang.Object");
    }

    public static final Object b(long j2, kotlin.coroutines.e eVar) {
        if (j2 <= 0) {
            return kotlin.j.f51397a;
        }
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        if (j2 < LocationRequestCompat.PASSIVE_INTERVAL) {
            c(c1691n.getContext()).d(j2, c1691n);
        }
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY == kotlin.coroutines.intrinsics.a.e() ? objY : kotlin.j.f51397a;
    }

    public static final T c(kotlin.coroutines.i iVar) {
        i.b bVar = iVar.get(kotlin.coroutines.f.R2);
        T t2 = bVar instanceof T ? (T) bVar : null;
        return t2 == null ? Q.a() : t2;
    }

    public static final long d(long j2) {
        boolean zW = kotlin.time.b.w(j2);
        if (zW) {
            return kotlin.time.b.j(kotlin.time.b.x(j2, kotlin.time.d.p(999999L, DurationUnit.NANOSECONDS)));
        }
        if (zW) {
            throw new NoWhenBranchMatchedException();
        }
        return 0L;
    }
}
