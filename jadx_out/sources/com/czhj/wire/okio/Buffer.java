package com.czhj.wire.okio;

import androidx.core.location.LocationRequestCompat;
import com.anythink.core.common.s.a.c;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;
import com.umeng.analytics.pro.ek;
import io.flutter.embedding.android.KeyboardMap;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.internal.connection.RealConnection;

/* loaded from: classes3.dex */
public final class Buffer implements BufferedSink, BufferedSource, Cloneable, ByteChannel {

    /* renamed from: a, reason: collision with root package name */
    static final int f29762a = 65533;

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f29763d = {e.f35442H, e.f35443I, e.f35444J, e.f35445K, e.f35446L, e.f35447M, e.f35448N, e.f35449O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b, reason: collision with root package name */
    Segment f29764b;

    /* renamed from: c, reason: collision with root package name */
    long f29765c;

    public static final class UnsafeCursor implements Closeable {

        /* renamed from: a, reason: collision with root package name */
        private Segment f29768a;
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            this.f29768a = null;
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: " + i2);
            }
            if (i2 > 8192) {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i2);
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long j2 = buffer.f29765c;
            Segment segmentA = buffer.a(i2);
            int i3 = 8192 - segmentA.f29842e;
            segmentA.f29842e = 8192;
            long j3 = i3;
            this.buffer.f29765c = j2 + j3;
            this.f29768a = segmentA;
            this.offset = j2;
            this.data = segmentA.f29840c;
            this.start = 8192 - i3;
            this.end = 8192;
            return j3;
        }

        public final int next() {
            long j2 = this.offset;
            if (j2 != this.buffer.f29765c) {
                return seek(j2 == -1 ? 0L : j2 + (this.end - this.start));
            }
            throw new IllegalStateException();
        }

        public final long resizeBuffer(long j2) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long j3 = buffer.f29765c;
            if (j2 <= j3) {
                if (j2 < 0) {
                    throw new IllegalArgumentException("newSize < 0: " + j2);
                }
                long j4 = j3 - j2;
                while (true) {
                    if (j4 <= 0) {
                        break;
                    }
                    Buffer buffer2 = this.buffer;
                    Segment segment = buffer2.f29764b.f29846i;
                    int i2 = segment.f29842e;
                    long j5 = i2 - segment.f29841d;
                    if (j5 > j4) {
                        segment.f29842e = (int) (i2 - j4);
                        break;
                    }
                    buffer2.f29764b = segment.pop();
                    SegmentPool.a(segment);
                    j4 -= j5;
                }
                this.f29768a = null;
                this.offset = j2;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (j2 > j3) {
                long j6 = j2 - j3;
                boolean z2 = true;
                while (j6 > 0) {
                    Segment segmentA = this.buffer.a(1);
                    int iMin = (int) Math.min(j6, 8192 - segmentA.f29842e);
                    int i3 = segmentA.f29842e + iMin;
                    segmentA.f29842e = i3;
                    j6 -= iMin;
                    if (z2) {
                        this.f29768a = segmentA;
                        this.offset = j3;
                        this.data = segmentA.f29840c;
                        this.start = i3 - iMin;
                        this.end = i3;
                        z2 = false;
                    }
                }
            }
            this.buffer.f29765c = j2;
            return j3;
        }

        public final int seek(long j2) {
            if (j2 >= -1) {
                Buffer buffer = this.buffer;
                long j3 = buffer.f29765c;
                if (j2 <= j3) {
                    if (j2 == -1 || j2 == j3) {
                        this.f29768a = null;
                        this.offset = j2;
                        this.data = null;
                        this.start = -1;
                        this.end = -1;
                        return -1;
                    }
                    Segment segment = buffer.f29764b;
                    Segment segmentPush = this.f29768a;
                    long j4 = 0;
                    if (segmentPush != null) {
                        long j5 = this.offset - (this.start - segmentPush.f29841d);
                        if (j5 > j2) {
                            segmentPush = segment;
                            segment = segmentPush;
                            j3 = j5;
                        } else {
                            j4 = j5;
                        }
                    } else {
                        segmentPush = segment;
                    }
                    if (j3 - j2 > j2 - j4) {
                        while (true) {
                            int i2 = segmentPush.f29842e;
                            int i3 = segmentPush.f29841d;
                            if (j2 < (i2 - i3) + j4) {
                                break;
                            }
                            j4 += i2 - i3;
                            segmentPush = segmentPush.f29845h;
                        }
                    } else {
                        while (j3 > j2) {
                            segment = segment.f29846i;
                            j3 -= segment.f29842e - segment.f29841d;
                        }
                        segmentPush = segment;
                        j4 = j3;
                    }
                    if (this.readWrite && segmentPush.f29843f) {
                        Segment segmentB = segmentPush.b();
                        Buffer buffer2 = this.buffer;
                        if (buffer2.f29764b == segmentPush) {
                            buffer2.f29764b = segmentB;
                        }
                        segmentPush = segmentPush.push(segmentB);
                        segmentPush.f29846i.pop();
                    }
                    this.f29768a = segmentPush;
                    this.offset = j2;
                    this.data = segmentPush.f29840c;
                    int i4 = segmentPush.f29841d + ((int) (j2 - j4));
                    this.start = i4;
                    int i5 = segmentPush.f29842e;
                    this.end = i5;
                    return i5 - i4;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j2), Long.valueOf(this.buffer.f29765c)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        if (r19 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007b, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(com.czhj.wire.okio.Options r18, boolean r19) {
        /*
            r17 = this;
            r0 = r18
            r1 = r17
            com.czhj.wire.okio.Segment r2 = r1.f29764b
            r3 = -2
            if (r2 != 0) goto L13
            if (r19 == 0) goto Lc
            return r3
        Lc:
            com.czhj.wire.okio.ByteString r2 = com.czhj.wire.okio.ByteString.EMPTY
            int r0 = r0.indexOf(r2)
            return r0
        L13:
            byte[] r4 = r2.f29840c
            int r5 = r2.f29841d
            int r6 = r2.f29842e
            int[] r0 = r0.f29812b
            r7 = 0
            r8 = -1
            r10 = r2
            r9 = r7
            r11 = r8
        L20:
            int r12 = r9 + 1
            r13 = r0[r9]
            int r9 = r9 + 2
            r12 = r0[r12]
            if (r12 == r8) goto L2b
            r11 = r12
        L2b:
            if (r10 != 0) goto L2e
            goto L55
        L2e:
            r12 = 0
            if (r13 >= 0) goto L71
            int r13 = r13 * (-1)
            int r14 = r9 + r13
        L35:
            int r13 = r5 + 1
            r5 = r4[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r15 = r9 + 1
            r9 = r0[r9]
            if (r5 == r9) goto L42
            goto L7b
        L42:
            if (r15 != r14) goto L46
            r5 = 1
            goto L47
        L46:
            r5 = r7
        L47:
            if (r13 != r6) goto L61
            com.czhj.wire.okio.Segment r4 = r10.f29845h
            int r6 = r4.f29841d
            byte[] r9 = r4.f29840c
            int r10 = r4.f29842e
            if (r4 != r2) goto L5b
            if (r5 != 0) goto L58
        L55:
            if (r19 == 0) goto L7b
            return r3
        L58:
            r4 = r9
            r9 = r12
            goto L64
        L5b:
            r16 = r9
            r9 = r4
            r4 = r16
            goto L64
        L61:
            r9 = r10
            r10 = r6
            r6 = r13
        L64:
            if (r5 == 0) goto L6c
            r5 = r0[r15]
            r3 = r6
            r6 = r10
            r10 = r9
            goto L92
        L6c:
            r5 = r6
            r6 = r10
            r10 = r9
            r9 = r15
            goto L35
        L71:
            int r14 = r5 + 1
            r5 = r4[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r15 = r9 + r13
        L79:
            if (r9 != r15) goto L7c
        L7b:
            return r11
        L7c:
            r3 = r0[r9]
            if (r5 != r3) goto L99
            int r9 = r9 + r13
            r5 = r0[r9]
            if (r14 != r6) goto L91
            com.czhj.wire.okio.Segment r10 = r10.f29845h
            int r3 = r10.f29841d
            byte[] r4 = r10.f29840c
            int r6 = r10.f29842e
            if (r10 != r2) goto L92
            r10 = r12
            goto L92
        L91:
            r3 = r14
        L92:
            if (r5 < 0) goto L95
            return r5
        L95:
            int r9 = -r5
            r5 = r3
            r3 = -2
            goto L20
        L99:
            int r9 = r9 + 1
            r3 = -2
            goto L79
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.Buffer.a(com.czhj.wire.okio.Options, boolean):int");
    }

    @Override // com.czhj.wire.okio.BufferedSink, com.czhj.wire.okio.BufferedSource
    public Buffer buffer() {
        return this;
    }

    public final void clear() {
        try {
            skip(this.f29765c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Buffer m49clone() {
        Buffer buffer = new Buffer();
        if (this.f29765c == 0) {
            return buffer;
        }
        Segment segmentA = this.f29764b.a();
        buffer.f29764b = segmentA;
        segmentA.f29846i = segmentA;
        segmentA.f29845h = segmentA;
        Segment segment = this.f29764b;
        while (true) {
            segment = segment.f29845h;
            if (segment == this.f29764b) {
                buffer.f29765c = this.f29765c;
                return buffer;
            }
            buffer.f29764b.f29846i.push(segment.a());
        }
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long j2 = this.f29765c;
        if (j2 == 0) {
            return 0L;
        }
        Segment segment = this.f29764b.f29846i;
        return (segment.f29842e >= 8192 || !segment.f29844g) ? j2 : j2 - (r3 - segment.f29841d);
    }

    public final Buffer copyTo(Buffer buffer, long j2, long j3) {
        if (buffer == null) {
            throw new IllegalArgumentException("out == null");
        }
        long j4 = j2;
        Util.checkOffsetAndCount(this.f29765c, j4, j3);
        if (j3 != 0) {
            buffer.f29765c += j3;
            Segment segment = this.f29764b;
            while (true) {
                int i2 = segment.f29842e;
                int i3 = segment.f29841d;
                if (j4 < i2 - i3) {
                    break;
                }
                j4 -= i2 - i3;
                segment = segment.f29845h;
            }
            Segment segment2 = segment;
            long j5 = j3;
            while (j5 > 0) {
                Segment segmentA = segment2.a();
                int i4 = (int) (segmentA.f29841d + j4);
                segmentA.f29841d = i4;
                segmentA.f29842e = Math.min(i4 + ((int) j5), segmentA.f29842e);
                Segment segment3 = buffer.f29764b;
                if (segment3 == null) {
                    segmentA.f29846i = segmentA;
                    segmentA.f29845h = segmentA;
                    buffer.f29764b = segmentA;
                } else {
                    segment3.f29846i.push(segmentA);
                }
                j5 -= segmentA.f29842e - segmentA.f29841d;
                segment2 = segment2.f29845h;
                j4 = 0;
            }
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        long j2 = this.f29765c;
        if (j2 != buffer.f29765c) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        Segment segment = this.f29764b;
        Segment segment2 = buffer.f29764b;
        int i2 = segment.f29841d;
        int i3 = segment2.f29841d;
        while (j3 < this.f29765c) {
            long jMin = Math.min(segment.f29842e - i2, segment2.f29842e - i3);
            int i4 = 0;
            while (i4 < jMin) {
                int i5 = i2 + 1;
                int i6 = i3 + 1;
                if (segment.f29840c[i2] != segment2.f29840c[i3]) {
                    return false;
                }
                i4++;
                i2 = i5;
                i3 = i6;
            }
            if (i2 == segment.f29842e) {
                segment = segment.f29845h;
                i2 = segment.f29841d;
            }
            if (i3 == segment2.f29842e) {
                segment2 = segment2.f29845h;
                i3 = segment2.f29841d;
            }
            j3 += jMin;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean exhausted() {
        return this.f29765c == 0;
    }

    @Override // com.czhj.wire.okio.BufferedSink, com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public Buffer getBuffer() {
        return this;
    }

    public final byte getByte(long j2) {
        int i2;
        long j3 = j2;
        Util.checkOffsetAndCount(this.f29765c, j3, 1L);
        long j4 = this.f29765c;
        if (j4 - j3 <= j3) {
            long j5 = j3 - j4;
            Segment segment = this.f29764b;
            do {
                segment = segment.f29846i;
                int i3 = segment.f29842e;
                i2 = segment.f29841d;
                j5 += i3 - i2;
            } while (j5 < 0);
            return segment.f29840c[i2 + ((int) j5)];
        }
        Segment segment2 = this.f29764b;
        while (true) {
            int i4 = segment2.f29842e;
            int i5 = segment2.f29841d;
            long j6 = i4 - i5;
            if (j3 < j6) {
                return segment2.f29840c[i5 + ((int) j3)];
            }
            j3 -= j6;
            segment2 = segment2.f29845h;
        }
    }

    public int hashCode() {
        Segment segment = this.f29764b;
        if (segment == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = segment.f29842e;
            for (int i4 = segment.f29841d; i4 < i3; i4++) {
                i2 = (i2 * 31) + segment.f29840c[i4];
            }
            segment = segment.f29845h;
        } while (segment != this.f29764b);
        return i2;
    }

    public final ByteString hmacSha1(ByteString byteString) {
        return a("HmacSHA1", byteString);
    }

    public final ByteString hmacSha256(ByteString byteString) {
        return a("HmacSHA256", byteString);
    }

    public final ByteString hmacSha512(ByteString byteString) {
        return a("HmacSHA512", byteString);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b3) {
        return indexOf(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: com.czhj.wire.okio.Buffer.2
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.f29765c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                Buffer buffer = Buffer.this;
                if (buffer.f29765c > 0) {
                    return buffer.readByte() & 255;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) {
                return Buffer.this.read(bArr, i2, i3);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return a("MD5");
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: com.czhj.wire.okio.Buffer.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i2) {
                Buffer.this.writeByte((int) ((byte) i2));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i2, int i3) {
                Buffer.this.write(bArr, i2, i3);
            }
        };
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j2, ByteString byteString) {
        return rangeEquals(j2, byteString, 0, byteString.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Segment segment = this.f29764b;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), segment.f29842e - segment.f29841d);
        byteBuffer.put(segment.f29840c, segment.f29841d, iMin);
        int i2 = segment.f29841d + iMin;
        segment.f29841d = i2;
        this.f29765c -= iMin;
        if (i2 == segment.f29842e) {
            this.f29764b = segment.pop();
            SegmentPool.a(segment);
        }
        return iMin;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        long j2 = this.f29765c;
        if (j2 > 0) {
            sink.write(this, j2);
        }
        return j2;
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe(new UnsafeCursor());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte readByte() {
        long j2 = this.f29765c;
        if (j2 == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.f29764b;
        int i2 = segment.f29841d;
        int i3 = segment.f29842e;
        int i4 = i2 + 1;
        byte b3 = segment.f29840c[i2];
        this.f29765c = j2 - 1;
        if (i4 != i3) {
            segment.f29841d = i4;
            return b3;
        }
        this.f29764b = segment.pop();
        SegmentPool.a(segment);
        return b3;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.f29765c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ac A[EDGE_INSN: B:48:0x00ac->B:38:0x00ac BREAK  A[LOOP:0: B:5:0x000f->B:50:?], SYNTHETIC] */
    @Override // com.czhj.wire.okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            r15 = this;
            long r0 = r15.f29765c
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb7
            r0 = 0
            r4 = -7
            r1 = r0
            r5 = r4
            r3 = r2
            r2 = r1
        Lf:
            com.czhj.wire.okio.Segment r7 = r15.f29764b
            byte[] r8 = r7.f29840c
            int r9 = r7.f29841d
            int r10 = r7.f29842e
        L17:
            if (r9 >= r10) goto L98
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L69
            r12 = 57
            if (r11 > r12) goto L69
            int r12 = 48 - r11
            r13 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r13 = (r3 > r13 ? 1 : (r3 == r13 ? 0 : -1))
            if (r13 < 0) goto L3c
            if (r13 != 0) goto L36
            long r13 = (long) r12
            int r13 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
            if (r13 >= 0) goto L36
            goto L3c
        L36:
            r13 = 10
            long r3 = r3 * r13
            long r11 = (long) r12
            long r3 = r3 + r11
            goto L74
        L3c:
            com.czhj.wire.okio.Buffer r0 = new com.czhj.wire.okio.Buffer
            r0.<init>()
            com.czhj.wire.okio.Buffer r0 = r0.writeDecimalLong(r3)
            com.czhj.wire.okio.Buffer r0 = r0.writeByte(r11)
            if (r1 != 0) goto L4e
            r0.readByte()
        L4e:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L69:
            r12 = 45
            r13 = 1
            if (r11 != r12) goto L79
            if (r0 != 0) goto L79
            r11 = 1
            long r5 = r5 - r11
            r1 = r13
        L74:
            int r9 = r9 + 1
            int r0 = r0 + 1
            goto L17
        L79:
            if (r0 == 0) goto L7d
            r2 = r13
            goto L98
        L7d:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r11)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L98:
            if (r9 != r10) goto La4
            com.czhj.wire.okio.Segment r8 = r7.pop()
            r15.f29764b = r8
            com.czhj.wire.okio.SegmentPool.a(r7)
            goto La6
        La4:
            r7.f29841d = r9
        La6:
            if (r2 != 0) goto Lac
            com.czhj.wire.okio.Segment r7 = r15.f29764b
            if (r7 != 0) goto Lf
        Lac:
            long r5 = r15.f29765c
            long r7 = (long) r0
            long r5 = r5 - r7
            r15.f29765c = r5
            if (r1 == 0) goto Lb5
            return r3
        Lb5:
            long r0 = -r3
            return r0
        Lb7:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.Buffer.readDecimalLong():long");
    }

    public final Buffer readFrom(InputStream inputStream) throws IOException {
        a(inputStream, LocationRequestCompat.PASSIVE_INTERVAL, true);
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(Buffer buffer, long j2) throws EOFException {
        long j3 = this.f29765c;
        if (j3 >= j2) {
            buffer.write(this, j2);
        } else {
            buffer.write(this, j3);
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2 A[EDGE_INSN: B:43:0x00a2->B:37:0x00a2 BREAK  A[LOOP:0: B:5:0x000b->B:45:?], SYNTHETIC] */
    @Override // com.czhj.wire.okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            r14 = this;
            long r0 = r14.f29765c
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La9
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            com.czhj.wire.okio.Segment r6 = r14.f29764b
            byte[] r7 = r6.f29840c
            int r8 = r6.f29841d
            int r9 = r6.f29842e
        L13:
            if (r8 >= r9) goto L8e
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L37
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-87)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L6f
            r11 = 70
            if (r10 > r11) goto L6f
            int r11 = r10 + (-55)
        L37:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L47
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L47:
            com.czhj.wire.okio.Buffer r0 = new com.czhj.wire.okio.Buffer
            r0.<init>()
            com.czhj.wire.okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            com.czhj.wire.okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6f:
            if (r0 == 0) goto L73
            r1 = 1
            goto L8e
        L73:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8e:
            if (r8 != r9) goto L9a
            com.czhj.wire.okio.Segment r7 = r6.pop()
            r14.f29764b = r7
            com.czhj.wire.okio.SegmentPool.a(r6)
            goto L9c
        L9a:
            r6.f29841d = r8
        L9c:
            if (r1 != 0) goto La2
            com.czhj.wire.okio.Segment r6 = r14.f29764b
            if (r6 != 0) goto Lb
        La2:
            long r1 = r14.f29765c
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.f29765c = r1
            return r4
        La9:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readInt() {
        long j2 = this.f29765c;
        if (j2 < 4) {
            throw new IllegalStateException("size < 4: " + this.f29765c);
        }
        Segment segment = this.f29764b;
        int i2 = segment.f29841d;
        int i3 = segment.f29842e;
        if (i3 - i2 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.f29840c;
        int i4 = i2 + 3;
        int i5 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 2] & 255) << 8);
        int i6 = i2 + 4;
        int i7 = (bArr[i4] & 255) | i5;
        this.f29765c = j2 - 4;
        if (i6 != i3) {
            segment.f29841d = i6;
            return i7;
        }
        this.f29764b = segment.pop();
        SegmentPool.a(segment);
        return i7;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLong() {
        long j2 = this.f29765c;
        if (j2 < 8) {
            throw new IllegalStateException("size < 8: " + this.f29765c);
        }
        Segment segment = this.f29764b;
        int i2 = segment.f29841d;
        int i3 = segment.f29842e;
        if (i3 - i2 < 8) {
            return ((readInt() & KeyboardMap.kValueMask) << 32) | (KeyboardMap.kValueMask & readInt());
        }
        byte[] bArr = segment.f29840c;
        int i4 = i2 + 7;
        long j3 = ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2] & 255) << 56) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
        int i5 = i2 + 8;
        long j4 = j3 | (bArr[i4] & 255);
        this.f29765c = j2 - 8;
        if (i5 != i3) {
            segment.f29841d = i5;
            return j4;
        }
        this.f29764b = segment.pop();
        SegmentPool.a(segment);
        return j4;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShort() {
        long j2 = this.f29765c;
        if (j2 < 2) {
            throw new IllegalStateException("size < 2: " + this.f29765c);
        }
        Segment segment = this.f29764b;
        int i2 = segment.f29841d;
        int i3 = segment.f29842e;
        if (i3 - i2 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.f29840c;
        int i4 = i2 + 1;
        int i5 = (bArr[i2] & 255) << 8;
        int i6 = i2 + 2;
        int i7 = (bArr[i4] & 255) | i5;
        this.f29765c = j2 - 2;
        if (i6 == i3) {
            this.f29764b = segment.pop();
            SegmentPool.a(segment);
        } else {
            segment.f29841d = i6;
        }
        return (short) i7;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(long j2, Charset charset) throws EOFException {
        Util.checkOffsetAndCount(this.f29765c, 0L, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
        }
        if (j2 == 0) {
            return "";
        }
        Segment segment = this.f29764b;
        int i2 = segment.f29841d;
        if (i2 + j2 > segment.f29842e) {
            return new String(readByteArray(j2), charset);
        }
        String str = new String(segment.f29840c, i2, (int) j2, charset);
        int i3 = (int) (segment.f29841d + j2);
        segment.f29841d = i3;
        this.f29765c -= j2;
        if (i3 == segment.f29842e) {
            this.f29764b = segment.pop();
            SegmentPool.a(segment);
        }
        return str;
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe(new UnsafeCursor());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8() {
        try {
            return readString(this.f29765c, Util.UTF_8);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i2;
        int i3;
        int i4;
        if (this.f29765c == 0) {
            throw new EOFException();
        }
        byte b3 = getByte(0L);
        if ((b3 & c.f7560a) == 0) {
            i2 = b3 & 127;
            i4 = 0;
            i3 = 1;
        } else if ((b3 & 224) == 192) {
            i2 = b3 & 31;
            i3 = 2;
            i4 = 128;
        } else if ((b3 & 240) == 224) {
            i2 = b3 & ek.f49295m;
            i3 = 3;
            i4 = 2048;
        } else {
            if ((b3 & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i2 = b3 & 7;
            i3 = 4;
            i4 = 65536;
        }
        long j2 = i3;
        if (this.f29765c < j2) {
            throw new EOFException("size < " + i3 + ": " + this.f29765c + " (to read code point prefixed 0x" + Integer.toHexString(b3) + ")");
        }
        for (int i5 = 1; i5 < i3; i5++) {
            long j3 = i5;
            byte b4 = getByte(j3);
            if ((b4 & 192) != 128) {
                skip(j3);
                return 65533;
            }
            i2 = (i2 << 6) | (b4 & 63);
        }
        skip(j2);
        if (i2 > 1114111) {
            return 65533;
        }
        if ((i2 < 55296 || i2 > 57343) && i2 >= i4) {
            return i2;
        }
        return 65533;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return a(jIndexOf);
        }
        long j2 = this.f29765c;
        if (j2 != 0) {
            return readUtf8(j2);
        }
        return null;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean request(long j2) {
        return this.f29765c >= j2;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void require(long j2) throws EOFException {
        if (this.f29765c < j2) {
            throw new EOFException();
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int select(Options options) {
        int iA = a(options, false);
        if (iA == -1) {
            return -1;
        }
        try {
            skip(options.f29811a[iA].size());
            return iA;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public final ByteString sha1() {
        return a("SHA-1");
    }

    public final ByteString sha256() {
        return a("SHA-256");
    }

    public final ByteString sha512() {
        return a("SHA-512");
    }

    public final long size() {
        return this.f29765c;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void skip(long j2) throws EOFException {
        while (j2 > 0) {
            if (this.f29764b == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j2, r0.f29842e - r0.f29841d);
            long j3 = iMin;
            this.f29765c -= j3;
            j2 -= j3;
            Segment segment = this.f29764b;
            int i2 = segment.f29841d + iMin;
            segment.f29841d = i2;
            if (i2 == segment.f29842e) {
                this.f29764b = segment.pop();
                SegmentPool.a(segment);
            }
        }
    }

    public final ByteString snapshot() {
        long j2 = this.f29765c;
        if (j2 <= 2147483647L) {
            return snapshot((int) j2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f29765c);
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            Segment segmentA = a(1);
            int iMin = Math.min(i2, 8192 - segmentA.f29842e);
            byteBuffer.get(segmentA.f29840c, segmentA.f29842e, iMin);
            i2 -= iMin;
            segmentA.f29842e += iMin;
        }
        this.f29765c += iRemaining;
        return iRemaining;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long j3 = source.read(this, 8192L);
            if (j3 == -1) {
                return j2;
            }
            j2 += j3;
        }
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeByte(int i2) {
        Segment segmentA = a(1);
        byte[] bArr = segmentA.f29840c;
        int i3 = segmentA.f29842e;
        segmentA.f29842e = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f29765c++;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeDecimalLong(long j2) {
        boolean z2;
        if (j2 == 0) {
            return writeByte(48);
        }
        int i2 = 1;
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (j2 >= 100000000) {
            i2 = j2 < 1000000000000L ? j2 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j2 < C.NANOS_PER_SECOND ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i2 = j2 < C.MICROS_PER_SECOND ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 >= 100) {
            i2 = j2 < 1000 ? 3 : 4;
        } else if (j2 >= 10) {
            i2 = 2;
        }
        if (z2) {
            i2++;
        }
        Segment segmentA = a(i2);
        byte[] bArr = segmentA.f29840c;
        int i3 = segmentA.f29842e + i2;
        while (j2 != 0) {
            i3--;
            bArr[i3] = f29763d[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z2) {
            bArr[i3 - 1] = 45;
        }
        segmentA.f29842e += i2;
        this.f29765c += i2;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j2) {
        if (j2 == 0) {
            return writeByte(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        Segment segmentA = a(iNumberOfTrailingZeros);
        byte[] bArr = segmentA.f29840c;
        int i2 = segmentA.f29842e;
        for (int i3 = (i2 + iNumberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = f29763d[(int) (15 & j2)];
            j2 >>>= 4;
        }
        segmentA.f29842e += iNumberOfTrailingZeros;
        this.f29765c += iNumberOfTrailingZeros;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeInt(int i2) {
        Segment segmentA = a(4);
        byte[] bArr = segmentA.f29840c;
        int i3 = segmentA.f29842e;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 3] = (byte) (i2 & 255);
        segmentA.f29842e = i3 + 4;
        this.f29765c += 4;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeIntLe(int i2) {
        return writeInt(Util.reverseBytesInt(i2));
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeLong(long j2) {
        Segment segmentA = a(8);
        byte[] bArr = segmentA.f29840c;
        int i2 = segmentA.f29842e;
        bArr[i2] = (byte) ((j2 >>> 56) & 255);
        bArr[i2 + 1] = (byte) ((j2 >>> 48) & 255);
        bArr[i2 + 2] = (byte) ((j2 >>> 40) & 255);
        bArr[i2 + 3] = (byte) ((j2 >>> 32) & 255);
        bArr[i2 + 4] = (byte) ((j2 >>> 24) & 255);
        bArr[i2 + 5] = (byte) ((j2 >>> 16) & 255);
        bArr[i2 + 6] = (byte) ((j2 >>> 8) & 255);
        bArr[i2 + 7] = (byte) (j2 & 255);
        segmentA.f29842e = i2 + 8;
        this.f29765c += 8;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeLongLe(long j2) {
        return writeLong(Util.reverseBytesLong(j2));
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeShort(int i2) {
        Segment segmentA = a(2);
        byte[] bArr = segmentA.f29840c;
        int i3 = segmentA.f29842e;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 1] = (byte) (i2 & 255);
        segmentA.f29842e = i3 + 2;
        this.f29765c += 2;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeShortLe(int i2) {
        return writeShort((int) Util.reverseBytesShort((short) i2));
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeString(String str, int i2, int i3, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i2);
        }
        if (i3 < i2) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
        }
        if (i3 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(Util.UTF_8)) {
                return writeUtf8(str, i2, i3);
            }
            byte[] bytes = str.substring(i2, i3).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
    }

    public final Buffer writeTo(OutputStream outputStream) throws IOException {
        return writeTo(outputStream, this.f29765c);
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i2) {
        int i3;
        int i4;
        if (i2 < 128) {
            writeByte(i2);
            return this;
        }
        if (i2 < 2048) {
            i4 = (i2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT;
        } else {
            if (i2 < 65536) {
                if (i2 >= 55296 && i2 <= 57343) {
                    writeByte(63);
                    return this;
                }
                i3 = (i2 >> 12) | 224;
            } else {
                if (i2 > 1114111) {
                    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
                }
                writeByte((i2 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                i3 = ((i2 >> 12) & 63) | 128;
            }
            writeByte(i3);
            i4 = ((i2 >> 6) & 63) | 128;
        }
        writeByte(i4);
        writeByte((i2 & 63) | 128);
        return this;
    }

    private ByteString a(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            Segment segment = this.f29764b;
            if (segment != null) {
                byte[] bArr = segment.f29840c;
                int i2 = segment.f29841d;
                messageDigest.update(bArr, i2, segment.f29842e - i2);
                Segment segment2 = this.f29764b;
                while (true) {
                    segment2 = segment2.f29845h;
                    if (segment2 == this.f29764b) {
                        break;
                    }
                    byte[] bArr2 = segment2.f29840c;
                    int i3 = segment2.f29841d;
                    messageDigest.update(bArr2, i3, segment2.f29842e - i3);
                }
            }
            return ByteString.of(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public final Buffer copyTo(OutputStream outputStream) throws IOException {
        return copyTo(outputStream, 0L, this.f29765c);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b3, long j2) {
        return indexOf(b3, j2, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j2) {
        int i2;
        long j3 = 0;
        if (j2 < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment segment = this.f29764b;
        if (segment == null) {
            return -1L;
        }
        long j4 = this.f29765c;
        if (j4 - j2 < j2) {
            while (j4 > j2) {
                segment = segment.f29846i;
                j4 -= segment.f29842e - segment.f29841d;
            }
        } else {
            while (true) {
                long j5 = (segment.f29842e - segment.f29841d) + j3;
                if (j5 >= j2) {
                    break;
                }
                segment = segment.f29845h;
                j3 = j5;
            }
            j4 = j3;
        }
        if (byteString.size() == 2) {
            byte b3 = byteString.getByte(0);
            byte b4 = byteString.getByte(1);
            while (j4 < this.f29765c) {
                byte[] bArr = segment.f29840c;
                i2 = (int) ((segment.f29841d + j2) - j4);
                int i3 = segment.f29842e;
                while (i2 < i3) {
                    byte b5 = bArr[i2];
                    if (b5 == b3 || b5 == b4) {
                        return (i2 - segment.f29841d) + j4;
                    }
                    i2++;
                }
                j4 += segment.f29842e - segment.f29841d;
                segment = segment.f29845h;
                j2 = j4;
            }
            return -1L;
        }
        byte[] bArrA = byteString.a();
        while (j4 < this.f29765c) {
            byte[] bArr2 = segment.f29840c;
            i2 = (int) ((segment.f29841d + j2) - j4);
            int i4 = segment.f29842e;
            while (i2 < i4) {
                byte b6 = bArr2[i2];
                for (byte b7 : bArrA) {
                    if (b6 == b7) {
                        return (i2 - segment.f29841d) + j4;
                    }
                }
                i2++;
            }
            j4 += segment.f29842e - segment.f29841d;
            segment = segment.f29845h;
            j2 = j4;
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j2, ByteString byteString, int i2, int i3) {
        if (j2 < 0 || i2 < 0 || i3 < 0 || this.f29765c - j2 < i3 || byteString.size() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (getByte(i4 + j2) != byteString.getByte(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = true;
        return unsafeCursor;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray(long j2) throws EOFException {
        Util.checkOffsetAndCount(this.f29765c, 0L, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[(int) j2];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString(long j2) throws EOFException {
        return new ByteString(readByteArray(j2));
    }

    public final Buffer readFrom(InputStream inputStream, long j2) throws IOException {
        if (j2 >= 0) {
            a(inputStream, j2, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j2);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(byte[] bArr) throws EOFException {
        int i2 = 0;
        while (i2 < bArr.length) {
            int i3 = read(bArr, i2, bArr.length - i2);
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 += i3;
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(Charset charset) {
        try {
            return readString(this.f29765c, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = false;
        return unsafeCursor;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8(long j2) throws EOFException {
        return readString(j2, Util.UTF_8);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict(long j2) throws EOFException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j2);
        }
        long j3 = LocationRequestCompat.PASSIVE_INTERVAL;
        if (j2 != LocationRequestCompat.PASSIVE_INTERVAL) {
            j3 = j2 + 1;
        }
        long j4 = j3;
        long jIndexOf = indexOf((byte) 10, 0L, j4);
        if (jIndexOf != -1) {
            return a(jIndexOf);
        }
        if (j4 < size() && getByte(j4 - 1) == 13 && getByte(j4) == 10) {
            return a(j4);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j2) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    public final ByteString snapshot(int i2) {
        return i2 == 0 ? ByteString.EMPTY : new SegmentedByteString(this, i2);
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.a(this);
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public final Buffer writeTo(OutputStream outputStream, long j2) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.f29765c, 0L, j2);
        Segment segment = this.f29764b;
        long j3 = j2;
        while (j3 > 0) {
            int iMin = (int) Math.min(j3, segment.f29842e - segment.f29841d);
            outputStream.write(segment.f29840c, segment.f29841d, iMin);
            int i2 = segment.f29841d + iMin;
            segment.f29841d = i2;
            long j4 = iMin;
            this.f29765c -= j4;
            j3 -= j4;
            if (i2 == segment.f29842e) {
                Segment segmentPop = segment.pop();
                this.f29764b = segmentPop;
                SegmentPool.a(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeUtf8(String str, int i2, int i3) {
        int i4;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i2);
        }
        if (i3 < i2) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
        }
        if (i3 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
        }
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                Segment segmentA = a(1);
                byte[] bArr = segmentA.f29840c;
                int i5 = segmentA.f29842e - i2;
                int iMin = Math.min(i3, 8192 - i5);
                int i6 = i2 + 1;
                bArr[i2 + i5] = (byte) cCharAt;
                while (i6 < iMin) {
                    char cCharAt2 = str.charAt(i6);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i6 + i5] = (byte) cCharAt2;
                    i6++;
                }
                int i7 = segmentA.f29842e;
                int i8 = (i5 + i6) - i7;
                segmentA.f29842e = i7 + i8;
                this.f29765c += i8;
                i2 = i6;
            } else {
                if (cCharAt < 2048) {
                    i4 = (cCharAt >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    writeByte((cCharAt >> '\f') | 224);
                    i4 = ((cCharAt >> 6) & 63) | 128;
                } else {
                    int i9 = i2 + 1;
                    char cCharAt3 = i9 < i3 ? str.charAt(i9) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        writeByte(63);
                        i2 = i9;
                    } else {
                        int i10 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        writeByte((i10 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                        writeByte(((i10 >> 12) & 63) | 128);
                        writeByte(((i10 >> 6) & 63) | 128);
                        writeByte((i10 & 63) | 128);
                        i2 += 2;
                    }
                }
                writeByte(i4);
                writeByte((cCharAt & '?') | 128);
                i2++;
            }
        }
        return this;
    }

    private ByteString a(String str, ByteString byteString) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            Segment segment = this.f29764b;
            if (segment != null) {
                byte[] bArr = segment.f29840c;
                int i2 = segment.f29841d;
                mac.update(bArr, i2, segment.f29842e - i2);
                Segment segment2 = this.f29764b;
                while (true) {
                    segment2 = segment2.f29845h;
                    if (segment2 == this.f29764b) {
                        break;
                    }
                    byte[] bArr2 = segment2.f29840c;
                    int i3 = segment2.f29841d;
                    mac.update(bArr2, i3, segment2.f29842e - i3);
                }
            }
            return ByteString.of(mac.doFinal());
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public final Buffer copyTo(OutputStream outputStream, long j2, long j3) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        long j4 = j2;
        Util.checkOffsetAndCount(this.f29765c, j4, j3);
        if (j3 != 0) {
            Segment segment = this.f29764b;
            while (true) {
                int i2 = segment.f29842e;
                int i3 = segment.f29841d;
                if (j4 < i2 - i3) {
                    break;
                }
                j4 -= i2 - i3;
                segment = segment.f29845h;
            }
            Segment segment2 = segment;
            long j5 = j3;
            while (j5 > 0) {
                int i4 = (int) (segment2.f29841d + j4);
                int iMin = (int) Math.min(segment2.f29842e - i4, j5);
                outputStream.write(segment2.f29840c, i4, iMin);
                j5 -= iMin;
                segment2 = segment2.f29845h;
                j4 = 0;
            }
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b3, long j2, long j3) {
        Segment segment;
        long j4 = 0;
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f29765c), Long.valueOf(j2), Long.valueOf(j3)));
        }
        long j5 = this.f29765c;
        long j6 = j3 > j5 ? j5 : j3;
        if (j2 == j6 || (segment = this.f29764b) == null) {
            return -1L;
        }
        if (j5 - j2 < j2) {
            while (j5 > j2) {
                segment = segment.f29846i;
                j5 -= segment.f29842e - segment.f29841d;
            }
        } else {
            while (true) {
                long j7 = (segment.f29842e - segment.f29841d) + j4;
                if (j7 >= j2) {
                    break;
                }
                segment = segment.f29845h;
                j4 = j7;
            }
            j5 = j4;
        }
        long j8 = j2;
        while (j5 < j6) {
            byte[] bArr = segment.f29840c;
            int iMin = (int) Math.min(segment.f29842e, (segment.f29841d + j6) - j5);
            for (int i2 = (int) ((segment.f29841d + j8) - j5); i2 < iMin; i2++) {
                if (bArr[i2] == b3) {
                    return (i2 - segment.f29841d) + j5;
                }
            }
            j5 += segment.f29842e - segment.f29841d;
            segment = segment.f29845h;
            j8 = j5;
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr, int i2, int i3) {
        Util.checkOffsetAndCount(bArr.length, i2, i3);
        Segment segment = this.f29764b;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i3, segment.f29842e - segment.f29841d);
        System.arraycopy(segment.f29840c, segment.f29841d, bArr, i2, iMin);
        int i4 = segment.f29841d + iMin;
        segment.f29841d = i4;
        this.f29765c -= iMin;
        if (i4 == segment.f29842e) {
            this.f29764b = segment.pop();
            SegmentPool.a(segment);
        }
        return iMin;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    public Segment a(int i2) {
        if (i2 < 1 || i2 > 8192) {
            throw new IllegalArgumentException();
        }
        Segment segment = this.f29764b;
        if (segment != null) {
            Segment segment2 = segment.f29846i;
            return (segment2.f29842e + i2 > 8192 || !segment2.f29844g) ? segment2.push(SegmentPool.a()) : segment2;
        }
        Segment segmentA = SegmentPool.a();
        this.f29764b = segmentA;
        segmentA.f29846i = segmentA;
        segmentA.f29845h = segmentA;
        return segmentA;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        long j3 = this.f29765c;
        if (j3 == 0) {
            return -1L;
        }
        if (j2 > j3) {
            j2 = j3;
        }
        buffer.write(this, j2);
        return j2;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer write(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = i3;
        Util.checkOffsetAndCount(bArr.length, i2, j2);
        int i4 = i3 + i2;
        while (i2 < i4) {
            Segment segmentA = a(1);
            int iMin = Math.min(i4 - i2, 8192 - segmentA.f29842e);
            System.arraycopy(bArr, i2, segmentA.f29840c, segmentA.f29842e, iMin);
            i2 += iMin;
            segmentA.f29842e += iMin;
        }
        this.f29765c += j2;
        return this;
    }

    public String a(long j2) throws EOFException {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (getByte(j3) == 13) {
                String utf8 = readUtf8(j3);
                skip(2L);
                return utf8;
            }
        }
        String utf82 = readUtf8(j2);
        skip(1L);
        return utf82;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString, long j2) throws IOException {
        Buffer buffer = this;
        if (byteString.size() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j3 = 0;
        if (j2 < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment segment = buffer.f29764b;
        long j4 = -1;
        if (segment == null) {
            return -1L;
        }
        long j5 = buffer.f29765c;
        if (j5 - j2 < j2) {
            while (j5 > j2) {
                segment = segment.f29846i;
                j5 -= segment.f29842e - segment.f29841d;
            }
        } else {
            while (true) {
                long j6 = (segment.f29842e - segment.f29841d) + j3;
                if (j6 >= j2) {
                    break;
                }
                segment = segment.f29845h;
                j3 = j6;
            }
            j5 = j3;
        }
        byte b3 = byteString.getByte(0);
        long j7 = j5;
        int size = byteString.size();
        long j8 = (buffer.f29765c - size) + 1;
        Segment segment2 = segment;
        long j9 = j2;
        while (j7 < j8) {
            byte[] bArr = segment2.f29840c;
            long j10 = j4;
            int iMin = (int) Math.min(segment2.f29842e, (segment2.f29841d + j8) - j7);
            int i2 = (int) ((segment2.f29841d + j9) - j7);
            while (i2 < iMin) {
                if (bArr[i2] == b3 && buffer.a(segment2, i2 + 1, byteString, 1, size)) {
                    return (i2 - segment2.f29841d) + j7;
                }
                i2++;
                buffer = this;
            }
            j7 += segment2.f29842e - segment2.f29841d;
            segment2 = segment2.f29845h;
            buffer = this;
            j9 = j7;
            j4 = j10;
        }
        return j4;
    }

    public List<Integer> a() {
        if (this.f29764b == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        Segment segment = this.f29764b;
        arrayList.add(Integer.valueOf(segment.f29842e - segment.f29841d));
        Segment segment2 = this.f29764b;
        while (true) {
            segment2 = segment2.f29845h;
            if (segment2 == this.f29764b) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(segment2.f29842e - segment2.f29841d));
        }
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink write(Source source, long j2) throws IOException {
        while (j2 > 0) {
            long j3 = source.read(this, j2);
            if (j3 == -1) {
                throw new EOFException();
            }
            j2 -= j3;
        }
        return this;
    }

    private void a(InputStream inputStream, long j2, boolean z2) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j2 <= 0 && !z2) {
                return;
            }
            Segment segmentA = a(1);
            int i2 = inputStream.read(segmentA.f29840c, segmentA.f29842e, (int) Math.min(j2, 8192 - segmentA.f29842e));
            if (i2 == -1) {
                if (segmentA.f29841d == segmentA.f29842e) {
                    this.f29764b = segmentA.pop();
                    SegmentPool.a(segmentA);
                }
                if (!z2) {
                    throw new EOFException();
                }
                return;
            }
            segmentA.f29842e += i2;
            long j3 = i2;
            this.f29765c += j3;
            j2 -= j3;
        }
    }

    private boolean a(Segment segment, int i2, ByteString byteString, int i3, int i4) {
        int i5 = segment.f29842e;
        byte[] bArr = segment.f29840c;
        while (i3 < i4) {
            if (i2 == i5) {
                segment = segment.f29845h;
                byte[] bArr2 = segment.f29840c;
                bArr = bArr2;
                i2 = segment.f29841d;
                i5 = segment.f29842e;
            }
            if (bArr[i2] != byteString.getByte(i3)) {
                return false;
            }
            i2++;
            i3++;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j2) {
        if (buffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (buffer == this) {
            throw new IllegalArgumentException("source == this");
        }
        Util.checkOffsetAndCount(buffer.f29765c, 0L, j2);
        while (j2 > 0) {
            Segment segment = buffer.f29764b;
            if (j2 < segment.f29842e - segment.f29841d) {
                Segment segment2 = this.f29764b;
                Segment segment3 = segment2 != null ? segment2.f29846i : null;
                if (segment3 != null && segment3.f29844g) {
                    if ((segment3.f29842e + j2) - (segment3.f29843f ? 0 : segment3.f29841d) <= 8192) {
                        segment.writeTo(segment3, (int) j2);
                        buffer.f29765c -= j2;
                        this.f29765c += j2;
                        return;
                    }
                }
                buffer.f29764b = segment.split((int) j2);
            }
            Segment segment4 = buffer.f29764b;
            long j3 = segment4.f29842e - segment4.f29841d;
            buffer.f29764b = segment4.pop();
            Segment segment5 = this.f29764b;
            if (segment5 == null) {
                this.f29764b = segment4;
                segment4.f29846i = segment4;
                segment4.f29845h = segment4;
            } else {
                segment5.f29846i.push(segment4).compact();
            }
            buffer.f29765c -= j3;
            this.f29765c += j3;
            j2 -= j3;
        }
    }
}
