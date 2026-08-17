package com.czhj.wire.okio;

/* loaded from: classes3.dex */
final class SegmentPool {

    /* renamed from: a, reason: collision with root package name */
    static final long f29847a = 65536;

    /* renamed from: b, reason: collision with root package name */
    static Segment f29848b;

    /* renamed from: c, reason: collision with root package name */
    static long f29849c;

    private SegmentPool() {
    }

    public static Segment a() {
        synchronized (SegmentPool.class) {
            try {
                Segment segment = f29848b;
                if (segment == null) {
                    return new Segment();
                }
                f29848b = segment.f29845h;
                segment.f29845h = null;
                f29849c -= 8192;
                return segment;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Segment segment) {
        if (segment.f29845h != null || segment.f29846i != null) {
            throw new IllegalArgumentException();
        }
        if (segment.f29843f) {
            return;
        }
        synchronized (SegmentPool.class) {
            try {
                long j2 = f29849c;
                if (j2 + 8192 <= 65536) {
                    f29849c = j2 + 8192;
                    segment.f29845h = f29848b;
                    segment.f29842e = 0;
                    segment.f29841d = 0;
                    f29848b = segment;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
