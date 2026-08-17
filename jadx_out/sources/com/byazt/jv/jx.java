package com.byazt.jv;

import androidx.core.app.NotificationCompat;
import com.byazt.pg.k;
import com.byazt.uid.q;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 303, 30})
/* loaded from: classes.dex */
public class jx implements Comparable<jx>, Runnable {
    public static final AtomicInteger hp = new AtomicInteger(0);

    /* renamed from: l, reason: collision with root package name */
    public static boolean f21702l = false;

    /* renamed from: j, reason: collision with root package name */
    public a f21705j;
    public final Runnable jx;

    /* renamed from: s, reason: collision with root package name */
    public long f21707s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21708w = true;

    /* renamed from: a, reason: collision with root package name */
    public boolean f21703a = true;
    public final long eb = System.currentTimeMillis();

    /* renamed from: q, reason: collision with root package name */
    public int f21706q = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f21704e = 0;

    public jx(Runnable runnable) {
        this.jx = runnable;
    }

    private void jx(boolean z2) {
        a aVar = this.f21705j;
        if (aVar != null) {
            aVar.hp(this, z2);
        }
    }

    public void hp(a aVar) {
        this.f21705j = aVar;
    }

    public int j() {
        return this.f21706q;
    }

    public void l() {
        this.f21707s = System.currentTimeMillis() - this.eb;
    }

    @Override // java.lang.Runnable
    public void run() throws JSONException {
        boolean z2;
        int i2;
        long j2;
        q qVar;
        int i3;
        long j3;
        k kVar;
        q qVar2 = q.f26242l;
        boolean zSz = qVar2.sz();
        if (zSz) {
            int activeCount = qVar2.q().getActiveCount();
            int activeCount2 = qVar2.e().getActiveCount();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j4 = (jCurrentTimeMillis - this.f21707s) - this.eb;
            qVar = qVar2;
            i3 = activeCount;
            z2 = zSz;
            i2 = activeCount2;
            j2 = jCurrentTimeMillis;
            j3 = j4;
        } else {
            z2 = zSz;
            i2 = 0;
            j2 = 0;
            qVar = qVar2;
            i3 = 0;
            j3 = 0;
        }
        this.jx.run();
        long jCurrentTimeMillis2 = System.currentTimeMillis() - j2;
        if (!this.f21708w && this.f21706q == 2) {
            hp.decrementAndGet();
        }
        jx(false);
        if (z2) {
            if ((hp(j3) || jCurrentTimeMillis2 > qVar.ec()) && (kVar = (k) com.byazt.ym.j.getService(NotificationCompat.CATEGORY_EVENT)) != null) {
                hp(j3, jCurrentTimeMillis2, "", 0, i3, i2, kVar);
            }
        }
    }

    public Runnable hp() {
        return this.jx;
    }

    public void l(boolean z2) {
        this.f21703a = z2;
    }

    private boolean hp(long j2) {
        return this.f21704e == 1 ? j2 > q.f26242l.xs() : j2 > q.f26242l.vv();
    }

    public boolean jx() {
        return this.f21703a;
    }

    private void hp(long j2, long j3, String str, int i2, int i3, int i4, k kVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("create_time", this.eb);
            jSONObject.put("is_wrap", this.jx instanceof jx);
            jSONObject.put("is_oom", f21702l);
            jSONObject.put("pool_wait_time", j2);
            jSONObject.put("priority", i2);
            jSONObject.put("wait_in_queue", this.f21707s);
            jSONObject.put("pool_type", this.f21706q);
            jSONObject.put("origin_pool_type", this.f21704e);
            jSONObject.put("run_cost", j3);
            jSONObject.put("task_name", str);
            jSONObject.put("thread_name", Thread.currentThread().getName());
            q qVar = q.f26242l;
            jSONObject.put("little_active_count", i3);
            jSONObject.put("big_active_count", i4);
            jSONObject.put("is_crash", qVar.k());
            jSONObject.put("auto_size", q.f26241j);
            jSONObject.put("pri_task_in_little", hp.get());
            jSONObject.put("core_count", qVar.s());
            jSONObject.put("max_pool_size", qVar.gu());
            jSONObject.put("use_little_pool", qVar.u());
        } catch (Exception unused) {
        }
        kVar.onStatsEvent("task_run_cost", jSONObject);
    }

    public jx(Runnable runnable, a aVar) {
        this.jx = runnable;
        this.f21705j = aVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(jx jxVar) {
        Class<?> cls = this.jx.getClass();
        Class<?> cls2 = jxVar.jx.getClass();
        if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
            return 0;
        }
        Runnable runnable = this.jx;
        if (!(runnable instanceof Comparable)) {
            return 0;
        }
        Runnable runnable2 = jxVar.jx;
        if (runnable2 instanceof Comparable) {
            return ((Comparable) runnable).compareTo(runnable2);
        }
        return 0;
    }

    public void hp(boolean z2) {
        this.f21708w = z2;
    }

    public void hp(int i2) {
        int i3 = this.f21706q;
        if (i3 == 0) {
            this.f21704e = i2;
        } else {
            this.f21704e = i3;
        }
        this.f21706q = i2;
    }
}
