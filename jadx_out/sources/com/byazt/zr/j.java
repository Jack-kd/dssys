package com.byazt.zr;

import android.app.Activity;
import com.byazt.jwq.e;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.mp;
import com.byazt.xci.rz;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 1973, 38})
/* loaded from: classes3.dex */
public class j extends hp {

    /* renamed from: l, reason: collision with root package name */
    public hp f28589l;

    public j(Activity activity, mp mpVar) {
        super(activity, mpVar);
    }

    @Override // com.byazt.zr.hp, com.byazt.jwq.l
    public l.hp hp(e eVar) {
        ArrayList<bu> arrayListW = rz.w(this.eb);
        if (arrayListW == null) {
            return new l.hp(false, 0, "");
        }
        int size = arrayListW.size();
        int i2 = 0;
        while (i2 < size) {
            bu buVar = arrayListW.get(i2);
            i2++;
            bu buVar2 = buVar;
            if (buVar2.jx() == 1) {
                this.f28589l = new jx(this.f21736s, this.eb, buVar2);
            }
            hp hpVar = this.f28589l;
            if (hpVar != null) {
                hpVar.jx(this.jl);
                this.f28589l.j(this.gu);
                this.f28589l.hp(this.hp);
                this.f28589l.l(s());
                this.f28589l.hp(this.f21737u);
                l.hp hpVarHp = this.f28589l.hp(eVar);
                if (hpVarHp.jx()) {
                    return hpVarHp;
                }
            }
        }
        return new l.hp(false, 0, "");
    }

    @Override // com.byazt.jwq.l
    public void l(String str) {
        super.l(str);
        hp hpVar = this.f28589l;
        if (hpVar == null) {
            return;
        }
        hpVar.l(str);
    }

    @Override // com.byazt.jwq.l
    public String hp() {
        hp hpVar = this.f28589l;
        if (hpVar == null) {
            return null;
        }
        return hpVar.hp();
    }
}
