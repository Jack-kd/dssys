package com.anythink.core.common.inner.ui.a.a;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.core.common.inner.ui.SimpleGuideToClickView;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public final class b extends a {

    /* renamed from: e, reason: collision with root package name */
    SimpleGuideToClickView f5085e;

    public b(View view) {
        super(view);
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a, com.anythink.core.common.inner.ui.a.b
    public final synchronized void a() {
        View view = this.f5080a;
        if (view != null && view.getParent() != null && (this.f5080a.getParent() instanceof RelativeLayout)) {
            Context context = this.f5080a.getContext();
            if (this.f5085e == null) {
                try {
                    RelativeLayout relativeLayout = (RelativeLayout) this.f5080a.getParent();
                    relativeLayout.setClipChildren(false);
                    SimpleGuideToClickView simpleGuideToClickView = new SimpleGuideToClickView(context);
                    this.f5085e = simpleGuideToClickView;
                    simpleGuideToClickView.init(p.a(context, "myoffer_simple_guide_to_click_cta", "layout"), p.a(context, 1.0f), p.a(context, 3.0f), p.a(context, 6.0f), p.a(context, 6.0f));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(7, this.f5080a.getId());
                    layoutParams.addRule(15);
                    relativeLayout.addView(this.f5085e, layoutParams);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a
    public final ValueAnimator e() {
        return null;
    }
}
