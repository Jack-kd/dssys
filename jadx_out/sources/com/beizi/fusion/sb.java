package com.beizi.fusion;

import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public abstract class sb {

    /* renamed from: a, reason: collision with root package name */
    private final b f16228a = new b();

    /* renamed from: b, reason: collision with root package name */
    protected final long f16229b;

    public sb(long j2) {
        this.f16229b = j2;
    }

    public void a() {
        b bVar = this.f16228a;
        if (bVar != null) {
            bVar.a();
        }
    }

    public abstract void b();

    public void c() {
        b bVar = this.f16228a;
        if (bVar != null) {
            bVar.a(this.f16229b);
        }
    }

    public final class b {

        /* renamed from: a, reason: collision with root package name */
        private Timer f16230a;

        /* renamed from: b, reason: collision with root package name */
        private TimerTask f16231b;

        public class a extends TimerTask {
            public a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                sb.this.b();
            }
        }

        private b() {
        }

        private void b() {
            a();
            this.f16230a = new Timer();
            this.f16231b = new a();
        }

        public synchronized void a() {
            try {
                TimerTask timerTask = this.f16231b;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                Timer timer = this.f16230a;
                if (timer != null) {
                    timer.cancel();
                    this.f16230a.purge();
                }
                this.f16230a = null;
                this.f16231b = null;
            } catch (Throwable th) {
                throw th;
            }
        }

        public void a(long j2) {
            b();
            Timer timer = this.f16230a;
            if (timer != null) {
                timer.schedule(this.f16231b, j2);
            }
        }
    }
}
