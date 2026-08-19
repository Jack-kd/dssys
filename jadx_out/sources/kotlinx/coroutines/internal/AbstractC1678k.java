package kotlinx.coroutines.internal;

/* renamed from: kotlinx.coroutines.internal.k, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1678k {
    public static final void a(int i2) {
        if (i2 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i2).toString());
    }

    public static final kotlinx.coroutines.H b(kotlinx.coroutines.H h2, String str) {
        return str != null ? new t(h2, str) : h2;
    }
}
