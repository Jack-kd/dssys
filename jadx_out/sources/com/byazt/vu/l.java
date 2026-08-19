package com.byazt.vu;

import android.text.TextUtils;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.hd;
import com.byazt.xci.jd;
import com.byazt.xci.mp;
import com.byazt.xci.tw;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 874, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: a, reason: collision with root package name */
    public int f26693a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f26694e;
    public int eb;
    public com.byazt.xci.hp gu;

    /* renamed from: j, reason: collision with root package name */
    public int f26695j;
    public boolean jl;

    /* renamed from: q, reason: collision with root package name */
    public int f26696q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.tw.j f26697s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.er.l f26698w;
    public boolean zy;

    public l(mp mpVar, boolean z2) {
        if (mpVar == null) {
            return;
        }
        this.f26679l = mpVar;
        this.zy = z2;
        this.jl = hd.hp(mpVar) == 2;
        l(mpVar);
    }

    private void a(mp mpVar) {
        this.f26697s = df.v(mpVar);
        this.f26696q = ky.zy(mpVar);
        this.f26694e = mpVar.qq();
    }

    private boolean hp(tw twVar) {
        return twVar != null && hp(twVar.s()) == 2;
    }

    private void j(mp mpVar) {
        w(mpVar);
        a(mpVar);
    }

    private boolean jx(mp mpVar) {
        return hd.hp(mpVar) == 2;
    }

    private void l(mp mpVar) {
        int iNc = mpVar.nc();
        tw twVarA = hd.a(mpVar);
        jd jdVarEb = hd.eb(mpVar);
        if (TextUtils.isEmpty(df.hp(mpVar))) {
            this.f26695j = 1;
        } else if (jx(mpVar)) {
            if (hp(twVarA) || hp(jdVarEb)) {
                this.f26695j = 2;
            } else {
                if (l(twVarA) || l(jdVarEb)) {
                    hd.hp(mpVar, 1);
                }
                this.f26695j = 1;
            }
        } else if (iNc == 1) {
            this.f26695j = 1;
        } else {
            this.f26695j = 2;
        }
        j(mpVar);
    }

    private void w(mp mpVar) {
        dy dyVar;
        if (mpVar.vi() == null || (dyVar = mpVar.vi().get(0)) == null) {
            return;
        }
        String strHp = dyVar.hp();
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        this.f26693a = dyVar.l();
        this.eb = dyVar.jx();
        this.f26698w = new com.byazt.er.l(strHp, dyVar.eb());
    }

    public int e() {
        return this.f26695j;
    }

    public com.byazt.tw.j eb() {
        return this.f26697s;
    }

    public com.byazt.xci.hp gu() {
        return this.gu;
    }

    public boolean jl() {
        return this.jl;
    }

    public boolean q() {
        return this.f26694e;
    }

    public int s() {
        return this.f26696q;
    }

    public boolean zy() {
        return this.zy;
    }

    private boolean hp(jd jdVar) {
        return jdVar != null && jdVar.eb() == 2;
    }

    private int hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public com.byazt.er.l j() {
        return this.f26698w;
    }

    public int a() {
        return this.eb;
    }

    public void hp(com.byazt.xci.hp hpVar) {
        this.gu = hpVar;
    }

    public void hp(boolean z2) {
        this.zy = z2;
    }

    public int w() {
        return this.f26693a;
    }

    private boolean l(tw twVar) {
        return twVar != null && hp(twVar.s()) == 0;
    }

    private boolean l(jd jdVar) {
        return jdVar != null && jdVar.eb() == 0;
    }
}
