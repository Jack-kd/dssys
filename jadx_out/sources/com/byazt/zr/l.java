package com.byazt.zr;

import android.app.Activity;
import com.byazt.ay.a;
import com.byazt.jwq.e;
import com.byazt.jwq.l;
import com.byazt.xci.mp;
import com.byazt.xci.rz;

@com.byazt.kj.hp(hp = {0, 1, 1973, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: l, reason: collision with root package name */
    public a f28590l;

    public l(Activity activity, mp mpVar) {
        super(activity, mpVar);
        this.f28590l = null;
    }

    @Override // com.byazt.zr.hp, com.byazt.jwq.l
    public l.hp hp(final e eVar) {
        l.hp hpVarHp = super.hp(eVar);
        if (hpVarHp.jx()) {
            return hpVarHp;
        }
        final a aVar = new a(this.f21736s);
        this.f28590l = aVar;
        aVar.w("tt_retain_gift").hp(hp()).jx(rz.hp(this.eb, this.gu, this.jl)).j("坚持退出");
        aVar.hp(com.byazt.vi.a.q(this.f21736s));
        this.f28590l.hp(new a.hp() { // from class: com.byazt.zr.l.1
            @Override // com.byazt.ay.a.hp
            public void hp() {
                e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
            }

            @Override // com.byazt.ay.a.hp
            public void l() {
                aVar.dismiss();
                e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }
        });
        this.f28590l.show();
        return new l.hp(true, 0, "", this.f28590l);
    }

    @Override // com.byazt.jwq.l
    public void j() {
        a aVar = this.f28590l;
        if (aVar != null) {
            aVar.hp();
        }
    }

    @Override // com.byazt.jwq.l
    public void jx() {
        a aVar = this.f28590l;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    @Override // com.byazt.jwq.l
    public boolean l() {
        a aVar = this.f28590l;
        return aVar != null && aVar.isShowing();
    }

    @Override // com.byazt.jwq.l
    public void w() {
        a aVar = this.f28590l;
        if (aVar != null) {
            aVar.l();
        }
    }

    @Override // com.byazt.jwq.l
    public String hp() {
        return "恭喜您已经获得奖励，是否要继续观看视频，再得超值奖励";
    }
}
