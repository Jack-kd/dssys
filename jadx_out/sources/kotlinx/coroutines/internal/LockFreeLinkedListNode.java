package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.PropertyReference0Impl;

/* loaded from: classes5.dex */
public class LockFreeLinkedListNode {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51764b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51765c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51766d = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public final boolean c(LockFreeLinkedListNode lockFreeLinkedListNode, int i2) {
        LockFreeLinkedListNode lockFreeLinkedListNodeL;
        do {
            lockFreeLinkedListNodeL = l();
            if (lockFreeLinkedListNodeL instanceof C1679l) {
                return (((C1679l) lockFreeLinkedListNodeL).f51794e & i2) == 0 && lockFreeLinkedListNodeL.c(lockFreeLinkedListNode, i2);
            }
        } while (!lockFreeLinkedListNodeL.d(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean d(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f51765c.set(lockFreeLinkedListNode, this);
        f51764b.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!androidx.concurrent.futures.a.a(f51764b, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.i(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean e(LockFreeLinkedListNode lockFreeLinkedListNode) {
        f51765c.set(lockFreeLinkedListNode, this);
        f51764b.set(lockFreeLinkedListNode, this);
        while (j() == this) {
            if (androidx.concurrent.futures.a.a(f51764b, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.i(this);
                return true;
            }
        }
        return false;
    }

    public final void f(int i2) {
        c(new C1679l(i2), i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (androidx.concurrent.futures.a.a(kotlinx.coroutines.internal.LockFreeLinkedListNode.f51764b, r3, r2, ((kotlinx.coroutines.internal.v) r4).f51810a) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode g() {
        /*
            r7 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = n()
            java.lang.Object r0 = r0.get(r7)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r1 = 0
            r2 = r0
        Lc:
            r3 = r1
        Ld:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = m()
            java.lang.Object r4 = r4.get(r2)
            if (r4 != r7) goto L26
            if (r0 != r2) goto L1a
            goto L25
        L1a:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = n()
            boolean r0 = androidx.concurrent.futures.a.a(r1, r7, r0, r2)
            if (r0 != 0) goto L25
            goto L0
        L25:
            return r2
        L26:
            boolean r5 = r7.p()
            if (r5 == 0) goto L2d
            return r1
        L2d:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.v
            if (r5 == 0) goto L4f
            if (r3 == 0) goto L44
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = m()
            kotlinx.coroutines.internal.v r4 = (kotlinx.coroutines.internal.v) r4
            kotlinx.coroutines.internal.LockFreeLinkedListNode r4 = r4.f51810a
            boolean r2 = androidx.concurrent.futures.a.a(r5, r3, r2, r4)
            if (r2 != 0) goto L42
            goto L0
        L42:
            r2 = r3
            goto Lc
        L44:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = n()
            java.lang.Object r2 = r4.get(r2)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r2 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r2
            goto Ld
        L4f:
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            kotlin.jvm.internal.j.c(r4, r3)
            r3 = r4
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.g():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    public final LockFreeLinkedListNode h(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) f51765c.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    public final void i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51765c;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (j() != lockFreeLinkedListNode) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f51765c, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (p()) {
            lockFreeLinkedListNode.g();
        }
    }

    public final Object j() {
        return f51764b.get(this);
    }

    public final LockFreeLinkedListNode k() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object objJ = j();
        v vVar = objJ instanceof v ? (v) objJ : null;
        if (vVar != null && (lockFreeLinkedListNode = vVar.f51810a) != null) {
            return lockFreeLinkedListNode;
        }
        kotlin.jvm.internal.j.c(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (LockFreeLinkedListNode) objJ;
    }

    public final LockFreeLinkedListNode l() {
        LockFreeLinkedListNode lockFreeLinkedListNodeG = g();
        return lockFreeLinkedListNodeG == null ? h((LockFreeLinkedListNode) f51765c.get(this)) : lockFreeLinkedListNodeG;
    }

    public boolean p() {
        return j() instanceof v;
    }

    public boolean q() {
        return r() == null;
    }

    public final LockFreeLinkedListNode r() {
        Object objJ;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            objJ = j();
            if (objJ instanceof v) {
                return ((v) objJ).f51810a;
            }
            if (objJ == this) {
                return (LockFreeLinkedListNode) objJ;
            }
            kotlin.jvm.internal.j.c(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) objJ;
        } while (!androidx.concurrent.futures.a.a(f51764b, this, objJ, lockFreeLinkedListNode.s()));
        lockFreeLinkedListNode.g();
        return null;
    }

    public final v s() {
        v vVar = (v) f51766d.get(this);
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(this);
        f51766d.set(this, vVar2);
        return vVar2;
    }

    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode.toString.1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.jvm.internal.PropertyReference0
            public Object get() {
                return kotlinx.coroutines.O.a(this.receiver);
            }
        } + '@' + kotlinx.coroutines.O.b(this);
    }
}
