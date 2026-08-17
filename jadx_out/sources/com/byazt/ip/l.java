package com.byazt.ip;

import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 1124, 34})
/* loaded from: classes.dex */
public class l {
    public static long eb = -1;
    public static volatile boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static final String f21172l = "l";

    /* renamed from: s, reason: collision with root package name */
    public static volatile l f21173s;

    /* renamed from: a, reason: collision with root package name */
    public long f21174a;
    public final gu jx = gu.hp();

    /* renamed from: j, reason: collision with root package name */
    public final AtomicInteger f21175j = new AtomicInteger();

    /* renamed from: w, reason: collision with root package name */
    public final hp f21176w = new hp(com.byazt.ez.w.hp());

    @com.byazt.kj.hp(hp = {0, 1, 1124, 123})
    public class hp extends Handler {
        public hp(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            l.this.a();
            sendEmptyMessageDelayed(1, 1000L);
        }

        public void hp() {
            sendEmptyMessage(1);
        }

        public void l() {
            removeMessages(1);
        }
    }

    private l() {
    }

    public static l hp() {
        if (f21173s == null) {
            synchronized (l.class) {
                try {
                    if (f21173s == null) {
                        f21173s = new l();
                    }
                } finally {
                }
            }
        }
        return f21173s;
    }

    public static long j() {
        return TrafficStats.getTotalRxBytes() - TrafficStats.getMobileRxBytes();
    }

    public static void w() {
        hp = com.byazt.xq.a.l(com.byazt.yk.jx.mp());
    }

    public void a() {
        try {
            w();
            long j2 = hp ? j() : TrafficStats.getMobileRxBytes();
            long j3 = eb;
            long j4 = j2 - j3;
            if (j3 >= 0) {
                synchronized (this) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    this.jx.hp(j4, jUptimeMillis - this.f21174a);
                    this.f21174a = jUptimeMillis;
                }
            }
            eb = j2;
        } catch (Exception unused) {
        }
    }

    public void eb() {
        a();
        eb = -1L;
    }

    public void jx() {
        try {
            com.byazt.nu.hp.jx(f21172l, "stopSampling: mSamplingCounter = " + this.f21175j);
            if (this.f21175j.decrementAndGet() == 0) {
                this.f21176w.l();
                eb();
            }
        } catch (Throwable unused) {
        }
    }

    public void l() {
        try {
            com.byazt.nu.hp.jx(f21172l, "startSampling: mSamplingCounter = " + this.f21175j);
            if (this.f21175j.getAndIncrement() == 0) {
                this.f21176w.hp();
                this.f21174a = SystemClock.uptimeMillis();
            }
        } catch (Throwable unused) {
        }
    }
}
