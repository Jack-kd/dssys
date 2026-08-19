package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import kotlinx.coroutines.internal.I;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public abstract class d {
    public static final ChannelFlow b(InterfaceC1639c interfaceC1639c) {
        ChannelFlow channelFlow = interfaceC1639c instanceof ChannelFlow ? (ChannelFlow) interfaceC1639c : null;
        if (channelFlow == null) {
            return new f(interfaceC1639c, null, 0, null, 14, null);
        }
        return channelFlow;
    }

    public static final Object c(kotlin.coroutines.i iVar, Object obj, Object obj2, Function2 function2, kotlin.coroutines.e eVar) {
        Object objI = I.i(iVar, obj2);
        try {
            t tVar = new t(eVar, iVar);
            Object objD = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.d(function2, obj, tVar) : ((Function2) kotlin.jvm.internal.p.c(function2, 2)).invoke(obj, tVar);
            I.f(iVar, objI);
            if (objD == kotlin.coroutines.intrinsics.a.e()) {
                AbstractC1795e.c(eVar);
            }
            return objD;
        } catch (Throwable th) {
            I.f(iVar, objI);
            throw th;
        }
    }

    public static /* synthetic */ Object d(kotlin.coroutines.i iVar, Object obj, Object obj2, Function2 function2, kotlin.coroutines.e eVar, int i2, Object obj3) {
        if ((i2 & 4) != 0) {
            obj2 = I.g(iVar);
        }
        return c(iVar, obj, obj2, function2, eVar);
    }

    public static final InterfaceC1640d e(InterfaceC1640d interfaceC1640d, kotlin.coroutines.i iVar) {
        return ((interfaceC1640d instanceof s) || (interfaceC1640d instanceof m)) ? interfaceC1640d : new UndispatchedContextCollector(interfaceC1640d, iVar);
    }
}
