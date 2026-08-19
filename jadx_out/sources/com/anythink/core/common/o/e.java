package com.anythink.core.common.o;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import com.byazt.pu.TTDownloadField;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: d, reason: collision with root package name */
    private static e f7176d;

    /* renamed from: b, reason: collision with root package name */
    long f7178b;

    /* renamed from: f, reason: collision with root package name */
    private Context f7181f;

    /* renamed from: g, reason: collision with root package name */
    private ActivityManager f7182g;

    /* renamed from: h, reason: collision with root package name */
    private d f7183h;

    /* renamed from: j, reason: collision with root package name */
    private boolean f7185j;

    /* renamed from: k, reason: collision with root package name */
    private volatile Integer f7186k;

    /* renamed from: l, reason: collision with root package name */
    private volatile Integer f7187l;

    /* renamed from: m, reason: collision with root package name */
    private volatile Long f7188m;

    /* renamed from: e, reason: collision with root package name */
    private boolean f7180e = false;

    /* renamed from: i, reason: collision with root package name */
    private final File f7184i = Environment.getDataDirectory();

    /* renamed from: a, reason: collision with root package name */
    final long f7177a = 5000;

    /* renamed from: c, reason: collision with root package name */
    AtomicInteger f7179c = new AtomicInteger();

    private e() {
        Context contextG = s.b().g();
        this.f7181f = contextG;
        this.f7182g = (ActivityManager) contextG.getSystemService(TTDownloadField.TT_ACTIVITY);
        this.f7183h = new d();
    }

    public static e a() {
        if (f7176d == null) {
            synchronized (e.class) {
                try {
                    if (f7176d == null) {
                        f7176d = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7176d;
    }

    private void i() {
        d dVar = this.f7183h;
        Context context = this.f7181f;
        ActivityManager activityManager = this.f7182g;
        int memoryClass = activityManager.getMemoryClass();
        if ((context.getApplicationContext().getApplicationInfo().flags & 1048576) == 1048576) {
            memoryClass = activityManager.getLargeMemoryClass();
        }
        dVar.f7171d = memoryClass;
        if (s.b().c("t_mem")) {
            return;
        }
        if (this.f7186k == null) {
            this.f7186k = Integer.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3039h, -1));
        }
        if (this.f7186k.intValue() <= 0) {
            this.f7186k = Integer.valueOf(b.a());
            ad.a(this.f7181f, t.b.f3058a, t.a.f3039h, this.f7186k.intValue());
        }
        this.f7183h.f7168a = this.f7186k.intValue();
    }

    private void j() {
        if (s.b().c("c_num")) {
            return;
        }
        if (this.f7187l == null) {
            this.f7187l = Integer.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3040i, -1));
        }
        if (this.f7187l.intValue() <= 0) {
            this.f7187l = Integer.valueOf(Runtime.getRuntime().availableProcessors());
            ad.a(this.f7181f, t.b.f3058a, t.a.f3040i, this.f7187l.intValue());
        }
        this.f7183h.f7172e = this.f7187l.intValue();
    }

    private void k() {
        if (s.b().c("t_store")) {
            return;
        }
        if (this.f7188m == null) {
            this.f7188m = Long.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3041j, -1L));
        }
        if (this.f7188m.longValue() <= 0) {
            try {
                this.f7188m = Long.valueOf((new StatFs(this.f7184i.getPath()).getBlockCountLong() * r0.getBlockSize()) / 1048576);
            } catch (Throwable unused) {
            }
            ad.a(this.f7181f, t.b.f3058a, t.a.f3041j, this.f7188m.longValue());
        }
        this.f7183h.f7173f = this.f7188m.longValue();
    }

    private long l() {
        try {
            return (new StatFs(this.f7184i.getPath()).getAvailableBlocksLong() * r0.getBlockSize()) / 1048576;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public final d b() {
        if (!this.f7180e) {
            return null;
        }
        if (SystemClock.elapsedRealtime() - this.f7178b <= 5000) {
            return this.f7183h;
        }
        this.f7178b = SystemClock.elapsedRealtime();
        this.f7183h.f7175h = a.a();
        this.f7183h.f7169b = b.b();
        this.f7183h.f7174g = l();
        this.f7183h.f7170c = b.a(this.f7182g);
        return this.f7183h;
    }

    public final synchronized void c() {
        this.f7179c.incrementAndGet();
    }

    public final synchronized void d() {
        this.f7179c.decrementAndGet();
    }

    public final synchronized int e() {
        return this.f7179c.get();
    }

    public final int f() {
        if (s.b().c("t_mem")) {
            return 0;
        }
        if (this.f7186k == null) {
            this.f7186k = Integer.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3039h, -1));
        }
        if (this.f7186k.intValue() > 0) {
            return this.f7186k.intValue();
        }
        return 0;
    }

    public final int g() {
        if (s.b().c("c_num")) {
            return 0;
        }
        if (this.f7187l == null) {
            this.f7187l = Integer.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3040i, -1));
        }
        if (this.f7187l.intValue() > 0) {
            return this.f7187l.intValue();
        }
        return 0;
    }

    public final long h() {
        if (s.b().c("t_store")) {
            return 0L;
        }
        if (this.f7188m == null) {
            this.f7188m = Long.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3041j, -1L));
        }
        if (this.f7188m.longValue() > 0) {
            return this.f7188m.longValue();
        }
        return 0L;
    }

    public final void a(com.anythink.core.e.b bVar) {
        this.f7180e = bVar.h();
        synchronized (this) {
            try {
                if (!this.f7185j) {
                    d dVar = this.f7183h;
                    Context context = this.f7181f;
                    ActivityManager activityManager = this.f7182g;
                    int memoryClass = activityManager.getMemoryClass();
                    if ((context.getApplicationContext().getApplicationInfo().flags & 1048576) == 1048576) {
                        memoryClass = activityManager.getLargeMemoryClass();
                    }
                    dVar.f7171d = memoryClass;
                    if (!s.b().c("t_mem")) {
                        if (this.f7186k == null) {
                            this.f7186k = Integer.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3039h, -1));
                        }
                        if (this.f7186k.intValue() <= 0) {
                            this.f7186k = Integer.valueOf(b.a());
                            ad.a(this.f7181f, t.b.f3058a, t.a.f3039h, this.f7186k.intValue());
                        }
                        this.f7183h.f7168a = this.f7186k.intValue();
                    }
                    if (!s.b().c("c_num")) {
                        if (this.f7187l == null) {
                            this.f7187l = Integer.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3040i, -1));
                        }
                        if (this.f7187l.intValue() <= 0) {
                            this.f7187l = Integer.valueOf(Runtime.getRuntime().availableProcessors());
                            ad.a(this.f7181f, t.b.f3058a, t.a.f3040i, this.f7187l.intValue());
                        }
                        this.f7183h.f7172e = this.f7187l.intValue();
                    }
                    if (!s.b().c("t_store")) {
                        if (this.f7188m == null) {
                            this.f7188m = Long.valueOf(ad.b(this.f7181f, t.b.f3058a, t.a.f3041j, -1L));
                        }
                        if (this.f7188m.longValue() <= 0) {
                            try {
                                this.f7188m = Long.valueOf((new StatFs(this.f7184i.getPath()).getBlockCountLong() * r5.getBlockSize()) / 1048576);
                            } catch (Throwable unused) {
                            }
                            ad.a(this.f7181f, t.b.f3058a, t.a.f3041j, this.f7188m.longValue());
                        }
                        this.f7183h.f7173f = this.f7188m.longValue();
                    }
                    this.f7185j = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
