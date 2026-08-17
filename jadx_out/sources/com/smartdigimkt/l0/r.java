package com.smartdigimkt.l0;

import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final AudioTrack f41559a;

    /* renamed from: b, reason: collision with root package name */
    public final AudioTimestamp f41560b = new AudioTimestamp();

    /* renamed from: c, reason: collision with root package name */
    public long f41561c;

    /* renamed from: d, reason: collision with root package name */
    public long f41562d;

    /* renamed from: e, reason: collision with root package name */
    public long f41563e;

    public r(AudioTrack audioTrack) {
        this.f41559a = audioTrack;
    }

    public final long a() {
        return this.f41560b.nanoTime / 1000;
    }

    public final boolean b() {
        boolean timestamp = this.f41559a.getTimestamp(this.f41560b);
        if (timestamp) {
            long j2 = this.f41560b.framePosition;
            if (this.f41562d > j2) {
                this.f41561c++;
            }
            this.f41562d = j2;
            this.f41563e = j2 + (this.f41561c << 32);
        }
        return timestamp;
    }
}
