package kotlinx.coroutines.flow.internal;

/* loaded from: classes5.dex */
public abstract class j {
    public static final void a(AbortFlowException abortFlowException, Object obj) {
        if (abortFlowException.owner != obj) {
            throw abortFlowException;
        }
    }
}
