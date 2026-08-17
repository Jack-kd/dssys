package com.byazt.ez;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

@com.byazt.kj.hp(hp = {0, 1, 1109, 94})
/* loaded from: classes2.dex */
public class eb {

    /* renamed from: j, reason: collision with root package name */
    public Handler f19562j;
    public hp jx;
    public Object hp = new Object();

    /* renamed from: l, reason: collision with root package name */
    public Queue<l> f19563l = new ConcurrentLinkedQueue();

    @com.byazt.kj.hp(hp = {0, 1, 1109, 131})
    public class hp extends HandlerThread {
        public hp(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            Looper looper = getLooper();
            synchronized (eb.this.hp) {
                eb.this.f19562j = new Handler(looper);
            }
            while (!eb.this.f19563l.isEmpty()) {
                l lVar = (l) eb.this.f19563l.poll();
                if (lVar != null) {
                    eb.this.f19562j.postDelayed(lVar.hp, lVar.f19564l);
                }
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1109, 846})
    public class l {
        public Runnable hp;

        /* renamed from: l, reason: collision with root package name */
        public long f19564l;

        public l(Runnable runnable, long j2) {
            this.hp = runnable;
            this.f19564l = j2;
        }
    }

    public eb(String str) {
        this.jx = new hp(str);
    }

    public void l() {
        this.jx.quit();
    }

    public void hp() {
        this.jx.start();
    }

    public void hp(Runnable runnable) {
        hp(runnable, 0L);
    }

    public void hp(Runnable runnable, long j2) {
        if (this.f19562j == null) {
            synchronized (this.hp) {
                try {
                    if (this.f19562j == null) {
                        this.f19563l.add(new l(runnable, j2));
                        return;
                    }
                } finally {
                }
            }
        }
        this.f19562j.postDelayed(runnable, j2);
    }
}
