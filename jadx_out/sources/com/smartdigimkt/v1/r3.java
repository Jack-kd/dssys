package com.smartdigimkt.v1;

import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.ui.ClickToReLoadView;
import com.smartdigimkt.sdk.basead.ui.MraidContainerView;

/* loaded from: classes5.dex */
public final class r3 implements com.smartdigimkt.q1.s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s3 f44593a;

    public r3(s3 s3Var) {
        this.f44593a = s3Var;
    }

    @Override // com.smartdigimkt.q1.s
    public final void a() {
        int i2 = MraidContainerView.ENDCARD_INIT;
        MraidContainerView mraidContainerView = this.f44593a.f44609d;
        mraidContainerView.f43486j = false;
        mraidContainerView.a();
        j3 j3Var = this.f44593a.f44609d.f43480d;
        if (j3Var == null || j3Var.f44510b == null) {
            return;
        }
        j3Var.f44509a.post(new i3(j3Var));
    }

    @Override // com.smartdigimkt.q1.s
    public final void a(com.smartdigimkt.i0.f fVar) {
        this.f44593a.f44609d.f43486j = false;
        int i2 = MraidContainerView.ENDCARD_INIT;
        fVar.a();
        MraidContainerView mraidContainerView = this.f44593a.f44609d;
        if (mraidContainerView.f43481e == null) {
            ClickToReLoadView clickToReLoadView = new ClickToReLoadView(mraidContainerView.getContext());
            mraidContainerView.f43481e = clickToReLoadView;
            clickToReLoadView.setListener(new t3(mraidContainerView));
        }
        mraidContainerView.addView(mraidContainerView.f43481e, new FrameLayout.LayoutParams(-1, -1));
        j3 j3Var = this.f44593a.f44609d.f43480d;
        if (j3Var == null || j3Var.f44510b == null) {
            return;
        }
        j3Var.f44509a.post(new i3(j3Var));
    }
}
