package com.byazt.jki;

import com.byazt.jz.s;
import com.byazt.zn.hp;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1972, 38})
/* loaded from: classes.dex */
public class j implements hp.l {
    public long hp;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f21596l;

    public j() {
        s.u().hp(this);
    }

    public void hp() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.f21596l;
        if (j2 != 0) {
            this.hp += jCurrentTimeMillis - j2;
        }
        this.f21596l = jCurrentTimeMillis;
    }

    public void jx() {
        this.f21596l = 0L;
        this.jx = 0L;
        this.hp = 0L;
    }

    public void l() {
        if (this.f21596l == 0) {
            return;
        }
        this.hp += System.currentTimeMillis() - this.f21596l;
        this.f21596l = 0L;
        this.jx = 0L;
    }

    @Override // com.byazt.zn.hp.l
    public void onAppBackground() {
        l();
    }

    @Override // com.byazt.zn.hp.l
    public void onAppExit() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppForeground() {
        hp();
    }

    @Override // com.byazt.zn.hp.l
    public void onAppStart() {
    }

    public long hp(TimeUnit timeUnit) {
        if (timeUnit != null) {
            return timeUnit.convert(this.hp, TimeUnit.MILLISECONDS);
        }
        return this.hp;
    }
}
