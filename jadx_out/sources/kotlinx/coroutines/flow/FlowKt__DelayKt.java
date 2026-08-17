package kotlinx.coroutines.flow;

import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class FlowKt__DelayKt {
    public static final ReceiveChannel a(kotlinx.coroutines.M m2, long j2) {
        return ProduceKt.d(m2, null, 0, new FlowKt__DelayKt$fixedPeriodTicker$1(j2, null), 1, null);
    }
}
