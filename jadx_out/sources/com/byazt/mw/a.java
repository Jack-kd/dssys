package com.byazt.mw;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 512, 54})
/* loaded from: classes3.dex */
public class a {
    public List<jx> hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.xs.jx f23292j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public List<hp> f23293l;

    public a(Context context, com.byazt.xs.jx jxVar, List<jx> list) {
        this.f23292j = jxVar;
        this.jx = context;
        this.hp = list;
        j();
    }

    private void j() {
        this.f23293l = new ArrayList();
        List<jx> list = this.hp;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            jx jxVar = this.hp.get(i2);
            if (jxVar != null) {
                this.f23293l.add(new hp(this.jx, this.f23292j, jxVar));
            }
        }
    }

    public void hp() {
        List<hp> list = this.f23293l;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (hp hpVar : this.f23293l) {
            if (hpVar != null) {
                hpVar.j();
            }
        }
    }

    public void jx() {
        List<hp> list = this.f23293l;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (hp hpVar : this.f23293l) {
            if (hpVar != null) {
                hpVar.jx();
            }
        }
    }

    public void l() {
        List<hp> list = this.f23293l;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (hp hpVar : this.f23293l) {
            if (hpVar != null) {
                hpVar.hp();
            }
        }
    }

    public void hp(Canvas canvas) {
        List<hp> list = this.f23293l;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (hp hpVar : this.f23293l) {
            if (hpVar != null) {
                hpVar.hp(canvas);
            }
        }
    }

    public void l(Canvas canvas) {
        List<hp> list = this.f23293l;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (hp hpVar : this.f23293l) {
            if (hpVar != null) {
                hpVar.l(canvas);
            }
        }
    }

    public void hp(int i2, int i3) {
        List<hp> list = this.f23293l;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (hp hpVar : this.f23293l) {
            if (hpVar != null) {
                hpVar.hp(i2, i3);
            }
        }
    }

    public hp hp(String str) {
        List<hp> list = this.f23293l;
        if (list != null && !list.isEmpty()) {
            for (hp hpVar : this.f23293l) {
                if (hpVar != null && TextUtils.equals(hpVar.w(), str)) {
                    return hpVar;
                }
            }
        }
        return null;
    }
}
