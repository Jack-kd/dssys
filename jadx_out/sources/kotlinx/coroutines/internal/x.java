package kotlinx.coroutines.internal;

import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.AbstractC1625a;
import w1.InterfaceC1793c;

/* loaded from: classes5.dex */
public class x extends AbstractC1625a implements InterfaceC1793c {

    /* renamed from: e, reason: collision with root package name */
    public final kotlin.coroutines.e f51811e;

    public x(kotlin.coroutines.i iVar, kotlin.coroutines.e eVar) {
        super(iVar, true, true);
        this.f51811e = eVar;
    }

    @Override // kotlinx.coroutines.y0
    public void M(Object obj) {
        AbstractC1675h.b(IntrinsicsKt__IntrinsicsJvmKt.c(this.f51811e), kotlinx.coroutines.B.a(obj, this.f51811e));
    }

    @Override // kotlinx.coroutines.AbstractC1625a
    public void S0(Object obj) {
        kotlin.coroutines.e eVar = this.f51811e;
        eVar.resumeWith(kotlinx.coroutines.B.a(obj, eVar));
    }

    @Override // w1.InterfaceC1793c
    public final InterfaceC1793c getCallerFrame() {
        kotlin.coroutines.e eVar = this.f51811e;
        if (eVar instanceof InterfaceC1793c) {
            return (InterfaceC1793c) eVar;
        }
        return null;
    }

    @Override // kotlinx.coroutines.y0
    public final boolean o0() {
        return true;
    }
}
