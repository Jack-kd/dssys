package kotlinx.coroutines.internal;

import java.util.Iterator;

/* renamed from: kotlinx.coroutines.internal.f, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1673f {
    public static final void a(kotlin.coroutines.i iVar, Throwable th) {
        Iterator it = AbstractC1672e.a().iterator();
        while (it.hasNext()) {
            try {
                ((kotlinx.coroutines.I) it.next()).m(iVar, th);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th2) {
                AbstractC1672e.b(kotlinx.coroutines.J.b(th, th2));
            }
        }
        try {
            kotlin.a.a(th, new DiagnosticCoroutineContextException(iVar));
        } catch (Throwable unused2) {
        }
        AbstractC1672e.b(th);
    }
}
