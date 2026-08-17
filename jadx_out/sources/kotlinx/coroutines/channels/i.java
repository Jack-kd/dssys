package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class i {
    public static final g a(int i2, BufferOverflow bufferOverflow, Function1 function1) {
        if (i2 == -2) {
            return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(g.U2.a(), function1) : new n(1, bufferOverflow, function1);
        }
        if (i2 != -1) {
            return i2 != 0 ? i2 != Integer.MAX_VALUE ? bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i2, function1) : new n(i2, bufferOverflow, function1) : new BufferedChannel(Integer.MAX_VALUE, function1) : bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(0, function1) : new n(1, bufferOverflow, function1);
        }
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            return new n(1, BufferOverflow.DROP_OLDEST, function1);
        }
        throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
    }

    public static /* synthetic */ g b(int i2, BufferOverflow bufferOverflow, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        if ((i3 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i3 & 4) != 0) {
            function1 = null;
        }
        return a(i2, bufferOverflow, function1);
    }
}
