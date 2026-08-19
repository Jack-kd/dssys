package kotlinx.coroutines;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* loaded from: classes5.dex */
public abstract class x0 extends LockFreeLinkedListNode implements Z, InterfaceC1696p0 {

    /* renamed from: e, reason: collision with root package name */
    public y0 f51923e;

    @Override // kotlinx.coroutines.InterfaceC1696p0
    public C0 a() {
        return null;
    }

    @Override // kotlinx.coroutines.Z
    public void dispose() {
        t().G0(this);
    }

    @Override // kotlinx.coroutines.InterfaceC1696p0
    public boolean isActive() {
        return true;
    }

    public final y0 t() {
        y0 y0Var = this.f51923e;
        if (y0Var != null) {
            return y0Var;
        }
        kotlin.jvm.internal.j.u("job");
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        return O.a(this) + '@' + O.b(this) + "[job@" + O.b(t()) + ']';
    }

    public abstract boolean u();

    public abstract void v(Throwable th);

    public final void w(y0 y0Var) {
        this.f51923e = y0Var;
    }
}
