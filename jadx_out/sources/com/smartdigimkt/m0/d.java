package com.smartdigimkt.m0;

import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public int f41700a;

    /* renamed from: b, reason: collision with root package name */
    public final b f41701b = new b();

    /* renamed from: c, reason: collision with root package name */
    public ByteBuffer f41702c;

    /* renamed from: d, reason: collision with root package name */
    public long f41703d;

    /* renamed from: e, reason: collision with root package name */
    public final int f41704e;

    public d(int i2) {
        this.f41704e = i2;
    }

    public final void a() {
        this.f41700a = 0;
        ByteBuffer byteBuffer = this.f41702c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final boolean b(int i2) {
        return (this.f41700a & i2) == i2;
    }

    public final ByteBuffer a(int i2) {
        int i3 = this.f41704e;
        if (i3 == 1) {
            return ByteBuffer.allocate(i2);
        }
        if (i3 == 2) {
            return ByteBuffer.allocateDirect(i2);
        }
        ByteBuffer byteBuffer = this.f41702c;
        throw new IllegalStateException("Buffer too small (" + (byteBuffer == null ? 0 : byteBuffer.capacity()) + " < " + i2 + ")");
    }
}
