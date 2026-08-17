package com.smartdigimkt.l0;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.C;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes5.dex */
public final class a0 implements q {

    /* renamed from: A, reason: collision with root package name */
    public int f41398A;

    /* renamed from: B, reason: collision with root package name */
    public int f41399B;

    /* renamed from: C, reason: collision with root package name */
    public long f41400C;

    /* renamed from: D, reason: collision with root package name */
    public long f41401D;

    /* renamed from: E, reason: collision with root package name */
    public int f41402E;

    /* renamed from: F, reason: collision with root package name */
    public long f41403F;

    /* renamed from: G, reason: collision with root package name */
    public long f41404G;

    /* renamed from: H, reason: collision with root package name */
    public int f41405H;

    /* renamed from: I, reason: collision with root package name */
    public int f41406I;

    /* renamed from: J, reason: collision with root package name */
    public long f41407J;

    /* renamed from: K, reason: collision with root package name */
    public float f41408K;

    /* renamed from: L, reason: collision with root package name */
    public e[] f41409L;

    /* renamed from: M, reason: collision with root package name */
    public ByteBuffer[] f41410M;

    /* renamed from: N, reason: collision with root package name */
    public ByteBuffer f41411N;

    /* renamed from: O, reason: collision with root package name */
    public ByteBuffer f41412O;

    /* renamed from: P, reason: collision with root package name */
    public byte[] f41413P;

    /* renamed from: Q, reason: collision with root package name */
    public int f41414Q;

    /* renamed from: R, reason: collision with root package name */
    public int f41415R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f41416S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f41417T;

    /* renamed from: U, reason: collision with root package name */
    public int f41418U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f41419V;

    /* renamed from: W, reason: collision with root package name */
    public long f41420W;

    /* renamed from: a, reason: collision with root package name */
    public final c f41421a;

    /* renamed from: b, reason: collision with root package name */
    public final w f41422b;

    /* renamed from: c, reason: collision with root package name */
    public final u f41423c;

    /* renamed from: d, reason: collision with root package name */
    public final i0 f41424d;

    /* renamed from: e, reason: collision with root package name */
    public final e[] f41425e;

    /* renamed from: f, reason: collision with root package name */
    public final e[] f41426f;

    /* renamed from: g, reason: collision with root package name */
    public final ConditionVariable f41427g;

    /* renamed from: h, reason: collision with root package name */
    public final t f41428h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayDeque f41429i;

    /* renamed from: j, reason: collision with root package name */
    public c0 f41430j;

    /* renamed from: k, reason: collision with root package name */
    public AudioTrack f41431k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f41432l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f41433m;

    /* renamed from: n, reason: collision with root package name */
    public int f41434n;

    /* renamed from: o, reason: collision with root package name */
    public int f41435o;

    /* renamed from: p, reason: collision with root package name */
    public int f41436p;

    /* renamed from: q, reason: collision with root package name */
    public int f41437q;

    /* renamed from: r, reason: collision with root package name */
    public b f41438r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f41439s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f41440t;

    /* renamed from: u, reason: collision with root package name */
    public int f41441u;

    /* renamed from: v, reason: collision with root package name */
    public com.smartdigimkt.j0.a0 f41442v;

    /* renamed from: w, reason: collision with root package name */
    public com.smartdigimkt.j0.a0 f41443w;

    /* renamed from: x, reason: collision with root package name */
    public long f41444x;

    /* renamed from: y, reason: collision with root package name */
    public long f41445y;

    /* renamed from: z, reason: collision with root package name */
    public ByteBuffer f41446z;

    public a0(c cVar, e[] eVarArr) {
        x xVar = new x(eVarArr);
        this.f41421a = cVar;
        this.f41422b = xVar;
        this.f41427g = new ConditionVariable(true);
        this.f41428h = new t(new z(this));
        u uVar = new u();
        this.f41423c = uVar;
        i0 i0Var = new i0();
        this.f41424d = i0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new e0(), uVar, i0Var);
        Collections.addAll(arrayList, xVar.f41605a);
        this.f41425e = (e[]) arrayList.toArray(new e[arrayList.size()]);
        this.f41426f = new e[]{new b0()};
        this.f41408K = 1.0f;
        this.f41406I = 0;
        this.f41438r = b.f41447b;
        this.f41418U = 0;
        this.f41443w = com.smartdigimkt.j0.a0.f40850e;
        this.f41415R = -1;
        this.f41409L = new e[0];
        this.f41410M = new ByteBuffer[0];
        this.f41429i = new ArrayDeque();
    }

    public final boolean a(int i2) {
        if (com.smartdigimkt.a1.t.a(i2)) {
            return i2 != 4 || com.smartdigimkt.a1.t.f39303a >= 21;
        }
        c cVar = this.f41421a;
        return cVar != null && Arrays.binarySearch(cVar.f41457a, i2) >= 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.nio.ByteBuffer r10, long r11) throws com.smartdigimkt.l0.p {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.a0.b(java.nio.ByteBuffer, long):void");
    }

    public final boolean c() {
        return this.f41431k != null;
    }

    public final void d() throws IllegalStateException {
        this.f41417T = false;
        if (c()) {
            t tVar = this.f41428h;
            tVar.f41579j = 0L;
            tVar.f41590u = 0;
            tVar.f41589t = 0;
            tVar.f41580k = 0L;
            if (tVar.f41591v == -9223372036854775807L) {
                tVar.f41575f.a();
                this.f41431k.pause();
            }
        }
    }

    public final void e() throws IllegalStateException {
        this.f41417T = true;
        if (c()) {
            this.f41428h.f41575f.a();
            this.f41431k.play();
        }
    }

    public final void f() throws IllegalStateException {
        if (!this.f41416S && c() && a()) {
            t tVar = this.f41428h;
            long jB = b();
            tVar.f41593x = tVar.a();
            tVar.f41591v = SystemClock.elapsedRealtime() * 1000;
            tVar.f41594y = jB;
            this.f41431k.stop();
            this.f41398A = 0;
            this.f41416S = true;
        }
    }

    public final void g() throws IllegalStateException {
        if (c()) {
            this.f41400C = 0L;
            this.f41401D = 0L;
            this.f41403F = 0L;
            this.f41404G = 0L;
            this.f41405H = 0;
            com.smartdigimkt.j0.a0 a0Var = this.f41442v;
            if (a0Var != null) {
                this.f41443w = a0Var;
                this.f41442v = null;
            } else if (!this.f41429i.isEmpty()) {
                this.f41443w = ((y) this.f41429i.getLast()).f41608a;
            }
            this.f41429i.clear();
            this.f41444x = 0L;
            this.f41445y = 0L;
            this.f41411N = null;
            this.f41412O = null;
            int i2 = 0;
            while (true) {
                e[] eVarArr = this.f41409L;
                if (i2 >= eVarArr.length) {
                    break;
                }
                e eVar = eVarArr[i2];
                eVar.flush();
                this.f41410M[i2] = eVar.a();
                i2++;
            }
            this.f41416S = false;
            this.f41415R = -1;
            this.f41446z = null;
            this.f41398A = 0;
            this.f41406I = 0;
            if (this.f41428h.f41572c.getPlayState() == 3) {
                this.f41431k.pause();
            }
            AudioTrack audioTrack = this.f41431k;
            this.f41431k = null;
            t tVar = this.f41428h;
            tVar.f41579j = 0L;
            tVar.f41590u = 0;
            tVar.f41589t = 0;
            tVar.f41580k = 0L;
            tVar.f41572c = null;
            tVar.f41575f = null;
            this.f41427g.close();
            new v(this, audioTrack).start();
        }
    }

    public final void h() {
        if (c()) {
            if (com.smartdigimkt.a1.t.f39303a >= 21) {
                this.f41431k.setVolume(this.f41408K);
                return;
            }
            AudioTrack audioTrack = this.f41431k;
            float f2 = this.f41408K;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    public final long a(boolean z2) {
        long j2;
        long jA;
        if (!c() || this.f41406I == 0) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.f41428h.a(z2), (b() * C.MICROS_PER_SECOND) / this.f41435o);
        long j3 = this.f41407J;
        y yVar = null;
        while (!this.f41429i.isEmpty() && jMin >= ((y) this.f41429i.getFirst()).f41610c) {
            yVar = (y) this.f41429i.remove();
        }
        if (yVar != null) {
            this.f41443w = yVar.f41608a;
            this.f41445y = yVar.f41610c;
            this.f41444x = yVar.f41609b - this.f41407J;
        }
        if (this.f41443w.f40851a == 1.0f) {
            j2 = (jMin + this.f41444x) - this.f41445y;
        } else if (this.f41429i.isEmpty()) {
            long j4 = this.f41444x;
            w wVar = this.f41422b;
            long j5 = jMin - this.f41445y;
            h0 h0Var = ((x) wVar).f41607c;
            long j6 = h0Var.f41536m;
            if (j6 >= 1024) {
                int i2 = h0Var.f41529f;
                int i3 = h0Var.f41526c;
                if (i2 == i3) {
                    jA = com.smartdigimkt.a1.t.a(j5, h0Var.f41535l, j6);
                } else {
                    jA = com.smartdigimkt.a1.t.a(j5, h0Var.f41535l * i2, j6 * i3);
                }
            } else {
                jA = (long) (h0Var.f41527d * j5);
            }
            j2 = jA + j4;
        } else {
            long j7 = this.f41444x;
            long jRound = jMin - this.f41445y;
            float f2 = this.f41443w.f40851a;
            int i4 = com.smartdigimkt.a1.t.f39303a;
            if (f2 != 1.0f) {
                jRound = Math.round(jRound * f2);
            }
            j2 = jRound + j7;
        }
        return ((((x) this.f41422b).f41606b.f41496o * C.MICROS_PER_SECOND) / this.f41435o) + j2 + j3;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1096)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1050)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:179)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:132)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r10, int r11, int r12, int[] r13, int r14, int r15) throws com.smartdigimkt.l0.n {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.a0.a(int, int, int, int[], int, int):void");
    }

    public final long b() {
        return this.f41432l ? this.f41403F / this.f41402E : this.f41404G;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x01fa, code lost:
    
        if (r4.a() == 0) goto L84;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.nio.ByteBuffer r28, long r29) throws java.lang.IllegalStateException, com.smartdigimkt.l0.o, com.smartdigimkt.l0.p {
        /*
            Method dump skipped, instructions count: 1233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.a0.a(java.nio.ByteBuffer, long):boolean");
    }

    public final void a(long j2) throws p {
        ByteBuffer byteBuffer;
        int length = this.f41409L.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.f41410M[i2 - 1];
            } else {
                byteBuffer = this.f41411N;
                if (byteBuffer == null) {
                    byteBuffer = e.f41474a;
                }
            }
            if (i2 == length) {
                b(byteBuffer, j2);
            } else {
                e eVar = this.f41409L[i2];
                eVar.a(byteBuffer);
                ByteBuffer byteBufferA = eVar.a();
                this.f41410M[i2] = byteBufferA;
                if (byteBufferA.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0032 -> B:9:0x0012). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() throws com.smartdigimkt.l0.p {
        /*
            r9 = this;
            int r0 = r9.f41415R
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto L14
            boolean r0 = r9.f41439s
            if (r0 == 0) goto Ld
            r0 = r2
            goto L10
        Ld:
            com.smartdigimkt.l0.e[] r0 = r9.f41409L
            int r0 = r0.length
        L10:
            r9.f41415R = r0
        L12:
            r0 = r1
            goto L15
        L14:
            r0 = r2
        L15:
            int r4 = r9.f41415R
            com.smartdigimkt.l0.e[] r5 = r9.f41409L
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L38
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.e()
        L28:
            r9.a(r7)
            boolean r0 = r4.g()
            if (r0 != 0) goto L32
            return r2
        L32:
            int r0 = r9.f41415R
            int r0 = r0 + r1
            r9.f41415R = r0
            goto L12
        L38:
            java.nio.ByteBuffer r0 = r9.f41412O
            if (r0 == 0) goto L44
            r9.b(r0, r7)
            java.nio.ByteBuffer r0 = r9.f41412O
            if (r0 == 0) goto L44
            return r2
        L44:
            r9.f41415R = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.a0.a():boolean");
    }

    public final com.smartdigimkt.j0.a0 a(com.smartdigimkt.j0.a0 a0Var) {
        if (c() && !this.f41440t) {
            com.smartdigimkt.j0.a0 a0Var2 = com.smartdigimkt.j0.a0.f40850e;
            this.f41443w = a0Var2;
            return a0Var2;
        }
        com.smartdigimkt.j0.a0 a0Var3 = this.f41442v;
        if (a0Var3 == null) {
            if (!this.f41429i.isEmpty()) {
                a0Var3 = ((y) this.f41429i.getLast()).f41608a;
            } else {
                a0Var3 = this.f41443w;
            }
        }
        if (!a0Var.equals(a0Var3)) {
            if (c()) {
                this.f41442v = a0Var;
            } else {
                this.f41443w = ((x) this.f41422b).a(a0Var);
            }
        }
        return this.f41443w;
    }
}
