package com.smartdigimkt.l0;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.C;
import io.flutter.embedding.android.KeyboardMap;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final z f41570a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f41571b;

    /* renamed from: c, reason: collision with root package name */
    public AudioTrack f41572c;

    /* renamed from: d, reason: collision with root package name */
    public int f41573d;

    /* renamed from: e, reason: collision with root package name */
    public int f41574e;

    /* renamed from: f, reason: collision with root package name */
    public s f41575f;

    /* renamed from: g, reason: collision with root package name */
    public int f41576g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f41577h;

    /* renamed from: i, reason: collision with root package name */
    public long f41578i;

    /* renamed from: j, reason: collision with root package name */
    public long f41579j;

    /* renamed from: k, reason: collision with root package name */
    public long f41580k;

    /* renamed from: l, reason: collision with root package name */
    public Method f41581l;

    /* renamed from: m, reason: collision with root package name */
    public long f41582m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f41583n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f41584o;

    /* renamed from: p, reason: collision with root package name */
    public long f41585p;

    /* renamed from: q, reason: collision with root package name */
    public long f41586q;

    /* renamed from: r, reason: collision with root package name */
    public long f41587r;

    /* renamed from: s, reason: collision with root package name */
    public long f41588s;

    /* renamed from: t, reason: collision with root package name */
    public int f41589t;

    /* renamed from: u, reason: collision with root package name */
    public int f41590u;

    /* renamed from: v, reason: collision with root package name */
    public long f41591v;

    /* renamed from: w, reason: collision with root package name */
    public long f41592w;

    /* renamed from: x, reason: collision with root package name */
    public long f41593x;

    /* renamed from: y, reason: collision with root package name */
    public long f41594y;

    public t(z zVar) {
        this.f41570a = zVar;
        if (com.smartdigimkt.a1.t.f39303a >= 18) {
            try {
                this.f41581l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f41571b = new long[10];
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(boolean r24) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.t.a(boolean):long");
    }

    public final boolean b(long j2) {
        if (j2 <= a()) {
            return this.f41577h && this.f41572c.getPlayState() == 2 && a() == 0;
        }
        return true;
    }

    public final long a(long j2) {
        return (j2 * C.MICROS_PER_SECOND) / this.f41576g;
    }

    public final long a() {
        if (this.f41591v != -9223372036854775807L) {
            return Math.min(this.f41594y, this.f41593x + ((((SystemClock.elapsedRealtime() * 1000) - this.f41591v) * this.f41576g) / C.MICROS_PER_SECOND));
        }
        int playState = this.f41572c.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = this.f41572c.getPlaybackHeadPosition() & KeyboardMap.kValueMask;
        if (this.f41577h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f41588s = this.f41586q;
            }
            playbackHeadPosition += this.f41588s;
        }
        if (com.smartdigimkt.a1.t.f39303a <= 28) {
            if (playbackHeadPosition == 0 && this.f41586q > 0 && playState == 3) {
                if (this.f41592w == -9223372036854775807L) {
                    this.f41592w = SystemClock.elapsedRealtime();
                }
                return this.f41586q;
            }
            this.f41592w = -9223372036854775807L;
        }
        if (this.f41586q > playbackHeadPosition) {
            this.f41587r++;
        }
        this.f41586q = playbackHeadPosition;
        return playbackHeadPosition + (this.f41587r << 32);
    }
}
