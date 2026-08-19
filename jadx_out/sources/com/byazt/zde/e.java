package com.byazt.zde;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.uq.DynamicBaseWidget;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 37, 45})
/* loaded from: classes3.dex */
public class e extends j {

    /* renamed from: a, reason: collision with root package name */
    public float f28376a;

    /* renamed from: j, reason: collision with root package name */
    public hp f28377j;

    /* renamed from: w, reason: collision with root package name */
    public float f28378w;

    @com.byazt.kj.hp(hp = {0, 1, 37, 773})
    public class hp {

        /* renamed from: l, reason: collision with root package name */
        public View f28380l;

        public hp(View view) {
            this.f28380l = view;
        }

        public void hp(int i2) {
            if (!"top".equals(e.this.f28382l.hp())) {
                ViewGroup.LayoutParams layoutParams = this.f28380l.getLayoutParams();
                layoutParams.height = i2;
                this.f28380l.setLayoutParams(layoutParams);
                this.f28380l.requestLayout();
                return;
            }
            if (e.this.jx instanceof ViewGroup) {
                for (int i3 = 0; i3 < ((ViewGroup) e.this.jx).getChildCount(); i3++) {
                    ((ViewGroup) e.this.jx).getChildAt(i3).setTranslationY(i2 - e.this.f28378w);
                }
            }
            e eVar = e.this;
            eVar.jx.setTranslationY(eVar.f28378w - i2);
        }
    }

    public e(View view, com.byazt.nw.hp hpVar) {
        super(view, hpVar);
    }

    @Override // com.byazt.zde.j
    public List<ObjectAnimator> hp() {
        int i2;
        String str;
        View view = this.jx;
        if ((view instanceof ImageView) && (view.getParent() instanceof DynamicBaseWidget)) {
            this.jx = (View) this.jx.getParent();
        }
        this.jx.setAlpha(0.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.jx, "alpha", 0.0f, 1.0f).setDuration((int) (this.f28382l.e() * 1000.0d));
        this.f28377j = new hp(this.jx);
        final int i3 = this.jx.getLayoutParams().height;
        this.f28378w = i3;
        this.f28376a = this.jx.getLayoutParams().width;
        if (ScrollClickView.DIR_LEFT.equals(this.f28382l.hp()) || ScrollClickView.DIR_RIGHT.equals(this.f28382l.hp())) {
            i2 = (int) this.f28376a;
            str = "width";
        } else {
            str = "height";
            i2 = i3;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.f28377j, str, 0, i2).setDuration((int) (this.f28382l.e() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(hp(duration));
        arrayList.add(hp(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() { // from class: com.byazt.zde.e.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                e.this.f28377j.hp(i3);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator, boolean z2) {
            }
        });
        return arrayList;
    }
}
