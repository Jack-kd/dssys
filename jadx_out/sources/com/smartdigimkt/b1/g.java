package com.smartdigimkt.b1;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.smartdigimkt.j0.i0;
import io.flutter.plugin.platform.PlatformPlugin;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
public final class g extends com.smartdigimkt.q0.c {

    /* renamed from: C0, reason: collision with root package name */
    public static final int[] f39489C0 = {1920, 1600, 1440, PlatformPlugin.DEFAULT_SYSTEM_UI, 960, 854, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HW_ERR_REASON, 480};

    /* renamed from: D0, reason: collision with root package name */
    public static boolean f39490D0;

    /* renamed from: E0, reason: collision with root package name */
    public static boolean f39491E0;

    /* renamed from: A0, reason: collision with root package name */
    public long f39492A0;

    /* renamed from: B0, reason: collision with root package name */
    public int f39493B0;

    /* renamed from: R, reason: collision with root package name */
    public final Context f39494R;

    /* renamed from: S, reason: collision with root package name */
    public final j f39495S;

    /* renamed from: T, reason: collision with root package name */
    public final s f39496T;

    /* renamed from: U, reason: collision with root package name */
    public final long f39497U;

    /* renamed from: V, reason: collision with root package name */
    public final int f39498V;

    /* renamed from: W, reason: collision with root package name */
    public final boolean f39499W;

    /* renamed from: X, reason: collision with root package name */
    public final long[] f39500X;

    /* renamed from: Y, reason: collision with root package name */
    public final long[] f39501Y;

    /* renamed from: Z, reason: collision with root package name */
    public e f39502Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f39503a0;

    /* renamed from: b0, reason: collision with root package name */
    public Surface f39504b0;

    /* renamed from: c0, reason: collision with root package name */
    public d f39505c0;

    /* renamed from: d0, reason: collision with root package name */
    public int f39506d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f39507e0;

    /* renamed from: f0, reason: collision with root package name */
    public long f39508f0;

    /* renamed from: g0, reason: collision with root package name */
    public long f39509g0;

    /* renamed from: h0, reason: collision with root package name */
    public long f39510h0;

    /* renamed from: i0, reason: collision with root package name */
    public int f39511i0;

    /* renamed from: j0, reason: collision with root package name */
    public int f39512j0;

    /* renamed from: k0, reason: collision with root package name */
    public int f39513k0;

    /* renamed from: l0, reason: collision with root package name */
    public long f39514l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f39515m0;

    /* renamed from: n0, reason: collision with root package name */
    public float f39516n0;

    /* renamed from: o0, reason: collision with root package name */
    public int f39517o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f39518p0;

    /* renamed from: q0, reason: collision with root package name */
    public int f39519q0;

    /* renamed from: r0, reason: collision with root package name */
    public float f39520r0;

    /* renamed from: s0, reason: collision with root package name */
    public int f39521s0;

    /* renamed from: t0, reason: collision with root package name */
    public int f39522t0;

    /* renamed from: u0, reason: collision with root package name */
    public int f39523u0;

    /* renamed from: v0, reason: collision with root package name */
    public float f39524v0;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f39525w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f39526x0;

    /* renamed from: y0, reason: collision with root package name */
    public f f39527y0;

    /* renamed from: z0, reason: collision with root package name */
    public long f39528z0;

    public g(Context context, long j2, Handler handler, i0 i0Var) {
        super(2);
        this.f39497U = j2;
        this.f39498V = 50;
        Context applicationContext = context.getApplicationContext();
        this.f39494R = applicationContext;
        this.f39495S = new j(applicationContext);
        this.f39496T = new s(handler, i0Var);
        this.f39499W = com.smartdigimkt.a1.t.f39303a <= 22 && "foster".equals(com.smartdigimkt.a1.t.f39304b) && "NVIDIA".equals(com.smartdigimkt.a1.t.f39305c);
        this.f39500X = new long[10];
        this.f39501Y = new long[10];
        this.f39492A0 = -9223372036854775807L;
        this.f39528z0 = -9223372036854775807L;
        this.f39509g0 = -9223372036854775807L;
        this.f39517o0 = -1;
        this.f39518p0 = -1;
        this.f39520r0 = -1.0f;
        this.f39516n0 = -1.0f;
        this.f39506d0 = 1;
        this.f39521s0 = -1;
        this.f39522t0 = -1;
        this.f39524v0 = -1.0f;
        this.f39523u0 = -1;
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(com.smartdigimkt.q0.a aVar, MediaCodec mediaCodec, com.smartdigimkt.j0.s sVar) {
        e eVar;
        Point point;
        float f2;
        int i2;
        com.smartdigimkt.j0.s[] sVarArr = this.f40846e;
        int iMax = sVar.f40996k;
        int iMax2 = sVar.f40997l;
        int iA = a(aVar, sVar);
        if (sVarArr.length == 1) {
            eVar = new e(iMax, iMax2, iA);
        } else {
            boolean z2 = false;
            for (com.smartdigimkt.j0.s sVar2 : sVarArr) {
                if (a(aVar.f42623d, sVar, sVar2)) {
                    int i3 = sVar2.f40996k;
                    z2 |= i3 == -1 || sVar2.f40997l == -1;
                    iMax = Math.max(iMax, i3);
                    iMax2 = Math.max(iMax2, sVar2.f40997l);
                    iA = Math.max(iA, a(aVar, sVar2));
                }
            }
            if (z2) {
                int i4 = sVar.f40997l;
                int i5 = sVar.f40996k;
                boolean z3 = i4 > i5;
                int i6 = z3 ? i4 : i5;
                if (z3) {
                    i4 = i5;
                }
                float f3 = i4 / i6;
                int[] iArr = f39489C0;
                int i7 = 0;
                while (i7 < 9) {
                    int i8 = iArr[i7];
                    int i9 = (int) (i8 * f3);
                    if (i8 <= i6 || i9 <= i4) {
                        break;
                    }
                    int i10 = i4;
                    if (com.smartdigimkt.a1.t.f39303a >= 21) {
                        int i11 = z3 ? i9 : i8;
                        if (!z3) {
                            i8 = i9;
                        }
                        point = aVar.a(i11, i8);
                        f2 = f3;
                        if (aVar.a(point.x, point.y, sVar.f40998m)) {
                            break;
                        }
                        i7++;
                        i4 = i10;
                        f3 = f2;
                    } else {
                        f2 = f3;
                        int i12 = ((i8 + 15) / 16) * 16;
                        int i13 = ((i9 + 15) / 16) * 16;
                        if (i12 * i13 <= com.smartdigimkt.q0.j.a()) {
                            int i14 = z3 ? i13 : i12;
                            if (!z3) {
                                i12 = i13;
                            }
                            point = new Point(i14, i12);
                        } else {
                            i7++;
                            i4 = i10;
                            f3 = f2;
                        }
                    }
                }
                point = null;
                if (point != null) {
                    iMax = Math.max(iMax, point.x);
                    iMax2 = Math.max(iMax2, point.y);
                    iA = Math.max(iA, a(aVar, sVar.f40991f, iMax, iMax2));
                }
            }
            eVar = new e(iMax, iMax2, iA);
        }
        this.f39502Z = eVar;
        boolean z4 = this.f39499W;
        int i15 = this.f39526x0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", sVar.f40991f);
        mediaFormat.setInteger("width", sVar.f40996k);
        mediaFormat.setInteger("height", sVar.f40997l);
        List list = sVar.f40993h;
        for (int i16 = 0; i16 < list.size(); i16++) {
            mediaFormat.setByteBuffer("csd-" + i16, ByteBuffer.wrap((byte[]) list.get(i16)));
        }
        float f4 = sVar.f40998m;
        if (f4 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f4);
        }
        com.smartdigimkt.q0.k.a(mediaFormat, "rotation-degrees", sVar.f40999n);
        b bVar = sVar.f41003r;
        if (bVar != null) {
            com.smartdigimkt.q0.k.a(mediaFormat, "color-transfer", bVar.f39473c);
            com.smartdigimkt.q0.k.a(mediaFormat, "color-standard", bVar.f39471a);
            com.smartdigimkt.q0.k.a(mediaFormat, "color-range", bVar.f39472b);
            byte[] bArr = bVar.f39474d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        mediaFormat.setInteger("max-width", eVar.f39485a);
        mediaFormat.setInteger("max-height", eVar.f39486b);
        com.smartdigimkt.q0.k.a(mediaFormat, "max-input-size", eVar.f39487c);
        int i17 = com.smartdigimkt.a1.t.f39303a;
        if (i17 >= 23) {
            i2 = 0;
            mediaFormat.setInteger("priority", 0);
        } else {
            i2 = 0;
        }
        if (z4) {
            mediaFormat.setInteger("auto-frc", i2);
        }
        if (i15 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i15);
        }
        if (this.f39504b0 == null) {
            if (!b(aVar)) {
                throw new IllegalStateException();
            }
            if (this.f39505c0 == null) {
                Context context = this.f39494R;
                boolean z5 = aVar.f42625f;
                int i18 = d.f39481c;
                if (i17 < 17) {
                    throw new UnsupportedOperationException("Unsupported prior to API level 17");
                }
                if (z5 && !d.a(context)) {
                    throw new IllegalStateException();
                }
                this.f39505c0 = new c().a(z5 ? d.f39481c : 0);
            }
            this.f39504b0 = this.f39505c0;
        }
        mediaCodec.configure(mediaFormat, this.f39504b0, (MediaCrypto) null, 0);
        if (i17 < 23 || !this.f39525w0) {
            return;
        }
        this.f39527y0 = new f(this, mediaCodec);
    }

    @Override // com.smartdigimkt.q0.c
    public final int b(com.smartdigimkt.q0.d dVar, com.smartdigimkt.j0.s sVar) {
        boolean z2;
        int i2;
        int i3;
        String str = sVar.f40991f;
        if (!"video".equals(com.smartdigimkt.a1.h.b(str))) {
            return 0;
        }
        com.smartdigimkt.n0.d dVar2 = sVar.f40994i;
        if (dVar2 != null) {
            z2 = false;
            for (int i4 = 0; i4 < dVar2.f42159d; i4++) {
                z2 |= dVar2.f42156a[i4].f42155f;
            }
        } else {
            z2 = false;
        }
        dVar.getClass();
        com.smartdigimkt.q0.a aVarA = com.smartdigimkt.q0.j.a(str, z2);
        if (aVarA == null) {
            return (!z2 || com.smartdigimkt.q0.j.a(str, false) == null) ? 1 : 2;
        }
        if (dVar2 != null) {
            return 2;
        }
        boolean zA = aVarA.a(sVar.f40988c);
        if (zA && (i2 = sVar.f40996k) > 0 && (i3 = sVar.f40997l) > 0) {
            if (com.smartdigimkt.a1.t.f39303a >= 21) {
                zA = aVarA.a(i2, i3, sVar.f40998m);
            } else {
                boolean z3 = i2 * i3 <= com.smartdigimkt.q0.j.a();
                if (!z3) {
                    int i5 = com.smartdigimkt.a1.t.f39303a;
                }
                zA = z3;
            }
        }
        return (zA ? 4 : 3) | (aVarA.f42623d ? 16 : 8) | (aVarA.f42624e ? 32 : 0);
    }

    @Override // com.smartdigimkt.q0.c, com.smartdigimkt.j0.a
    public final boolean e() {
        d dVar;
        if (super.e() && (this.f39507e0 || (((dVar = this.f39505c0) != null && this.f39504b0 == dVar) || this.f42651p == null || this.f39525w0))) {
            this.f39509g0 = -9223372036854775807L;
            return true;
        }
        if (this.f39509g0 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f39509g0) {
            return true;
        }
        this.f39509g0 = -9223372036854775807L;
        return false;
    }

    @Override // com.smartdigimkt.j0.a
    public final void f() {
        this.f39517o0 = -1;
        this.f39518p0 = -1;
        this.f39520r0 = -1.0f;
        this.f39516n0 = -1.0f;
        this.f39492A0 = -9223372036854775807L;
        this.f39528z0 = -9223372036854775807L;
        this.f39493B0 = 0;
        this.f39521s0 = -1;
        this.f39522t0 = -1;
        this.f39524v0 = -1.0f;
        this.f39523u0 = -1;
        q();
        j jVar = this.f39495S;
        if (jVar.f39536a != null) {
            h hVar = jVar.f39538c;
            if (hVar != null) {
                hVar.b();
            }
            jVar.f39537b.f39533b.sendEmptyMessage(2);
        }
        this.f39527y0 = null;
        this.f39525w0 = false;
        try {
            this.f42650o = null;
            n();
            synchronized (this.f42643P) {
            }
            s sVar = this.f39496T;
            com.smartdigimkt.m0.c cVar = this.f42643P;
            if (sVar.f39569b != null) {
                sVar.f39568a.post(new r(sVar, cVar));
            }
        } catch (Throwable th) {
            this.f42643P.a();
            s sVar2 = this.f39496T;
            com.smartdigimkt.m0.c cVar2 = this.f42643P;
            if (sVar2.f39569b != null) {
                sVar2.f39568a.post(new r(sVar2, cVar2));
            }
            throw th;
        }
    }

    @Override // com.smartdigimkt.j0.a
    public final void g() {
        com.smartdigimkt.m0.c cVar = new com.smartdigimkt.m0.c();
        this.f42643P = cVar;
        int i2 = this.f40843b.f40880a;
        this.f39526x0 = i2;
        this.f39525w0 = i2 != 0;
        s sVar = this.f39496T;
        if (sVar.f39569b != null) {
            sVar.f39568a.post(new l(sVar, cVar));
        }
        j jVar = this.f39495S;
        jVar.f39544i = false;
        if (jVar.f39536a != null) {
            jVar.f39537b.f39533b.sendEmptyMessage(1);
            h hVar = jVar.f39538c;
            if (hVar != null) {
                hVar.a();
            }
            jVar.a();
        }
    }

    @Override // com.smartdigimkt.j0.a
    public final void h() {
        this.f39511i0 = 0;
        this.f39510h0 = SystemClock.elapsedRealtime();
        this.f39514l0 = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.smartdigimkt.j0.a
    public final void i() {
        this.f39509g0 = -9223372036854775807L;
        if (this.f39511i0 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = jElapsedRealtime - this.f39510h0;
            s sVar = this.f39496T;
            int i2 = this.f39511i0;
            if (sVar.f39569b != null) {
                sVar.f39568a.post(new o(sVar, i2, j2));
            }
            this.f39511i0 = 0;
            this.f39510h0 = jElapsedRealtime;
        }
    }

    @Override // com.smartdigimkt.q0.c
    public final void k() {
        super.k();
        this.f39513k0 = 0;
    }

    @Override // com.smartdigimkt.q0.c
    public final void n() {
        try {
            super.n();
            this.f39513k0 = 0;
            d dVar = this.f39505c0;
            if (dVar != null) {
                if (this.f39504b0 == dVar) {
                    this.f39504b0 = null;
                }
                dVar.release();
                this.f39505c0 = null;
            }
        } catch (Throwable th) {
            this.f39513k0 = 0;
            if (this.f39505c0 != null) {
                Surface surface = this.f39504b0;
                d dVar2 = this.f39505c0;
                if (surface == dVar2) {
                    this.f39504b0 = null;
                }
                dVar2.release();
                this.f39505c0 = null;
            }
            throw th;
        }
    }

    public final void q() {
        MediaCodec mediaCodec;
        this.f39507e0 = false;
        if (com.smartdigimkt.a1.t.f39303a < 23 || !this.f39525w0 || (mediaCodec = this.f42651p) == null) {
            return;
        }
        this.f39527y0 = new f(this, mediaCodec);
    }

    public final void r() {
        int i2 = this.f39517o0;
        if (i2 == -1 && this.f39518p0 == -1) {
            return;
        }
        if (this.f39521s0 == i2 && this.f39522t0 == this.f39518p0 && this.f39523u0 == this.f39519q0 && this.f39524v0 == this.f39520r0) {
            return;
        }
        s sVar = this.f39496T;
        int i3 = this.f39518p0;
        int i4 = this.f39519q0;
        float f2 = this.f39520r0;
        if (sVar.f39569b != null) {
            sVar.f39568a.post(new p(sVar, i2, i3, i4, f2));
        }
        this.f39521s0 = this.f39517o0;
        this.f39522t0 = this.f39518p0;
        this.f39523u0 = this.f39519q0;
        this.f39524v0 = this.f39520r0;
    }

    @Override // com.smartdigimkt.q0.c
    public final void b(com.smartdigimkt.j0.s sVar) {
        super.b(sVar);
        s sVar2 = this.f39496T;
        if (sVar2.f39569b != null) {
            sVar2.f39568a.post(new n(sVar2, sVar));
        }
        this.f39516n0 = sVar.f41000o;
        this.f39515m0 = sVar.f40999n;
    }

    public final boolean b(com.smartdigimkt.q0.a aVar) {
        if (com.smartdigimkt.a1.t.f39303a < 23 || this.f39525w0 || a(aVar.f42620a)) {
            return false;
        }
        return !aVar.f42625f || d.a(this.f39494R);
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(com.smartdigimkt.j0.s[] sVarArr, long j2) {
        if (this.f39492A0 == -9223372036854775807L) {
            this.f39492A0 = j2;
            return;
        }
        int i2 = this.f39493B0;
        if (i2 == this.f39500X.length) {
            long j3 = this.f39500X[this.f39493B0 - 1];
        } else {
            this.f39493B0 = i2 + 1;
        }
        long[] jArr = this.f39500X;
        int i3 = this.f39493B0 - 1;
        jArr[i3] = j2;
        this.f39501Y[i3] = this.f39528z0;
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(int i2, Object obj) throws com.smartdigimkt.j0.g {
        if (i2 != 1) {
            if (i2 == 4) {
                int iIntValue = ((Integer) obj).intValue();
                this.f39506d0 = iIntValue;
                MediaCodec mediaCodec = this.f42651p;
                if (mediaCodec != null) {
                    mediaCodec.setVideoScalingMode(iIntValue);
                    return;
                }
                return;
            }
            return;
        }
        Surface surface = (Surface) obj;
        Surface surface2 = surface;
        if (surface == null) {
            d dVar = this.f39505c0;
            if (dVar != null) {
                surface2 = dVar;
            } else {
                com.smartdigimkt.q0.a aVar = this.f42652q;
                surface2 = surface;
                if (aVar != null) {
                    surface2 = surface;
                    if (b(aVar)) {
                        Context context = this.f39494R;
                        boolean z2 = aVar.f42625f;
                        int i3 = d.f39481c;
                        if (com.smartdigimkt.a1.t.f39303a >= 17) {
                            if (z2 && !d.a(context)) {
                                throw new IllegalStateException();
                            }
                            d dVarA = new c().a(z2 ? d.f39481c : 0);
                            this.f39505c0 = dVarA;
                            surface2 = dVarA;
                        } else {
                            throw new UnsupportedOperationException("Unsupported prior to API level 17");
                        }
                    }
                }
            }
        }
        if (this.f39504b0 != surface2) {
            this.f39504b0 = surface2;
            int i4 = this.f40844c;
            if (i4 == 1 || i4 == 2) {
                MediaCodec mediaCodec2 = this.f42651p;
                if (com.smartdigimkt.a1.t.f39303a >= 23 && mediaCodec2 != null && surface2 != null && !this.f39503a0) {
                    mediaCodec2.setOutputSurface(surface2);
                } else {
                    n();
                    l();
                }
            }
            if (surface2 != null && surface2 != this.f39505c0) {
                int i5 = this.f39521s0;
                if (i5 != -1 || this.f39522t0 != -1) {
                    s sVar = this.f39496T;
                    int i6 = this.f39522t0;
                    int i7 = this.f39523u0;
                    float f2 = this.f39524v0;
                    if (sVar.f39569b != null) {
                        sVar.f39568a.post(new p(sVar, i5, i6, i7, f2));
                    }
                }
                q();
                if (i4 == 2) {
                    this.f39509g0 = this.f39497U > 0 ? SystemClock.elapsedRealtime() + this.f39497U : -9223372036854775807L;
                    return;
                }
                return;
            }
            this.f39521s0 = -1;
            this.f39522t0 = -1;
            this.f39524v0 = -1.0f;
            this.f39523u0 = -1;
            q();
            return;
        }
        if (surface2 == null || surface2 == this.f39505c0) {
            return;
        }
        int i8 = this.f39521s0;
        if (i8 != -1 || this.f39522t0 != -1) {
            s sVar2 = this.f39496T;
            int i9 = this.f39522t0;
            int i10 = this.f39523u0;
            float f3 = this.f39524v0;
            if (sVar2.f39569b != null) {
                sVar2.f39568a.post(new p(sVar2, i8, i9, i10, f3));
            }
        }
        if (this.f39507e0) {
            s sVar3 = this.f39496T;
            Surface surface3 = this.f39504b0;
            if (sVar3.f39569b != null) {
                sVar3.f39568a.post(new q(sVar3, surface3));
            }
        }
    }

    @Override // com.smartdigimkt.q0.c
    public final boolean a(com.smartdigimkt.q0.a aVar) {
        return this.f39504b0 != null || b(aVar);
    }

    @Override // com.smartdigimkt.q0.c
    public final int a(com.smartdigimkt.q0.a aVar, com.smartdigimkt.j0.s sVar, com.smartdigimkt.j0.s sVar2) {
        if (a(aVar.f42623d, sVar, sVar2)) {
            int i2 = sVar2.f40996k;
            e eVar = this.f39502Z;
            if (i2 <= eVar.f39485a && sVar2.f40997l <= eVar.f39486b && a(aVar, sVar2) <= this.f39502Z.f39487c) {
                if (sVar.f40993h.size() != sVar2.f40993h.size()) {
                    return 3;
                }
                for (int i3 = 0; i3 < sVar.f40993h.size(); i3++) {
                    if (!Arrays.equals((byte[]) sVar.f40993h.get(i3), (byte[]) sVar2.f40993h.get(i3))) {
                        return 3;
                    }
                }
                return 1;
            }
        }
        return 0;
    }

    @Override // com.smartdigimkt.j0.a
    public final void a(long j2, boolean z2) {
        this.f42640M = false;
        this.f42641N = false;
        if (this.f42651p != null) {
            k();
        }
        q();
        long jElapsedRealtime = -9223372036854775807L;
        this.f39508f0 = -9223372036854775807L;
        this.f39512j0 = 0;
        this.f39528z0 = -9223372036854775807L;
        int i2 = this.f39493B0;
        if (i2 != 0) {
            this.f39492A0 = this.f39500X[i2 - 1];
            this.f39493B0 = 0;
        }
        if (!z2) {
            this.f39509g0 = -9223372036854775807L;
            return;
        }
        if (this.f39497U > 0) {
            jElapsedRealtime = this.f39497U + SystemClock.elapsedRealtime();
        }
        this.f39509g0 = jElapsedRealtime;
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(String str, long j2, long j3) {
        String str2;
        s sVar = this.f39496T;
        if (sVar.f39569b != null) {
            str2 = str;
            sVar.f39568a.post(new m(sVar, str2, j2, j3));
        } else {
            str2 = str;
        }
        this.f39503a0 = a(str2);
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(com.smartdigimkt.m0.d dVar) {
        this.f39513k0++;
        this.f39528z0 = Math.max(dVar.f41703d, this.f39528z0);
        if (com.smartdigimkt.a1.t.f39303a >= 23 || !this.f39525w0 || this.f39507e0) {
            return;
        }
        this.f39507e0 = true;
        s sVar = this.f39496T;
        Surface surface = this.f39504b0;
        if (sVar.f39569b != null) {
            sVar.f39568a.post(new q(sVar, surface));
        }
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z2 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z2) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.f39517o0 = integer;
        if (z2) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.f39518p0 = integer2;
        float f2 = this.f39516n0;
        this.f39520r0 = f2;
        if (com.smartdigimkt.a1.t.f39303a >= 21) {
            int i2 = this.f39515m0;
            if (i2 == 90 || i2 == 270) {
                int i3 = this.f39517o0;
                this.f39517o0 = integer2;
                this.f39518p0 = i3;
                this.f39520r0 = 1.0f / f2;
            }
        } else {
            this.f39519q0 = this.f39515m0;
        }
        mediaCodec.setVideoScalingMode(this.f39506d0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
    
        if (r8 > 100000) goto L122;
     */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v12 */
    @Override // com.smartdigimkt.q0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r28, long r30, android.media.MediaCodec r32, java.nio.ByteBuffer r33, int r34, int r35, long r36, boolean r38) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.b1.g.a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean):boolean");
    }

    @Override // com.smartdigimkt.q0.c
    public final void a(long j2) {
        this.f39513k0--;
        while (true) {
            int i2 = this.f39493B0;
            if (i2 == 0 || j2 < this.f39501Y[0]) {
                return;
            }
            long[] jArr = this.f39500X;
            this.f39492A0 = jArr[0];
            int i3 = i2 - 1;
            this.f39493B0 = i3;
            System.arraycopy(jArr, 1, jArr, 0, i3);
            long[] jArr2 = this.f39501Y;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f39493B0);
        }
    }

    public static int a(com.smartdigimkt.q0.a aVar, com.smartdigimkt.j0.s sVar) {
        if (sVar.f40992g != -1) {
            int size = sVar.f40993h.size();
            int length = 0;
            for (int i2 = 0; i2 < size; i2++) {
                length += ((byte[]) sVar.f40993h.get(i2)).length;
            }
            return sVar.f40992g + length;
        }
        return a(aVar, sVar.f40991f, sVar.f40996k, sVar.f40997l);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(com.smartdigimkt.q0.a r5, java.lang.String r6, int r7, int r8) {
        /*
            r0 = -1
            if (r7 == r0) goto L9a
            if (r8 != r0) goto L7
            goto L9a
        L7:
            r6.getClass()
            int r1 = r6.hashCode()
            r2 = 4
            r3 = 3
            r4 = 2
            switch(r1) {
                case -1664118616: goto L4d;
                case -1662541442: goto L42;
                case 1187890754: goto L37;
                case 1331836730: goto L2c;
                case 1599127256: goto L21;
                case 1599127257: goto L16;
                default: goto L14;
            }
        L14:
            r6 = r0
            goto L57
        L16:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L1f
            goto L14
        L1f:
            r6 = 5
            goto L57
        L21:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L2a
            goto L14
        L2a:
            r6 = r2
            goto L57
        L2c:
            java.lang.String r1 = "video/avc"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L35
            goto L14
        L35:
            r6 = r3
            goto L57
        L37:
            java.lang.String r1 = "video/mp4v-es"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L40
            goto L14
        L40:
            r6 = r4
            goto L57
        L42:
            java.lang.String r1 = "video/hevc"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L4b
            goto L14
        L4b:
            r6 = 1
            goto L57
        L4d:
            java.lang.String r1 = "video/3gpp"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L56
            goto L14
        L56:
            r6 = 0
        L57:
            switch(r6) {
                case 0: goto L94;
                case 1: goto L92;
                case 2: goto L94;
                case 3: goto L5b;
                case 4: goto L94;
                case 5: goto L92;
                default: goto L5a;
            }
        L5a:
            return r0
        L5b:
            java.lang.String r6 = com.smartdigimkt.a1.t.f39306d
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L91
            java.lang.String r1 = com.smartdigimkt.a1.t.f39305c
            java.lang.String r2 = "Amazon"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L84
            java.lang.String r1 = "KFSOWI"
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L91
            java.lang.String r1 = "AFTS"
            boolean r6 = r1.equals(r6)
            if (r6 == 0) goto L84
            boolean r5 = r5.f42625f
            if (r5 == 0) goto L84
            goto L91
        L84:
            int r7 = r7 + 15
            int r7 = r7 / 16
            int r8 = r8 + 15
            int r8 = r8 / 16
            int r8 = r8 * r7
            int r8 = r8 * 256
        L8f:
            r2 = r4
            goto L96
        L91:
            return r0
        L92:
            int r8 = r8 * r7
            goto L96
        L94:
            int r8 = r8 * r7
            goto L8f
        L96:
            int r8 = r8 * r3
            int r2 = r2 * r4
            int r8 = r8 / r2
            return r8
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.b1.g.a(com.smartdigimkt.q0.a, java.lang.String, int, int):int");
    }

    public static boolean a(boolean z2, com.smartdigimkt.j0.s sVar, com.smartdigimkt.j0.s sVar2) {
        if (sVar.f40991f.equals(sVar2.f40991f) && sVar.f40999n == sVar2.f40999n) {
            return (z2 || (sVar.f40996k == sVar2.f40996k && sVar.f40997l == sVar2.f40997l)) && com.smartdigimkt.a1.t.a(sVar.f41003r, sVar2.f41003r);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:370:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x05ce A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:9:0x0014, B:11:0x0018, B:12:0x0020, B:371:0x059e, B:374:0x05a4, B:390:0x05d0, B:389:0x05ce, B:379:0x05b5, B:382:0x05bf, B:373:0x05a2, B:14:0x0025, B:19:0x0034, B:22:0x0040, B:25:0x004c, B:28:0x0058, B:31:0x0064, B:34:0x0070, B:37:0x007c, B:40:0x0088, B:43:0x0094, B:46:0x00a0, B:49:0x00ac, B:52:0x00b8, B:55:0x00c2, B:58:0x00ce, B:61:0x00da, B:64:0x00e6, B:67:0x00f2, B:70:0x00fe, B:73:0x0109, B:76:0x0115, B:79:0x0121, B:82:0x012d, B:85:0x0139, B:88:0x0145, B:91:0x0151, B:94:0x015d, B:97:0x0169, B:100:0x0175, B:103:0x0181, B:106:0x018d, B:109:0x0199, B:112:0x01a5, B:115:0x01b1, B:118:0x01bd, B:121:0x01c8, B:124:0x01d4, B:127:0x01e0, B:130:0x01ec, B:133:0x01f8, B:136:0x0204, B:139:0x0210, B:142:0x021c, B:145:0x0228, B:148:0x0234, B:151:0x0240, B:154:0x024c, B:157:0x0258, B:160:0x0264, B:163:0x0270, B:166:0x027b, B:169:0x0287, B:172:0x0293, B:175:0x029f, B:178:0x02ab, B:181:0x02b7, B:184:0x02c3, B:187:0x02cf, B:190:0x02db, B:193:0x02e6, B:196:0x02f1, B:199:0x02fc, B:202:0x0308, B:205:0x0314, B:208:0x0320, B:211:0x032c, B:214:0x0338, B:217:0x0344, B:220:0x0350, B:223:0x035c, B:226:0x0368, B:229:0x0374, B:232:0x0380, B:235:0x038c, B:238:0x0398, B:241:0x03a4, B:244:0x03b0, B:247:0x03bc, B:250:0x03c8, B:253:0x03d4, B:256:0x03e0, B:259:0x03ec, B:262:0x03f8, B:265:0x0404, B:268:0x0410, B:271:0x041c, B:274:0x0428, B:277:0x0434, B:280:0x0440, B:283:0x044c, B:286:0x0457, B:289:0x0463, B:292:0x046f, B:295:0x047b, B:298:0x0487, B:301:0x0492, B:304:0x049e, B:307:0x04aa, B:310:0x04b6, B:313:0x04c2, B:316:0x04ce, B:319:0x04da, B:322:0x04e6, B:325:0x04f2, B:328:0x04fe, B:331:0x050a, B:334:0x0516, B:337:0x0522, B:340:0x052e, B:343:0x053a, B:346:0x0545, B:349:0x0550, B:352:0x055b, B:355:0x0566, B:358:0x0571, B:361:0x057c, B:364:0x0587, B:367:0x0592, B:391:0x05d2), top: B:397:0x0014 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 2212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.b1.g.a(java.lang.String):boolean");
    }
}
