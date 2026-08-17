package kotlinx.coroutines.selects;

import kotlin.Result;
import kotlinx.coroutines.H;
import kotlinx.coroutines.InterfaceC1687l;

/* loaded from: classes5.dex */
public abstract class l {
    public static final void c(InterfaceC1687l interfaceC1687l, Object obj) {
        H h2 = (H) interfaceC1687l.getContext().get(H.Key);
        if (h2 != null) {
            interfaceC1687l.x(h2, obj);
        } else {
            interfaceC1687l.resumeWith(Result.m66constructorimpl(obj));
        }
    }

    public static final void d(InterfaceC1687l interfaceC1687l, Throwable th) {
        H h2 = (H) interfaceC1687l.getContext().get(H.Key);
        if (h2 != null) {
            interfaceC1687l.d(h2, th);
        } else {
            Result.Companion companion = Result.INSTANCE;
            interfaceC1687l.resumeWith(Result.m66constructorimpl(kotlin.e.a(th)));
        }
    }
}
