package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes5.dex */
public class M {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f51767b = AtomicIntegerFieldUpdater.newUpdater(M.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: a, reason: collision with root package name */
    public N[] f51768a;

    public final void a(N n2) {
        n2.a(this);
        N[] nArrG = g();
        int iC = c();
        k(iC + 1);
        nArrG[iC] = n2;
        n2.setIndex(iC);
        m(iC);
    }

    public final N b() {
        N[] nArr = this.f51768a;
        if (nArr != null) {
            return nArr[0];
        }
        return null;
    }

    public final int c() {
        return f51767b.get(this);
    }

    public final boolean e() {
        return c() == 0;
    }

    public final N f() {
        N nB;
        synchronized (this) {
            nB = b();
        }
        return nB;
    }

    public final N[] g() {
        N[] nArr = this.f51768a;
        if (nArr == null) {
            N[] nArr2 = new N[4];
            this.f51768a = nArr2;
            return nArr2;
        }
        if (c() < nArr.length) {
            return nArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(nArr, c() * 2);
        kotlin.jvm.internal.j.d(objArrCopyOf, "copyOf(...)");
        N[] nArr3 = (N[]) objArrCopyOf;
        this.f51768a = nArr3;
        return nArr3;
    }

    public final boolean h(N n2) {
        boolean z2;
        synchronized (this) {
            if (n2.c() == null) {
                z2 = false;
            } else {
                i(n2.getIndex());
                z2 = true;
            }
        }
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.N i(int r6) {
        /*
            r5 = this;
            kotlinx.coroutines.internal.N[] r0 = r5.f51768a
            kotlin.jvm.internal.j.b(r0)
            int r1 = r5.c()
            r2 = -1
            int r1 = r1 + r2
            r5.k(r1)
            int r1 = r5.c()
            if (r6 >= r1) goto L3d
            int r1 = r5.c()
            r5.n(r6, r1)
            int r1 = r6 + (-1)
            int r1 = r1 / 2
            if (r6 <= 0) goto L3a
            r3 = r0[r6]
            kotlin.jvm.internal.j.b(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r0[r1]
            kotlin.jvm.internal.j.b(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L3a
            r5.n(r6, r1)
            r5.m(r1)
            goto L3d
        L3a:
            r5.l(r6)
        L3d:
            int r6 = r5.c()
            r6 = r0[r6]
            kotlin.jvm.internal.j.b(r6)
            r1 = 0
            r6.a(r1)
            r6.setIndex(r2)
            int r2 = r5.c()
            r0[r2] = r1
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.M.i(int):kotlinx.coroutines.internal.N");
    }

    public final N j() {
        N nI;
        synchronized (this) {
            nI = c() > 0 ? i(0) : null;
        }
        return nI;
    }

    public final void k(int i2) {
        f51767b.set(this, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(int r6) {
        /*
            r5 = this;
        L0:
            int r0 = r6 * 2
            int r1 = r0 + 1
            int r2 = r5.c()
            if (r1 < r2) goto Lb
            goto L3e
        Lb:
            kotlinx.coroutines.internal.N[] r2 = r5.f51768a
            kotlin.jvm.internal.j.b(r2)
            int r0 = r0 + 2
            int r3 = r5.c()
            if (r0 >= r3) goto L2b
            r3 = r2[r0]
            kotlin.jvm.internal.j.b(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r2[r1]
            kotlin.jvm.internal.j.b(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L2b
            goto L2c
        L2b:
            r0 = r1
        L2c:
            r1 = r2[r6]
            kotlin.jvm.internal.j.b(r1)
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            r2 = r2[r0]
            kotlin.jvm.internal.j.b(r2)
            int r1 = r1.compareTo(r2)
            if (r1 > 0) goto L3f
        L3e:
            return
        L3f:
            r5.n(r6, r0)
            r6 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.M.l(int):void");
    }

    public final void m(int i2) {
        while (i2 > 0) {
            N[] nArr = this.f51768a;
            kotlin.jvm.internal.j.b(nArr);
            int i3 = (i2 - 1) / 2;
            N n2 = nArr[i3];
            kotlin.jvm.internal.j.b(n2);
            N n3 = nArr[i2];
            kotlin.jvm.internal.j.b(n3);
            if (((Comparable) n2).compareTo(n3) <= 0) {
                return;
            }
            n(i2, i3);
            i2 = i3;
        }
    }

    public final void n(int i2, int i3) {
        N[] nArr = this.f51768a;
        kotlin.jvm.internal.j.b(nArr);
        N n2 = nArr[i3];
        kotlin.jvm.internal.j.b(n2);
        N n3 = nArr[i2];
        kotlin.jvm.internal.j.b(n3);
        nArr[i2] = n2;
        nArr[i3] = n3;
        n2.setIndex(i2);
        n3.setIndex(i3);
    }
}
