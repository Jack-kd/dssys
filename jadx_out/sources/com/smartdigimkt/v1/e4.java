package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;
import com.smartdigimkt.sdk.basead.ui.PanelView;

/* loaded from: classes5.dex */
public final class e4 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PanelView f44463a;

    public e4(PanelView panelView) {
        this.f44463a = panelView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k4 k4Var;
        PanelView panelView = this.f44463a;
        com.smartdigimkt.m3.e eVar = panelView.f43518j;
        if (eVar != null) {
            if (eVar.f41927e == 1) {
                if (view != panelView.f43514f || (k4Var = panelView.f43516h) == null) {
                    return;
                }
                k4Var.a(1, 1);
                return;
            }
            k4 k4Var2 = panelView.f43516h;
            if (k4Var2 != null) {
                if (view == panelView.f43514f) {
                    k4Var2.a(1, 1);
                    return;
                }
                BaseShakeView baseShakeView = panelView.f43515g;
                if (baseShakeView == null || view != baseShakeView) {
                    k4Var2.a(1, 2);
                } else {
                    k4Var2.a(1, 11);
                }
            }
        }
    }
}
