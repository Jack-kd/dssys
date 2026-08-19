package kotlinx.coroutines;

import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;

/* renamed from: kotlinx.coroutines.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1625a extends y0 implements InterfaceC1705u0, kotlin.coroutines.e, M {

    /* renamed from: d, reason: collision with root package name */
    public final kotlin.coroutines.i f51544d;

    public AbstractC1625a(kotlin.coroutines.i iVar, boolean z2, boolean z3) {
        super(z3);
        if (z2) {
            m0((InterfaceC1705u0) iVar.get(InterfaceC1705u0.T2));
        }
        this.f51544d = iVar.plus(this);
    }

    @Override // kotlinx.coroutines.y0
    public final void B0(Object obj) {
        if (!(obj instanceof A)) {
            U0(obj);
        } else {
            A a3 = (A) obj;
            T0(a3.f51510a, a3.a());
        }
    }

    public void S0(Object obj) {
        M(obj);
    }

    public void T0(Throwable th, boolean z2) {
    }

    @Override // kotlinx.coroutines.y0
    public String U() {
        return O.a(this) + " was cancelled";
    }

    public void U0(Object obj) {
    }

    public final void V0(CoroutineStart coroutineStart, Object obj, Function2 function2) {
        coroutineStart.invoke(function2, obj, this);
    }

    @Override // kotlin.coroutines.e
    @NotNull
    public final kotlin.coroutines.i getContext() {
        return this.f51544d;
    }

    @Override // kotlinx.coroutines.M
    public kotlin.coroutines.i getCoroutineContext() {
        return this.f51544d;
    }

    @Override // kotlinx.coroutines.y0, kotlinx.coroutines.InterfaceC1705u0
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.y0
    public final void l0(Throwable th) {
        J.a(this.f51544d, th);
    }

    @Override // kotlin.coroutines.e
    public final void resumeWith(Object obj) {
        Object objT0 = t0(B.b(obj));
        if (objT0 == z0.f51945b) {
            return;
        }
        S0(objT0);
    }

    @Override // kotlinx.coroutines.y0
    public String u0() {
        String strG = F.g(this.f51544d);
        if (strG == null) {
            return super.u0();
        }
        return '\"' + strG + "\":" + super.u0();
    }
}
