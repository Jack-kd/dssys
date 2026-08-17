package H1;

import kotlinx.coroutines.AbstractC1686k0;
import kotlinx.coroutines.scheduling.CoroutineScheduler;

/* loaded from: classes5.dex */
public abstract class e extends AbstractC1686k0 {

    /* renamed from: c, reason: collision with root package name */
    public final int f128c;

    /* renamed from: d, reason: collision with root package name */
    public final int f129d;

    /* renamed from: e, reason: collision with root package name */
    public final long f130e;

    /* renamed from: f, reason: collision with root package name */
    public final String f131f;

    /* renamed from: g, reason: collision with root package name */
    public CoroutineScheduler f132g = C();

    public e(int i2, int i3, long j2, String str) {
        this.f128c = i2;
        this.f129d = i3;
        this.f130e = j2;
        this.f131f = str;
    }

    public final CoroutineScheduler C() {
        return new CoroutineScheduler(this.f128c, this.f129d, this.f130e, this.f131f);
    }

    public final void D(Runnable runnable, boolean z2, boolean z3) {
        this.f132g.C(runnable, z2, z3);
    }

    @Override // kotlinx.coroutines.H
    public void dispatch(kotlin.coroutines.i iVar, Runnable runnable) {
        CoroutineScheduler.D(this.f132g, runnable, false, false, 6, null);
    }

    @Override // kotlinx.coroutines.H
    public void dispatchYield(kotlin.coroutines.i iVar, Runnable runnable) {
        CoroutineScheduler.D(this.f132g, runnable, false, true, 2, null);
    }
}
