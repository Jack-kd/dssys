package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* renamed from: kotlinx.coroutines.t0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1703t0 extends x0 {

    /* renamed from: f, reason: collision with root package name */
    public final Function1 f51920f;

    public C1703t0(Function1 function1) {
        this.f51920f = function1;
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        this.f51920f.invoke(th);
    }
}
