package com.smartdigimkt.r0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.smartdigimkt.j0.i0;
import com.smartdigimkt.j0.s;
import com.smartdigimkt.j0.t;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class h extends com.smartdigimkt.j0.a implements Handler.Callback {

    /* renamed from: i, reason: collision with root package name */
    public final e f42929i;

    /* renamed from: j, reason: collision with root package name */
    public final g f42930j;

    /* renamed from: k, reason: collision with root package name */
    public final Handler f42931k;

    /* renamed from: l, reason: collision with root package name */
    public final t f42932l;

    /* renamed from: m, reason: collision with root package name */
    public final f f42933m;

    /* renamed from: n, reason: collision with root package name */
    public final c[] f42934n;

    /* renamed from: o, reason: collision with root package name */
    public final long[] f42935o;

    /* renamed from: p, reason: collision with root package name */
    public int f42936p;

    /* renamed from: q, reason: collision with root package name */
    public int f42937q;

    /* renamed from: r, reason: collision with root package name */
    public d f42938r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f42939s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i0 i0Var, Looper looper) {
        super(4);
        e eVar = e.f42927a;
        this.f42930j = i0Var;
        this.f42931k = looper == null ? null : new Handler(looper, this);
        this.f42929i = eVar;
        this.f42932l = new t();
        this.f42933m = new f();
        this.f42934n = new c[5];
        this.f42935o = new long[5];
    }

    @Override // com.smartdigimkt.j0.a
    public final int a(s sVar) {
        this.f42929i.getClass();
        String str = sVar.f40991f;
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return sVar.f40994i == null ? 4 : 2;
        }
        return 0;
    }

    @Override // com.smartdigimkt.j0.a
    public final boolean d() {
        return this.f42939s;
    }

    @Override // com.smartdigimkt.j0.a
    public final boolean e() {
        return true;
    }

    @Override // com.smartdigimkt.j0.a
    public final void f() {
        Arrays.fill(this.f42934n, (Object) null);
        this.f42936p = 0;
        this.f42937q = 0;
        this.f42938r = null;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        this.f42930j.a((c) message.obj);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0015  */
    @Override // com.smartdigimkt.j0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.smartdigimkt.j0.s[] r2, long r3) {
        /*
            r1 = this;
            com.smartdigimkt.r0.e r3 = r1.f42929i
            r4 = 0
            r2 = r2[r4]
            r3.getClass()
            java.lang.String r2 = r2.f40991f
            r2.getClass()
            int r3 = r2.hashCode()
            r0 = -1
            switch(r3) {
                case -1248341703: goto L2d;
                case 1154383568: goto L22;
                case 1652648887: goto L17;
                default: goto L15;
            }
        L15:
            r4 = r0
            goto L36
        L17:
            java.lang.String r3 = "application/x-scte35"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L20
            goto L15
        L20:
            r4 = 2
            goto L36
        L22:
            java.lang.String r3 = "application/x-emsg"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L2b
            goto L15
        L2b:
            r4 = 1
            goto L36
        L2d:
            java.lang.String r3 = "application/id3"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L36
            goto L15
        L36:
            switch(r4) {
                case 0: goto L4d;
                case 1: goto L47;
                case 2: goto L41;
                default: goto L39;
            }
        L39:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Attempted to create decoder for unsupported format"
            r2.<init>(r3)
            throw r2
        L41:
            com.smartdigimkt.u0.d r2 = new com.smartdigimkt.u0.d
            r2.<init>()
            goto L52
        L47:
            com.smartdigimkt.s0.c r2 = new com.smartdigimkt.s0.c
            r2.<init>()
            goto L52
        L4d:
            com.smartdigimkt.t0.n r2 = new com.smartdigimkt.t0.n
            r2.<init>()
        L52:
            r1.f42938r = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.r0.h.a(com.smartdigimkt.j0.s[], long):void");
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(long j2, long j3) {
        if (!this.f42939s && this.f42937q < 5) {
            this.f42933m.a();
            if (a(this.f42932l, this.f42933m, false) == -4) {
                if (this.f42933m.b(4)) {
                    this.f42939s = true;
                } else if (!this.f42933m.b(Integer.MIN_VALUE)) {
                    f fVar = this.f42933m;
                    fVar.f42928f = this.f42932l.f41012a.f40995j;
                    fVar.f41702c.flip();
                    int i2 = (this.f42936p + this.f42937q) % 5;
                    this.f42934n[i2] = this.f42938r.a(this.f42933m);
                    this.f42935o[i2] = this.f42933m.f41703d;
                    this.f42937q++;
                }
            }
        }
        if (this.f42937q > 0) {
            long[] jArr = this.f42935o;
            int i3 = this.f42936p;
            if (jArr[i3] <= j2) {
                c cVar = this.f42934n[i3];
                Handler handler = this.f42931k;
                if (handler != null) {
                    handler.obtainMessage(0, cVar).sendToTarget();
                } else {
                    this.f42930j.a(cVar);
                }
                c[] cVarArr = this.f42934n;
                int i4 = this.f42936p;
                cVarArr[i4] = null;
                this.f42936p = (i4 + 1) % 5;
                this.f42937q--;
            }
        }
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(long j2, boolean z2) {
        Arrays.fill(this.f42934n, (Object) null);
        this.f42936p = 0;
        this.f42937q = 0;
        this.f42939s = false;
    }
}
