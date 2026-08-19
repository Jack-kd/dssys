package com.byazt.uid;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.comm.constants.ErrorCode;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 150})
/* loaded from: classes3.dex */
public final class q {
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f26245d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f26246e;
    public volatile ThreadPoolExecutor ec;

    /* renamed from: n, reason: collision with root package name */
    public volatile ScheduledExecutorService f26248n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f26249o;
    public volatile ThreadPoolExecutor sz;
    public com.byazt.jv.w vv;
    public volatile boolean wv;
    public static final int hp = Runtime.getRuntime().availableProcessors();

    /* renamed from: l, reason: collision with root package name */
    public static final q f26242l = new q();

    /* renamed from: j, reason: collision with root package name */
    public static boolean f26241j = true;
    public volatile boolean jx = true;
    public long eb = 5000;

    /* renamed from: s, reason: collision with root package name */
    public long f26251s = 20000;

    /* renamed from: q, reason: collision with root package name */
    public volatile boolean f26250q = true;
    public boolean gu = true;
    public long jl = 100;
    public long zy = 50;

    /* renamed from: k, reason: collision with root package name */
    public long f26247k = 1000;

    /* renamed from: v, reason: collision with root package name */
    public long f26253v = 3000;

    /* renamed from: u, reason: collision with root package name */
    public boolean f26252u = false;
    public volatile boolean xs = true;
    public boolean ns = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f26244b = true;
    public com.byazt.jv.l di = new com.byazt.jv.l() { // from class: com.byazt.uid.q.1
        @Override // com.byazt.jv.l
        public String hp(String str) {
            return str != null ? str.startsWith("csj") ? str : "csj_".concat(str) : "csj_uk";
        }
    };
    public volatile boolean hq = true;
    public volatile boolean ud = true;

    /* renamed from: w, reason: collision with root package name */
    public int f26254w = Math.min(hp, 4);

    /* renamed from: a, reason: collision with root package name */
    public int f26243a = 50;

    private q() {
    }

    public boolean a() {
        return this.f26249o;
    }

    public ThreadPoolExecutor e() {
        if (this.sz == null) {
            synchronized (this) {
                if (this.sz == null) {
                    this.sz = new com.byazt.wsy.l(this.f26254w, this.f26243a, this.eb, TimeUnit.MILLISECONDS, new s(10, "b") { // from class: com.byazt.uid.q.3
                        @Override // com.byazt.uid.s
                        public Thread hp(ThreadGroup threadGroup, Runnable runnable, String str) {
                            return new Thread(threadGroup, runnable, str);
                        }
                    });
                    if (this.ud) {
                        try {
                            this.sz.allowCoreThreadTimeOut(true);
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        }
        return this.sz;
    }

    public com.byazt.jv.w eb() {
        if (this.vv == null) {
            this.vv = new com.byazt.jv.w();
        }
        return this.vv;
    }

    public long ec() {
        return this.f26253v;
    }

    public int gu() {
        return this.f26243a;
    }

    public long j() {
        return this.jl;
    }

    public ScheduledExecutorService jl() {
        if (this.f26248n == null) {
            synchronized (this) {
                try {
                    if (this.f26248n == null) {
                        this.f26248n = new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.byazt.uid.q.4
                            @Override // java.util.concurrent.ThreadFactory
                            public Thread newThread(Runnable runnable) {
                                return new Thread(runnable, q.this.f26249o ? "csj-p-wp" : "csj-wp");
                            }
                        }, com.byazt.shx.hp.hp);
                    }
                } finally {
                }
            }
        }
        return this.f26248n;
    }

    public com.byazt.jv.l jx() {
        return this.di;
    }

    public boolean k() {
        return this.f26245d;
    }

    public boolean l(int i2) {
        return (this.cx & i2) == i2;
    }

    public ThreadPoolExecutor q() {
        if (this.ec == null) {
            synchronized (this) {
                try {
                    if (this.ec == null) {
                        this.ec = new com.byazt.wsy.j(this.f26254w, this.f26243a, this.f26251s, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new s(10, "a") { // from class: com.byazt.uid.q.2
                            @Override // com.byazt.uid.s
                            public Thread hp(ThreadGroup threadGroup, Runnable runnable, String str) {
                                return new Thread(threadGroup, runnable, str);
                            }
                        });
                    }
                } finally {
                }
            }
        }
        return this.ec;
    }

    public int s() {
        return this.f26254w;
    }

    public boolean sz() {
        return this.f26252u;
    }

    public boolean u() {
        return this.hq && f26241j;
    }

    public boolean v() {
        return this.wv;
    }

    public long vv() {
        return this.f26247k;
    }

    public boolean w() {
        return this.jx;
    }

    public long xs() {
        return this.zy;
    }

    public ThreadPoolExecutor zy() {
        return this.f26246e ? e() : q();
    }

    public void a(boolean z2) {
        this.f26250q = z2;
    }

    public void hp(int i2) {
        this.cx = i2;
    }

    public void j(boolean z2) {
        this.f26249o = z2;
    }

    public void jx(boolean z2) {
        this.jx = z2;
    }

    public boolean l() {
        return this.ns;
    }

    public void s(boolean z2) {
        if (this.f26245d) {
            return;
        }
        if (this.sz != null) {
            this.sz.allowCoreThreadTimeOut(z2);
        }
        this.ud = z2;
    }

    public void w(boolean z2) {
        this.f26246e = z2;
    }

    public boolean hp() {
        return this.gu;
    }

    public void j(int i2) {
        this.f26243a = i2;
        q().setMaximumPoolSize(i2);
        e().setMaximumPoolSize(i2);
    }

    public void jx(int i2) {
        this.f26254w = i2;
        q().setCorePoolSize(i2);
        e().setCorePoolSize(i2);
    }

    public void l(boolean z2) {
        this.ns = z2;
    }

    public void eb(boolean z2) {
        if (z2) {
            s(false);
            f26241j = false;
        }
        this.f26245d = z2;
    }

    public void hp(boolean z2) {
        this.gu = z2;
    }

    public void l(long j2) {
        this.zy = j2;
    }

    public void hp(long j2) {
        this.eb = j2;
        e().setKeepAliveTime(j2, TimeUnit.MILLISECONDS);
    }

    public void j(long j2) {
        this.f26253v = j2;
    }

    public void jx(long j2) {
        this.f26247k = j2;
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        q qVar = f26242l;
        int iOptInt = jSONObject.optInt("big_max_mum", 50);
        if (iOptInt > 0) {
            qVar.j(iOptInt);
        }
        int iOptInt2 = jSONObject.optInt("core_count", 0);
        if (iOptInt2 > 0) {
            qVar.jx(iOptInt2);
        }
        int iOptInt3 = jSONObject.optInt("big_keep_alive", 0);
        if (iOptInt3 > 0) {
            qVar.hp(iOptInt3);
        }
        qVar.w(jSONObject.optBoolean("big_priority", false));
        qVar.jx(jSONObject.optBoolean("catch_oom", true));
        qVar.l(jSONObject.optBoolean("forbid_autosize_oom", true));
        qVar.a(jSONObject.optBoolean("enable_proxy", true));
        f26241j = jSONObject.optBoolean("autosize", true);
        qVar.q(jSONObject.optBoolean("report_task", false));
        qVar.l(jSONObject.optInt("wait_in_big", 50));
        qVar.jx(jSONObject.optInt("wait_in_little", 2000));
        qVar.j(jSONObject.optInt("run_cost", ErrorCode.UNKNOWN_ERROR));
    }

    public void q(boolean z2) {
        this.f26252u = z2;
    }
}
