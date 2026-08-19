package H1;

import kotlinx.coroutines.H;
import kotlinx.coroutines.internal.AbstractC1678k;

/* loaded from: classes5.dex */
public final class b extends e {

    /* renamed from: h, reason: collision with root package name */
    public static final b f126h = new b();

    public b() {
        super(i.f138c, i.f139d, i.f140e, i.f136a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.H
    public H limitedParallelism(int i2, String str) {
        AbstractC1678k.a(i2);
        return i2 >= i.f138c ? AbstractC1678k.b(this, str) : super.limitedParallelism(i2, str);
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return "Dispatchers.Default";
    }
}
