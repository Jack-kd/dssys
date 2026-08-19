package kotlinx.coroutines;

/* loaded from: classes5.dex */
public final class I0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final H f51519b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1687l f51520c;

    public I0(H h2, InterfaceC1687l interfaceC1687l) {
        this.f51519b = h2;
        this.f51520c = interfaceC1687l;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f51520c.x(this.f51519b, kotlin.j.f51397a);
    }
}
