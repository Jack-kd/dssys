package com.octopus.ad.b;

import com.octopus.ad.utils.ThreadUtils;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Timer f33715a;

    /* renamed from: b, reason: collision with root package name */
    private long f33716b;

    /* renamed from: c, reason: collision with root package name */
    private long f33717c;

    /* renamed from: d, reason: collision with root package name */
    private long f33718d;

    /* renamed from: e, reason: collision with root package name */
    private b f33719e;

    /* renamed from: f, reason: collision with root package name */
    private c f33720f = c.FINISH;

    public a(long j2, long j3) {
        a(j2);
        b(j3);
    }

    private void h() {
        Timer timer = this.f33715a;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = this.f33715a;
        if (timer2 != null) {
            timer2.purge();
        }
        this.f33715a = null;
    }

    public void d() {
        a(true);
    }

    public void e() {
        if (this.f33715a != null) {
            h();
        }
        this.f33718d = this.f33716b;
        this.f33720f = c.FINISH;
    }

    public boolean f() {
        return this.f33720f == c.START;
    }

    public TimerTask g() {
        return new TimerTask() { // from class: com.octopus.ad.b.a.2

            /* renamed from: b, reason: collision with root package name */
            private long f33724b = -1;

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (this.f33724b < 0) {
                    this.f33724b = scheduledExecutionTime() - (a.this.f33716b - a.this.f33718d);
                    ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.b.a.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.f33719e != null) {
                                a.this.f33719e.a(a.this.f33718d);
                            }
                        }
                    });
                    return;
                }
                a aVar = a.this;
                aVar.f33718d = aVar.f33716b - (scheduledExecutionTime() - this.f33724b);
                ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.b.a.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.f33719e != null) {
                            a.this.f33719e.a(a.this.f33718d);
                        }
                    }
                });
                if (a.this.f33718d <= 0) {
                    a.this.a(false);
                }
            }
        };
    }

    public void b() {
        if (this.f33715a == null || this.f33720f != c.START) {
            return;
        }
        h();
        this.f33720f = c.PAUSE;
    }

    public void c() {
        if (this.f33720f == c.PAUSE) {
            a();
        }
    }

    public void a() {
        if (this.f33715a == null) {
            c cVar = this.f33720f;
            c cVar2 = c.START;
            if (cVar != cVar2) {
                Timer timer = new Timer();
                this.f33715a = timer;
                timer.schedule(g(), 0L, this.f33717c);
                this.f33720f = cVar2;
            }
        }
    }

    private void b(long j2) {
        this.f33717c = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z2) {
        if (this.f33715a != null) {
            h();
            this.f33720f = c.FINISH;
            ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.f33719e != null) {
                        if (z2) {
                            a.this.f33719e.b();
                        } else {
                            a.this.f33719e.a();
                        }
                    }
                }
            });
        }
    }

    private void a(long j2) {
        this.f33716b = j2;
        this.f33718d = j2;
    }

    public void a(b bVar) {
        this.f33719e = bVar;
    }
}
