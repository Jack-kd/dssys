package com.byazt.lxu;

import com.byazt.gt.e;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1576, 34})
/* loaded from: classes3.dex */
public abstract class l {
    public final j hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f22818j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public int f22819l = 0;

    public l(j jVar) {
        this.hp = jVar;
    }

    public boolean a() {
        return this.jx;
    }

    public final long eb() {
        boolean zJx;
        long jHp = hp();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f22818j) {
            this.f22818j = false;
            jHp = 0;
        }
        if (jHp > 1000 + jCurrentTimeMillis) {
            return jHp - jCurrentTimeMillis;
        }
        try {
            zJx = jx();
        } catch (Exception e2) {
            e.l(e2);
            zJx = false;
        }
        if (zJx) {
            this.f22819l = 0;
            return hp() - System.currentTimeMillis();
        }
        long[] jArrL = l();
        int i2 = this.f22819l;
        this.f22819l = i2 + 1;
        return jArrL[i2 % jArrL.length];
    }

    public abstract long hp();

    public abstract String j();

    public abstract boolean jx() throws JSONException;

    public abstract long[] l();

    public void s() {
        e.hp("setImmediately, " + j());
        this.f22818j = true;
    }

    public void w() {
        this.jx = true;
    }
}
