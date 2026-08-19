package com.byazt.ip;

@com.byazt.kj.hp(hp = {0, 1, 1124, 38})
/* loaded from: classes.dex */
public class j {
    public final double hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21160j;
    public double jx = -1.0d;

    /* renamed from: l, reason: collision with root package name */
    public final int f21161l;

    public j(double d2) {
        this.hp = d2;
        this.f21161l = d2 == 0.0d ? Integer.MAX_VALUE : (int) Math.ceil(1.0d / d2);
    }

    public void hp(double d2) {
        double d3 = 1.0d - this.hp;
        int i2 = this.f21160j;
        if (i2 > this.f21161l) {
            this.jx = Math.exp((d3 * Math.log(this.jx)) + (this.hp * Math.log(d2)));
        } else if (i2 > 0) {
            double d4 = (d3 * i2) / (i2 + 1.0d);
            this.jx = Math.exp((d4 * Math.log(this.jx)) + ((1.0d - d4) * Math.log(d2)));
        } else {
            this.jx = d2;
        }
        this.f21160j++;
    }

    public double hp() {
        return this.jx;
    }
}
