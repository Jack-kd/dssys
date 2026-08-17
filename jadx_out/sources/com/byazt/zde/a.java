package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 54})
/* loaded from: classes3.dex */
public class a extends j {
    public a(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        float f2 = this.jx.getLayoutParams().width;
        this.jx.setTranslationX(f2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "translationX", f2, 0.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.jx, "alpha", 0.0f, 1.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        arrayList.add(hp(duration2));
        return arrayList;
    }
}
