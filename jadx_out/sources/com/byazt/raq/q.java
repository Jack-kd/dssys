package com.byazt.raq;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1165, 150})
/* loaded from: classes3.dex */
public class q extends sz {
    public sz hp;

    public q(sz szVar) {
        if (szVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.hp = szVar;
    }

    @Override // com.byazt.raq.sz
    public sz a() {
        return this.hp.a();
    }

    @Override // com.byazt.raq.sz
    public void eb() throws IOException {
        this.hp.eb();
    }

    public final sz hp() {
        return this.hp;
    }

    @Override // com.byazt.raq.sz
    public boolean jx() {
        return this.hp.jx();
    }

    @Override // com.byazt.raq.sz
    public long n_() {
        return this.hp.n_();
    }

    @Override // com.byazt.raq.sz
    public long o_() {
        return this.hp.o_();
    }

    @Override // com.byazt.raq.sz
    public sz w() {
        return this.hp.w();
    }

    public final q hp(sz szVar) {
        if (szVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.hp = szVar;
        return this;
    }

    @Override // com.byazt.raq.sz
    public sz hp(long j2, TimeUnit timeUnit) {
        return this.hp.hp(j2, timeUnit);
    }

    @Override // com.byazt.raq.sz
    public sz hp(long j2) {
        return this.hp.hp(j2);
    }
}
