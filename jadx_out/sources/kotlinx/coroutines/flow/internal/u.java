package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.s0;

/* loaded from: classes5.dex */
public final class u extends SharedFlowImpl implements s0 {
    public u(int i2) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        c(Integer.valueOf(i2));
    }

    @Override // kotlinx.coroutines.flow.s0
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public Integer getValue() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(((Number) L()).intValue());
        }
        return numValueOf;
    }

    public final boolean Z(int i2) {
        boolean zC;
        synchronized (this) {
            zC = c(Integer.valueOf(((Number) L()).intValue() + i2));
        }
        return zC;
    }
}
