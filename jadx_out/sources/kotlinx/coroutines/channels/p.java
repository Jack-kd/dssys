package kotlinx.coroutines.channels;

import kotlinx.coroutines.J;
import kotlinx.coroutines.channels.s;

/* loaded from: classes5.dex */
public final class p extends h implements q {
    public p(kotlin.coroutines.i iVar, g gVar) {
        super(iVar, gVar, true, true);
    }

    @Override // kotlinx.coroutines.AbstractC1625a
    public void T0(Throwable th, boolean z2) {
        if (X0().C(th) || z2) {
            return;
        }
        J.a(getContext(), th);
    }

    @Override // kotlinx.coroutines.AbstractC1625a
    /* renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public void U0(kotlin.j jVar) {
        s.a.a(X0(), null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.q
    public /* bridge */ /* synthetic */ s getChannel() {
        return W0();
    }

    @Override // kotlinx.coroutines.AbstractC1625a, kotlinx.coroutines.y0, kotlinx.coroutines.InterfaceC1705u0
    public boolean isActive() {
        return super.isActive();
    }
}
