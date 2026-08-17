package kotlinx.coroutines.flow;

import kotlinx.coroutines.channels.BufferOverflow;

/* loaded from: classes5.dex */
public abstract class n0 {

    /* renamed from: a, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.B f51735a = new kotlinx.coroutines.internal.B("NO_VALUE");

    public static final InterfaceC1639c c(m0 m0Var, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow) {
        return ((i2 == 0 || i2 == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? m0Var : new kotlinx.coroutines.flow.internal.f(m0Var, iVar, i2, bufferOverflow);
    }

    public static final Object d(Object[] objArr, long j2) {
        return objArr[((int) j2) & (objArr.length - 1)];
    }

    public static final void e(Object[] objArr, long j2, Object obj) {
        objArr[((int) j2) & (objArr.length - 1)] = obj;
    }
}
