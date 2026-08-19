package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import com.sigmob.sdk.base.common.C1244a;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 150})
/* loaded from: classes3.dex */
public class q extends j {
    public q(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, C1244a.f35650B, 0.0f, 360.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
