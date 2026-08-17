package com.byazt.us;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.byazt.us.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 226, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w {
    public static HandlerThread hp;

    /* renamed from: l, reason: collision with root package name */
    public static Handler f26406l;

    /* renamed from: e, reason: collision with root package name */
    public volatile int f26408e;
    public volatile int gu;
    public final j jx;

    /* renamed from: q, reason: collision with root package name */
    public long f26410q;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f26411s;

    /* renamed from: j, reason: collision with root package name */
    public a f26409j = new a();

    /* renamed from: w, reason: collision with root package name */
    public a f26412w = new a();

    /* renamed from: a, reason: collision with root package name */
    public a f26407a = new a();
    public final Object eb = new Object();
    public final Runnable jl = new Runnable() { // from class: com.byazt.us.w.1
        @Override // java.lang.Runnable
        public void run() {
            float f2;
            if (w.this.f26411s) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (w.this.f26410q == 0) {
                    f2 = 0.016f;
                } else {
                    f2 = (jUptimeMillis - w.this.f26410q) / 1000.0f;
                    if (f2 > 0.033333335f) {
                        f2 = 0.033333335f;
                    }
                }
                w.this.f26410q = jUptimeMillis;
                w.this.jx.hp(w.this.f26408e, w.this.gu);
                w.this.jx.update(f2);
                w.this.jx.hp(w.this.f26409j);
                synchronized (w.this.eb) {
                    a aVar = w.this.f26412w;
                    w wVar = w.this;
                    wVar.f26412w = wVar.f26409j;
                    w.this.f26409j = aVar;
                }
                if (w.this.f26411s) {
                    w.s().postDelayed(this, 16L);
                }
            }
        }
    };

    public w(l lVar) {
        this.jx = new j(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized Handler s() {
        try {
            if (hp == null) {
                HandlerThread handlerThread = new HandlerThread("ugen-particle-physics", 10);
                hp = handlerThread;
                handlerThread.start();
                f26406l = new Handler(hp.getLooper());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f26406l;
    }

    public void a() {
        w();
        synchronized (this.eb) {
            this.f26409j = new a();
            this.f26412w = new a();
            this.f26407a = new a();
        }
    }

    public void j() {
        if (this.f26411s) {
            return;
        }
        this.f26411s = true;
        this.f26410q = 0L;
        s().post(this.jl);
    }

    public l.j[] jx() {
        return this.jx.hp();
    }

    public void w() {
        this.f26411s = false;
        s().removeCallbacks(this.jl);
    }

    public l l() {
        return this.jx.l();
    }

    public void hp(int i2, int i3) {
        this.f26408e = i2;
        this.gu = i3;
    }

    public a hp() {
        a aVar;
        synchronized (this.eb) {
            a aVar2 = this.f26407a;
            aVar = this.f26412w;
            this.f26407a = aVar;
            this.f26412w = aVar2;
        }
        return aVar;
    }
}
