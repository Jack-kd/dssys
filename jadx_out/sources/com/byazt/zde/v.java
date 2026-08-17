package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v extends j {
    public v(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        float f2;
        float fHp = com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.f28382l.a());
        float fHp2 = com.byazt.sq.s.hp(com.byazt.wkx.j.getContext(), this.f28382l.eb());
        float f3 = 0.0f;
        if ("reverse".equals(this.f28382l.u())) {
            f2 = fHp2;
            fHp2 = 0.0f;
            f3 = fHp;
            fHp = 0.0f;
        } else {
            f2 = 0.0f;
        }
        if (com.byazt.sq.jx.hp(this.jx.getContext())) {
            fHp = -fHp;
            f3 = -f3;
        }
        this.jx.setTranslationX(fHp);
        this.jx.setTranslationY(fHp2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationX", fHp, f3).setDuration((int) (this.f28382l.e() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.jx, "translationY", fHp2, f2).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        arrayList.add(hp(duration2));
        return arrayList;
    }
}
