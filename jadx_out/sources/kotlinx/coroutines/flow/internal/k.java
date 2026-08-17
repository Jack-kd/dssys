package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.InterfaceC1639c;

/* loaded from: classes5.dex */
public interface k extends InterfaceC1639c {

    public static final class a {
        public static /* synthetic */ InterfaceC1639c a(k kVar, kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i3 & 1) != 0) {
                iVar = EmptyCoroutineContext.INSTANCE;
            }
            if ((i3 & 2) != 0) {
                i2 = -3;
            }
            if ((i3 & 4) != 0) {
                bufferOverflow = BufferOverflow.SUSPEND;
            }
            return kVar.d(iVar, i2, bufferOverflow);
        }
    }

    InterfaceC1639c d(kotlin.coroutines.i iVar, int i2, BufferOverflow bufferOverflow);
}
