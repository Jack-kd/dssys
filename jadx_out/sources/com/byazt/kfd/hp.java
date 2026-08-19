package com.byazt.kfd;

import android.content.Context;
import android.view.View;
import com.byazt.xci.b;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.zn.xh;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 686, 28})
/* loaded from: classes.dex */
public class hp extends l {

    /* renamed from: a, reason: collision with root package name */
    public int f22032a;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.qk.jx f22033w;

    public hp() {
    }

    public void hp(com.byazt.qk.jx jxVar) {
        this.f22033w = jxVar;
    }

    public hp(mp mpVar, Context context) {
        this.hp = mpVar;
        this.f24373l = context;
    }

    public void hp(int i2) {
        this.f22032a = i2;
    }

    @Override // com.byazt.pf.hp
    public void hp(View view) {
        this.f24372j = view;
    }

    @Override // com.byazt.pf.hp
    public int hp(Map<String, Object> map, com.byazt.pf.jx jxVar) {
        if (this.f22033w == null) {
            return 0;
        }
        if (this.jx == null) {
            this.jx = new e();
        }
        View viewQ = this.jx.q();
        int[] iArrHp = new int[2];
        int[] iArrJx = new int[2];
        if (viewQ != null) {
            iArrHp = xh.hp(viewQ);
            iArrJx = xh.jx(viewQ);
        }
        this.f22033w.hp(this.f24372j, this.f22032a, new b.hp().j(this.jx.xs()).jx(this.jx.vv()).l(this.jx.ec()).hp(this.jx.sz()).l(this.jx.v()).hp(this.jx.u()).hp(iArrHp[0]).l(iArrHp[1]).jx(iArrJx[0]).j(iArrJx[1]).hp(this.jx.s()).hp(this.jx.zy()).hp());
        return 1;
    }
}
