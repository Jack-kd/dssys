package kotlinx.coroutines;

/* renamed from: kotlinx.coroutines.c0, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1630c0 implements InterfaceC1696p0 {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f51547b;

    public C1630c0(boolean z2) {
        this.f51547b = z2;
    }

    @Override // kotlinx.coroutines.InterfaceC1696p0
    public C0 a() {
        return null;
    }

    @Override // kotlinx.coroutines.InterfaceC1696p0
    public boolean isActive() {
        return this.f51547b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(isActive() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
