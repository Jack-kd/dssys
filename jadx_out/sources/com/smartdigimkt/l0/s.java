package com.smartdigimkt.l0;

import android.media.AudioTrack;

/* loaded from: classes5.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final r f41564a;

    /* renamed from: b, reason: collision with root package name */
    public int f41565b;

    /* renamed from: c, reason: collision with root package name */
    public long f41566c;

    /* renamed from: d, reason: collision with root package name */
    public long f41567d;

    /* renamed from: e, reason: collision with root package name */
    public long f41568e;

    /* renamed from: f, reason: collision with root package name */
    public long f41569f;

    public s(AudioTrack audioTrack) {
        if (com.smartdigimkt.a1.t.f39303a >= 19) {
            this.f41564a = new r(audioTrack);
            a();
        } else {
            this.f41564a = null;
            a(3);
        }
    }

    public final void a() {
        if (this.f41564a != null) {
            a(0);
        }
    }

    public final void a(int i2) {
        this.f41565b = i2;
        if (i2 == 0) {
            this.f41568e = 0L;
            this.f41569f = -1L;
            this.f41566c = System.nanoTime() / 1000;
            this.f41567d = 5000L;
            return;
        }
        if (i2 == 1) {
            this.f41567d = 5000L;
            return;
        }
        if (i2 == 2 || i2 == 3) {
            this.f41567d = 10000000L;
        } else {
            if (i2 == 4) {
                this.f41567d = 500000L;
                return;
            }
            throw new IllegalStateException();
        }
    }
}
