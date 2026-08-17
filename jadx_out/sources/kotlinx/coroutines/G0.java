package kotlinx.coroutines;

import kotlin.Result;

/* loaded from: classes5.dex */
public final class G0 extends x0 {

    /* renamed from: f, reason: collision with root package name */
    public final C1691n f51516f;

    public G0(C1691n c1691n) {
        this.f51516f = c1691n;
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        Object objH0 = t().h0();
        if (objH0 instanceof A) {
            C1691n c1691n = this.f51516f;
            Result.Companion companion = Result.INSTANCE;
            c1691n.resumeWith(Result.m66constructorimpl(kotlin.e.a(((A) objH0).f51510a)));
        } else {
            C1691n c1691n2 = this.f51516f;
            Result.Companion companion2 = Result.INSTANCE;
            c1691n2.resumeWith(Result.m66constructorimpl(z0.h(objH0)));
        }
    }
}
