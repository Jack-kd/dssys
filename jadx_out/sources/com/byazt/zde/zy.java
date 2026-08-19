package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.uq.DynamicImageView;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 302})
/* loaded from: classes3.dex */
public class zy extends j {
    public zy(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        View view = this.jx;
        if ((view instanceof ImageView) && (view.getParent() instanceof DynamicImageView)) {
            View view2 = (View) this.jx.getParent();
            this.jx = view2;
            ((ViewGroup) view2).setClipChildren(true);
            ((ViewGroup) this.jx.getParent()).setClipChildren(true);
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "stretchValue", 0.0f, 1.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        return arrayList;
    }
}
