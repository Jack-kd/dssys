package V1;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicLong f625a = new AtomicLong();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicLong f626b = new AtomicLong();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicLong f627c = new AtomicLong();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f628d = new AtomicLong();

    public void a(long j2) {
        long jAddAndGet = this.f626b.addAndGet(j2);
        long jIncrementAndGet = this.f627c.incrementAndGet();
        if (jIncrementAndGet > 1) {
            long j3 = (10 * j2) - ((jAddAndGet * 10) / jIncrementAndGet);
            this.f628d.addAndGet(j3 * j3);
        }
        org.eclipse.jetty.util.a.a(this.f625a, j2);
    }
}
