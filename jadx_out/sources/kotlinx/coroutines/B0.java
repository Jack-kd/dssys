package kotlinx.coroutines;

import kotlinx.coroutines.internal.AbstractC1678k;

/* loaded from: classes5.dex */
public abstract class B0 extends H {
    public abstract B0 C();

    public final String D() {
        B0 b0C;
        B0 b0C2 = X.c();
        if (this == b0C2) {
            return "Dispatchers.Main";
        }
        try {
            b0C = b0C2.C();
        } catch (UnsupportedOperationException unused) {
            b0C = null;
        }
        if (this == b0C) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.H
    public H limitedParallelism(int i2, String str) {
        AbstractC1678k.a(i2);
        return AbstractC1678k.b(this, str);
    }
}
