package com.smartdigimkt.k2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class u extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f41353a;

    public u(v vVar) {
        this.f41353a = vVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        int iIndexOfChild;
        super.onAnimationRepeat(animator);
        try {
            y yVar = this.f41353a.f41354a;
            if (yVar.f41358j == null || !yVar.a()) {
                return;
            }
            com.smartdigimkt.z3.d.a(this.f41353a.f41354a.f41358j);
            y yVar2 = this.f41353a.f41354a;
            RelativeLayout relativeLayout = (RelativeLayout) yVar2.f41307d.findViewById(com.smartdigimkt.c5.k.a(yVar2.f41304a, "myoffer_end_card_id", "id"));
            if (relativeLayout != null) {
                relativeLayout.addView(this.f41353a.f41354a.f41358j);
            } else {
                y yVar3 = this.f41353a.f41354a;
                View view = yVar3.f41310g;
                if (view == null || yVar3.f41307d.indexOfChild(view) <= 0) {
                    iIndexOfChild = -1;
                } else {
                    y yVar4 = this.f41353a.f41354a;
                    iIndexOfChild = yVar4.f41307d.indexOfChild(yVar4.f41310g);
                }
                y yVar5 = this.f41353a.f41354a;
                yVar5.f41307d.addView(yVar5.f41358j, iIndexOfChild);
            }
            this.f41353a.f41354a.f41358j.setAlpha(0.2f);
            this.f41353a.f41354a.f41358j.setVisibility(0);
            this.f41353a.f41354a.f41357i.setVisibility(8);
        } catch (Throwable unused) {
        }
    }
}
