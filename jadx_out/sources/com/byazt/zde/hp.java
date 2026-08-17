package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 28})
/* loaded from: classes3.dex */
public class hp extends j {
    public hp(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        float fVv = this.f28382l.vv() / 100.0f;
        float fEc = this.f28382l.ec() / 100.0f;
        if ("reverse".equals(this.f28382l.u()) && this.f28382l.k() <= 0.0d) {
            fEc = fVv;
            fVv = fEc;
        }
        this.jx.setAlpha(fVv);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "alpha", fVv, fEc).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
