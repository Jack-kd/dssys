package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: kotlinx.coroutines.internal.b, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1669b {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51774b = AtomicReferenceFieldUpdater.newUpdater(AbstractC1669b.class, Object.class, "_next$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f51775c = AtomicReferenceFieldUpdater.newUpdater(AbstractC1669b.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public AbstractC1669b(AbstractC1669b abstractC1669b) {
        this._prev$volatile = abstractC1669b;
    }

    public final void b() {
        f51775c.set(this, null);
    }

    public final AbstractC1669b d() {
        AbstractC1669b abstractC1669bH = h();
        while (abstractC1669bH != null && abstractC1669bH.k()) {
            abstractC1669bH = (AbstractC1669b) f51775c.get(abstractC1669bH);
        }
        return abstractC1669bH;
    }

    public final AbstractC1669b e() {
        AbstractC1669b abstractC1669bF;
        AbstractC1669b abstractC1669bF2 = f();
        kotlin.jvm.internal.j.b(abstractC1669bF2);
        while (abstractC1669bF2.k() && (abstractC1669bF = abstractC1669bF2.f()) != null) {
            abstractC1669bF2 = abstractC1669bF;
        }
        return abstractC1669bF2;
    }

    public final AbstractC1669b f() {
        Object objG = g();
        if (objG == AbstractC1668a.f51773a) {
            return null;
        }
        return (AbstractC1669b) objG;
    }

    public final Object g() {
        return f51774b.get(this);
    }

    public final AbstractC1669b h() {
        return (AbstractC1669b) f51775c.get(this);
    }

    public abstract boolean k();

    public final boolean l() {
        return f() == null;
    }

    public final boolean m() {
        return androidx.concurrent.futures.a.a(f51774b, this, null, AbstractC1668a.f51773a);
    }

    public final void n() {
        Object obj;
        if (l()) {
            return;
        }
        while (true) {
            AbstractC1669b abstractC1669bD = d();
            AbstractC1669b abstractC1669bE = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f51775c;
            do {
                obj = atomicReferenceFieldUpdater.get(abstractC1669bE);
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, abstractC1669bE, obj, ((AbstractC1669b) obj) == null ? null : abstractC1669bD));
            if (abstractC1669bD != null) {
                f51774b.set(abstractC1669bD, abstractC1669bE);
            }
            if (!abstractC1669bE.k() || abstractC1669bE.l()) {
                if (abstractC1669bD == null || !abstractC1669bD.k()) {
                    return;
                }
            }
        }
    }

    public final boolean o(AbstractC1669b abstractC1669b) {
        return androidx.concurrent.futures.a.a(f51774b, this, null, abstractC1669b);
    }
}
