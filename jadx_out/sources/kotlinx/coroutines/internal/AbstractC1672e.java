package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.ServiceLoader;

/* renamed from: kotlinx.coroutines.internal.e, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1672e {

    /* renamed from: a, reason: collision with root package name */
    public static final Collection f51777a = kotlin.sequences.q.C(kotlin.sequences.n.e(ServiceLoader.load(kotlinx.coroutines.I.class, kotlinx.coroutines.I.class.getClassLoader()).iterator()));

    public static final Collection a() {
        return f51777a;
    }

    public static final void b(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }
}
