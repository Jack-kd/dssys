package com.czhj.wire;

import androidx.core.location.LocationRequestCompat;
import com.anythink.core.common.s.a.c;
import com.czhj.wire.okio.Buffer;
import com.czhj.wire.okio.BufferedSource;
import com.czhj.wire.okio.ByteString;
import com.umeng.analytics.pro.ek;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes3.dex */
public final class ProtoReader {

    /* renamed from: a, reason: collision with root package name */
    static final int f29720a = 3;

    /* renamed from: b, reason: collision with root package name */
    private static final int f29721b = 65;

    /* renamed from: c, reason: collision with root package name */
    private static final int f29722c = 7;

    /* renamed from: d, reason: collision with root package name */
    private static final int f29723d = 0;

    /* renamed from: e, reason: collision with root package name */
    private static final int f29724e = 1;

    /* renamed from: f, reason: collision with root package name */
    private static final int f29725f = 2;

    /* renamed from: g, reason: collision with root package name */
    private static final int f29726g = 3;

    /* renamed from: h, reason: collision with root package name */
    private static final int f29727h = 4;

    /* renamed from: i, reason: collision with root package name */
    private static final int f29728i = 5;

    /* renamed from: j, reason: collision with root package name */
    private static final int f29729j = 6;

    /* renamed from: k, reason: collision with root package name */
    private static final int f29730k = 7;

    /* renamed from: l, reason: collision with root package name */
    private final BufferedSource f29731l;

    /* renamed from: o, reason: collision with root package name */
    private int f29734o;

    /* renamed from: s, reason: collision with root package name */
    private FieldEncoding f29738s;

    /* renamed from: m, reason: collision with root package name */
    private long f29732m = 0;

    /* renamed from: n, reason: collision with root package name */
    private long f29733n = LocationRequestCompat.PASSIVE_INTERVAL;

    /* renamed from: p, reason: collision with root package name */
    private int f29735p = 2;

    /* renamed from: q, reason: collision with root package name */
    private int f29736q = -1;

    /* renamed from: r, reason: collision with root package name */
    private long f29737r = -1;

    public ProtoReader(BufferedSource bufferedSource) {
        this.f29731l = bufferedSource;
    }

    private int a() throws IOException {
        int i2;
        this.f29731l.require(1L);
        this.f29732m++;
        byte b3 = this.f29731l.readByte();
        if (b3 >= 0) {
            return b3;
        }
        int i3 = b3 & 127;
        this.f29731l.require(1L);
        this.f29732m++;
        byte b4 = this.f29731l.readByte();
        if (b4 >= 0) {
            i2 = b4 << 7;
        } else {
            i3 |= (b4 & 127) << 7;
            this.f29731l.require(1L);
            this.f29732m++;
            byte b5 = this.f29731l.readByte();
            if (b5 >= 0) {
                i2 = b5 << ek.f49294l;
            } else {
                i3 |= (b5 & 127) << 14;
                this.f29731l.require(1L);
                this.f29732m++;
                byte b6 = this.f29731l.readByte();
                if (b6 < 0) {
                    int i4 = i3 | ((b6 & 127) << 21);
                    this.f29731l.require(1L);
                    this.f29732m++;
                    byte b7 = this.f29731l.readByte();
                    int i5 = i4 | (b7 << 28);
                    if (b7 < 0) {
                        for (int i6 = 0; i6 < 5; i6++) {
                            this.f29731l.require(1L);
                            this.f29732m++;
                            if (this.f29731l.readByte() < 0) {
                            }
                        }
                        throw new ProtocolException("Malformed VARINT");
                    }
                    return i5;
                }
                i2 = b6 << 21;
            }
        }
        return i3 | i2;
    }

    private long b() throws IOException {
        if (this.f29735p != 2) {
            throw new ProtocolException("Expected LENGTH_DELIMITED but was " + this.f29735p);
        }
        long j2 = this.f29733n - this.f29732m;
        this.f29731l.require(j2);
        this.f29735p = 6;
        this.f29732m = this.f29733n;
        this.f29733n = this.f29737r;
        this.f29737r = -1L;
        return j2;
    }

    public long beginMessage() throws IOException {
        if (this.f29735p != 2) {
            throw new IllegalStateException("Unexpected call to beginMessage()");
        }
        int i2 = this.f29734o + 1;
        this.f29734o = i2;
        if (i2 > 65) {
            throw new IOException("Wire recursion limit exceeded");
        }
        long j2 = this.f29737r;
        this.f29737r = -1L;
        this.f29735p = 6;
        return j2;
    }

    public void endMessage(long j2) throws IOException {
        if (this.f29735p != 6) {
            throw new IllegalStateException("Unexpected call to endMessage()");
        }
        int i2 = this.f29734o - 1;
        this.f29734o = i2;
        if (i2 < 0 || this.f29737r != -1) {
            throw new IllegalStateException("No corresponding call to beginMessage()");
        }
        if (this.f29732m == this.f29733n || i2 == 0) {
            this.f29733n = j2;
            return;
        }
        throw new IOException("Expected to end at " + this.f29733n + " but was " + this.f29732m);
    }

    public ByteString forEachTag(TagHandler tagHandler) throws IOException {
        long jBeginMessage = beginMessage();
        Buffer buffer = null;
        ProtoWriter protoWriter = null;
        while (true) {
            int iNextTag = nextTag();
            if (iNextTag == -1) {
                break;
            }
            if (tagHandler.decodeMessage(iNextTag) == TagHandler.UNKNOWN_TAG) {
                if (buffer == null) {
                    buffer = new Buffer();
                    protoWriter = new ProtoWriter(buffer);
                }
                a(protoWriter, iNextTag);
            }
        }
        endMessage(jBeginMessage);
        return buffer != null ? buffer.readByteString() : ByteString.EMPTY;
    }

    public int nextTag() throws IOException {
        int i2 = this.f29735p;
        if (i2 == 7) {
            this.f29735p = 2;
            return this.f29736q;
        }
        if (i2 != 6) {
            throw new IllegalStateException("Unexpected call to nextTag()");
        }
        while (this.f29732m < this.f29733n && !this.f29731l.exhausted()) {
            int iA = a();
            if (iA == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i3 = iA >> 3;
            this.f29736q = i3;
            int i4 = iA & 7;
            if (i4 == 0) {
                this.f29738s = FieldEncoding.VARINT;
                this.f29735p = 0;
                return i3;
            }
            if (i4 == 1) {
                this.f29738s = FieldEncoding.FIXED64;
                this.f29735p = 1;
                return i3;
            }
            if (i4 == 2) {
                this.f29738s = FieldEncoding.LENGTH_DELIMITED;
                this.f29735p = 2;
                int iA2 = a();
                if (iA2 < 0) {
                    throw new ProtocolException("Negative length: " + iA2);
                }
                if (this.f29737r != -1) {
                    throw new IllegalStateException();
                }
                long j2 = this.f29733n;
                this.f29737r = j2;
                long j3 = this.f29732m + iA2;
                this.f29733n = j3;
                if (j3 <= j2) {
                    return this.f29736q;
                }
                throw new EOFException();
            }
            if (i4 != 3) {
                if (i4 == 4) {
                    throw new ProtocolException("Unexpected end group");
                }
                if (i4 == 5) {
                    this.f29738s = FieldEncoding.FIXED32;
                    this.f29735p = 5;
                    return i3;
                }
                throw new ProtocolException("Unexpected field encoding: " + i4);
            }
            a(i3);
        }
        return -1;
    }

    public FieldEncoding peekFieldEncoding() {
        return this.f29738s;
    }

    public ByteString readBytes() throws IOException {
        long jB = b();
        this.f29731l.require(jB);
        return this.f29731l.readByteString(jB);
    }

    public int readFixed32() throws IOException {
        int i2 = this.f29735p;
        if (i2 != 5 && i2 != 2) {
            throw new ProtocolException("Expected FIXED32 or LENGTH_DELIMITED but was " + this.f29735p);
        }
        this.f29731l.require(4L);
        this.f29732m += 4;
        int intLe = this.f29731l.readIntLe();
        b(5);
        return intLe;
    }

    public long readFixed64() throws IOException {
        int i2 = this.f29735p;
        if (i2 != 1 && i2 != 2) {
            throw new ProtocolException("Expected FIXED64 or LENGTH_DELIMITED but was " + this.f29735p);
        }
        this.f29731l.require(8L);
        this.f29732m += 8;
        long longLe = this.f29731l.readLongLe();
        b(1);
        return longLe;
    }

    public String readString() throws IOException {
        long jB = b();
        this.f29731l.require(jB);
        return this.f29731l.readUtf8(jB);
    }

    public int readVarint32() throws IOException {
        int i2 = this.f29735p;
        if (i2 == 0 || i2 == 2) {
            int iA = a();
            b(0);
            return iA;
        }
        throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f29735p);
    }

    public long readVarint64() throws IOException {
        int i2 = this.f29735p;
        if (i2 != 0 && i2 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f29735p);
        }
        long j2 = 0;
        for (int i3 = 0; i3 < 64; i3 += 7) {
            this.f29731l.require(1L);
            this.f29732m++;
            j2 |= (r4 & 127) << i3;
            if ((this.f29731l.readByte() & c.f7560a) == 0) {
                b(0);
                return j2;
            }
        }
        throw new ProtocolException("WireInput encountered a malformed varint");
    }

    public void skip() throws IOException {
        int i2 = this.f29735p;
        if (i2 == 0) {
            readVarint64();
            return;
        }
        if (i2 == 1) {
            readFixed64();
            return;
        }
        if (i2 == 2) {
            this.f29731l.skip(b());
        } else {
            if (i2 != 5) {
                throw new IllegalStateException("Unexpected call to skip()");
            }
            readFixed32();
        }
    }

    private void a(int i2) throws IOException {
        while (this.f29732m < this.f29733n && !this.f29731l.exhausted()) {
            int iA = a();
            if (iA == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i3 = iA >> 3;
            int i4 = iA & 7;
            if (i4 == 0) {
                this.f29735p = 0;
                readVarint64();
            } else if (i4 == 1) {
                this.f29735p = 1;
                readFixed64();
            } else if (i4 == 2) {
                long jA = a();
                this.f29732m += jA;
                this.f29731l.skip(jA);
            } else if (i4 == 3) {
                a(i3);
            } else if (i4 == 4) {
                if (i3 != i2) {
                    throw new ProtocolException("Unexpected end group");
                }
                return;
            } else {
                if (i4 != 5) {
                    throw new ProtocolException("Unexpected field encoding: " + i4);
                }
                this.f29735p = 5;
                readFixed32();
            }
        }
        throw new EOFException();
    }

    private void b(int i2) throws IOException {
        if (this.f29735p == i2) {
            this.f29735p = 6;
            return;
        }
        long j2 = this.f29732m;
        long j3 = this.f29733n;
        if (j2 > j3) {
            throw new IOException("Expected to end at " + this.f29733n + " but was " + this.f29732m);
        }
        if (j2 != j3) {
            this.f29735p = 7;
            return;
        }
        this.f29733n = this.f29737r;
        this.f29737r = -1L;
        this.f29735p = 6;
    }

    private void a(ProtoWriter protoWriter, int i2) throws IOException {
        ProtoAdapter<?> protoAdapterRawProtoAdapter = peekFieldEncoding().rawProtoAdapter();
        try {
            protoAdapterRawProtoAdapter.encodeWithTag(protoWriter, i2, protoAdapterRawProtoAdapter.decode(this));
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
