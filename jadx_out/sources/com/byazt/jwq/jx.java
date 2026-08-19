package com.byazt.jwq;

import android.app.Activity;
import com.byazt.ay.a;
import com.byazt.jwq.l;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 740, 30})
/* loaded from: classes.dex */
public class jx extends hp {
    public com.byazt.ay.a xs;

    public jx(Activity activity, mp mpVar) {
        super(activity, mpVar);
        this.xs = null;
    }

    @Override // com.byazt.jwq.l
    public String hp() {
        if (this.hp > 0 && this.f21731w) {
            return "再看" + this.hp + "s，并点击一下广告可领取奖励";
        }
        if (this.f21731w) {
            return "忘记点击广告领取奖励啦～";
        }
        return "再看" + this.hp + "s可领取奖励";
    }

    @Override // com.byazt.jwq.l
    public void jx() {
        com.byazt.ay.a aVar = this.xs;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(final e eVar) {
        l.hp hpVarL = super.l(eVar);
        if (hpVarL.jx()) {
            return hpVarL;
        }
        final com.byazt.ay.a aVar = new com.byazt.ay.a(this.f21736s);
        this.xs = aVar;
        aVar.w("tt_retain_gift").hp(s()).jx("继续观看").j("坚持退出");
        this.xs.hp(com.byazt.vi.a.q(this.f21736s));
        this.xs.hp(new a.hp() { // from class: com.byazt.jwq.jx.1
            @Override // com.byazt.ay.a.hp
            public void hp() {
                aVar.dismiss();
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
        this.xs.show();
        return new l.hp(true, 0, "", this.xs);
    }

    @Override // com.byazt.jwq.l
    public boolean l() {
        com.byazt.ay.a aVar = this.xs;
        return aVar != null && aVar.isShowing();
    }
}
