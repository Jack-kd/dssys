package kotlinx.coroutines.flow;

import androidx.view.AbstractC1061g;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.C1691n;
import kotlinx.coroutines.internal.AbstractC1670c;
import w1.AbstractC1795e;

/* loaded from: classes5.dex */
public final class u0 extends kotlinx.coroutines.flow.internal.c {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f51745a = new AtomicReference(null);

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(StateFlowImpl stateFlowImpl) {
        if (AbstractC1670c.a(this.f51745a) != null) {
            return false;
        }
        AbstractC1670c.b(this.f51745a, t0.f51743a);
        return true;
    }

    public final Object e(kotlin.coroutines.e eVar) {
        C1691n c1691n = new C1691n(IntrinsicsKt__IntrinsicsJvmKt.c(eVar), 1);
        c1691n.F();
        if (!AbstractC1061g.a(this.f51745a, t0.f51743a, c1691n)) {
            Result.Companion companion = Result.INSTANCE;
            c1691n.resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
        }
        Object objY = c1691n.y();
        if (objY == kotlin.coroutines.intrinsics.a.e()) {
            AbstractC1795e.c(eVar);
        }
        return objY == kotlin.coroutines.intrinsics.a.e() ? objY : kotlin.j.f51397a;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public kotlin.coroutines.e[] b(StateFlowImpl stateFlowImpl) {
        AbstractC1670c.b(this.f51745a, null);
        return kotlinx.coroutines.flow.internal.b.f51719a;
    }

    public final void g() {
        AtomicReference atomicReference = this.f51745a;
        while (true) {
            Object objA = AbstractC1670c.a(atomicReference);
            if (objA == null || objA == t0.f51744b) {
                return;
            }
            if (objA == t0.f51743a) {
                if (AbstractC1061g.a(this.f51745a, objA, t0.f51744b)) {
                    return;
                }
            } else if (AbstractC1061g.a(this.f51745a, objA, t0.f51743a)) {
                Result.Companion companion = Result.INSTANCE;
                ((C1691n) objA).resumeWith(Result.m66constructorimpl(kotlin.j.f51397a));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = this.f51745a.getAndSet(t0.f51743a);
        kotlin.jvm.internal.j.b(andSet);
        return andSet == t0.f51744b;
    }
}
