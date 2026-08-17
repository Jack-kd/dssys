package com.czhj.wire.okio;

import androidx.core.location.LocationRequestCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
final class RealBufferedSource implements BufferedSource {

    /* renamed from: a, reason: collision with root package name */
    boolean f29836a;
    public final Buffer buffer = new Buffer();
    public final Source source;

    public RealBufferedSource(Source source) {
        if (source == null) {
            throw new NullPointerException("source == null");
        }
        this.source = source;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f29836a) {
            return;
        }
        this.f29836a = true;
        this.source.close();
        this.buffer.clear();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean exhausted() throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        return this.buffer.exhausted() && this.source.read(this.buffer, 8192L) == -1;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public Buffer getBuffer() {
        return this.buffer;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b3) throws IOException {
        return indexOf(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString) throws IOException {
        return indexOfElement(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: com.czhj.wire.okio.RealBufferedSource.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.f29836a) {
                    throw new IOException("closed");
                }
                return (int) Math.min(realBufferedSource.buffer.f29765c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.f29836a) {
                    throw new IOException("closed");
                }
                Buffer buffer = realBufferedSource.buffer;
                if (buffer.f29765c == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                    return -1;
                }
                return RealBufferedSource.this.buffer.readByte() & 255;
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) throws IOException {
                if (RealBufferedSource.this.f29836a) {
                    throw new IOException("closed");
                }
                Util.checkOffsetAndCount(bArr.length, i2, i3);
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                Buffer buffer = realBufferedSource.buffer;
                if (buffer.f29765c == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                    return -1;
                }
                return RealBufferedSource.this.buffer.read(bArr, i2, i3);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f29836a;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j2, ByteString byteString) throws IOException {
        return rangeEquals(j2, byteString, 0, byteString.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Buffer buffer = this.buffer;
        if (buffer.f29765c == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(byteBuffer);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j2 = 0;
        while (this.source.read(this.buffer, 8192L) != -1) {
            long jCompleteSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j2 += jCompleteSegmentByteCount;
                sink.write(this.buffer, jCompleteSegmentByteCount);
            }
        }
        if (this.buffer.size() <= 0) {
            return j2;
        }
        long size = j2 + this.buffer.size();
        Buffer buffer = this.buffer;
        sink.write(buffer, buffer.size());
        return size;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte readByte() throws IOException {
        require(1L);
        return this.buffer.readByte();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteString();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readDecimalLong() throws IOException {
        byte b3;
        require(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!request(i3)) {
                break;
            }
            b3 = this.buffer.getByte(i2);
            if ((b3 < 48 || b3 > 57) && !(i2 == 0 && b3 == 45)) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(b3)));
        }
        return this.buffer.readDecimalLong();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(Buffer buffer, long j2) throws IOException {
        try {
            require(j2);
            this.buffer.readFully(buffer, j2);
        } catch (EOFException e2) {
            buffer.writeAll(this.buffer);
            throw e2;
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws IOException {
        byte b3;
        require(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!request(i3)) {
                break;
            }
            b3 = this.buffer.getByte(i2);
            if ((b3 < 48 || b3 > 57) && ((b3 < 97 || b3 > 102) && (b3 < 65 || b3 > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(b3)));
        }
        return this.buffer.readHexadecimalUnsignedLong();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readInt() throws IOException {
        require(4L);
        return this.buffer.readInt();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readIntLe() throws IOException {
        require(4L);
        return this.buffer.readIntLe();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLong() throws IOException {
        require(8L);
        return this.buffer.readLong();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLongLe() throws IOException {
        require(8L);
        return this.buffer.readLongLe();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShort() throws IOException {
        require(2L);
        return this.buffer.readShort();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShortLe() throws IOException {
        require(2L);
        return this.buffer.readShortLe();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(long j2, Charset charset) throws IOException {
        require(j2);
        if (charset != null) {
            return this.buffer.readString(j2, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readUtf8();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readUtf8CodePoint() throws IOException {
        long j2;
        require(1L);
        byte b3 = this.buffer.getByte(0L);
        if ((b3 & 224) == 192) {
            j2 = 2;
        } else {
            if ((b3 & 240) != 224) {
                if ((b3 & 248) == 240) {
                    j2 = 4;
                }
                return this.buffer.readUtf8CodePoint();
            }
            j2 = 3;
        }
        require(j2);
        return this.buffer.readUtf8CodePoint();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8Line() throws IOException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return this.buffer.a(jIndexOf);
        }
        long j2 = this.buffer.f29765c;
        if (j2 != 0) {
            return readUtf8(j2);
        }
        return null;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict() throws IOException {
        return readUtf8LineStrict(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean request(long j2) throws IOException {
        Buffer buffer;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        do {
            buffer = this.buffer;
            if (buffer.f29765c >= j2) {
                return true;
            }
        } while (this.source.read(buffer, 8192L) != -1);
        return false;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void require(long j2) throws IOException {
        if (!request(j2)) {
            throw new EOFException();
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int select(Options options) throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        do {
            int iA = this.buffer.a(options, true);
            if (iA == -1) {
                return -1;
            }
            if (iA != -2) {
                this.buffer.skip(options.f29811a[iA].size());
                return iA;
            }
        } while (this.source.read(this.buffer, 8192L) != -1);
        return -1;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void skip(long j2) throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        while (j2 > 0) {
            Buffer buffer = this.buffer;
            if (buffer.f29765c == 0 && this.source.read(buffer, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j2, this.buffer.size());
            this.buffer.skip(jMin);
            j2 -= jMin;
        }
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return "buffer(" + this.source + ")";
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b3, long j2) throws IOException {
        return indexOf(b3, j2, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j2) throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOfElement = this.buffer.indexOfElement(byteString, j2);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            Buffer buffer = this.buffer;
            long j3 = buffer.f29765c;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j2 = Math.max(j2, j3);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j2, ByteString byteString, int i2, int i3) throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || i2 < 0 || i3 < 0 || byteString.size() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            long j3 = i4 + j2;
            if (!request(1 + j3) || this.buffer.getByte(j3) != byteString.getByte(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray(long j2) throws IOException {
        require(j2);
        return this.buffer.readByteArray(j2);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString(long j2) throws IOException {
        require(j2);
        return this.buffer.readByteString(j2);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(byte[] bArr) throws IOException {
        try {
            require(bArr.length);
            this.buffer.readFully(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                Buffer buffer = this.buffer;
                long j2 = buffer.f29765c;
                if (j2 <= 0) {
                    throw e2;
                }
                int i3 = buffer.read(bArr, i2, (int) j2);
                if (i3 == -1) {
                    throw new AssertionError();
                }
                i2 += i3;
            }
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.buffer.writeAll(this.source);
        return this.buffer.readString(charset);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8(long j2) throws IOException {
        require(j2);
        return this.buffer.readUtf8(j2);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict(long j2) throws IOException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j2);
        }
        long j3 = j2 == LocationRequestCompat.PASSIVE_INTERVAL ? Long.MAX_VALUE : j2 + 1;
        long jIndexOf = indexOf((byte) 10, 0L, j3);
        if (jIndexOf != -1) {
            return this.buffer.a(jIndexOf);
        }
        if (j3 < LocationRequestCompat.PASSIVE_INTERVAL && request(j3) && this.buffer.getByte(j3 - 1) == 13 && request(j3 + 1) && this.buffer.getByte(j3) == 10) {
            return this.buffer.a(j3);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.buffer;
        buffer2.copyTo(buffer, 0L, Math.min(32L, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.buffer.size(), j2) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b3, long j2, long j3) throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j2), Long.valueOf(j3)));
        }
        long jMax = j2;
        while (jMax < j3) {
            byte b4 = b3;
            long j4 = j3;
            long jIndexOf = this.buffer.indexOf(b4, jMax, j4);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            Buffer buffer = this.buffer;
            long j5 = buffer.f29765c;
            if (j5 >= j4 || this.source.read(buffer, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j5);
            b3 = b4;
            j3 = j4;
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        long j2 = i3;
        Util.checkOffsetAndCount(bArr.length, i2, j2);
        Buffer buffer = this.buffer;
        if (buffer.f29765c == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(bArr, i2, (int) Math.min(j2, this.buffer.f29765c));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j2) throws IOException {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        Buffer buffer2 = this.buffer;
        if (buffer2.f29765c == 0 && this.source.read(buffer2, 8192L) == -1) {
            return -1L;
        }
        return this.buffer.read(buffer, Math.min(j2, this.buffer.f29765c));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString, long j2) throws IOException {
        if (this.f29836a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = this.buffer.indexOf(byteString, j2);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            Buffer buffer = this.buffer;
            long j3 = buffer.f29765c;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j2 = Math.max(j2, (j3 - byteString.size()) + 1);
        }
    }
}
