package kotlinx.coroutines.internal;

import kotlinx.coroutines.InterfaceC1687l;
import kotlinx.coroutines.Q;
import kotlinx.coroutines.T;
import kotlinx.coroutines.Z;

/* loaded from: classes5.dex */
public final class t extends kotlinx.coroutines.H implements T {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ T f51807b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.H f51808c;

    /* renamed from: d, reason: collision with root package name */
    public final String f51809d;

    /* JADX WARN: Multi-variable type inference failed */
    public t(kotlinx.coroutines.H h2, String str) {
        T t2 = h2 instanceof T ? (T) h2 : null;
        this.f51807b = t2 == null ? Q.a() : t2;
        this.f51808c = h2;
        this.f51809d = str;
    }

    @Override // kotlinx.coroutines.T
    public void d(long j2, InterfaceC1687l interfaceC1687l) {
        this.f51807b.d(j2, interfaceC1687l);
    }

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        this.f51808c.dispatch(iVar, runnable);
    }

    @Override // kotlinx.coroutines.H
    public void dispatchYield(kotlin.coroutines.i iVar, Runnable runnable) {
        this.f51808c.dispatchYield(iVar, runnable);
    }

    @Override // kotlinx.coroutines.T
    public Z f(long j2, Runnable runnable, kotlin.coroutines.i iVar) {
        return this.f51807b.f(j2, runnable, iVar);
    }

    @Override // kotlinx.coroutines.H
    public boolean isDispatchNeeded(kotlin.coroutines.i iVar) {
        return this.f51808c.isDispatchNeeded(iVar);
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return this.f51809d;
    }
}
