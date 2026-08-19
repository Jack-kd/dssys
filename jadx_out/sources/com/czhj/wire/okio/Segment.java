package com.czhj.wire.okio;

/* loaded from: classes3.dex */
final class Segment {

    /* renamed from: a, reason: collision with root package name */
    static final int f29838a = 8192;

    /* renamed from: b, reason: collision with root package name */
    static final int f29839b = 1024;

    /* renamed from: c, reason: collision with root package name */
    final byte[] f29840c;

    /* renamed from: d, reason: collision with root package name */
    int f29841d;

    /* renamed from: e, reason: collision with root package name */
    int f29842e;

    /* renamed from: f, reason: collision with root package name */
    boolean f29843f;

    /* renamed from: g, reason: collision with root package name */
    boolean f29844g;

    /* renamed from: h, reason: collision with root package name */
    Segment f29845h;

    /* renamed from: i, reason: collision with root package name */
    Segment f29846i;

    public Segment() {
        this.f29840c = new byte[8192];
        this.f29844g = true;
        this.f29843f = false;
    }

    public final Segment a() {
        this.f29843f = true;
        return new Segment(this.f29840c, this.f29841d, this.f29842e, true, false);
    }

    public final Segment b() {
        return new Segment((byte[]) this.f29840c.clone(), this.f29841d, this.f29842e, false, true);
    }

    public final void compact() {
        Segment segment = this.f29846i;
        if (segment == this) {
            throw new IllegalStateException();
        }
        if (segment.f29844g) {
            int i2 = this.f29842e - this.f29841d;
            if (i2 > (8192 - segment.f29842e) + (segment.f29843f ? 0 : segment.f29841d)) {
                return;
            }
            writeTo(segment, i2);
            pop();
            SegmentPool.a(this);
        }
    }

    public final Segment pop() {
        Segment segment = this.f29845h;
        Segment segment2 = segment != this ? segment : null;
        Segment segment3 = this.f29846i;
        segment3.f29845h = segment;
        this.f29845h.f29846i = segment3;
        this.f29845h = null;
        this.f29846i = null;
        return segment2;
    }

    public final Segment push(Segment segment) {
        segment.f29846i = this;
        segment.f29845h = this.f29845h;
        this.f29845h.f29846i = segment;
        this.f29845h = segment;
        return segment;
    }

    public final Segment split(int i2) {
        Segment segmentA;
        if (i2 <= 0 || i2 > this.f29842e - this.f29841d) {
            throw new IllegalArgumentException();
        }
        if (i2 >= 1024) {
            segmentA = a();
        } else {
            segmentA = SegmentPool.a();
            System.arraycopy(this.f29840c, this.f29841d, segmentA.f29840c, 0, i2);
        }
        segmentA.f29842e = segmentA.f29841d + i2;
        this.f29841d += i2;
        this.f29846i.push(segmentA);
        return segmentA;
    }

    public final void writeTo(Segment segment, int i2) {
        if (!segment.f29844g) {
            throw new IllegalArgumentException();
        }
        int i3 = segment.f29842e;
        if (i3 + i2 > 8192) {
            if (segment.f29843f) {
                throw new IllegalArgumentException();
            }
            int i4 = segment.f29841d;
            if ((i3 + i2) - i4 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = segment.f29840c;
            System.arraycopy(bArr, i4, bArr, 0, i3 - i4);
            segment.f29842e -= segment.f29841d;
            segment.f29841d = 0;
        }
        System.arraycopy(this.f29840c, this.f29841d, segment.f29840c, segment.f29842e, i2);
        segment.f29842e += i2;
        this.f29841d += i2;
    }

    public Segment(byte[] bArr, int i2, int i3, boolean z2, boolean z3) {
        this.f29840c = bArr;
        this.f29841d = i2;
        this.f29842e = i3;
        this.f29843f = z2;
        this.f29844g = z3;
    }
}
