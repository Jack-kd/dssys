package com.smartdigimkt.g2;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RPSecondEndCardView;
import com.smartdigimkt.sdk.basead.ui.simpleview.SimplePlayer;
import com.smartdigimkt.v1.r0;

/* loaded from: classes5.dex */
public final class u implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f40360a;

    public u(v vVar) {
        this.f40360a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        v vVar = this.f40360a;
        CountDownView countDownView = vVar.f40333n;
        Context context = vVar.f40320a;
        countDownView.setCountDownEndDrawable(com.smartdigimkt.z3.d.a(context, com.smartdigimkt.c5.k.a(context, "myoffer_base_close_icon", "drawable")));
        this.f40360a.f40333n.setOnClickListener(new s(this));
        SimplePlayer simplePlayer = this.f40360a.f40362q;
        if (simplePlayer != null) {
            simplePlayer.stopVideo();
        }
        r0 r0Var = this.f40360a.f40327h;
        if (r0Var != null) {
            r0Var.a(true);
        }
        RPSecondEndCardView rPSecondEndCardView = this.f40360a.f40363r;
        if (rPSecondEndCardView != null && rPSecondEndCardView.getParent() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            v vVar2 = this.f40360a;
            vVar2.f40361p.addView(vVar2.f40363r, 1, layoutParams);
            this.f40360a.f40363r.setSecondECClickListener(new t(this));
        }
        v vVar3 = this.f40360a;
        com.smartdigimkt.r2.n.a(vVar3.f40333n, true, vVar3.f40322c, false);
        this.f40360a.a(true);
    }
}
