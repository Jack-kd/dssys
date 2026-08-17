package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 19})
/* loaded from: classes3.dex */
public class jl extends j {
    public jl(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> hp() {
        int i2;
        int i3;
        this.jx.setTag(2097610711, Integer.valueOf(this.f28382l.j()));
        View view = this.jx;
        if (view == null || !com.byazt.sq.jx.hp(view.getContext())) {
            i2 = 0;
            i3 = 1;
        } else {
            i3 = 0;
            i2 = 1;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "shineValue", i2, i3).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
