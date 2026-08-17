package com.byazt.kl;

import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 597, 38})
/* loaded from: classes.dex */
public class j {

    /* renamed from: w, reason: collision with root package name */
    public static j f22095w = new j();
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile com.byazt.vy.hp f22096j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f22097l;

    public static j hp() {
        return f22095w;
    }

    private String jx() {
        mp mpVar = this.hp;
        return mpVar != null ? com.byazt.ymw.hp.hp(mpVar.ij()).toString() : "";
    }

    private boolean l() {
        this.f22096j = com.byazt.oz.l.hp;
        return this.f22096j != null;
    }

    public j hp(mp mpVar) {
        if (l()) {
            this.hp = mpVar;
        }
        return this;
    }

    public j l(int i2) {
        if (l()) {
            this.jx = i2;
        }
        return this;
    }

    public j hp(int i2) {
        if (l()) {
            this.f22097l = i2;
        }
        return this;
    }

    public void hp(Thread thread, Throwable th) {
        String str;
        if (l()) {
            if (thread != null) {
                str = thread.getName() + "-" + thread.getId();
            } else {
                str = "";
            }
            this.f22096j.hp(str, "-------fatal----------");
            this.f22096j.hp(str, "last show rit:" + this.jx);
            this.f22096j.hp(str, "last show adtype:" + this.f22097l);
            this.f22096j.hp(str, jx());
            this.f22096j.hp(str, th);
            this.f22096j.hp(str, "-------finish----------");
            com.byazt.oz.l.hp.hp().hp();
        }
    }
}
