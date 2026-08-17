package com.czhj.wire;

import com.czhj.wire.okio.BufferedSink;
import com.czhj.wire.okio.ByteString;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class ProtoWriter {

    /* renamed from: a, reason: collision with root package name */
    private final BufferedSink f29739a;

    public ProtoWriter(BufferedSink bufferedSink) {
        this.f29739a = bufferedSink;
    }

    public static int a(int i2) {
        return c(a(i2, FieldEncoding.VARINT));
    }

    public static int b(int i2) {
        if (i2 >= 0) {
            return c(i2);
        }
        return 10;
    }

    public static int c(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int d(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public static int e(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public void f(int i2) throws IOException {
        if (i2 >= 0) {
            writeVarint32(i2);
        } else {
            writeVarint64(i2);
        }
    }

    public void writeBytes(ByteString byteString) throws IOException {
        this.f29739a.write(byteString);
    }

    public void writeFixed32(int i2) throws IOException {
        this.f29739a.writeIntLe(i2);
    }

    public void writeFixed64(long j2) throws IOException {
        this.f29739a.writeLongLe(j2);
    }

    public void writeString(String str) throws IOException {
        this.f29739a.writeUtf8(str);
    }

    public void writeTag(int i2, FieldEncoding fieldEncoding) throws IOException {
        writeVarint32(a(i2, fieldEncoding));
    }

    public void writeVarint32(int i2) throws IOException {
        while ((i2 & (-128)) != 0) {
            this.f29739a.writeByte((i2 & 127) | 128);
            i2 >>>= 7;
        }
        this.f29739a.writeByte(i2);
    }

    public void writeVarint64(long j2) throws IOException {
        while (((-128) & j2) != 0) {
            this.f29739a.writeByte((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        this.f29739a.writeByte((int) j2);
    }

    private static int a(int i2, FieldEncoding fieldEncoding) {
        return (i2 << 3) | fieldEncoding.value;
    }

    public static long b(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public static long c(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static int a(long j2) {
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (((-16384) & j2) == 0) {
            return 2;
        }
        if (((-2097152) & j2) == 0) {
            return 3;
        }
        if (((-268435456) & j2) == 0) {
            return 4;
        }
        if (((-34359738368L) & j2) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j2) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j2) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j2) == 0) {
            return 8;
        }
        return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }
}
