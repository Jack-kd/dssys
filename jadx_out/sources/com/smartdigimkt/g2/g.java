package com.smartdigimkt.g2;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.GuideToClickView;
import com.smartdigimkt.sdk.basead.ui.simpleview.SimpleCircleView;
import com.smartdigimkt.v1.r0;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class g extends d {

    /* renamed from: p, reason: collision with root package name */
    public GuideToClickView f40337p;

    /* renamed from: q, reason: collision with root package name */
    public SimpleCircleView f40338q;

    public g(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.k2.e eVar, int i2, ViewGroup viewGroup) {
        super(context, cVar, aVar, eVar, i2, viewGroup);
    }

    @Override // com.smartdigimkt.g2.d
    public final void a() {
        GuideToClickView guideToClickView = this.f40337p;
        if (guideToClickView != null) {
            com.smartdigimkt.z3.d.a(guideToClickView);
        }
        SimpleCircleView simpleCircleView = this.f40338q;
        if (simpleCircleView != null) {
            com.smartdigimkt.z3.d.a(simpleCircleView);
        }
        this.f40329j = false;
        this.f40330k = null;
        CountDownView countDownView = this.f40333n;
        if (countDownView != null) {
            countDownView.refresh(this.f40332m);
            this.f40333n.setOnClickListener(new f(this));
        }
        r0 r0Var = this.f40327h;
        if (r0Var != null) {
            r0Var.a(false);
        }
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(RelativeLayout relativeLayout) {
        if (!z.d(this.f40321b, this.f40322c)) {
            a(false);
        }
        this.f40338q = new SimpleCircleView(this.f40320a);
        GuideToClickView guideToClickView = new GuideToClickView(this.f40320a);
        this.f40337p = guideToClickView;
        guideToClickView.hideBackground();
        relativeLayout.addView(this.f40338q, -1, -1);
        relativeLayout.addView(this.f40337p, -1, -1);
        b(this.f40322c.f41644r.f41881O0);
        this.f40337p.setOnClickListener(new e(this));
        r0 r0Var = this.f40327h;
        if (r0Var != null) {
            r0Var.a(true);
        }
    }
}
