package com.byazt.sw;

import android.content.Context;
import android.view.View;
import com.baidu.mobads.sdk.internal.cm;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, cm.f11334c, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.pf.hp {

    /* renamed from: w, reason: collision with root package name */
    public l f25604w = new l();

    /* renamed from: com.byazt.sw.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0368hp {
        void hp(View view, int i2);
    }

    @Override // com.byazt.pf.hp
    public int hp(Map<String, Object> map, com.byazt.pf.jx jxVar) {
        return 0;
    }

    public void j(boolean z2) {
        this.f25604w.l(z2);
    }

    public void jx(boolean z2) {
        this.f25604w.jx(z2);
    }

    public void l(boolean z2) {
        this.f25604w.j(z2);
    }

    public void hp(int i2) {
        this.f25604w.l(i2);
    }

    public void j() {
        if (this.f25604w.j()) {
            com.byazt.dc.hp hpVarW = this.f25604w.w();
            if (!ky.j(this.hp) || hpVarW == null) {
                return;
            }
            hpVarW.l();
        }
    }

    public void jx() {
        if (this.f25604w.l() && this.f25604w.j()) {
            com.byazt.gog.jx jxVarA = this.f25604w.a();
            if (jxVarA instanceof com.byazt.fy.hp) {
                ((com.byazt.fy.hp) jxVarA).a(true);
            }
        }
    }

    public void l(int i2) {
        if (this.f25604w.j()) {
            this.f25604w.hp(i2);
        }
    }

    public void hp(Map<String, Object> map) {
        this.f25604w.hp(map);
    }

    public void hp(String str) {
        this.f25604w.hp(str);
    }

    public l l() {
        return this.f25604w;
    }

    public void hp(boolean z2) {
        this.f25604w.hp(z2);
    }

    public void hp(mp mpVar) {
        this.hp = mpVar;
        this.f25604w.hp(mpVar);
    }

    public void hp(Context context) {
        this.f24373l = context;
        this.f25604w.hp(context);
    }

    public void hp(com.byazt.gog.jx jxVar) {
        this.f25604w.hp(jxVar);
    }

    public com.byazt.gog.jx hp() {
        return this.f25604w.a();
    }

    public void hp(Object obj) {
        this.f25604w.hp(obj);
    }

    public void hp(com.byazt.dc.hp hpVar) {
        this.f25604w.hp(hpVar);
    }

    public void hp(InterfaceC0368hp interfaceC0368hp) {
        this.f25604w.hp(interfaceC0368hp);
    }

    public void hp(long j2) {
        this.f25604w.hp(j2);
    }

    public void hp(com.byazt.tm.l lVar) {
        this.f25604w.hp(lVar);
    }
}
