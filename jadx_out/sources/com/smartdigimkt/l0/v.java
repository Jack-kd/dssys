package com.smartdigimkt.l0;

import android.media.AudioTrack;

/* loaded from: classes5.dex */
public final class v extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AudioTrack f41603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f41604b;

    public v(a0 a0Var, AudioTrack audioTrack) {
        this.f41604b = a0Var;
        this.f41603a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.f41603a.flush();
            this.f41603a.release();
        } finally {
            this.f41604b.f41427g.open();
        }
    }
}
