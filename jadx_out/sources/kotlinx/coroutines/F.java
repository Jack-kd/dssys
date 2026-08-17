package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import w1.InterfaceC1793c;

/* loaded from: classes5.dex */
public abstract class F {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final kotlin.coroutines.i d(kotlin.coroutines.i iVar, kotlin.coroutines.i iVar2, final boolean z2) {
        boolean zH = h(iVar);
        boolean zH2 = h(iVar2);
        if (!zH && !zH2) {
            return iVar.plus(iVar2);
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = iVar2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        kotlin.coroutines.i iVar3 = (kotlin.coroutines.i) iVar.fold(emptyCoroutineContext, new Function2() { // from class: kotlinx.coroutines.D
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return F.e(ref$ObjectRef, z2, (kotlin.coroutines.i) obj, (i.b) obj2);
            }
        });
        if (zH2) {
            ref$ObjectRef.element = ((kotlin.coroutines.i) ref$ObjectRef.element).fold(emptyCoroutineContext, new Function2() { // from class: kotlinx.coroutines.E
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return F.f((kotlin.coroutines.i) obj, (i.b) obj2);
                }
            });
        }
        return iVar3.plus((kotlin.coroutines.i) ref$ObjectRef.element);
    }

    public static final kotlin.coroutines.i e(Ref$ObjectRef ref$ObjectRef, boolean z2, kotlin.coroutines.i iVar, i.b bVar) {
        return iVar.plus(bVar);
    }

    public static final kotlin.coroutines.i f(kotlin.coroutines.i iVar, i.b bVar) {
        return iVar.plus(bVar);
    }

    public static final String g(kotlin.coroutines.i iVar) {
        return null;
    }

    public static final boolean h(kotlin.coroutines.i iVar) {
        return ((Boolean) iVar.fold(Boolean.FALSE, new Function2() { // from class: kotlinx.coroutines.C
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(F.i(((Boolean) obj).booleanValue(), (i.b) obj2));
            }
        })).booleanValue();
    }

    public static final boolean i(boolean z2, i.b bVar) {
        return z2;
    }

    public static final kotlin.coroutines.i j(kotlin.coroutines.i iVar, kotlin.coroutines.i iVar2) {
        return !h(iVar2) ? iVar.plus(iVar2) : d(iVar, iVar2, false);
    }

    public static final kotlin.coroutines.i k(M m2, kotlin.coroutines.i iVar) {
        kotlin.coroutines.i iVarD = d(m2.getCoroutineContext(), iVar, true);
        return (iVarD == X.a() || iVarD.get(kotlin.coroutines.f.R2) != null) ? iVarD : iVarD.plus(X.a());
    }

    public static final S0 l(InterfaceC1793c interfaceC1793c) {
        while (!(interfaceC1793c instanceof U) && (interfaceC1793c = interfaceC1793c.getCallerFrame()) != null) {
            if (interfaceC1793c instanceof S0) {
                return (S0) interfaceC1793c;
            }
        }
        return null;
    }

    public static final S0 m(kotlin.coroutines.e eVar, kotlin.coroutines.i iVar, Object obj) {
        if (!(eVar instanceof InterfaceC1793c) || iVar.get(T0.f51535b) == null) {
            return null;
        }
        S0 s0L = l((InterfaceC1793c) eVar);
        if (s0L != null) {
            s0L.X0(iVar, obj);
        }
        return s0L;
    }
}
