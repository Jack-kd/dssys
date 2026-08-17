package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceArray;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public final class w {

    @NotNull
    private volatile AtomicReferenceArray<Object> array;

    public w(int i2) {
        this.array = new AtomicReferenceArray<>(i2);
    }

    public final int a() {
        return this.array.length();
    }

    public final Object b(int i2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i2 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i2);
        }
        return null;
    }

    public final void c(int i2, Object obj) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i2 < length) {
            atomicReferenceArray.set(i2, obj);
            return;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(E1.f.b(i2 + 1, length * 2));
        for (int i3 = 0; i3 < length; i3++) {
            atomicReferenceArray2.set(i3, atomicReferenceArray.get(i3));
        }
        atomicReferenceArray2.set(i2, obj);
        this.array = atomicReferenceArray2;
    }
}
