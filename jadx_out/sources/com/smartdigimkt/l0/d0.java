package com.smartdigimkt.l0;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class d0 extends com.smartdigimkt.q0.c implements com.smartdigimkt.a1.g {

    /* renamed from: R, reason: collision with root package name */
    public final Context f41460R;

    /* renamed from: S, reason: collision with root package name */
    public final l f41461S;

    /* renamed from: T, reason: collision with root package name */
    public final q f41462T;

    /* renamed from: U, reason: collision with root package name */
    public int f41463U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f41464V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f41465W;

    /* renamed from: X, reason: collision with root package name */
    public MediaFormat f41466X;

    /* renamed from: Y, reason: collision with root package name */
    public int f41467Y;

    /* renamed from: Z, reason: collision with root package name */
    public int f41468Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f41469a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f41470b0;

    /* renamed from: c0, reason: collision with root package name */
    public long f41471c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f41472d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f41473e0;

    public d0(Context context, Handler handler, com.smartdigimkt.j0.i0 i0Var, c cVar, e... eVarArr) {
        a0 a0Var = new a0(cVar, eVarArr);
        super(1);
        this.f41460R = context.getApplicationContext();
        this.f41462T = a0Var;
        this.f41461S = new l(handler, i0Var);
        a0Var.f41430j = new c0(this);
    }

    @Override // com.smartdigimkt.q0.c
    public final int a(com.smartdigimkt.q0.a aVar, com.smartdigimkt.j0.s sVar, com.smartdigimkt.j0.s sVar2) {
        return 0;
    }

    @Override // com.smartdigimkt.a1.g
    public final long b() {
        if (this.f40844c == 2) {
            long jA = ((a0) this.f41462T).a(d());
            if (jA != Long.MIN_VALUE) {
                if (!this.f41473e0) {
                    jA = Math.max(this.f41471c0, jA);
                }
                this.f41471c0 = jA;
                this.f41473e0 = false;
            }
        }
        return this.f41471c0;
    }

    @Override // com.smartdigimkt.j0.a
    public final com.smartdigimkt.a1.g c() {
        return this;
    }

    @Override // com.smartdigimkt.q0.c, com.smartdigimkt.j0.a
    public final boolean d() {
        if (!this.f42641N) {
            return false;
        }
        a0 a0Var = (a0) this.f41462T;
        if (!a0Var.c()) {
            return true;
        }
        if (a0Var.f41416S) {
            return (a0Var.c() && a0Var.f41428h.b(a0Var.b())) ? false : true;
        }
        return false;
    }

    @Override // com.smartdigimkt.q0.c, com.smartdigimkt.j0.a
    public final boolean e() {
        a0 a0Var = (a0) this.f41462T;
        return (a0Var.c() && a0Var.f41428h.b(a0Var.b())) || super.e();
    }

    @Override // com.smartdigimkt.j0.a
    public final void f() {
        try {
            a0 a0Var = (a0) this.f41462T;
            a0Var.g();
            for (e eVar : a0Var.f41425e) {
                eVar.h();
            }
            for (e eVar2 : a0Var.f41426f) {
                eVar2.h();
            }
            a0Var.f41418U = 0;
            a0Var.f41417T = false;
            try {
                this.f42650o = null;
                n();
                synchronized (this.f42643P) {
                }
                l lVar = this.f41461S;
                com.smartdigimkt.m0.c cVar = this.f42643P;
                if (lVar.f41558b != null) {
                    lVar.f41557a.post(new j(lVar, cVar));
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                this.f42650o = null;
                n();
                throw th;
            } finally {
                this.f42643P.a();
                l lVar2 = this.f41461S;
                com.smartdigimkt.m0.c cVar2 = this.f42643P;
                if (lVar2.f41558b != null) {
                    lVar2.f41557a.post(new j(lVar2, cVar2));
                }
            }
        }
    }

    @Override // com.smartdigimkt.j0.a
    public final void g() throws IllegalStateException {
        com.smartdigimkt.m0.c cVar = new com.smartdigimkt.m0.c();
        this.f42643P = cVar;
        l lVar = this.f41461S;
        if (lVar.f41558b != null) {
            lVar.f41557a.post(new f(lVar, cVar));
        }
        int i2 = this.f40843b.f40880a;
        if (i2 == 0) {
            a0 a0Var = (a0) this.f41462T;
            if (a0Var.f41419V) {
                a0Var.f41419V = false;
                a0Var.f41418U = 0;
                a0Var.g();
                return;
            }
            return;
        }
        a0 a0Var2 = (a0) this.f41462T;
        a0Var2.getClass();
        if (com.smartdigimkt.a1.t.f39303a < 21) {
            throw new IllegalStateException();
        }
        if (a0Var2.f41419V && a0Var2.f41418U == i2) {
            return;
        }
        a0Var2.f41419V = true;
        a0Var2.f41418U = i2;
        a0Var2.g();
    }

    @Override // com.smartdigimkt.j0.a
    public final void h() throws IllegalStateException {
        ((a0) this.f41462T).e();
    }

    @Override // com.smartdigimkt.j0.a
    public final void i() throws IllegalStateException {
        long jA = ((a0) this.f41462T).a(d());
        if (jA != Long.MIN_VALUE) {
            if (!this.f41473e0) {
                jA = Math.max(this.f41471c0, jA);
            }
            this.f41471c0 = jA;
            this.f41473e0 = false;
        }
        ((a0) this.f41462T).d();
    }

    @Override // com.smartdigimkt.q0.c
    public final void o() throws IllegalStateException, com.smartdigimkt.j0.g {
        try {
            ((a0) this.f41462T).f();
        } catch (p e2) {
            throw new com.smartdigimkt.j0.g(1, e2);
        }
    }

    @Override // com.smartdigimkt.q0.c
    public final com.smartdigimkt.q0.a a(com.smartdigimkt.q0.d dVar, com.smartdigimkt.j0.s sVar) {
        int iA = com.smartdigimkt.a1.h.a(sVar.f40991f);
        if (iA != 0 && ((a0) this.f41462T).a(iA)) {
            dVar.getClass();
            com.smartdigimkt.q0.a aVar = com.smartdigimkt.q0.j.f42667a;
            if (aVar != null) {
                return aVar;
            }
        }
        String str = sVar.f40991f;
        dVar.getClass();
        return com.smartdigimkt.q0.j.a(str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    @Override // com.smartdigimkt.q0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(com.smartdigimkt.q0.d r12, com.smartdigimkt.j0.s r13) {
        /*
            r11 = this;
            java.lang.String r0 = r13.f40991f
            java.lang.String r1 = com.smartdigimkt.a1.h.b(r0)
            java.lang.String r2 = "audio"
            boolean r1 = r2.equals(r1)
            r2 = 0
            if (r1 != 0) goto L10
            return r2
        L10:
            int r1 = com.smartdigimkt.a1.t.f39303a
            r3 = 21
            if (r1 < r3) goto L19
            r1 = 32
            goto L1a
        L19:
            r1 = r2
        L1a:
            com.smartdigimkt.n0.d r4 = r13.f40994i
            r5 = 1
            if (r4 != 0) goto L21
            r4 = r5
            goto L22
        L21:
            r4 = r2
        L22:
            if (r4 == 0) goto L3e
            int r6 = com.smartdigimkt.a1.h.a(r0)
            if (r6 == 0) goto L3e
            com.smartdigimkt.l0.q r7 = r11.f41462T
            com.smartdigimkt.l0.a0 r7 = (com.smartdigimkt.l0.a0) r7
            boolean r6 = r7.a(r6)
            if (r6 == 0) goto L3e
            r12.getClass()
            com.smartdigimkt.q0.a r6 = com.smartdigimkt.q0.j.f42667a
            if (r6 == 0) goto L3e
            r12 = r1 | 12
            return r12
        L3e:
            java.lang.String r6 = "audio/raw"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L52
            com.smartdigimkt.l0.q r6 = r11.f41462T
            int r7 = r13.f41006u
            com.smartdigimkt.l0.a0 r6 = (com.smartdigimkt.l0.a0) r6
            boolean r6 = r6.a(r7)
            if (r6 == 0) goto L5d
        L52:
            com.smartdigimkt.l0.q r6 = r11.f41462T
            com.smartdigimkt.l0.a0 r6 = (com.smartdigimkt.l0.a0) r6
            r7 = 2
            boolean r6 = r6.a(r7)
            if (r6 != 0) goto L5e
        L5d:
            return r5
        L5e:
            com.smartdigimkt.n0.d r6 = r13.f40994i
            if (r6 == 0) goto L72
            r8 = r2
            r9 = r8
        L64:
            int r10 = r6.f42159d
            if (r8 >= r10) goto L73
            com.smartdigimkt.n0.c[] r10 = r6.f42156a
            r10 = r10[r8]
            boolean r10 = r10.f42155f
            r9 = r9 | r10
            int r8 = r8 + 1
            goto L64
        L72:
            r9 = r2
        L73:
            r12.getClass()
            com.smartdigimkt.q0.a r12 = com.smartdigimkt.q0.j.a(r0, r9)
            if (r12 != 0) goto L86
            if (r9 == 0) goto L85
            com.smartdigimkt.q0.a r12 = com.smartdigimkt.q0.j.a(r0, r2)
            if (r12 == 0) goto L85
            return r7
        L85:
            return r5
        L86:
            if (r4 != 0) goto L89
            return r7
        L89:
            int r0 = com.smartdigimkt.a1.t.f39303a
            if (r0 < r3) goto La5
            int r0 = r13.f41005t
            r2 = -1
            if (r0 == r2) goto L98
            boolean r0 = r12.b(r0)
            if (r0 == 0) goto La3
        L98:
            int r13 = r13.f41004s
            if (r13 == r2) goto La5
            boolean r12 = r12.a(r13)
            if (r12 == 0) goto La3
            goto La5
        La3:
            r12 = 3
            goto La6
        La5:
            r12 = 4
        La6:
            r13 = r1 | 8
            r12 = r12 | r13
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.d0.b(com.smartdigimkt.q0.d, com.smartdigimkt.j0.s):int");
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(String str, long j2, long j3) {
        l lVar = this.f41461S;
        if (lVar.f41558b != null) {
            lVar.f41557a.post(new g(lVar, str, j2, j3));
        }
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws com.smartdigimkt.j0.g {
        int iA;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.f41466X;
        if (mediaFormat2 != null) {
            iA = com.smartdigimkt.a1.h.a(mediaFormat2.getString("mime"));
            mediaFormat = this.f41466X;
        } else {
            iA = this.f41467Y;
        }
        int i3 = iA;
        int integer = mediaFormat.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_CHANNEL_COUNT);
        int integer2 = mediaFormat.getInteger(com.bykv.vk.component.ttvideo.player.MediaFormat.KEY_SAMPLE_RATE);
        if (this.f41465W && integer == 6 && (i2 = this.f41468Z) < 6) {
            iArr = new int[i2];
            for (int i4 = 0; i4 < this.f41468Z; i4++) {
                iArr[i4] = i4;
            }
        } else {
            iArr = null;
        }
        try {
            ((a0) this.f41462T).a(i3, integer, integer2, iArr, this.f41469a0, this.f41470b0);
        } catch (n e2) {
            throw new com.smartdigimkt.j0.g(1, e2);
        }
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(long j2, boolean z2) throws IllegalStateException {
        this.f42640M = false;
        this.f42641N = false;
        if (this.f42651p != null) {
            k();
        }
        ((a0) this.f41462T).g();
        this.f41471c0 = j2;
        this.f41472d0 = true;
        this.f41473e0 = true;
    }

    @Override // com.smartdigimkt.q0.c
    public final void b(com.smartdigimkt.j0.s sVar) {
        super.b(sVar);
        l lVar = this.f41461S;
        if (lVar.f41558b != null) {
            lVar.f41557a.post(new h(lVar, sVar));
        }
        this.f41467Y = "audio/raw".equals(sVar.f40991f) ? sVar.f41006u : 2;
        this.f41468Z = sVar.f41004s;
        this.f41469a0 = sVar.f41007v;
        this.f41470b0 = sVar.f41008w;
    }

    @Override // com.smartdigimkt.a1.g
    public final com.smartdigimkt.j0.a0 a(com.smartdigimkt.j0.a0 a0Var) {
        return ((a0) this.f41462T).a(a0Var);
    }

    @Override // com.smartdigimkt.a1.g
    public final com.smartdigimkt.j0.a0 a() {
        return ((a0) this.f41462T).f41443w;
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(com.smartdigimkt.m0.d dVar) {
        if (!this.f41472d0 || dVar.b(Integer.MIN_VALUE)) {
            return;
        }
        if (Math.abs(dVar.f41703d - this.f41471c0) > 500000) {
            this.f41471c0 = dVar.f41703d;
        }
        this.f41472d0 = false;
    }

    @Override // com.smartdigimkt.q0.c
    public final boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z2) throws com.smartdigimkt.j0.g {
        if (this.f41464V && (i3 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i2, false);
            return true;
        }
        if (z2) {
            mediaCodec.releaseOutputBuffer(i2, false);
            this.f42643P.getClass();
            a0 a0Var = (a0) this.f41462T;
            if (a0Var.f41406I == 1) {
                a0Var.f41406I = 2;
            }
            return true;
        }
        try {
            if (!((a0) this.f41462T).a(byteBuffer, j4)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i2, false);
            this.f42643P.getClass();
            return true;
        } catch (o | p e2) {
            throw new com.smartdigimkt.j0.g(1, e2);
        }
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(int i2, Object obj) throws IllegalStateException {
        if (i2 == 2) {
            q qVar = this.f41462T;
            float fFloatValue = ((Float) obj).floatValue();
            a0 a0Var = (a0) qVar;
            if (a0Var.f41408K != fFloatValue) {
                a0Var.f41408K = fFloatValue;
                a0Var.h();
                return;
            }
            return;
        }
        if (i2 != 3) {
            return;
        }
        b bVar = (b) obj;
        a0 a0Var2 = (a0) this.f41462T;
        if (a0Var2.f41438r.equals(bVar)) {
            return;
        }
        a0Var2.f41438r = bVar;
        if (a0Var2.f41419V) {
            return;
        }
        a0Var2.g();
        a0Var2.f41418U = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    @Override // com.smartdigimkt.q0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.q0.a r10, android.media.MediaCodec r11, com.smartdigimkt.j0.s r12) {
        /*
            r9 = this;
            int r0 = com.smartdigimkt.a1.t.f39303a
            r1 = 23
            r2 = 24
            if (r0 >= r2) goto L27
            java.lang.String r3 = r10.f42620a
            java.lang.String r4 = "OMX.google.raw.decoder"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L27
            if (r0 != r1) goto L25
            android.content.Context r3 = r9.f41460R
            android.content.pm.PackageManager r3 = r3.getPackageManager()
            if (r3 == 0) goto L25
            java.lang.String r4 = "android.software.leanback"
            boolean r3 = r3.hasSystemFeature(r4)
            if (r3 == 0) goto L25
            goto L27
        L25:
            r3 = -1
            goto L29
        L27:
            int r3 = r12.f40992g
        L29:
            r9.f41463U = r3
            java.lang.String r3 = r10.f42620a
            r4 = 0
            if (r0 >= r2) goto L5e
            java.lang.String r2 = "OMX.SEC.aac.dec"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L5e
            java.lang.String r2 = com.smartdigimkt.a1.t.f39305c
            java.lang.String r3 = "samsung"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L5e
            java.lang.String r2 = com.smartdigimkt.a1.t.f39304b
            java.lang.String r3 = "zeroflte"
            boolean r3 = r2.startsWith(r3)
            if (r3 != 0) goto L5c
            java.lang.String r3 = "herolte"
            boolean r3 = r2.startsWith(r3)
            if (r3 != 0) goto L5c
            java.lang.String r3 = "heroqlte"
            boolean r2 = r2.startsWith(r3)
            if (r2 == 0) goto L5e
        L5c:
            r2 = 1
            goto L5f
        L5e:
            r2 = r4
        L5f:
            r9.f41465W = r2
            boolean r2 = r10.f42626g
            r9.f41464V = r2
            java.lang.String r10 = r10.f42621b
            if (r10 != 0) goto L6b
            java.lang.String r10 = "audio/raw"
        L6b:
            int r2 = r9.f41463U
            android.media.MediaFormat r3 = new android.media.MediaFormat
            r3.<init>()
            java.lang.String r5 = "mime"
            r3.setString(r5, r10)
            int r10 = r12.f41004s
            java.lang.String r6 = "channel-count"
            r3.setInteger(r6, r10)
            int r10 = r12.f41005t
            java.lang.String r6 = "sample-rate"
            r3.setInteger(r6, r10)
            java.util.List r10 = r12.f40993h
            r6 = r4
        L88:
            int r7 = r10.size()
            if (r6 >= r7) goto Lac
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "csd-"
            r7.<init>(r8)
            r7.append(r6)
            java.lang.String r7 = r7.toString()
            java.lang.Object r8 = r10.get(r6)
            byte[] r8 = (byte[]) r8
            java.nio.ByteBuffer r8 = java.nio.ByteBuffer.wrap(r8)
            r3.setByteBuffer(r7, r8)
            int r6 = r6 + 1
            goto L88
        Lac:
            java.lang.String r10 = "max-input-size"
            com.smartdigimkt.q0.k.a(r3, r10, r2)
            if (r0 < r1) goto Lb8
            java.lang.String r10 = "priority"
            r3.setInteger(r10, r4)
        Lb8:
            r10 = 0
            r11.configure(r3, r10, r10, r4)
            boolean r11 = r9.f41464V
            if (r11 == 0) goto Lc8
            r9.f41466X = r3
            java.lang.String r10 = r12.f40991f
            r3.setString(r5, r10)
            return
        Lc8:
            r9.f41466X = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.d0.a(com.smartdigimkt.q0.a, android.media.MediaCodec, com.smartdigimkt.j0.s):void");
    }
}
