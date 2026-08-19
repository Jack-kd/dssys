package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.internal.x;

/* loaded from: classes5.dex */
public final class h extends x {
    public h(kotlin.coroutines.i iVar, kotlin.coroutines.e eVar) {
        super(iVar, eVar);
    }

    @Override // kotlinx.coroutines.y0
    public boolean V(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return Q(th);
    }
}
