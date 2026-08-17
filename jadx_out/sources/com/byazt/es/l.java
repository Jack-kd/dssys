package com.byazt.es;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 155, 34})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: j, reason: collision with root package name */
    public int f19457j;

    /* renamed from: l, reason: collision with root package name */
    public s f19458l;
    public ScheduledExecutorService hp = null;
    public long jx = 0;

    public l(s sVar, int i2) {
        this.f19458l = sVar;
        this.f19457j = i2;
    }

    public void hp(long j2) {
        this.jx = j2;
    }

    public boolean l() {
        ScheduledExecutorService scheduledExecutorService = this.hp;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }

    public void hp(int i2) {
        ScheduledExecutorService scheduledExecutorServiceHp = com.byazt.uid.l.hp(1, new com.byazt.uid.s("/CrashMonitor"));
        this.hp = scheduledExecutorServiceHp;
        scheduledExecutorServiceHp.scheduleAtFixedRate(new Runnable() { // from class: com.byazt.es.l.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (System.currentTimeMillis() - l.this.jx > l.this.f19457j) {
                    l.this.hp.shutdown();
                    if (l.this.f19458l != null) {
                        l.this.f19458l.l(0, "自动检测卡死");
                    }
                }
            }
        }, 0L, i2, TimeUnit.MILLISECONDS);
    }

    public void hp() {
        ScheduledExecutorService scheduledExecutorService = this.hp;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }
}
