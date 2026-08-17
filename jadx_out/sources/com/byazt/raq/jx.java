package com.byazt.raq;

import androidx.core.location.LocationRequestCompat;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okhttp3.internal.connection.RealConnection;

@com.byazt.kj.hp(hp = {0, 1, 1165, 30})
/* loaded from: classes3.dex */
public final class jx implements j, w, Cloneable, ByteChannel {
    public static final byte[] jx = {com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 97, 98, 99, 100, 101, 102};
    public v hp;

    /* renamed from: l, reason: collision with root package name */
    public long f25110l;

    @Override // com.byazt.raq.w
    public InputStream a() {
        return new InputStream() { // from class: com.byazt.raq.jx.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(jx.this.f25110l, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                jx jxVar = jx.this;
                if (jxVar.f25110l > 0) {
                    return jxVar.s() & 255;
                }
                return -1;
            }

            public String toString() {
                return jx.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i2, int i3) {
                return jx.this.hp(bArr, i2, i3);
            }
        };
    }

    @Override // com.byazt.raq.vv
    public void a_(jx jxVar, long j2) {
        v vVar;
        if (jxVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (jxVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        n.hp(jxVar.f25110l, 0L, j2);
        while (j2 > 0 && (vVar = jxVar.hp) != null) {
            if (j2 < vVar.jx - vVar.f25118l) {
                v vVar2 = this.hp;
                v vVar3 = vVar2 != null ? vVar2.eb : null;
                if (vVar3 != null && vVar3.f25119w) {
                    if ((vVar3.jx + j2) - (vVar3.f25117j ? 0 : vVar3.f25118l) <= 8192) {
                        vVar.hp(vVar3, (int) j2);
                        jxVar.f25110l -= j2;
                        this.f25110l += j2;
                        return;
                    }
                }
                jxVar.hp = vVar.hp((int) j2);
            }
            v vVar4 = jxVar.hp;
            long j3 = vVar4.jx - vVar4.f25118l;
            jxVar.hp = vVar4.l();
            v vVar5 = this.hp;
            if (vVar5 == null) {
                this.hp = vVar4;
                vVar4.eb = vVar4;
                vVar4.f25116a = vVar4;
            } else {
                vVar5.eb.hp(vVar4).jx();
            }
            jxVar.f25110l -= j3;
            this.f25110l += j3;
            j2 -= j3;
        }
    }

    @Override // com.byazt.raq.vv, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.byazt.raq.w
    public int e() {
        long j2 = this.f25110l;
        if (j2 < 4) {
            throw new IllegalStateException("size < 4: " + this.f25110l);
        }
        v vVar = this.hp;
        int i2 = vVar.f25118l;
        int i3 = vVar.jx;
        if (i3 - i2 < 4) {
            return ((s() & 255) << 24) | ((s() & 255) << 16) | ((s() & 255) << 8) | (s() & 255);
        }
        byte[] bArr = vVar.hp;
        int i4 = i2 + 3;
        int i5 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 2] & 255) << 8);
        int i6 = i2 + 4;
        int i7 = (bArr[i4] & 255) | i5;
        this.f25110l = j2 - 4;
        if (i6 != i3) {
            vVar.f25118l = i6;
            return i7;
        }
        this.hp = vVar.l();
        u.hp(vVar);
        return i7;
    }

    /* renamed from: ec, reason: merged with bridge method [inline-methods] */
    public jx clone() {
        jx jxVar = new jx();
        if (this.f25110l == 0) {
            return jxVar;
        }
        v vVarHp = this.hp.hp();
        jxVar.hp = vVarHp;
        vVarHp.eb = vVarHp;
        vVarHp.f25116a = vVarHp;
        v vVar = this.hp;
        while (true) {
            vVar = vVar.f25116a;
            if (vVar == this.hp) {
                jxVar.f25110l = this.f25110l;
                return jxVar;
            }
            jxVar.hp.eb.hp(vVar.hp());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jx)) {
            return false;
        }
        jx jxVar = (jx) obj;
        long j2 = this.f25110l;
        if (j2 != jxVar.f25110l) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        v vVar = this.hp;
        v vVar2 = jxVar.hp;
        int i2 = vVar.f25118l;
        int i3 = vVar2.f25118l;
        while (j3 < this.f25110l) {
            long jMin = Math.min(vVar.jx - i2, vVar2.jx - i3);
            int i4 = 0;
            while (i4 < jMin) {
                int i5 = i2 + 1;
                int i6 = i3 + 1;
                if (vVar.hp[i2] != vVar2.hp[i3]) {
                    return false;
                }
                i4++;
                i2 = i5;
                i3 = i6;
            }
            if (i2 == vVar.jx) {
                vVar = vVar.f25116a;
                i2 = vVar.f25118l;
            }
            if (i3 == vVar2.jx) {
                vVar2 = vVar2.f25116a;
                i3 = vVar2.f25118l;
            }
            j3 += jMin;
        }
        return true;
    }

    @Override // com.byazt.raq.j, com.byazt.raq.vv, java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        v vVar = this.hp;
        if (vVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = vVar.jx;
            for (int i4 = vVar.f25118l; i4 < i3; i4++) {
                i2 = (i2 * 31) + vVar.hp[i4];
            }
            vVar = vVar.f25116a;
        } while (vVar != this.hp);
        return i2;
    }

    @Override // com.byazt.raq.w
    public void hp(long j2) throws EOFException {
        if (this.f25110l < j2) {
            throw new EOFException();
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // com.byazt.raq.j
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public jx n() {
        return this;
    }

    @Override // com.byazt.raq.j, com.byazt.raq.w
    public jx jx() {
        return this;
    }

    public a k() throws EOFException {
        return new a(xs());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        v vVar = this.hp;
        if (vVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), vVar.jx - vVar.f25118l);
        byteBuffer.put(vVar.hp, vVar.f25118l, iMin);
        int i2 = vVar.f25118l + iMin;
        vVar.f25118l = i2;
        this.f25110l -= iMin;
        if (i2 == vVar.jx) {
            this.hp = vVar.l();
            u.hp(vVar);
        }
        return iMin;
    }

    public final a sz() {
        long j2 = this.f25110l;
        if (j2 <= 2147483647L) {
            return a((int) j2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f25110l);
    }

    public String toString() {
        return sz().toString();
    }

    @Override // com.byazt.raq.w
    public String u() throws EOFException {
        return w(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    public String v() {
        try {
            return hp(this.f25110l, n.hp);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void vv() {
        try {
            s(this.f25110l);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.byazt.raq.w
    public boolean w() {
        return this.f25110l == 0;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            v vVarW = w(1);
            int iMin = Math.min(i2, 8192 - vVarW.jx);
            byteBuffer.get(vVarW.hp, vVarW.jx, iMin);
            i2 -= iMin;
            vVarW.jx += iMin;
        }
        this.f25110l += iRemaining;
        return iRemaining;
    }

    @Override // com.byazt.raq.w
    public byte[] xs() throws EOFException {
        return eb(this.f25110l);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009c A[EDGE_INSN: B:43:0x009c->B:37:0x009c BREAK  A[LOOP:0: B:5:0x000b->B:45:?], SYNTHETIC] */
    @Override // com.byazt.raq.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long zy() {
        /*
            r14 = this;
            long r0 = r14.f25110l
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La3
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            com.byazt.raq.v r6 = r14.hp
            byte[] r7 = r6.hp
            int r8 = r6.f25118l
            int r9 = r6.jx
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
            com.byazt.raq.jx r0 = new com.byazt.raq.jx
            r0.<init>()
            com.byazt.raq.jx r0 = r0.gu(r4)
            com.byazt.raq.jx r0 = r0.q(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Number too large: "
            r2.<init>(r3)
            java.lang.String r0 = r0.v()
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
            com.byazt.raq.v r7 = r6.l()
            r14.hp = r7
            com.byazt.raq.u.hp(r6)
            goto L96
        L94:
            r6.f25118l = r8
        L96:
            if (r1 != 0) goto L9c
            com.byazt.raq.v r6 = r14.hp
            if (r6 != 0) goto Lb
        L9c:
            long r1 = r14.f25110l
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.f25110l = r1
            return r4
        La3:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.raq.jx.zy():long");
    }

    public String a(long j2) throws EOFException {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (l(j3) == 13) {
                String strJ = j(j3);
                s(2L);
                return strJ;
            }
        }
        String strJ2 = j(j2);
        s(1L);
        return strJ2;
    }

    public final long eb() {
        long j2 = this.f25110l;
        if (j2 == 0) {
            return 0L;
        }
        v vVar = this.hp.eb;
        return (vVar.jx >= 8192 || !vVar.f25119w) ? j2 : j2 - (r3 - vVar.f25118l);
    }

    @Override // com.byazt.raq.w
    public short gu() {
        return n.hp(q());
    }

    public final jx hp(jx jxVar, long j2, long j3) {
        if (jxVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        long j4 = j2;
        n.hp(this.f25110l, j4, j3);
        if (j3 != 0) {
            jxVar.f25110l += j3;
            v vVar = this.hp;
            while (true) {
                int i2 = vVar.jx;
                int i3 = vVar.f25118l;
                if (j4 < i2 - i3) {
                    break;
                }
                j4 -= i2 - i3;
                vVar = vVar.f25116a;
            }
            v vVar2 = vVar;
            long j5 = j3;
            while (j5 > 0) {
                v vVarHp = vVar2.hp();
                int i4 = (int) (vVarHp.f25118l + j4);
                vVarHp.f25118l = i4;
                vVarHp.jx = Math.min(i4 + ((int) j5), vVarHp.jx);
                v vVar3 = jxVar.hp;
                if (vVar3 == null) {
                    vVarHp.eb = vVarHp;
                    vVarHp.f25116a = vVarHp;
                    jxVar.hp = vVarHp;
                } else {
                    vVar3.eb.hp(vVarHp);
                }
                j5 -= vVarHp.jx - vVarHp.f25118l;
                vVar2 = vVar2.f25116a;
                j4 = 0;
            }
        }
        return this;
    }

    public String j(long j2) throws EOFException {
        return hp(j2, n.hp);
    }

    @Override // com.byazt.raq.w
    public int jl() {
        return n.hp(e());
    }

    @Override // com.byazt.raq.w
    public short q() {
        long j2 = this.f25110l;
        if (j2 < 2) {
            throw new IllegalStateException("size < 2: " + this.f25110l);
        }
        v vVar = this.hp;
        int i2 = vVar.f25118l;
        int i3 = vVar.jx;
        if (i3 - i2 < 2) {
            return (short) (((s() & 255) << 8) | (s() & 255));
        }
        byte[] bArr = vVar.hp;
        int i4 = i2 + 1;
        int i5 = (bArr[i2] & 255) << 8;
        int i6 = i2 + 2;
        int i7 = (bArr[i4] & 255) | i5;
        this.f25110l = j2 - 2;
        if (i6 == i3) {
            this.hp = vVar.l();
            u.hp(vVar);
        } else {
            vVar.f25118l = i6;
        }
        return (short) i7;
    }

    @Override // com.byazt.raq.w
    public byte s() {
        long j2 = this.f25110l;
        if (j2 == 0) {
            throw new IllegalStateException("size == 0");
        }
        v vVar = this.hp;
        int i2 = vVar.f25118l;
        int i3 = vVar.jx;
        int i4 = i2 + 1;
        byte b3 = vVar.hp[i2];
        this.f25110l = j2 - 1;
        if (i4 != i3) {
            vVar.f25118l = i4;
            return b3;
        }
        this.hp = vVar.l();
        u.hp(vVar);
        return b3;
    }

    @Override // com.byazt.raq.w
    public String w(long j2) throws EOFException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j2)));
        }
        long j3 = LocationRequestCompat.PASSIVE_INTERVAL;
        if (j2 != LocationRequestCompat.PASSIVE_INTERVAL) {
            j3 = j2 + 1;
        }
        long j4 = j3;
        long jHp = hp((byte) 10, 0L, j4);
        if (jHp != -1) {
            return a(jHp);
        }
        if (j4 < l() && l(j4 - 1) == 13 && l(j4) == 10) {
            return a(j4);
        }
        jx jxVar = new jx();
        hp(jxVar, 0L, Math.min(32L, l()));
        throw new EOFException("\\n not found: limit=" + Math.min(l(), j2) + " content=" + jxVar.k().w() + (char) 8230);
    }

    @Override // com.byazt.raq.j
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public jx eb(int i2) {
        v vVarW = w(4);
        byte[] bArr = vVarW.hp;
        int i3 = vVarW.jx;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 3] = (byte) (i2 & 255);
        vVarW.jx = i3 + 4;
        this.f25110l += 4;
        return this;
    }

    public final long l() {
        return this.f25110l;
    }

    @Override // com.byazt.raq.w
    public a jx(long j2) throws EOFException {
        return new a(eb(j2));
    }

    public final byte l(long j2) {
        int i2;
        long j3 = j2;
        n.hp(this.f25110l, j3, 1L);
        long j4 = this.f25110l;
        if (j4 - j3 > j3) {
            v vVar = this.hp;
            while (true) {
                int i3 = vVar.jx;
                int i4 = vVar.f25118l;
                long j5 = i3 - i4;
                if (j3 < j5) {
                    return vVar.hp[i4 + ((int) j3)];
                }
                j3 -= j5;
                vVar = vVar.f25116a;
            }
        } else {
            long j6 = j3 - j4;
            try {
                v vVar2 = this.hp;
                do {
                    vVar2 = vVar2.eb;
                    int i5 = vVar2.jx;
                    i2 = vVar2.f25118l;
                    j6 += i5 - i2;
                } while (j6 < 0);
                return vVar2.hp[i2 + ((int) j6)];
            } catch (NullPointerException unused) {
                return (byte) 0;
            }
        }
    }

    @Override // com.byazt.raq.j
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public jx s(int i2) {
        v vVarW = w(2);
        byte[] bArr = vVarW.hp;
        int i3 = vVarW.jx;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 1] = (byte) (i2 & 255);
        vVarW.jx = i3 + 2;
        this.f25110l += 2;
        return this;
    }

    @Override // com.byazt.raq.w
    public byte[] eb(long j2) throws EOFException {
        n.hp(this.f25110l, 0L, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[(int) j2];
            hp(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j2)));
    }

    public final a a(int i2) {
        if (i2 == 0) {
            return a.f25093l;
        }
        return new xs(this, i2);
    }

    public v w(int i2) {
        if (i2 > 0 && i2 <= 8192) {
            v vVar = this.hp;
            if (vVar == null) {
                v vVarHp = u.hp();
                this.hp = vVarHp;
                vVarHp.eb = vVarHp;
                vVarHp.f25116a = vVarHp;
                return vVarHp;
            }
            v vVar2 = vVar.eb;
            return (vVar2.jx + i2 > 8192 || !vVar2.f25119w) ? vVar2.hp(u.hp()) : vVar2;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.byazt.raq.j
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public jx jx(byte[] bArr) {
        if (bArr != null) {
            return jx(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.byazt.raq.w
    public void s(long j2) throws EOFException {
        v vVar;
        while (j2 > 0 && (vVar = this.hp) != null) {
            int iMin = (int) Math.min(j2, vVar.jx - vVar.f25118l);
            long j3 = iMin;
            this.f25110l -= j3;
            j2 -= j3;
            v vVar2 = this.hp;
            int i2 = vVar2.f25118l + iMin;
            vVar2.f25118l = i2;
            if (i2 == vVar2.jx) {
                this.hp = vVar2.l();
                u.hp(vVar2);
            }
        }
    }

    @Override // com.byazt.raq.w
    public String hp(Charset charset) {
        try {
            return hp(this.f25110l, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.byazt.raq.j
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public jx jx(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = i3;
            n.hp(bArr.length, i2, j2);
            int i4 = i3 + i2;
            while (i2 < i4) {
                v vVarW = w(1);
                int iMin = Math.min(i4 - i2, 8192 - vVarW.jx);
                System.arraycopy(bArr, i2, vVarW.hp, vVarW.jx, iMin);
                i2 += iMin;
                vVarW.jx += iMin;
            }
            this.f25110l += j2;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.byazt.raq.j
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public jx jl(long j2) {
        boolean z2;
        if (j2 == 0) {
            return q(48);
        }
        int i2 = 1;
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                return l("-9223372036854775808");
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
        v vVarW = w(i2);
        byte[] bArr = vVarW.hp;
        int i3 = vVarW.jx + i2;
        while (j2 != 0) {
            i3--;
            bArr[i3] = jx[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z2) {
            bArr[i3 - 1] = 45;
        }
        vVarW.jx += i2;
        this.f25110l += i2;
        return this;
    }

    @Override // com.byazt.raq.j
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public jx gu(long j2) {
        if (j2 == 0) {
            return q(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        v vVarW = w(iNumberOfTrailingZeros);
        byte[] bArr = vVarW.hp;
        int i2 = vVarW.jx;
        for (int i3 = (i2 + iNumberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = jx[(int) (15 & j2)];
            j2 >>>= 4;
        }
        vVarW.jx += iNumberOfTrailingZeros;
        this.f25110l += iNumberOfTrailingZeros;
        return this;
    }

    public String hp(long j2, Charset charset) throws EOFException {
        n.hp(this.f25110l, 0L, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j2)));
        }
        if (j2 == 0) {
            return "";
        }
        v vVar = this.hp;
        int i2 = vVar.f25118l;
        if (i2 + j2 > vVar.jx) {
            return new String(eb(j2), charset);
        }
        String str = new String(vVar.hp, i2, (int) j2, charset);
        int i3 = (int) (vVar.f25118l + j2);
        vVar.f25118l = i3;
        this.f25110l -= j2;
        if (i3 == vVar.jx) {
            this.hp = vVar.l();
            u.hp(vVar);
        }
        return str;
    }

    @Override // com.byazt.raq.j
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public jx q(int i2) {
        v vVarW = w(1);
        byte[] bArr = vVarW.hp;
        int i3 = vVarW.jx;
        vVarW.jx = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f25110l++;
        return this;
    }

    @Override // com.byazt.raq.w
    public void hp(byte[] bArr) throws EOFException {
        int i2 = 0;
        while (i2 < bArr.length) {
            int iHp = hp(bArr, i2, bArr.length - i2);
            if (iHp == -1) {
                throw new EOFException();
            }
            i2 += iHp;
        }
    }

    public int hp(byte[] bArr, int i2, int i3) {
        n.hp(bArr.length, i2, i3);
        v vVar = this.hp;
        if (vVar == null) {
            return -1;
        }
        int iMin = Math.min(i3, vVar.jx - vVar.f25118l);
        System.arraycopy(vVar.hp, vVar.f25118l, bArr, i2, iMin);
        int i4 = vVar.f25118l + iMin;
        vVar.f25118l = i4;
        this.f25110l -= iMin;
        if (i4 == vVar.jx) {
            this.hp = vVar.l();
            u.hp(vVar);
        }
        return iMin;
    }

    @Override // com.byazt.raq.j
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public jx l(a aVar) {
        if (aVar != null) {
            aVar.hp(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // com.byazt.raq.j
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public jx l(String str) {
        return hp(str, 0, str.length());
    }

    public jx hp(String str, int i2, int i3) {
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
                    v vVarW = w(1);
                    byte[] bArr = vVarW.hp;
                    int i4 = vVarW.jx - i2;
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
                    int i6 = vVarW.jx;
                    int i7 = (i4 + i2) - i6;
                    vVarW.jx = i6 + i7;
                    this.f25110l += i7;
                } else {
                    if (cCharAt2 < 2048) {
                        q((cCharAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                        q((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i8 = i2 + 1;
                        char cCharAt3 = i8 < i3 ? str.charAt(i8) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i9 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            q((i9 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            q(((i9 >> 12) & 63) | 128);
                            q(((i9 >> 6) & 63) | 128);
                            q((i9 & 63) | 128);
                            i2 += 2;
                        } else {
                            q(63);
                            i2 = i8;
                        }
                    } else {
                        q((cCharAt2 >> '\f') | 224);
                        q(((cCharAt2 >> 6) & 63) | 128);
                        q((cCharAt2 & '?') | 128);
                    }
                    i2++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    public jx hp(int i2) {
        if (i2 < 128) {
            q(i2);
            return this;
        }
        if (i2 < 2048) {
            q((i2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            q((i2 & 63) | 128);
            return this;
        }
        if (i2 < 65536) {
            if (i2 >= 55296 && i2 <= 57343) {
                q(63);
                return this;
            }
            q((i2 >> 12) | 224);
            q(((i2 >> 6) & 63) | 128);
            q((i2 & 63) | 128);
            return this;
        }
        if (i2 <= 1114111) {
            q((i2 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            q(((i2 >> 12) & 63) | 128);
            q(((i2 >> 6) & 63) | 128);
            q((i2 & 63) | 128);
            return this;
        }
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
    }

    public jx hp(String str, int i2, int i3, Charset charset) {
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
                if (charset.equals(n.hp)) {
                    return hp(str, i2, i3);
                }
                byte[] bytes = str.substring(i2, i3).getBytes(charset);
                return jx(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    public long hp(ec ecVar) throws IOException {
        if (ecVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long jHp = ecVar.hp(this, 8192L);
            if (jHp == -1) {
                return j2;
            }
            j2 += jHp;
        }
    }

    @Override // com.byazt.raq.ec
    public long hp(jx jxVar, long j2) {
        if (jxVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 >= 0) {
            long j3 = this.f25110l;
            if (j3 == 0) {
                return -1L;
            }
            if (j2 > j3) {
                j2 = j3;
            }
            jxVar.a_(this, j2);
            return j2;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j2)));
    }

    @Override // com.byazt.raq.w
    public long hp(byte b3) {
        return hp(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    public long hp(byte b3, long j2, long j3) {
        v vVar;
        long j4 = 0;
        if (j2 >= 0 && j3 >= j2) {
            long j5 = this.f25110l;
            long j6 = j3 > j5 ? j5 : j3;
            if (j2 == j6 || (vVar = this.hp) == null) {
                return -1L;
            }
            if (j5 - j2 < j2) {
                while (j5 > j2) {
                    vVar = vVar.eb;
                    j5 -= vVar.jx - vVar.f25118l;
                }
            } else {
                while (true) {
                    long j7 = (vVar.jx - vVar.f25118l) + j4;
                    if (j7 >= j2) {
                        break;
                    }
                    vVar = vVar.f25116a;
                    j4 = j7;
                }
                j5 = j4;
            }
            long j8 = j2;
            while (j5 < j6) {
                byte[] bArr = vVar.hp;
                int iMin = (int) Math.min(vVar.jx, (vVar.f25118l + j6) - j5);
                for (int i2 = (int) ((vVar.f25118l + j8) - j5); i2 < iMin; i2++) {
                    if (bArr[i2] == b3) {
                        return (i2 - vVar.f25118l) + j5;
                    }
                }
                j5 += vVar.jx - vVar.f25118l;
                vVar = vVar.f25116a;
                j8 = j5;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f25110l), Long.valueOf(j2), Long.valueOf(j3)));
    }

    @Override // com.byazt.raq.w
    public boolean hp(long j2, a aVar) {
        return hp(j2, aVar, 0, aVar.eb());
    }

    public boolean hp(long j2, a aVar, int i2, int i3) {
        if (j2 < 0 || i2 < 0 || i3 < 0 || this.f25110l - j2 < i3 || aVar.eb() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (l(i4 + j2) != aVar.hp(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.byazt.raq.vv
    public sz hp() {
        return sz.jx;
    }
}
