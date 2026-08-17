package kotlinx.coroutines.selects;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.InterfaceC1685k;
import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.Z;
import kotlinx.coroutines.internal.y;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public class SelectImplementation implements InterfaceC1685k, b, j {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51857g = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");

    /* renamed from: b, reason: collision with root package name */
    public final kotlin.coroutines.i f51858b;

    /* renamed from: d, reason: collision with root package name */
    public Object f51860d;
    private volatile /* synthetic */ Object state$volatile = k.f51881b;

    /* renamed from: c, reason: collision with root package name */
    public List f51859c = new ArrayList(2);

    /* renamed from: e, reason: collision with root package name */
    public int f51861e = -1;

    /* renamed from: f, reason: collision with root package name */
    public Object f51862f = k.f51884e;

    public final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Object f51863a;

        /* renamed from: b, reason: collision with root package name */
        public final Function3 f51864b;

        /* renamed from: c, reason: collision with root package name */
        public final Function3 f51865c;

        /* renamed from: d, reason: collision with root package name */
        public final Object f51866d;

        /* renamed from: e, reason: collision with root package name */
        public final Object f51867e;

        /* renamed from: f, reason: collision with root package name */
        public final Function3 f51868f;

        /* renamed from: g, reason: collision with root package name */
        public Object f51869g;

        /* renamed from: h, reason: collision with root package name */
        public int f51870h = -1;

        public a(Object obj, Function3 function3, Function3 function32, Object obj2, Object obj3, Function3 function33) {
            this.f51863a = obj;
            this.f51864b = function3;
            this.f51865c = function32;
            this.f51866d = obj2;
            this.f51867e = obj3;
            this.f51868f = function33;
        }

        public final Function3 a(i iVar, Object obj) {
            Function3 function3 = this.f51868f;
            if (function3 != null) {
                return (Function3) function3.invoke(iVar, this.f51866d, obj);
            }
            return null;
        }

        public final void b() {
            Object obj = this.f51869g;
            SelectImplementation selectImplementation = SelectImplementation.this;
            if (obj instanceof y) {
                ((y) obj).s(this.f51870h, null, selectImplementation.getContext());
                return;
            }
            Z z2 = obj instanceof Z ? (Z) obj : null;
            if (z2 != null) {
                z2.dispose();
            }
        }

        public final Object c(Object obj, kotlin.coroutines.e eVar) {
            Object obj2 = this.f51867e;
            if (this.f51866d == k.i()) {
                kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj2).invoke(eVar);
            }
            kotlin.jvm.internal.j.c(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj2).invoke(obj, eVar);
        }

        public final Object d(Object obj) {
            return this.f51865c.invoke(this.f51863a, this.f51866d, obj);
        }

        public final boolean e(SelectImplementation selectImplementation) {
            this.f51864b.invoke(this.f51863a, selectImplementation, this.f51866d);
            return selectImplementation.f51862f == k.f51884e;
        }
    }

    public SelectImplementation(kotlin.coroutines.i iVar) {
        this.f51858b = iVar;
    }

    public static /* synthetic */ Object q(SelectImplementation selectImplementation, kotlin.coroutines.e eVar) {
        return selectImplementation.u() ? selectImplementation.o(eVar) : selectImplementation.r(eVar);
    }

    public static /* synthetic */ void x(SelectImplementation selectImplementation, a aVar, boolean z2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i2 & 1) != 0) {
            z2 = false;
        }
        selectImplementation.w(aVar, z2);
    }

    public final int A(Object obj, Object obj2) {
        while (true) {
            Object obj3 = f51857g.get(this);
            if (obj3 instanceof InterfaceC1687l) {
                a aVarS = s(obj);
                if (aVarS == null) {
                    continue;
                } else {
                    Function3 function3A = aVarS.a(this, obj2);
                    if (androidx.concurrent.futures.a.a(f51857g, this, obj3, aVarS)) {
                        this.f51862f = obj2;
                        if (k.j((InterfaceC1687l) obj3, function3A)) {
                            return 0;
                        }
                        this.f51862f = k.f51884e;
                        return 2;
                    }
                }
            } else {
                if (kotlin.jvm.internal.j.a(obj3, k.f51882c) || (obj3 instanceof a)) {
                    return 3;
                }
                if (kotlin.jvm.internal.j.a(obj3, k.f51883d)) {
                    return 2;
                }
                if (kotlin.jvm.internal.j.a(obj3, k.f51881b)) {
                    if (androidx.concurrent.futures.a.a(f51857g, this, obj3, p.e(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (androidx.concurrent.futures.a.a(f51857g, this, obj3, kotlin.collections.y.U((Collection) obj3, obj))) {
                        return 1;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        r0 = r0.y();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.a.e()) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
    
        w1.AbstractC1795e.c(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.a.e()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        return kotlin.j.f51397a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object B(kotlin.coroutines.e r6) {
        /*
            r5 = this;
            kotlinx.coroutines.n r0 = new kotlinx.coroutines.n
            kotlin.coroutines.e r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.c(r6)
            r2 = 1
            r0.<init>(r1, r2)
            r0.F()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = j()
        L11:
            java.lang.Object r2 = r1.get(r5)
            kotlinx.coroutines.internal.B r3 = kotlinx.coroutines.selects.k.g()
            if (r2 != r3) goto L29
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = j()
            boolean r2 = androidx.concurrent.futures.a.a(r3, r5, r2, r0)
            if (r2 == 0) goto L11
            kotlinx.coroutines.AbstractC1695p.c(r0, r5)
            goto L62
        L29:
            boolean r3 = r2 instanceof java.util.List
            if (r3 == 0) goto L4f
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = j()
            kotlinx.coroutines.internal.B r4 = kotlinx.coroutines.selects.k.g()
            boolean r3 = androidx.concurrent.futures.a.a(r3, r5, r2, r4)
            if (r3 == 0) goto L11
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Iterator r2 = r2.iterator()
        L41:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L11
            java.lang.Object r3 = r2.next()
            l(r5, r3)
            goto L41
        L4f:
            boolean r1 = r2 instanceof kotlinx.coroutines.selects.SelectImplementation.a
            if (r1 == 0) goto L79
            kotlin.j r1 = kotlin.j.f51397a
            kotlinx.coroutines.selects.SelectImplementation$a r2 = (kotlinx.coroutines.selects.SelectImplementation.a) r2
            java.lang.Object r3 = i(r5)
            kotlin.jvm.functions.Function3 r2 = r2.a(r5, r3)
            r0.q(r1, r2)
        L62:
            java.lang.Object r0 = r0.y()
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            if (r0 != r1) goto L6f
            w1.AbstractC1795e.c(r6)
        L6f:
            java.lang.Object r6 = kotlin.coroutines.intrinsics.a.e()
            if (r0 != r6) goto L76
            return r0
        L76:
            kotlin.j r6 = kotlin.j.f51397a
            return r6
        L79:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "unexpected state: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.toString()
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.B(kotlin.coroutines.e):java.lang.Object");
    }

    @Override // kotlinx.coroutines.selects.b
    public void a(d dVar, Function1 function1) {
        x(this, new a(dVar.d(), dVar.c(), dVar.b(), k.i(), function1, dVar.a()), false, 1, null);
    }

    @Override // kotlinx.coroutines.U0
    public void b(y yVar, int i2) {
        this.f51860d = yVar;
        this.f51861e = i2;
    }

    @Override // kotlinx.coroutines.InterfaceC1685k
    public void c(Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51857g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == k.f51882c) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, k.f51883d));
        List list = this.f51859c;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((a) it.next()).b();
        }
        this.f51862f = k.f51884e;
        this.f51859c = null;
    }

    @Override // kotlinx.coroutines.selects.i
    public void d(Object obj) {
        this.f51862f = obj;
    }

    @Override // kotlinx.coroutines.selects.i
    public void e(Z z2) {
        this.f51860d = z2;
    }

    @Override // kotlinx.coroutines.selects.i
    public boolean f(Object obj, Object obj2) {
        return A(obj, obj2) == 0;
    }

    @Override // kotlinx.coroutines.selects.b
    public void g(f fVar, Function2 function2) {
        x(this, new a(fVar.d(), fVar.c(), fVar.b(), null, function2, fVar.a()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.j, kotlinx.coroutines.selects.i
    @NotNull
    public kotlin.coroutines.i getContext() {
        return this.f51858b;
    }

    public final void m(Object obj) {
        List list = this.f51859c;
        kotlin.jvm.internal.j.b(list);
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (((a) it.next()).f51863a == obj) {
                throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
            }
        }
    }

    public final void n(a aVar) {
        List<a> list = this.f51859c;
        if (list == null) {
            return;
        }
        for (a aVar2 : list) {
            if (aVar2 != aVar) {
                aVar2.b();
            }
        }
        f51857g.set(this, k.f51882c);
        this.f51862f = k.f51884e;
        this.f51859c = null;
    }

    public final Object o(kotlin.coroutines.e eVar) {
        Object obj = f51857g.get(this);
        kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        a aVar = (a) obj;
        Object obj2 = this.f51862f;
        n(aVar);
        return aVar.c(aVar.d(obj2), eVar);
    }

    public Object p(kotlin.coroutines.e eVar) {
        return q(this, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(kotlin.coroutines.e r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = (kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = new kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.e.b(r6)
            return r6
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.selects.SelectImplementation r2 = (kotlinx.coroutines.selects.SelectImplementation) r2
            kotlin.e.b(r6)
            goto L4b
        L3c:
            kotlin.e.b(r6)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r5.B(r0)
            if (r6 != r1) goto L4a
            goto L56
        L4a:
            r2 = r5
        L4b:
            r6 = 0
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r6 = r2.o(r0)
            if (r6 != r1) goto L57
        L56:
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.r(kotlin.coroutines.e):java.lang.Object");
    }

    public final a s(Object obj) {
        List list = this.f51859c;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((a) next).f51863a == obj) {
                obj2 = next;
                break;
            }
        }
        a aVar = (a) obj2;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    public final boolean u() {
        return f51857g.get(this) instanceof a;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(kotlinx.coroutines.selects.SelectImplementation.a r5, java.lang.Object r6, kotlin.coroutines.e r7) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1 r0 = (kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1 r0 = new kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.e.b(r7)
            return r7
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.e.b(r7)
            java.lang.Object r6 = r5.d(r6)
            r0.label = r3
            java.lang.Object r5 = r5.c(r6, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.v(kotlinx.coroutines.selects.SelectImplementation$a, java.lang.Object, kotlin.coroutines.e):java.lang.Object");
    }

    public final void w(a aVar, boolean z2) {
        if (f51857g.get(this) instanceof a) {
            return;
        }
        if (!z2) {
            m(aVar.f51863a);
        }
        if (!aVar.e(this)) {
            f51857g.set(this, aVar);
            return;
        }
        if (!z2) {
            List list = this.f51859c;
            kotlin.jvm.internal.j.b(list);
            list.add(aVar);
        }
        aVar.f51869g = this.f51860d;
        aVar.f51870h = this.f51861e;
        this.f51860d = null;
        this.f51861e = -1;
    }

    public final void y(Object obj) {
        a aVarS = s(obj);
        kotlin.jvm.internal.j.b(aVarS);
        aVarS.f51869g = null;
        aVarS.f51870h = -1;
        w(aVarS, true);
    }

    public final TrySelectDetailedResult z(Object obj, Object obj2) {
        return k.a(A(obj, obj2));
    }
}
