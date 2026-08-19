package kotlinx.coroutines;

/* renamed from: kotlinx.coroutines.a0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1626a0 implements InterfaceC1685k {

    /* renamed from: b, reason: collision with root package name */
    public final Z f51545b;

    public C1626a0(Z z2) {
        this.f51545b = z2;
    }

    @Override // kotlinx.coroutines.InterfaceC1685k
    public void c(Throwable th) {
        this.f51545b.dispose();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f51545b + ']';
    }
}
