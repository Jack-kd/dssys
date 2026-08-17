package com.smartdigimkt.x1;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.basead.ui.SimpleGuideToClickView;

/* loaded from: classes5.dex */
public final class c extends b {

    /* renamed from: e, reason: collision with root package name */
    public SimpleGuideToClickView f45063e;

    public c(View view) {
        super(view);
    }

    @Override // com.smartdigimkt.x1.b
    public final ValueAnimator b() {
        return null;
    }

    @Override // com.smartdigimkt.x1.b, com.smartdigimkt.w1.b
    public final synchronized void start() {
        View view = this.f45059a;
        if (view != null && view.getParent() != null && (this.f45059a.getParent() instanceof RelativeLayout)) {
            Context context = this.f45059a.getContext();
            if (this.f45063e == null) {
                try {
                    RelativeLayout relativeLayout = (RelativeLayout) this.f45059a.getParent();
                    relativeLayout.setClipChildren(false);
                    SimpleGuideToClickView simpleGuideToClickView = new SimpleGuideToClickView(context);
                    this.f45063e = simpleGuideToClickView;
                    simpleGuideToClickView.init(k.a(context, "myoffer_simple_guide_to_click_cta", "layout"), k.a(context, 1.0f), (int) ((context.getResources().getDisplayMetrics().density * 3.0f) + 0.5f), (int) ((context.getResources().getDisplayMetrics().density * 6.0f) + 0.5f), (int) ((context.getResources().getDisplayMetrics().density * 6.0f) + 0.5f));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(7, this.f45059a.getId());
                    layoutParams.addRule(15);
                    relativeLayout.addView(this.f45063e, layoutParams);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }
}
