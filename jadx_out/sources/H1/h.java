package H1;

import kotlinx.coroutines.O;

/* loaded from: classes5.dex */
public final class h extends g {

    /* renamed from: d, reason: collision with root package name */
    public final Runnable f135d;

    public h(Runnable runnable, long j2, boolean z2) {
        super(j2, z2);
        this.f135d = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f135d.run();
    }

    public String toString() {
        return "Task[" + O.a(this.f135d) + '@' + O.b(this.f135d) + ", " + this.f133b + ", " + i.c(this.f134c) + ']';
    }
}
