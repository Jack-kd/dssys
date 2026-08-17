package com.smartdigimkt.q0;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.smartdigimkt.j0.s;
import com.smartdigimkt.j0.t;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class c extends com.smartdigimkt.j0.a {

    /* renamed from: Q, reason: collision with root package name */
    public static final byte[] f42627Q;

    /* renamed from: A, reason: collision with root package name */
    public ByteBuffer[] f42628A;

    /* renamed from: B, reason: collision with root package name */
    public ByteBuffer[] f42629B;

    /* renamed from: C, reason: collision with root package name */
    public long f42630C;

    /* renamed from: D, reason: collision with root package name */
    public int f42631D;

    /* renamed from: E, reason: collision with root package name */
    public int f42632E;

    /* renamed from: F, reason: collision with root package name */
    public ByteBuffer f42633F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f42634G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f42635H;

    /* renamed from: I, reason: collision with root package name */
    public int f42636I;

    /* renamed from: J, reason: collision with root package name */
    public int f42637J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f42638K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f42639L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f42640M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f42641N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f42642O;

    /* renamed from: P, reason: collision with root package name */
    public com.smartdigimkt.m0.c f42643P;

    /* renamed from: i, reason: collision with root package name */
    public final d f42644i;

    /* renamed from: j, reason: collision with root package name */
    public final com.smartdigimkt.m0.d f42645j;

    /* renamed from: k, reason: collision with root package name */
    public final com.smartdigimkt.m0.d f42646k;

    /* renamed from: l, reason: collision with root package name */
    public final t f42647l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f42648m;

    /* renamed from: n, reason: collision with root package name */
    public final MediaCodec.BufferInfo f42649n;

    /* renamed from: o, reason: collision with root package name */
    public s f42650o;

    /* renamed from: p, reason: collision with root package name */
    public MediaCodec f42651p;

    /* renamed from: q, reason: collision with root package name */
    public a f42652q;

    /* renamed from: r, reason: collision with root package name */
    public int f42653r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f42654s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f42655t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f42656u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f42657v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f42658w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f42659x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f42660y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f42661z;

    static {
        int i2 = com.smartdigimkt.a1.t.f39303a;
        byte[] bArr = new byte[38];
        for (int i3 = 0; i3 < 38; i3++) {
            int i4 = i3 * 2;
            bArr[i3] = (byte) (Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i4 + 1), 16) + (Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i4), 16) << 4));
        }
        f42627Q = bArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(int i2) {
        super(i2);
        d dVar = d.f42662a;
        if (com.smartdigimkt.a1.t.f39303a < 16) {
            throw new IllegalStateException();
        }
        this.f42644i = dVar;
        this.f42645j = new com.smartdigimkt.m0.d(0);
        this.f42646k = new com.smartdigimkt.m0.d(0);
        this.f42647l = new t();
        this.f42648m = new ArrayList();
        this.f42649n = new MediaCodec.BufferInfo();
        this.f42636I = 0;
        this.f42637J = 0;
    }

    public abstract int a(a aVar, s sVar, s sVar2);

    public void a(long j2) {
    }

    public abstract void a(MediaCodec mediaCodec, MediaFormat mediaFormat);

    public abstract void a(com.smartdigimkt.m0.d dVar);

    public abstract void a(a aVar, MediaCodec mediaCodec, s sVar);

    public abstract void a(String str, long j2, long j3);

    public abstract boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z2);

    public abstract int b(d dVar, s sVar);

    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(com.smartdigimkt.j0.s r5) {
        /*
            r4 = this;
            com.smartdigimkt.j0.s r0 = r4.f42650o
            r4.f42650o = r5
            com.smartdigimkt.n0.d r5 = r5.f40994i
            if (r0 != 0) goto La
            r1 = 0
            goto Lc
        La:
            com.smartdigimkt.n0.d r1 = r0.f40994i
        Lc:
            boolean r5 = com.smartdigimkt.a1.t.a(r5, r1)
            r1 = 1
            if (r5 != 0) goto L27
            com.smartdigimkt.j0.s r5 = r4.f42650o
            com.smartdigimkt.n0.d r5 = r5.f40994i
            if (r5 != 0) goto L1a
            goto L27
        L1a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r5.<init>(r0)
            com.smartdigimkt.j0.g r0 = new com.smartdigimkt.j0.g
            r0.<init>(r1, r5)
            throw r0
        L27:
            android.media.MediaCodec r5 = r4.f42651p
            if (r5 == 0) goto L5f
            com.smartdigimkt.q0.a r5 = r4.f42652q
            com.smartdigimkt.j0.s r2 = r4.f42650o
            int r5 = r4.a(r5, r0, r2)
            if (r5 == 0) goto L5f
            if (r5 == r1) goto L5e
            r2 = 3
            if (r5 != r2) goto L58
            r4.f42635H = r1
            r4.f42636I = r1
            int r5 = r4.f42653r
            r2 = 2
            if (r5 == r2) goto L55
            if (r5 != r1) goto L54
            com.smartdigimkt.j0.s r5 = r4.f42650o
            int r2 = r5.f40996k
            int r3 = r0.f40996k
            if (r2 != r3) goto L54
            int r5 = r5.f40997l
            int r0 = r0.f40997l
            if (r5 != r0) goto L54
            goto L55
        L54:
            r1 = 0
        L55:
            r4.f42660y = r1
            return
        L58:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            r5.<init>()
            throw r5
        L5e:
            return
        L5f:
            boolean r5 = r4.f42638K
            if (r5 == 0) goto L66
            r4.f42637J = r1
            return
        L66:
            r4.n()
            r4.l()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q0.c.b(com.smartdigimkt.j0.s):void");
    }

    @Override // com.smartdigimkt.j0.a
    public boolean d() {
        return this.f42641N;
    }

    @Override // com.smartdigimkt.j0.a
    public boolean e() {
        if (this.f42650o == null) {
            return false;
        }
        if ((this.f40848g ? this.f40849h : this.f40845d.a()) || this.f42632E >= 0) {
            return true;
        }
        return this.f42630C != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f42630C;
    }

    @Override // com.smartdigimkt.j0.a
    public final int j() {
        return 8;
    }

    public void k() {
        this.f42630C = -9223372036854775807L;
        p();
        this.f42632E = -1;
        this.f42633F = null;
        this.f42642O = true;
        this.f42634G = false;
        this.f42648m.clear();
        this.f42660y = false;
        this.f42661z = false;
        if (this.f42655t || ((this.f42657v && this.f42639L) || this.f42637J != 0)) {
            n();
            l();
        } else {
            this.f42651p.flush();
            this.f42638K = false;
        }
        if (!this.f42635H || this.f42650o == null) {
            return;
        }
        this.f42636I = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l() throws com.smartdigimkt.j0.g {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q0.c.l():void");
    }

    public final void m() throws com.smartdigimkt.j0.g {
        if (this.f42637J == 2) {
            n();
            l();
        } else {
            this.f42641N = true;
            o();
        }
    }

    public void n() {
        this.f42630C = -9223372036854775807L;
        p();
        this.f42632E = -1;
        this.f42633F = null;
        this.f42634G = false;
        this.f42648m.clear();
        if (com.smartdigimkt.a1.t.f39303a < 21) {
            this.f42628A = null;
            this.f42629B = null;
        }
        this.f42652q = null;
        this.f42635H = false;
        this.f42638K = false;
        this.f42654s = false;
        this.f42655t = false;
        this.f42653r = 0;
        this.f42656u = false;
        this.f42657v = false;
        this.f42659x = false;
        this.f42660y = false;
        this.f42661z = false;
        this.f42639L = false;
        this.f42636I = 0;
        this.f42637J = 0;
        MediaCodec mediaCodec = this.f42651p;
        if (mediaCodec != null) {
            this.f42643P.getClass();
            try {
                mediaCodec.stop();
                try {
                    this.f42651p.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.f42651p.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    public void o() {
    }

    public final void p() {
        this.f42631D = -1;
        this.f42645j.f41702c = null;
    }

    public boolean a(a aVar) {
        return true;
    }

    @Override // com.smartdigimkt.j0.a
    public final int a(s sVar) throws com.smartdigimkt.j0.g {
        try {
            return b(this.f42644i, sVar);
        } catch (f e2) {
            throw new com.smartdigimkt.j0.g(1, e2);
        }
    }

    public a a(d dVar, s sVar) {
        String str = sVar.f40991f;
        dVar.getClass();
        return j.a(str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0367 A[Catch: Exception -> 0x0371, TryCatch #6 {Exception -> 0x0371, blocks: (B:209:0x035b, B:211:0x0367, B:214:0x0373, B:216:0x0381, B:223:0x0399, B:225:0x03b4, B:219:0x038a, B:221:0x038e, B:222:0x0392, B:224:0x03a3), top: B:256:0x035b }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0381 A[Catch: Exception -> 0x0371, TryCatch #6 {Exception -> 0x0371, blocks: (B:209:0x035b, B:211:0x0367, B:214:0x0373, B:216:0x0381, B:223:0x0399, B:225:0x03b4, B:219:0x038a, B:221:0x038e, B:222:0x0392, B:224:0x03a3), top: B:256:0x035b }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03a3 A[Catch: Exception -> 0x0371, TryCatch #6 {Exception -> 0x0371, blocks: (B:209:0x035b, B:211:0x0367, B:214:0x0373, B:216:0x0381, B:223:0x0399, B:225:0x03b4, B:219:0x038a, B:221:0x038e, B:222:0x0392, B:224:0x03a3), top: B:256:0x035b }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x040c A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x020b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x03c7 A[ADDED_TO_REGION, EDGE_INSN: B:272:0x03c7->B:229:0x03c7 BREAK  A[LOOP:1: B:120:0x01d1->B:280:0x01d1], REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0131  */
    /* JADX WARN: Type inference failed for: r0v86, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [int] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r24v0, types: [com.smartdigimkt.j0.a, com.smartdigimkt.q0.c] */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.nio.Buffer, java.nio.ByteBuffer] */
    @Override // com.smartdigimkt.j0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r25, long r27) throws com.smartdigimkt.j0.g, android.media.MediaCodec.CryptoException {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.q0.c.a(long, long):void");
    }
}
