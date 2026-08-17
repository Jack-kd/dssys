package com.byazt.zde;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.uq.DynamicBaseWidget;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu extends j {
    public gu(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 == null || !(viewGroup2 instanceof DynamicBaseWidget)) {
                return;
            }
            viewGroup2.setClipChildren(false);
            viewGroup2.setClipToPadding(false);
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 == null || !(viewGroup3 instanceof DynamicBaseWidget)) {
                return;
            }
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        float f2;
        float fGu = (float) this.f28382l.gu();
        float fJl = (float) this.f28382l.jl();
        String strU = this.f28382l.u();
        float f3 = 1.0f;
        if ("reverse".equals(strU) || "alternate-reverse".equals(strU)) {
            f2 = 1.0f;
        } else {
            f2 = fJl;
            fJl = 1.0f;
            f3 = fGu;
            fGu = 1.0f;
        }
        this.jx.setTag(2097610710, this.f28382l.l());
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "scaleX", fGu, f3).setDuration((int) (this.f28382l.e() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.jx, "scaleY", fJl, f2).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        arrayList.add(hp(duration2));
        return arrayList;
    }
}
