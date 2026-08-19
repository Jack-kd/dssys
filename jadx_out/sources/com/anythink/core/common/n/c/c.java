package com.anythink.core.common.n.c;

import androidx.core.location.LocationRequestCompat;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
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

/* loaded from: classes2.dex */
public final class c implements d, e, Cloneable, ByteChannel {

    /* renamed from: a, reason: collision with root package name */
    static final int f7057a = 65533;

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f7058d = {com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b, reason: collision with root package name */
    s f7059b;

    /* renamed from: c, reason: collision with root package name */
    long f7060c;

    private c B() {
        return this;
    }

    private List<Integer> C() {
        if (this.f7059b == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        s sVar = this.f7059b;
        arrayList.add(Integer.valueOf(sVar.f7130e - sVar.f7129d));
        s sVar2 = this.f7059b;
        while (true) {
            sVar2 = sVar2.f7133h;
            if (sVar2 == this.f7059b) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(sVar2.f7130e - sVar2.f7129d));
        }
    }

    private f D() {
        return c("MD5");
    }

    private f E() {
        return c("SHA-1");
    }

    private f F() {
        return c("SHA-256");
    }

    private f G() {
        return c("SHA-512");
    }

    private c H() {
        c cVar = new c();
        if (this.f7060c == 0) {
            return cVar;
        }
        s sVarA = this.f7059b.a();
        cVar.f7059b = sVarA;
        sVarA.f7134i = sVarA;
        sVarA.f7133h = sVarA;
        s sVar = this.f7059b;
        while (true) {
            sVar = sVar.f7133h;
            if (sVar == this.f7059b) {
                cVar.f7060c = this.f7060c;
                return cVar;
            }
            cVar.f7059b.f7134i.a(sVar.a());
        }
    }

    private f I() {
        long j2 = this.f7060c;
        if (j2 <= 2147483647L) {
            int i2 = (int) j2;
            return i2 == 0 ? f.f7071b : new u(this, i2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f7060c);
    }

    private a J() {
        a aVar = new a();
        if (aVar.f7063a != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        aVar.f7063a = this;
        aVar.f7064b = false;
        return aVar;
    }

    private a K() {
        return a(new a());
    }

    @Override // com.anythink.core.common.n.c.d
    public final /* bridge */ /* synthetic */ d A() {
        return this;
    }

    @Override // com.anythink.core.common.n.c.e
    public final void a(long j2) throws EOFException {
        if (this.f7060c < j2) {
            throw new EOFException();
        }
    }

    @Override // com.anythink.core.common.n.c.w
    public final long a_(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
        }
        long j3 = this.f7060c;
        if (j3 == 0) {
            return -1L;
        }
        if (j2 > j3) {
            j2 = j3;
        }
        cVar.a(this, j2);
        return j2;
    }

    @Override // com.anythink.core.common.n.c.d, com.anythink.core.common.n.c.e
    public final c c() {
        return this;
    }

    public final /* synthetic */ Object clone() {
        c cVar = new c();
        if (this.f7060c == 0) {
            return cVar;
        }
        s sVarA = this.f7059b.a();
        cVar.f7059b = sVarA;
        sVarA.f7134i = sVarA;
        sVarA.f7133h = sVarA;
        s sVar = this.f7059b;
        while (true) {
            sVar = sVar.f7133h;
            if (sVar == this.f7059b) {
                cVar.f7060c = this.f7060c;
                return cVar;
            }
            cVar.f7059b.f7134i.a(sVar.a());
        }
    }

    @Override // com.anythink.core.common.n.c.v, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.anythink.core.common.n.c.e
    public final c d() {
        return this;
    }

    @Override // com.anythink.core.common.n.c.d
    public final OutputStream e() {
        return new OutputStream() { // from class: com.anythink.core.common.n.c.c.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public final void flush() {
            }

            public final String toString() {
                return c.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public final void write(int i2) {
                c.this.l((int) ((byte) i2));
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i2, int i3) {
                c.this.c(bArr, i2, i3);
            }
        };
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j2 = this.f7060c;
        if (j2 != cVar.f7060c) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        s sVar = this.f7059b;
        s sVar2 = cVar.f7059b;
        int i2 = sVar.f7129d;
        int i3 = sVar2.f7129d;
        while (j3 < this.f7060c) {
            long jMin = Math.min(sVar.f7130e - i2, sVar2.f7130e - i3);
            int i4 = 0;
            while (i4 < jMin) {
                int i5 = i2 + 1;
                int i6 = i3 + 1;
                if (sVar.f7128c[i2] != sVar2.f7128c[i3]) {
                    return false;
                }
                i4++;
                i2 = i5;
                i3 = i6;
            }
            if (i2 == sVar.f7130e) {
                sVar = sVar.f7133h;
                i2 = sVar.f7129d;
            }
            if (i3 == sVar2.f7130e) {
                sVar2 = sVar2.f7133h;
                i3 = sVar2.f7129d;
            }
            j3 += jMin;
        }
        return true;
    }

    @Override // com.anythink.core.common.n.c.d
    public final d f() {
        return this;
    }

    @Override // com.anythink.core.common.n.c.d, com.anythink.core.common.n.c.v, java.io.Flushable
    public final void flush() {
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean g() {
        return this.f7060c == 0;
    }

    public final int hashCode() {
        s sVar = this.f7059b;
        if (sVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = sVar.f7130e;
            for (int i4 = sVar.f7129d; i4 < i3; i4++) {
                i2 = (i2 * 31) + sVar.f7128c[i4];
            }
            sVar = sVar.f7133h;
        } while (sVar != this.f7059b);
        return i2;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a6 A[EDGE_INSN: B:48:0x00a6->B:38:0x00a6 BREAK  A[LOOP:0: B:5:0x000f->B:50:?], SYNTHETIC] */
    @Override // com.anythink.core.common.n.c.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long r() {
        /*
            r15 = this;
            long r0 = r15.f7060c
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb1
            r0 = 0
            r4 = -7
            r1 = r0
            r5 = r4
            r3 = r2
            r2 = r1
        Lf:
            com.anythink.core.common.n.c.s r7 = r15.f7059b
            byte[] r8 = r7.f7128c
            int r9 = r7.f7129d
            int r10 = r7.f7130e
        L17:
            if (r9 >= r10) goto L92
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L66
            r12 = 57
            if (r11 > r12) goto L66
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
            goto L71
        L3c:
            com.anythink.core.common.n.c.c r0 = new com.anythink.core.common.n.c.c
            r0.<init>()
            com.anythink.core.common.n.c.c r0 = r0.o(r3)
            com.anythink.core.common.n.c.c r0 = r0.l(r11)
            if (r1 != 0) goto L4e
            r0.k()
        L4e:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Number too large: "
            r2.<init>(r3)
            java.lang.String r0 = r0.u()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L66:
            r12 = 45
            r13 = 1
            if (r11 != r12) goto L76
            if (r0 != 0) goto L76
            r11 = 1
            long r5 = r5 - r11
            r1 = r13
        L71:
            int r9 = r9 + 1
            int r0 = r0 + 1
            goto L17
        L76:
            if (r0 == 0) goto L7a
            r2 = r13
            goto L92
        L7a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r11)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L92:
            if (r9 != r10) goto L9e
            com.anythink.core.common.n.c.s r8 = r7.c()
            r15.f7059b = r8
            com.anythink.core.common.n.c.t.a(r7)
            goto La0
        L9e:
            r7.f7129d = r9
        La0:
            if (r2 != 0) goto La6
            com.anythink.core.common.n.c.s r7 = r15.f7059b
            if (r7 != 0) goto Lf
        La6:
            long r5 = r15.f7060c
            long r7 = (long) r0
            long r5 = r5 - r7
            r15.f7060c = r5
            if (r1 == 0) goto Laf
            return r3
        Laf:
            long r0 = -r3
            return r0
        Lb1:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.c.c.r():long");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        s sVar = this.f7059b;
        if (sVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), sVar.f7130e - sVar.f7129d);
        byteBuffer.put(sVar.f7128c, sVar.f7129d, iMin);
        int i2 = sVar.f7129d + iMin;
        sVar.f7129d = i2;
        this.f7060c -= iMin;
        if (i2 == sVar.f7130e) {
            this.f7059b = sVar.c();
            t.a(sVar);
        }
        return iMin;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009c A[EDGE_INSN: B:43:0x009c->B:37:0x009c BREAK  A[LOOP:0: B:5:0x000b->B:45:?], SYNTHETIC] */
    @Override // com.anythink.core.common.n.c.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long s() {
        /*
            r14 = this;
            long r0 = r14.f7060c
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La3
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            com.anythink.core.common.n.c.s r6 = r14.f7059b
            byte[] r7 = r6.f7128c
            int r8 = r6.f7129d
            int r9 = r6.f7130e
        L13:
            if (r8 >= r9) goto L88
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
            if (r10 < r11) goto L6c
            r11 = 70
            if (r10 > r11) goto L6c
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
            com.anythink.core.common.n.c.c r0 = new com.anythink.core.common.n.c.c
            r0.<init>()
            com.anythink.core.common.n.c.c r0 = r0.n(r4)
            com.anythink.core.common.n.c.c r0 = r0.l(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Number too large: "
            r2.<init>(r3)
            java.lang.String r0 = r0.u()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6c:
            if (r0 == 0) goto L70
            r1 = 1
            goto L88
        L70:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L88:
            if (r8 != r9) goto L94
            com.anythink.core.common.n.c.s r7 = r6.c()
            r14.f7059b = r7
            com.anythink.core.common.n.c.t.a(r6)
            goto L96
        L94:
            r6.f7129d = r8
        L96:
            if (r1 != 0) goto L9c
            com.anythink.core.common.n.c.s r6 = r14.f7059b
            if (r6 != 0) goto Lb
        L9c:
            long r1 = r14.f7060c
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.f7060c = r1
            return r4
        La3:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.c.c.s():long");
    }

    @Override // com.anythink.core.common.n.c.e
    public final f t() {
        return new f(y());
    }

    public final String toString() {
        long j2 = this.f7060c;
        if (j2 <= 2147483647L) {
            int i2 = (int) j2;
            return (i2 == 0 ? f.f7071b : new u(this, i2)).toString();
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f7060c);
    }

    @Override // com.anythink.core.common.n.c.e
    public final String u() {
        try {
            return a(this.f7060c, y.f7144a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final String v() {
        long jA = a((byte) 10);
        if (jA != -1) {
            return g(jA);
        }
        long j2 = this.f7060c;
        if (j2 != 0) {
            return e(j2);
        }
        return null;
    }

    @Override // com.anythink.core.common.n.c.e
    public final String w() {
        return f(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            s sVarG = g(1);
            int iMin = Math.min(i2, 8192 - sVarG.f7130e);
            byteBuffer.get(sVarG.f7128c, sVarG.f7130e, iMin);
            i2 -= iMin;
            sVarG.f7130e += iMin;
        }
        this.f7060c += iRemaining;
        return iRemaining;
    }

    @Override // com.anythink.core.common.n.c.e
    public final int x() throws EOFException {
        int i2;
        int i3;
        int i4;
        if (this.f7060c == 0) {
            throw new EOFException();
        }
        byte bC = c(0L);
        if ((bC & com.anythink.core.common.s.a.c.f7560a) == 0) {
            i2 = bC & 127;
            i4 = 0;
            i3 = 1;
        } else if ((bC & 224) == 192) {
            i2 = bC & 31;
            i3 = 2;
            i4 = 128;
        } else if ((bC & 240) == 224) {
            i2 = bC & ek.f49295m;
            i3 = 3;
            i4 = 2048;
        } else {
            if ((bC & 248) != 240) {
                i(1L);
                return 65533;
            }
            i2 = bC & 7;
            i3 = 4;
            i4 = 65536;
        }
        long j2 = i3;
        if (this.f7060c < j2) {
            throw new EOFException("size < " + i3 + ": " + this.f7060c + " (to read code point prefixed 0x" + Integer.toHexString(bC) + ")");
        }
        for (int i5 = 1; i5 < i3; i5++) {
            long j3 = i5;
            byte bC2 = c(j3);
            if ((bC2 & 192) != 128) {
                i(j3);
                return 65533;
            }
            i2 = (i2 << 6) | (bC2 & 63);
        }
        i(j2);
        if (i2 > 1114111) {
            return 65533;
        }
        if ((i2 < 55296 || i2 > 57343) && i2 >= i4) {
            return i2;
        }
        return 65533;
    }

    @Override // com.anythink.core.common.n.c.e
    public final byte[] y() {
        try {
            return h(this.f7060c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void z() {
        try {
            i(this.f7060c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    private c a(OutputStream outputStream) throws IOException {
        long j2 = this.f7060c;
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        y.a(j2, 0L, j2);
        if (j2 != 0) {
            s sVar = this.f7059b;
            long j3 = 0;
            while (true) {
                int i2 = sVar.f7130e;
                int i3 = sVar.f7129d;
                if (j3 < i2 - i3) {
                    break;
                }
                j3 -= i2 - i3;
                sVar = sVar.f7133h;
            }
            while (j2 > 0) {
                int iMin = (int) Math.min(sVar.f7130e - r5, j2);
                outputStream.write(sVar.f7128c, (int) (sVar.f7129d + j3), iMin);
                j2 -= iMin;
                sVar = sVar.f7133h;
                j3 = 0;
            }
        }
        return this;
    }

    @Override // com.anythink.core.common.n.c.e
    public final String e(long j2) {
        return a(j2, y.f7144a);
    }

    @Override // com.anythink.core.common.n.c.e
    public final String f(long j2) throws EOFException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j2)));
        }
        long j3 = LocationRequestCompat.PASSIVE_INTERVAL;
        if (j2 != LocationRequestCompat.PASSIVE_INTERVAL) {
            j3 = j2 + 1;
        }
        long j4 = j3;
        long jA = a((byte) 10, 0L, j4);
        if (jA != -1) {
            return g(jA);
        }
        if (j4 < this.f7060c && c(j4 - 1) == 13 && c(j4) == 10) {
            return g(j4);
        }
        c cVar = new c();
        a(cVar, 0L, Math.min(32L, this.f7060c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f7060c, j2) + " content=" + cVar.t().g() + (char) 8230);
    }

    public final String g(long j2) throws EOFException {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (c(j3) == 13) {
                String strE = e(j3);
                i(2L);
                return strE;
            }
        }
        String strE2 = e(j2);
        i(1L);
        return strE2;
    }

    @Override // com.anythink.core.common.n.c.e
    public final e h() {
        return n.a(new p(this));
    }

    @Override // com.anythink.core.common.n.c.e
    public final InputStream i() {
        return new InputStream() { // from class: com.anythink.core.common.n.c.c.2
            @Override // java.io.InputStream
            public final int available() {
                return (int) Math.min(c.this.f7060c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.InputStream
            public final int read() {
                c cVar = c.this;
                if (cVar.f7060c > 0) {
                    return cVar.k() & 255;
                }
                return -1;
            }

            public final String toString() {
                return c.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i2, int i3) {
                return c.this.a(bArr, i2, i3);
            }
        };
    }

    public final long j() {
        long j2 = this.f7060c;
        if (j2 == 0) {
            return 0L;
        }
        s sVar = this.f7059b.f7134i;
        return (sVar.f7130e >= 8192 || !sVar.f7132g) ? j2 : j2 - (r3 - sVar.f7129d);
    }

    @Override // com.anythink.core.common.n.c.e
    public final byte k() {
        long j2 = this.f7060c;
        if (j2 == 0) {
            throw new IllegalStateException("size == 0");
        }
        s sVar = this.f7059b;
        int i2 = sVar.f7129d;
        int i3 = sVar.f7130e;
        int i4 = i2 + 1;
        byte b3 = sVar.f7128c[i2];
        this.f7060c = j2 - 1;
        if (i4 != i3) {
            sVar.f7129d = i4;
            return b3;
        }
        this.f7059b = sVar.c();
        t.a(sVar);
        return b3;
    }

    @Override // com.anythink.core.common.n.c.e
    public final short l() {
        long j2 = this.f7060c;
        if (j2 < 2) {
            throw new IllegalStateException("size < 2: " + this.f7060c);
        }
        s sVar = this.f7059b;
        int i2 = sVar.f7129d;
        int i3 = sVar.f7130e;
        if (i3 - i2 < 2) {
            return (short) (((k() & 255) << 8) | (k() & 255));
        }
        byte[] bArr = sVar.f7128c;
        int i4 = i2 + 1;
        int i5 = (bArr[i2] & 255) << 8;
        int i6 = i2 + 2;
        int i7 = (bArr[i4] & 255) | i5;
        this.f7060c = j2 - 2;
        if (i6 == i3) {
            this.f7059b = sVar.c();
            t.a(sVar);
        } else {
            sVar.f7129d = i6;
        }
        return (short) i7;
    }

    @Override // com.anythink.core.common.n.c.e
    public final int m() {
        long j2 = this.f7060c;
        if (j2 < 4) {
            throw new IllegalStateException("size < 4: " + this.f7060c);
        }
        s sVar = this.f7059b;
        int i2 = sVar.f7129d;
        int i3 = sVar.f7130e;
        if (i3 - i2 < 4) {
            return ((k() & 255) << 24) | ((k() & 255) << 16) | ((k() & 255) << 8) | (k() & 255);
        }
        byte[] bArr = sVar.f7128c;
        int i4 = i2 + 3;
        int i5 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 2] & 255) << 8);
        int i6 = i2 + 4;
        int i7 = (bArr[i4] & 255) | i5;
        this.f7060c = j2 - 4;
        if (i6 != i3) {
            sVar.f7129d = i6;
            return i7;
        }
        this.f7059b = sVar.c();
        t.a(sVar);
        return i7;
    }

    @Override // com.anythink.core.common.n.c.e
    public final long n() {
        long j2 = this.f7060c;
        if (j2 < 8) {
            throw new IllegalStateException("size < 8: " + this.f7060c);
        }
        s sVar = this.f7059b;
        int i2 = sVar.f7129d;
        int i3 = sVar.f7130e;
        if (i3 - i2 < 8) {
            return ((m() & KeyboardMap.kValueMask) << 32) | (KeyboardMap.kValueMask & m());
        }
        byte[] bArr = sVar.f7128c;
        int i4 = i2 + 7;
        long j3 = ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2] & 255) << 56) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
        int i5 = i2 + 8;
        long j4 = j3 | (bArr[i4] & 255);
        this.f7060c = j2 - 8;
        if (i5 != i3) {
            sVar.f7129d = i5;
            return j4;
        }
        this.f7059b = sVar.c();
        t.a(sVar);
        return j4;
    }

    @Override // com.anythink.core.common.n.c.e
    public final short o() {
        return y.a(l());
    }

    @Override // com.anythink.core.common.n.c.e
    public final int p() {
        return y.a(m());
    }

    @Override // com.anythink.core.common.n.c.e
    public final long q() {
        return y.a(n());
    }

    public final byte c(long j2) {
        int i2;
        long j3 = j2;
        y.a(this.f7060c, j3, 1L);
        long j4 = this.f7060c;
        if (j4 - j3 > j3) {
            s sVar = this.f7059b;
            while (true) {
                int i3 = sVar.f7130e;
                int i4 = sVar.f7129d;
                long j5 = i3 - i4;
                if (j3 < j5) {
                    return sVar.f7128c[i4 + ((int) j3)];
                }
                j3 -= j5;
                sVar = sVar.f7133h;
            }
        } else {
            long j6 = j3 - j4;
            s sVar2 = this.f7059b;
            do {
                sVar2 = sVar2.f7134i;
                int i5 = sVar2.f7130e;
                i2 = sVar2.f7129d;
                j6 += i5 - i2;
            } while (j6 < 0);
            return sVar2.f7128c[i2 + ((int) j6)];
        }
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final c i(int i2) {
        s sVarG = g(4);
        byte[] bArr = sVarG.f7128c;
        int i3 = sVarG.f7130e;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 3] = (byte) (i2 & 255);
        sVarG.f7130e = i3 + 4;
        this.f7060c += 4;
        return this;
    }

    @Override // com.anythink.core.common.n.c.e
    public final byte[] h(long j2) throws EOFException {
        y.a(this.f7060c, 0L, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[(int) j2];
            b(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j2)));
    }

    @Override // com.anythink.core.common.n.c.e
    public final void i(long j2) throws EOFException {
        while (j2 > 0) {
            if (this.f7059b != null) {
                int iMin = (int) Math.min(j2, r0.f7130e - r0.f7129d);
                long j3 = iMin;
                this.f7060c -= j3;
                j2 -= j3;
                s sVar = this.f7059b;
                int i2 = sVar.f7129d + iMin;
                sVar.f7129d = i2;
                if (i2 == sVar.f7130e) {
                    this.f7059b = sVar.c();
                    t.a(sVar);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public static final class a implements Closeable {

        /* renamed from: a, reason: collision with root package name */
        public c f7063a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f7064b;

        /* renamed from: d, reason: collision with root package name */
        public byte[] f7066d;

        /* renamed from: g, reason: collision with root package name */
        private s f7069g;

        /* renamed from: c, reason: collision with root package name */
        public long f7065c = -1;

        /* renamed from: e, reason: collision with root package name */
        public int f7067e = -1;

        /* renamed from: f, reason: collision with root package name */
        public int f7068f = -1;

        private long b(long j2) {
            c cVar = this.f7063a;
            if (cVar == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.f7064b) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long j3 = cVar.f7060c;
            if (j2 <= j3) {
                if (j2 < 0) {
                    throw new IllegalArgumentException("newSize < 0: ".concat(String.valueOf(j2)));
                }
                long j4 = j3 - j2;
                while (true) {
                    if (j4 <= 0) {
                        break;
                    }
                    c cVar2 = this.f7063a;
                    s sVar = cVar2.f7059b.f7134i;
                    int i2 = sVar.f7130e;
                    long j5 = i2 - sVar.f7129d;
                    if (j5 > j4) {
                        sVar.f7130e = (int) (i2 - j4);
                        break;
                    }
                    cVar2.f7059b = sVar.c();
                    t.a(sVar);
                    j4 -= j5;
                }
                this.f7069g = null;
                this.f7065c = j2;
                this.f7066d = null;
                this.f7067e = -1;
                this.f7068f = -1;
            } else if (j2 > j3) {
                long j6 = j2 - j3;
                boolean z2 = true;
                while (j6 > 0) {
                    s sVarG = this.f7063a.g(1);
                    int iMin = (int) Math.min(j6, 8192 - sVarG.f7130e);
                    int i3 = sVarG.f7130e + iMin;
                    sVarG.f7130e = i3;
                    j6 -= iMin;
                    if (z2) {
                        this.f7069g = sVarG;
                        this.f7065c = j3;
                        this.f7066d = sVarG.f7128c;
                        this.f7067e = i3 - iMin;
                        this.f7068f = i3;
                        z2 = false;
                    }
                }
            }
            this.f7063a.f7060c = j2;
            return j3;
        }

        public final int a() {
            long j2 = this.f7065c;
            if (j2 != this.f7063a.f7060c) {
                return j2 == -1 ? a(0L) : a(j2 + (this.f7068f - this.f7067e));
            }
            throw new IllegalStateException();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f7063a == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.f7063a = null;
            this.f7069g = null;
            this.f7065c = -1L;
            this.f7066d = null;
            this.f7067e = -1;
            this.f7068f = -1;
        }

        public final int a(long j2) {
            if (j2 >= -1) {
                c cVar = this.f7063a;
                long j3 = cVar.f7060c;
                if (j2 <= j3) {
                    if (j2 != -1 && j2 != j3) {
                        s sVar = cVar.f7059b;
                        s sVarA = this.f7069g;
                        long j4 = 0;
                        if (sVarA != null) {
                            long j5 = this.f7065c - (this.f7067e - sVarA.f7129d);
                            if (j5 > j2) {
                                sVarA = sVar;
                                sVar = sVarA;
                                j3 = j5;
                            } else {
                                j4 = j5;
                            }
                        } else {
                            sVarA = sVar;
                        }
                        if (j3 - j2 > j2 - j4) {
                            while (true) {
                                int i2 = sVarA.f7130e;
                                int i3 = sVarA.f7129d;
                                if (j2 < (i2 - i3) + j4) {
                                    break;
                                }
                                j4 += i2 - i3;
                                sVarA = sVarA.f7133h;
                            }
                        } else {
                            while (j3 > j2) {
                                sVar = sVar.f7134i;
                                j3 -= sVar.f7130e - sVar.f7129d;
                            }
                            sVarA = sVar;
                            j4 = j3;
                        }
                        if (this.f7064b && sVarA.f7131f) {
                            s sVarB = sVarA.b();
                            c cVar2 = this.f7063a;
                            if (cVar2.f7059b == sVarA) {
                                cVar2.f7059b = sVarB;
                            }
                            sVarA = sVarA.a(sVarB);
                            sVarA.f7134i.c();
                        }
                        this.f7069g = sVarA;
                        this.f7065c = j2;
                        this.f7066d = sVarA.f7128c;
                        int i4 = sVarA.f7129d + ((int) (j2 - j4));
                        this.f7067e = i4;
                        int i5 = sVarA.f7130e;
                        this.f7068f = i5;
                        return i5 - i4;
                    }
                    this.f7069g = null;
                    this.f7065c = j2;
                    this.f7066d = null;
                    this.f7067e = -1;
                    this.f7068f = -1;
                    return -1;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j2), Long.valueOf(this.f7063a.f7060c)));
        }

        private long a(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: ".concat(String.valueOf(i2)));
            }
            if (i2 <= 8192) {
                c cVar = this.f7063a;
                if (cVar != null) {
                    if (this.f7064b) {
                        long j2 = cVar.f7060c;
                        s sVarG = cVar.g(i2);
                        int i3 = 8192 - sVarG.f7130e;
                        sVarG.f7130e = 8192;
                        long j3 = i3;
                        this.f7063a.f7060c = j2 + j3;
                        this.f7069g = sVarG;
                        this.f7065c = j2;
                        this.f7066d = sVarG.f7128c;
                        this.f7067e = 8192 - i3;
                        this.f7068f = 8192;
                        return j3;
                    }
                    throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
                }
                throw new IllegalStateException("not attached to a buffer");
            }
            throw new IllegalArgumentException("minByteCount > Segment.SIZE: ".concat(String.valueOf(i2)));
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final f d(long j2) {
        return new f(h(j2));
    }

    public final long b() {
        return this.f7060c;
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final c j(int i2) {
        return k((int) y.a((short) i2));
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean b(long j2) {
        return this.f7060c >= j2;
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final c q(long j2) {
        s sVarG = g(8);
        byte[] bArr = sVarG.f7128c;
        int i2 = sVarG.f7130e;
        bArr[i2] = (byte) ((j2 >>> 56) & 255);
        bArr[i2 + 1] = (byte) ((j2 >>> 48) & 255);
        bArr[i2 + 2] = (byte) ((j2 >>> 40) & 255);
        bArr[i2 + 3] = (byte) ((j2 >>> 32) & 255);
        bArr[i2 + 4] = (byte) ((j2 >>> 24) & 255);
        bArr[i2 + 5] = (byte) ((j2 >>> 16) & 255);
        bArr[i2 + 6] = (byte) ((j2 >>> 8) & 255);
        bArr[i2 + 7] = (byte) (j2 & 255);
        sVarG.f7130e = i2 + 8;
        this.f7060c += 8;
        return this;
    }

    private c b(OutputStream outputStream) throws IOException {
        long j2 = this.f7060c;
        if (outputStream != null) {
            y.a(j2, 0L, j2);
            s sVar = this.f7059b;
            while (j2 > 0) {
                int iMin = (int) Math.min(j2, sVar.f7130e - sVar.f7129d);
                outputStream.write(sVar.f7128c, sVar.f7129d, iMin);
                int i2 = sVar.f7129d + iMin;
                sVar.f7129d = i2;
                long j3 = iMin;
                this.f7060c -= j3;
                j2 -= j3;
                if (i2 == sVar.f7130e) {
                    s sVarC = sVar.c();
                    this.f7059b = sVarC;
                    t.a(sVar);
                    sVar = sVarC;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    public final s g(int i2) {
        if (i2 > 0 && i2 <= 8192) {
            s sVar = this.f7059b;
            if (sVar == null) {
                s sVarA = t.a();
                this.f7059b = sVarA;
                sVarA.f7134i = sVarA;
                sVarA.f7133h = sVarA;
                return sVarA;
            }
            s sVar2 = sVar.f7134i;
            return (sVar2.f7130e + i2 > 8192 || !sVar2.f7132g) ? sVar2.a(t.a()) : sVar2;
        }
        throw new IllegalArgumentException();
    }

    private c a(OutputStream outputStream, long j2, long j3) throws IOException {
        if (outputStream != null) {
            long j4 = j3;
            y.a(this.f7060c, 0L, j4);
            if (j4 != 0) {
                s sVar = this.f7059b;
                while (true) {
                    int i2 = sVar.f7130e;
                    int i3 = sVar.f7129d;
                    if (j2 < i2 - i3) {
                        break;
                    }
                    j2 -= i2 - i3;
                    sVar = sVar.f7133h;
                }
                while (j4 > 0) {
                    int iMin = (int) Math.min(sVar.f7130e - r10, j4);
                    outputStream.write(sVar.f7128c, (int) (sVar.f7129d + j2), iMin);
                    j4 -= iMin;
                    sVar = sVar.f7133h;
                    j2 = 0;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    private f e(f fVar) {
        return a("HmacSHA1", fVar);
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final c d(byte[] bArr) {
        if (bArr != null) {
            return c(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final c p(long j2) {
        return q(y.a(j2));
    }

    private f g(f fVar) {
        return a("HmacSHA512", fVar);
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final c k(int i2) {
        s sVarG = g(2);
        byte[] bArr = sVarG.f7128c;
        int i3 = sVarG.f7130e;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 1] = (byte) (i2 & 255);
        sVarG.f7130e = i3 + 2;
        this.f7060c += 2;
        return this;
    }

    private f n(int i2) {
        if (i2 == 0) {
            return f.f7071b;
        }
        return new u(this, i2);
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final c h(int i2) {
        return i(y.a(i2));
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final c o(long j2) {
        boolean z2;
        if (j2 == 0) {
            return l(48);
        }
        int i2 = 1;
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                return b("-9223372036854775808");
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
        s sVarG = g(i2);
        byte[] bArr = sVarG.f7128c;
        int i3 = sVarG.f7130e + i2;
        while (j2 != 0) {
            i3--;
            bArr[i3] = f7058d[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z2) {
            bArr[i3 - 1] = 45;
        }
        sVarG.f7130e += i2;
        this.f7060c += i2;
        return this;
    }

    private f f(f fVar) {
        return a("HmacSHA256", fVar);
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final c n(long j2) {
        if (j2 == 0) {
            return l(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        s sVarG = g(iNumberOfTrailingZeros);
        byte[] bArr = sVarG.f7128c;
        int i2 = sVarG.f7130e;
        for (int i3 = (i2 + iNumberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = f7058d[(int) (15 & j2)];
            j2 >>>= 4;
        }
        sVarG.f7130e += iNumberOfTrailingZeros;
        this.f7060c += iNumberOfTrailingZeros;
        return this;
    }

    @Override // com.anythink.core.common.n.c.e
    public final void b(c cVar, long j2) throws EOFException {
        long j3 = this.f7060c;
        if (j3 >= j2) {
            cVar.a(this, j2);
        } else {
            cVar.a(this, j3);
            throw new EOFException();
        }
    }

    public final c a(c cVar, long j2, long j3) {
        if (cVar != null) {
            long j4 = j2;
            y.a(this.f7060c, j4, j3);
            if (j3 != 0) {
                cVar.f7060c += j3;
                s sVar = this.f7059b;
                while (true) {
                    int i2 = sVar.f7130e;
                    int i3 = sVar.f7129d;
                    if (j4 < i2 - i3) {
                        break;
                    }
                    j4 -= i2 - i3;
                    sVar = sVar.f7133h;
                }
                s sVar2 = sVar;
                long j5 = j3;
                while (j5 > 0) {
                    s sVarA = sVar2.a();
                    int i4 = (int) (sVarA.f7129d + j4);
                    sVarA.f7129d = i4;
                    sVarA.f7130e = Math.min(i4 + ((int) j5), sVarA.f7130e);
                    s sVar3 = cVar.f7059b;
                    if (sVar3 == null) {
                        sVarA.f7134i = sVarA;
                        sVarA.f7133h = sVarA;
                        cVar.f7059b = sVarA;
                    } else {
                        sVar3.f7134i.a(sVarA);
                    }
                    j5 -= sVarA.f7130e - sVarA.f7129d;
                    sVar2 = sVar2.f7133h;
                    j4 = 0;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // com.anythink.core.common.n.c.e
    public final long c(f fVar) {
        return b(fVar, 0L);
    }

    private f c(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            s sVar = this.f7059b;
            if (sVar != null) {
                byte[] bArr = sVar.f7128c;
                int i2 = sVar.f7129d;
                messageDigest.update(bArr, i2, sVar.f7130e - i2);
                s sVar2 = this.f7059b;
                while (true) {
                    sVar2 = sVar2.f7133h;
                    if (sVar2 == this.f7059b) {
                        break;
                    }
                    byte[] bArr2 = sVar2.f7128c;
                    int i3 = sVar2.f7129d;
                    messageDigest.update(bArr2, i3, sVar2.f7130e - i3);
                }
            }
            return f.a(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final void b(byte[] bArr) throws EOFException {
        int i2 = 0;
        while (i2 < bArr.length) {
            int iA = a(bArr, i2, bArr.length - i2);
            if (iA == -1) {
                throw new EOFException();
            }
            i2 += iA;
        }
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final c c(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = i3;
            y.a(bArr.length, i2, j2);
            int i4 = i3 + i2;
            while (i2 < i4) {
                s sVarG = g(1);
                int iMin = Math.min(i4 - i2, 8192 - sVarG.f7130e);
                System.arraycopy(bArr, i2, sVarG.f7128c, sVarG.f7130e, iMin);
                i2 += iMin;
                sVarG.f7130e += iMin;
            }
            this.f7060c += j2;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    private c a(OutputStream outputStream, long j2) throws IOException {
        if (outputStream != null) {
            y.a(this.f7060c, 0L, j2);
            s sVar = this.f7059b;
            long j3 = j2;
            while (j3 > 0) {
                int iMin = (int) Math.min(j3, sVar.f7130e - sVar.f7129d);
                outputStream.write(sVar.f7128c, sVar.f7129d, iMin);
                int i2 = sVar.f7129d + iMin;
                sVar.f7129d = i2;
                long j4 = iMin;
                this.f7060c -= j4;
                j3 -= j4;
                if (i2 == sVar.f7130e) {
                    s sVarC = sVar.c();
                    this.f7059b = sVarC;
                    t.a(sVar);
                    sVar = sVarC;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final c l(int i2) {
        s sVarG = g(1);
        byte[] bArr = sVarG.f7128c;
        int i3 = sVarG.f7130e;
        sVarG.f7130e = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f7060c++;
        return this;
    }

    @Override // com.anythink.core.common.n.c.e
    public final long b(f fVar) {
        return a(fVar, 0L);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long b(f fVar, long j2) {
        int i2;
        int i3;
        long j3 = 0;
        if (j2 >= 0) {
            s sVar = this.f7059b;
            if (sVar == null) {
                return -1L;
            }
            long j4 = this.f7060c;
            if (j4 - j2 < j2) {
                while (j4 > j2) {
                    sVar = sVar.f7134i;
                    j4 -= sVar.f7130e - sVar.f7129d;
                }
            } else {
                while (true) {
                    long j5 = (sVar.f7130e - sVar.f7129d) + j3;
                    if (j5 >= j2) {
                        break;
                    }
                    sVar = sVar.f7133h;
                    j3 = j5;
                }
                j4 = j3;
            }
            if (fVar.j() == 2) {
                byte b3 = fVar.b(0);
                byte b4 = fVar.b(1);
                while (j4 < this.f7060c) {
                    byte[] bArr = sVar.f7128c;
                    i2 = (int) ((sVar.f7129d + j2) - j4);
                    int i4 = sVar.f7130e;
                    while (i2 < i4) {
                        byte b5 = bArr[i2];
                        if (b5 == b3 || b5 == b4) {
                            i3 = sVar.f7129d;
                            return (i2 - i3) + j4;
                        }
                        i2++;
                    }
                    j4 += sVar.f7130e - sVar.f7129d;
                    sVar = sVar.f7133h;
                    j2 = j4;
                }
                return -1L;
            }
            byte[] bArrL = fVar.l();
            while (j4 < this.f7060c) {
                byte[] bArr2 = sVar.f7128c;
                i2 = (int) ((sVar.f7129d + j2) - j4);
                int i5 = sVar.f7130e;
                while (i2 < i5) {
                    byte b6 = bArr2[i2];
                    for (byte b7 : bArrL) {
                        if (b6 == b7) {
                            i3 = sVar.f7129d;
                            return (i2 - i3) + j4;
                        }
                    }
                    i2++;
                }
                j4 += sVar.f7130e - sVar.f7129d;
                sVar = sVar.f7133h;
                j2 = j4;
            }
            return -1L;
        }
        throw new IllegalArgumentException("fromIndex < 0");
    }

    private c a(InputStream inputStream) throws IOException {
        a(inputStream, LocationRequestCompat.PASSIVE_INTERVAL, true);
        return this;
    }

    private c a(InputStream inputStream, long j2) throws IOException {
        if (j2 >= 0) {
            a(inputStream, j2, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
    }

    private void a(InputStream inputStream, long j2, boolean z2) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j2 <= 0 && !z2) {
                return;
            }
            s sVarG = g(1);
            int i2 = inputStream.read(sVarG.f7128c, sVarG.f7130e, (int) Math.min(j2, 8192 - sVarG.f7130e));
            if (i2 == -1) {
                if (!z2) {
                    throw new EOFException();
                }
                return;
            } else {
                sVarG.f7130e += i2;
                long j3 = i2;
                this.f7060c += j3;
                j2 -= j3;
            }
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final int a(o oVar) {
        int iA = a(oVar, false);
        if (iA == -1) {
            return -1;
        }
        try {
            i(oVar.f7110a[iA].j());
            return iA;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
    
        r16 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a4, code lost:
    
        if (r20 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a6, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a7, code lost:
    
        return r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009a A[LOOP:0: B:9:0x0020->B:46:0x009a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0099 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.anythink.core.common.n.c.o r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 168
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.c.c.a(com.anythink.core.common.n.c.o, boolean):int");
    }

    private a b(a aVar) {
        if (aVar.f7063a == null) {
            aVar.f7063a = this;
            aVar.f7064b = false;
            return aVar;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(v vVar) {
        long j2 = this.f7060c;
        if (j2 > 0) {
            vVar.a(this, j2);
        }
        return j2;
    }

    @Override // com.anythink.core.common.n.c.e
    public final String a(Charset charset) {
        try {
            return a(this.f7060c, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.anythink.core.common.n.c.e
    public final String a(long j2, Charset charset) {
        y.a(this.f7060c, 0L, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j2)));
        }
        if (j2 == 0) {
            return "";
        }
        s sVar = this.f7059b;
        int i2 = sVar.f7129d;
        if (i2 + j2 > sVar.f7130e) {
            return new String(h(j2), charset);
        }
        String str = new String(sVar.f7128c, i2, (int) j2, charset);
        int i3 = (int) (sVar.f7129d + j2);
        sVar.f7129d = i3;
        this.f7060c -= j2;
        if (i3 == sVar.f7130e) {
            this.f7059b = sVar.c();
            t.a(sVar);
        }
        return str;
    }

    @Override // com.anythink.core.common.n.c.e
    public final int a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    @Override // com.anythink.core.common.n.c.e
    public final int a(byte[] bArr, int i2, int i3) {
        y.a(bArr.length, i2, i3);
        s sVar = this.f7059b;
        if (sVar == null) {
            return -1;
        }
        int iMin = Math.min(i3, sVar.f7130e - sVar.f7129d);
        System.arraycopy(sVar.f7128c, sVar.f7129d, bArr, i2, iMin);
        int i4 = sVar.f7129d + iMin;
        sVar.f7129d = i4;
        this.f7060c -= iMin;
        if (i4 == sVar.f7130e) {
            this.f7059b = sVar.c();
            t.a(sVar);
        }
        return iMin;
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c d(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c b(String str) {
        return b(str, 0, str.length());
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c b(String str, int i2, int i3) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i2)));
        }
        if (i3 >= i2) {
            if (i3 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
            }
            while (i2 < i3) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 < 128) {
                    s sVarG = g(1);
                    byte[] bArr = sVarG.f7128c;
                    int i4 = sVarG.f7130e - i2;
                    int iMin = Math.min(i3, 8192 - i4);
                    int i5 = i2 + 1;
                    bArr[i2 + i4] = (byte) cCharAt2;
                    while (true) {
                        i2 = i5;
                        if (i2 >= iMin || (cCharAt = str.charAt(i2)) >= 128) {
                            break;
                        }
                        i5 = i2 + 1;
                        bArr[i2 + i4] = (byte) cCharAt;
                    }
                    int i6 = sVarG.f7130e;
                    int i7 = (i4 + i2) - i6;
                    sVarG.f7130e = i6 + i7;
                    this.f7060c += i7;
                } else {
                    if (cCharAt2 < 2048) {
                        l((cCharAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                        l((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i8 = i2 + 1;
                        char cCharAt3 = i8 < i3 ? str.charAt(i8) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i9 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            l((i9 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            l(((i9 >> 12) & 63) | 128);
                            l(((i9 >> 6) & 63) | 128);
                            l((i9 & 63) | 128);
                            i2 += 2;
                        } else {
                            l(63);
                            i2 = i8;
                        }
                    } else {
                        l((cCharAt2 >> '\f') | 224);
                        l(((cCharAt2 >> 6) & 63) | 128);
                        l((cCharAt2 & '?') | 128);
                    }
                    i2++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c m(int i2) {
        if (i2 < 128) {
            l(i2);
            return this;
        }
        if (i2 < 2048) {
            l((i2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            l((i2 & 63) | 128);
            return this;
        }
        if (i2 < 65536) {
            if (i2 >= 55296 && i2 <= 57343) {
                l(63);
                return this;
            }
            l((i2 >> 12) | 224);
            l(((i2 >> 6) & 63) | 128);
            l((i2 & 63) | 128);
            return this;
        }
        if (i2 <= 1114111) {
            l((i2 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            l(((i2 >> 12) & 63) | 128);
            l(((i2 >> 6) & 63) | 128);
            l((i2 & 63) | 128);
            return this;
        }
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c b(String str, Charset charset) {
        return b(str, 0, str.length(), charset);
    }

    @Override // com.anythink.core.common.n.c.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final c b(String str, int i2, int i3, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i2)));
        }
        if (i3 >= i2) {
            if (i3 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
            }
            if (charset != null) {
                if (charset.equals(y.f7144a)) {
                    return b(str, i2, i3);
                }
                byte[] bytes = str.substring(i2, i3).getBytes(charset);
                return c(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    @Override // com.anythink.core.common.n.c.d
    public final long a(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long jA_ = wVar.a_(this, 8192L);
            if (jA_ == -1) {
                return j2;
            }
            j2 += jA_;
        }
    }

    @Override // com.anythink.core.common.n.c.d
    public final d a(w wVar, long j2) throws EOFException {
        while (j2 > 0) {
            long jA_ = wVar.a_(this, j2);
            if (jA_ == -1) {
                throw new EOFException();
            }
            j2 -= jA_;
        }
        return this;
    }

    @Override // com.anythink.core.common.n.c.v
    public final void a(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar != this) {
            y.a(cVar.f7060c, 0L, j2);
            while (j2 > 0) {
                s sVar = cVar.f7059b;
                if (j2 < sVar.f7130e - sVar.f7129d) {
                    s sVar2 = this.f7059b;
                    s sVar3 = sVar2 != null ? sVar2.f7134i : null;
                    if (sVar3 != null && sVar3.f7132g) {
                        if ((sVar3.f7130e + j2) - (sVar3.f7131f ? 0 : sVar3.f7129d) <= 8192) {
                            sVar.a(sVar3, (int) j2);
                            cVar.f7060c -= j2;
                            this.f7060c += j2;
                            return;
                        }
                    }
                    cVar.f7059b = sVar.a((int) j2);
                }
                s sVar4 = cVar.f7059b;
                long j3 = sVar4.f7130e - sVar4.f7129d;
                cVar.f7059b = sVar4.c();
                s sVar5 = this.f7059b;
                if (sVar5 == null) {
                    this.f7059b = sVar4;
                    sVar4.f7134i = sVar4;
                    sVar4.f7133h = sVar4;
                } else {
                    sVar5.f7134i.a(sVar4).d();
                }
                cVar.f7060c -= j3;
                this.f7060c += j3;
                j2 -= j3;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(byte b3) {
        return a(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(byte b3, long j2) {
        return a(b3, j2, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(byte b3, long j2, long j3) {
        s sVar;
        long j4 = 0;
        if (j2 >= 0 && j3 >= j2) {
            long j5 = this.f7060c;
            long j6 = j3 > j5 ? j5 : j3;
            if (j2 == j6 || (sVar = this.f7059b) == null) {
                return -1L;
            }
            if (j5 - j2 < j2) {
                while (j5 > j2) {
                    sVar = sVar.f7134i;
                    j5 -= sVar.f7130e - sVar.f7129d;
                }
            } else {
                while (true) {
                    long j7 = (sVar.f7130e - sVar.f7129d) + j4;
                    if (j7 >= j2) {
                        break;
                    }
                    sVar = sVar.f7133h;
                    j4 = j7;
                }
                j5 = j4;
            }
            long j8 = j2;
            while (j5 < j6) {
                byte[] bArr = sVar.f7128c;
                int iMin = (int) Math.min(sVar.f7130e, (sVar.f7129d + j6) - j5);
                for (int i2 = (int) ((sVar.f7129d + j8) - j5); i2 < iMin; i2++) {
                    if (bArr[i2] == b3) {
                        return (i2 - sVar.f7129d) + j5;
                    }
                }
                j5 += sVar.f7130e - sVar.f7129d;
                sVar = sVar.f7133h;
                j8 = j5;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f7060c), Long.valueOf(j2), Long.valueOf(j3)));
    }

    @Override // com.anythink.core.common.n.c.e
    public final long a(f fVar, long j2) {
        if (fVar.j() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j3 = 0;
        if (j2 >= 0) {
            s sVar = this.f7059b;
            long j4 = -1;
            if (sVar == null) {
                return -1L;
            }
            long j5 = this.f7060c;
            if (j5 - j2 < j2) {
                while (j5 > j2) {
                    sVar = sVar.f7134i;
                    j5 -= sVar.f7130e - sVar.f7129d;
                }
            } else {
                while (true) {
                    long j6 = (sVar.f7130e - sVar.f7129d) + j3;
                    if (j6 >= j2) {
                        break;
                    }
                    sVar = sVar.f7133h;
                    j3 = j6;
                }
                j5 = j3;
            }
            byte b3 = fVar.b(0);
            int iJ = fVar.j();
            long j7 = (this.f7060c - iJ) + 1;
            long j8 = j5;
            long j9 = j2;
            while (j8 < j7) {
                byte[] bArr = sVar.f7128c;
                long j10 = j4;
                int iMin = (int) Math.min(sVar.f7130e, (sVar.f7129d + j7) - j8);
                for (int i2 = (int) ((sVar.f7129d + j9) - j8); i2 < iMin; i2++) {
                    if (bArr[i2] == b3 && a(sVar, i2 + 1, fVar, iJ)) {
                        return (i2 - sVar.f7129d) + j8;
                    }
                }
                j8 += sVar.f7130e - sVar.f7129d;
                sVar = sVar.f7133h;
                j9 = j8;
                j4 = j10;
            }
            return j4;
        }
        throw new IllegalArgumentException("fromIndex < 0");
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean a(long j2, f fVar) {
        return a(j2, fVar, fVar.j());
    }

    @Override // com.anythink.core.common.n.c.e
    public final boolean a(long j2, f fVar, int i2) {
        if (j2 < 0 || i2 < 0 || this.f7060c - j2 < i2 || fVar.j() < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (c(i3 + j2) != fVar.b(i3)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(s sVar, int i2, f fVar, int i3) {
        int i4 = sVar.f7130e;
        byte[] bArr = sVar.f7128c;
        for (int i5 = 1; i5 < i3; i5++) {
            if (i2 == i4) {
                sVar = sVar.f7133h;
                bArr = sVar.f7128c;
                i2 = sVar.f7129d;
                i4 = sVar.f7130e;
            }
            if (bArr[i2] != fVar.b(i5)) {
                return false;
            }
            i2++;
        }
        return true;
    }

    @Override // com.anythink.core.common.n.c.v
    public final x a() {
        return x.f7140c;
    }

    private f a(String str, f fVar) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(fVar.k(), str));
            s sVar = this.f7059b;
            if (sVar != null) {
                byte[] bArr = sVar.f7128c;
                int i2 = sVar.f7129d;
                mac.update(bArr, i2, sVar.f7130e - i2);
                s sVar2 = this.f7059b;
                while (true) {
                    sVar2 = sVar2.f7133h;
                    if (sVar2 == this.f7059b) {
                        break;
                    }
                    byte[] bArr2 = sVar2.f7128c;
                    int i3 = sVar2.f7129d;
                    mac.update(bArr2, i3, sVar2.f7130e - i3);
                }
            }
            return f.a(mac.doFinal());
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public final a a(a aVar) {
        if (aVar.f7063a == null) {
            aVar.f7063a = this;
            aVar.f7064b = true;
            return aVar;
        }
        throw new IllegalStateException("already attached to a buffer");
    }
}
