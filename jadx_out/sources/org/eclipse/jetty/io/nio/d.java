package org.eclipse.jetty.io.nio;

import L1.h;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class d extends h implements e {

    /* renamed from: p, reason: collision with root package name */
    public final ByteBuffer f52442p;

    public d(int i2) {
        super(i2, 2, false);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f234n);
        this.f52442p = byteBufferWrap;
        byteBufferWrap.position(0);
        byteBufferWrap.limit(byteBufferWrap.capacity());
    }

    @Override // org.eclipse.jetty.io.nio.e
    public ByteBuffer t0() {
        return this.f52442p;
    }

    public d(ByteBuffer byteBuffer, boolean z2) {
        super(byteBuffer.array(), 0, 0, z2 ? 0 : 2, false);
        if (!byteBuffer.isDirect()) {
            this.f52442p = byteBuffer;
            this.f211d = byteBuffer.position();
            this.f212e = byteBuffer.limit();
            byteBuffer.position(0);
            byteBuffer.limit(byteBuffer.capacity());
            return;
        }
        throw new IllegalArgumentException();
    }
}
