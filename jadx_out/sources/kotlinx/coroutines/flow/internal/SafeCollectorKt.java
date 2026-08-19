package kotlinx.coroutines.flow.internal;

import kotlin.jvm.functions.Function3;

/* loaded from: classes5.dex */
public abstract class SafeCollectorKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Function3 f51711a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = SafeCollectorKt$emitFun$1.INSTANCE;
        kotlin.jvm.internal.j.c(safeCollectorKt$emitFun$1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f51711a = (Function3) kotlin.jvm.internal.p.c(safeCollectorKt$emitFun$1, 3);
    }
}
