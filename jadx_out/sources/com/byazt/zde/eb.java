package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 94})
/* loaded from: classes3.dex */
public class eb extends j {
    public eb(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> hp() {
        this.jx.setTag(2097610709, Integer.valueOf(this.f28382l.jx()));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "marqueeValue", 0.0f, 1.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
