package com.smartdigimkt.m2;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.TextView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.QAIncentiveTaskView;

/* loaded from: classes5.dex */
public final class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ QAIncentiveTaskView f41767a;

    public m(QAIncentiveTaskView qAIncentiveTaskView) {
        this.f41767a = qAIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        QAIncentiveTaskView qAIncentiveTaskView = this.f41767a;
        ((com.smartdigimkt.k2.n) qAIncentiveTaskView.f43981b).f41322a.f41331o = 1;
        if (qAIncentiveTaskView.f43999i != null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
            alphaAnimation.setDuration(1000L);
            alphaAnimation.setAnimationListener(new l(this));
            TextView textView = this.f41767a.f43995e;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.f41767a.f43996f;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            TextView textView3 = this.f41767a.f43997g;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            this.f41767a.f43999i.setVisibility(0);
            this.f41767a.f43999i.startAnimation(alphaAnimation);
            this.f41767a.b();
        }
    }
}
