package kotlinx.coroutines;

/* renamed from: kotlinx.coroutines.b0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1628b0 extends x0 {

    /* renamed from: f, reason: collision with root package name */
    public final Z f51546f;

    public C1628b0(Z z2) {
        this.f51546f = z2;
    }

    @Override // kotlinx.coroutines.x0
    public boolean u() {
        return false;
    }

    @Override // kotlinx.coroutines.x0
    public void v(Throwable th) {
        this.f51546f.dispose();
    }
}
