package org.eclipse.jetty.util;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
public abstract class a {
    public static void a(AtomicLong atomicLong, long j2) {
        long j3 = atomicLong.get();
        while (j2 > j3 && !atomicLong.compareAndSet(j3, j2)) {
            j3 = atomicLong.get();
        }
    }
}
