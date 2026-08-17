package kotlinx.coroutines.flow;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.InterfaceC1705u0;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.k;

/* renamed from: kotlinx.coroutines.flow.t, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract /* synthetic */ class AbstractC1655t {
    public static final InterfaceC1639c a(InterfaceC1639c interfaceC1639c, int i2, BufferOverflow bufferOverflow) {
        if (i2 < 0 && i2 != -2 && i2 != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i2).toString());
        }
        if (i2 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (i2 == -1) {
            bufferOverflow = BufferOverflow.DROP_OLDEST;
            i2 = 0;
        }
        int i3 = i2;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if (interfaceC1639c instanceof kotlinx.coroutines.flow.internal.k) {
            return k.a.a((kotlinx.coroutines.flow.internal.k) interfaceC1639c, null, i3, bufferOverflow2, 1, null);
        }
        return new kotlinx.coroutines.flow.internal.f(interfaceC1639c, null, i3, bufferOverflow2, 2, null);
    }

    public static /* synthetic */ InterfaceC1639c b(InterfaceC1639c interfaceC1639c, int i2, BufferOverflow bufferOverflow, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = -2;
        }
        if ((i3 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return AbstractC1641e.b(interfaceC1639c, i2, bufferOverflow);
    }

    public static final void c(kotlin.coroutines.i iVar) {
        if (iVar.get(InterfaceC1705u0.T2) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + iVar).toString());
    }

    public static final InterfaceC1639c d(InterfaceC1639c interfaceC1639c) {
        return b(interfaceC1639c, -1, null, 2, null);
    }

    public static final InterfaceC1639c e(InterfaceC1639c interfaceC1639c, kotlin.coroutines.i iVar) {
        c(iVar);
        if (kotlin.jvm.internal.j.a(iVar, EmptyCoroutineContext.INSTANCE)) {
            return interfaceC1639c;
        }
        if (interfaceC1639c instanceof kotlinx.coroutines.flow.internal.k) {
            return k.a.a((kotlinx.coroutines.flow.internal.k) interfaceC1639c, iVar, 0, null, 6, null);
        }
        return new kotlinx.coroutines.flow.internal.f(interfaceC1639c, iVar, 0, null, 12, null);
    }
}
