package org.eclipse.jetty.io.nio;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes5.dex */
public class c extends L1.a implements e {

    /* renamed from: s, reason: collision with root package name */
    public static final R1.c f52436s = R1.b.a(c.class);

    /* renamed from: n, reason: collision with root package name */
    public final ByteBuffer f52437n;

    /* renamed from: o, reason: collision with root package name */
    public ReadableByteChannel f52438o;

    /* renamed from: p, reason: collision with root package name */
    public InputStream f52439p;

    /* renamed from: q, reason: collision with root package name */
    public WritableByteChannel f52440q;

    /* renamed from: r, reason: collision with root package name */
    public OutputStream f52441r;

    public c(int i2) {
        super(2, false);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2);
        this.f52437n = byteBufferAllocateDirect;
        byteBufferAllocateDirect.position(0);
        byteBufferAllocateDirect.limit(byteBufferAllocateDirect.capacity());
    }

    @Override // L1.a, L1.d
    public int b0(int i2, L1.d dVar) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        byte[] bArrP0 = dVar.p0();
        if (bArrP0 != null) {
            return g0(i2, bArrP0, dVar.getIndex(), dVar.length());
        }
        L1.d dVarBuffer = dVar.buffer();
        if (!(dVarBuffer instanceof c)) {
            return super.b0(i2, dVar);
        }
        ByteBuffer byteBufferDuplicate = ((c) dVarBuffer).f52437n;
        ByteBuffer byteBuffer = this.f52437n;
        if (byteBufferDuplicate == byteBuffer) {
            byteBufferDuplicate = byteBuffer.duplicate();
        }
        try {
            this.f52437n.position(i2);
            int iRemaining = this.f52437n.remaining();
            int length = dVar.length();
            if (length <= iRemaining) {
                iRemaining = length;
            }
            byteBufferDuplicate.position(dVar.getIndex());
            byteBufferDuplicate.limit(dVar.getIndex() + iRemaining);
            this.f52437n.put(byteBufferDuplicate);
            return iRemaining;
        } finally {
            this.f52437n.position(0);
            byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
            byteBufferDuplicate.position(0);
        }
    }

    @Override // L1.d
    public void c0(int i2, byte b3) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("index<0: " + i2 + "<0");
        }
        if (i2 <= w0()) {
            this.f52437n.put(i2, b3);
            return;
        }
        throw new IllegalArgumentException("index>capacity(): " + i2 + ">" + w0());
    }

    @Override // L1.d
    public int d0(int i2, byte[] bArr, int i3, int i4) {
        if ((i2 + i4 > w0() && (i4 = w0() - i2) == 0) || i4 < 0) {
            return -1;
        }
        try {
            this.f52437n.position(i2);
            this.f52437n.get(bArr, i3, i4);
            return i4;
        } finally {
            this.f52437n.position(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        r9.f52438o = null;
        r9.f52439p = r10;
     */
    @Override // L1.a, L1.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int e0(java.io.InputStream r10, int r11) {
        /*
            r9 = this;
            java.nio.channels.ReadableByteChannel r0 = r9.f52438o
            if (r0 == 0) goto Le
            boolean r0 = r0.isOpen()
            if (r0 == 0) goto Le
            java.io.InputStream r0 = r9.f52439p
            if (r10 == r0) goto L16
        Le:
            java.nio.channels.ReadableByteChannel r0 = java.nio.channels.Channels.newChannel(r10)
            r9.f52438o = r0
            r9.f52439p = r10
        L16:
            if (r11 < 0) goto L1e
            int r0 = r9.f0()
            if (r11 <= r0) goto L22
        L1e:
            int r11 = r9.f0()
        L22:
            int r0 = r9.n0()
            r1 = 0
            r3 = r11
            r2 = r1
            r4 = r2
            r5 = r4
        L2b:
            r6 = 0
            if (r2 >= r11) goto L87
            java.nio.ByteBuffer r5 = r9.f52437n     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            r5.position(r0)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            java.nio.ByteBuffer r5 = r9.f52437n     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            int r7 = r0 + r3
            r5.limit(r7)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            java.nio.channels.ReadableByteChannel r5 = r9.f52438o     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            java.nio.ByteBuffer r7 = r9.f52437n     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            int r5 = r5.read(r7)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            if (r5 >= 0) goto L4d
            r9.f52438o = r6     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            r9.f52439p = r10     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            goto L87
        L49:
            r11 = move-exception
            goto L6a
        L4b:
            r11 = move-exception
            goto L65
        L4d:
            if (r5 <= 0) goto L57
            int r0 = r0 + r5
            int r2 = r2 + r5
            int r3 = r3 - r5
            r9.q0(r0)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            r4 = r1
            goto L5e
        L57:
            int r7 = r4 + 1
            r8 = 1
            if (r4 <= r8) goto L5d
            goto L87
        L5d:
            r4 = r7
        L5e:
            int r7 = r10.available()     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4b
            if (r7 > 0) goto L2b
            goto L87
        L65:
            r9.f52438o = r6     // Catch: java.lang.Throwable -> L49
            r9.f52439p = r10     // Catch: java.lang.Throwable -> L49
            throw r11     // Catch: java.lang.Throwable -> L49
        L6a:
            java.nio.channels.ReadableByteChannel r0 = r9.f52438o
            if (r0 == 0) goto L78
            boolean r0 = r0.isOpen()
            if (r0 != 0) goto L78
            r9.f52438o = r6
            r9.f52439p = r10
        L78:
            java.nio.ByteBuffer r10 = r9.f52437n
            r10.position(r1)
            java.nio.ByteBuffer r10 = r9.f52437n
            int r0 = r10.capacity()
            r10.limit(r0)
            throw r11
        L87:
            if (r5 >= 0) goto La9
            if (r2 != 0) goto La9
            java.nio.channels.ReadableByteChannel r11 = r9.f52438o
            if (r11 == 0) goto L99
            boolean r11 = r11.isOpen()
            if (r11 != 0) goto L99
            r9.f52438o = r6
            r9.f52439p = r10
        L99:
            java.nio.ByteBuffer r10 = r9.f52437n
            r10.position(r1)
            java.nio.ByteBuffer r10 = r9.f52437n
            int r11 = r10.capacity()
            r10.limit(r11)
            r10 = -1
            return r10
        La9:
            java.nio.channels.ReadableByteChannel r11 = r9.f52438o
            if (r11 == 0) goto Lb7
            boolean r11 = r11.isOpen()
            if (r11 != 0) goto Lb7
            r9.f52438o = r6
            r9.f52439p = r10
        Lb7:
            java.nio.ByteBuffer r10 = r9.f52437n
            r10.position(r1)
            java.nio.ByteBuffer r10 = r9.f52437n
            int r11 = r10.capacity()
            r10.limit(r11)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.c.e0(java.io.InputStream, int):int");
    }

    @Override // L1.a, L1.d
    public int g0(int i2, byte[] bArr, int i3, int i4) {
        if (isReadOnly()) {
            throw new IllegalStateException("READONLY");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("index<0: " + i2 + "<0");
        }
        if (i2 + i4 > w0() && (i4 = w0() - i2) < 0) {
            throw new IllegalArgumentException("index>capacity(): " + i2 + ">" + w0());
        }
        try {
            this.f52437n.position(i2);
            int iRemaining = this.f52437n.remaining();
            if (i4 > iRemaining) {
                i4 = iRemaining;
            }
            if (i4 > 0) {
                this.f52437n.put(bArr, i3, i4);
            }
            return i4;
        } finally {
            this.f52437n.position(0);
        }
    }

    @Override // L1.d
    public byte k0(int i2) {
        return this.f52437n.get(i2);
    }

    @Override // L1.d
    public byte[] p0() {
        return null;
    }

    @Override // org.eclipse.jetty.io.nio.e
    public ByteBuffer t0() {
        return this.f52437n;
    }

    @Override // L1.d
    public int w0() {
        return this.f52437n.capacity();
    }

    /* JADX WARN: Finally extract failed */
    @Override // L1.a, L1.d
    public void writeTo(OutputStream outputStream) {
        int iWrite;
        WritableByteChannel writableByteChannel = this.f52440q;
        if (writableByteChannel == null || !writableByteChannel.isOpen() || outputStream != this.f52441r) {
            this.f52440q = Channels.newChannel(outputStream);
            this.f52441r = outputStream;
        }
        synchronized (this.f52437n) {
            loop0: while (true) {
                int i2 = 0;
                while (B0() && this.f52440q.isOpen()) {
                    try {
                        try {
                            try {
                                this.f52437n.position(getIndex());
                                this.f52437n.limit(n0());
                                iWrite = this.f52440q.write(this.f52437n);
                                if (iWrite < 0) {
                                    break loop0;
                                }
                                if (iWrite > 0) {
                                    break;
                                }
                                int i3 = i2 + 1;
                                if (i2 > 1) {
                                    break loop0;
                                } else {
                                    i2 = i3;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (IOException e2) {
                            this.f52440q = null;
                            this.f52441r = null;
                            throw e2;
                        }
                    } catch (Throwable th2) {
                        WritableByteChannel writableByteChannel2 = this.f52440q;
                        if (writableByteChannel2 != null && !writableByteChannel2.isOpen()) {
                            this.f52440q = null;
                            this.f52441r = null;
                        }
                        this.f52437n.position(0);
                        ByteBuffer byteBuffer = this.f52437n;
                        byteBuffer.limit(byteBuffer.capacity());
                        throw th2;
                    }
                }
                skip(iWrite);
            }
            WritableByteChannel writableByteChannel3 = this.f52440q;
            if (writableByteChannel3 != null && !writableByteChannel3.isOpen()) {
                this.f52440q = null;
                this.f52441r = null;
            }
            this.f52437n.position(0);
            ByteBuffer byteBuffer2 = this.f52437n;
            byteBuffer2.limit(byteBuffer2.capacity());
        }
    }

    public c(ByteBuffer byteBuffer, boolean z2) {
        super(z2 ? 0 : 2, false);
        if (byteBuffer.isDirect()) {
            this.f52437n = byteBuffer;
            z0(byteBuffer.position());
            q0(byteBuffer.limit());
            return;
        }
        throw new IllegalArgumentException();
    }
}
