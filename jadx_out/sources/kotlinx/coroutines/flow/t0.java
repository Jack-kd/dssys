package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.BufferOverflow;
import org.eclipse.jetty.util.security.Constraint;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public abstract class t0 {

    /* renamed from: a, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51743a = new kotlinx.coroutines.internal.B(Constraint.NONE);

    /* renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51744b = new kotlinx.coroutines.internal.B("PENDING");

    public static final j0 a(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.n.f51725a;
        }
        return new StateFlowImpl(obj);
    }

    public static final InterfaceC1639c d(s0 s0Var, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return (((i2 < 0 || i2 >= 2) && i2 != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) ? n0.c(s0Var, iVar, i2, bufferOverflow) : s0Var;
    }

    public static final <T> void update(@NotNull j0 j0Var, @NotNull Function1<? super T, ? extends T> function1) {
        Object value;
        do {
            value = j0Var.getValue();
        } while (!j0Var.a(value, function1.invoke(value)));
    }
}
