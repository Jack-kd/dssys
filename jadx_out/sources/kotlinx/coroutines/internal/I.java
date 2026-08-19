package kotlinx.coroutines.internal;

import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.M0;

/* loaded from: classes5.dex */
public abstract class I {

    /* renamed from: a, reason: collision with root package name */
    public static final B f51756a = new B("NO_THREAD_ELEMENTS");

    /* renamed from: b, reason: collision with root package name */
    public static final Function2 f51757b = new Function2() { // from class: kotlinx.coroutines.internal.F
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return I.d(obj, (i.b) obj2);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final Function2 f51758c = new Function2() { // from class: kotlinx.coroutines.internal.G
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return I.e((M0) obj, (i.b) obj2);
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final Function2 f51759d = new Function2() { // from class: kotlinx.coroutines.internal.H
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return I.h((O) obj, (i.b) obj2);
        }
    };

    public static final Object d(Object obj, i.b bVar) {
        if (!(bVar instanceof M0)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? bVar : Integer.valueOf(iIntValue + 1);
    }

    public static final M0 e(M0 m02, i.b bVar) {
        if (m02 != null) {
            return m02;
        }
        if (bVar instanceof M0) {
            return (M0) bVar;
        }
        return null;
    }

    public static final void f(kotlin.coroutines.i iVar, Object obj) {
        if (obj == f51756a) {
            return;
        }
        if (obj instanceof O) {
            ((O) obj).b(iVar);
            return;
        }
        Object objFold = iVar.fold(null, f51758c);
        kotlin.jvm.internal.j.c(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((M0) objFold).g(iVar, obj);
    }

    public static final Object g(kotlin.coroutines.i iVar) {
        Object objFold = iVar.fold(0, f51757b);
        kotlin.jvm.internal.j.b(objFold);
        return objFold;
    }

    public static final O h(O o2, i.b bVar) {
        if (bVar instanceof M0) {
            M0 m02 = (M0) bVar;
            o2.a(m02, m02.F(o2.f51769a));
        }
        return o2;
    }

    public static final Object i(kotlin.coroutines.i iVar, Object obj) {
        if (obj == null) {
            obj = g(iVar);
        }
        if (obj == 0) {
            return f51756a;
        }
        if (obj instanceof Integer) {
            return iVar.fold(new O(iVar, ((Number) obj).intValue()), f51759d);
        }
        kotlin.jvm.internal.j.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((M0) obj).F(iVar);
    }
}
