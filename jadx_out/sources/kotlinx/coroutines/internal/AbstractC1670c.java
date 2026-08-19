package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: kotlinx.coroutines.internal.c, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1670c {
    public static final Object a(AtomicReference atomicReference) {
        return atomicReference.get();
    }

    public static final void b(AtomicReference atomicReference, Object obj) {
        atomicReference.set(obj);
    }
}
