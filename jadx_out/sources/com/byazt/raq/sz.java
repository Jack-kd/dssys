package com.byazt.raq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1165, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz {
    public static final sz jx = new sz() { // from class: com.byazt.raq.sz.1
        @Override // com.byazt.raq.sz
        public void eb() throws IOException {
        }

        @Override // com.byazt.raq.sz
        public sz hp(long j2) {
            return this;
        }

        @Override // com.byazt.raq.sz
        public sz hp(long j2, TimeUnit timeUnit) {
            return this;
        }
    };
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public long f25113j;

    /* renamed from: l, reason: collision with root package name */
    public long f25114l;

    public sz a() {
        this.hp = false;
        return this;
    }

    public void eb() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.hp && this.f25114l - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public sz hp(long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j2)));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f25113j = timeUnit.toNanos(j2);
        return this;
    }

    public boolean jx() {
        return this.hp;
    }

    public long n_() {
        return this.f25113j;
    }

    public long o_() {
        if (this.hp) {
            return this.f25114l;
        }
        throw new IllegalStateException("No deadline");
    }

    public sz w() {
        this.f25113j = 0L;
        return this;
    }

    public sz hp(long j2) {
        this.hp = true;
        this.f25114l = j2;
        return this;
    }
}
