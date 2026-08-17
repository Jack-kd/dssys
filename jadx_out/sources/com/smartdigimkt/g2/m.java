package com.smartdigimkt.g2;

import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;
import com.smartdigimkt.v1.r0;

/* loaded from: classes5.dex */
public final class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f40346a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f40347b;

    public m(o oVar, RelativeLayout relativeLayout) {
        this.f40347b = oVar;
        this.f40346a = relativeLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CountDownView countDownView;
        r0 r0Var = this.f40347b.f40327h;
        if (r0Var != null) {
            r0Var.a(true);
        }
        SecondEndCardView secondEndCardView = this.f40347b.f40349p;
        if (secondEndCardView != null && secondEndCardView.getParent() == null) {
            o oVar = this.f40347b;
            if (oVar.f40352s) {
                ViewGroup viewGroup = oVar.f40326g;
                if (viewGroup != null) {
                    viewGroup.setVisibility(4);
                    if (this.f40347b.f40326g.getParent() instanceof ViewGroup) {
                        ((ViewGroup) this.f40347b.f40326g.getParent()).addView(this.f40347b.f40349p, -1, -1);
                    }
                }
            } else {
                this.f40346a.addView(oVar.f40349p, -1, -1);
            }
            o oVar2 = this.f40347b;
            oVar2.f40354u = oVar2.f40349p;
            oVar2.f40350q = new com.smartdigimkt.r2.l(oVar2.f40321b, oVar2.f40322c);
            o oVar3 = this.f40347b;
            oVar3.f40350q.a(oVar3.f40349p);
            this.f40347b.f40349p.setSecondECClickListener(new l(this));
        }
        o oVar4 = this.f40347b;
        oVar4.b(oVar4.f40322c.f41644r.f41884P0);
        o oVar5 = this.f40347b;
        if (oVar5.f40352s && (countDownView = oVar5.f40333n) != null) {
            com.smartdigimkt.z3.d.a(countDownView);
            ViewGroup.LayoutParams layoutParams = this.f40347b.f40333n.getLayoutParams();
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height);
            layoutParams2.addRule(11);
            layoutParams2.setMargins(0, com.smartdigimkt.c5.k.a(this.f40347b.f40320a, 8.0f), com.smartdigimkt.c5.k.a(this.f40347b.f40320a, 8.0f), 0);
            o oVar6 = this.f40347b;
            oVar6.f40349p.addCloseView(oVar6.f40333n, layoutParams2);
        }
        this.f40347b.a(true);
    }
}
