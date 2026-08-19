package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.FullScreenHeaderPanelView;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;

/* loaded from: classes5.dex */
public final class t2 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullScreenHeaderPanelView f44616a;

    public t2(FullScreenHeaderPanelView fullScreenHeaderPanelView) {
        this.f44616a = fullScreenHeaderPanelView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        v2 v2Var;
        FullScreenHeaderPanelView fullScreenHeaderPanelView = this.f44616a;
        com.smartdigimkt.m3.e eVar = fullScreenHeaderPanelView.f43422h;
        if (eVar != null) {
            if (eVar.f41927e != 1) {
                v2 v2Var2 = fullScreenHeaderPanelView.f43423i;
                if (v2Var2 != null) {
                    ((s2) v2Var2).f44605a.a(1, 23);
                    return;
                }
                return;
            }
            ScanningAnimButton scanningAnimButton = fullScreenHeaderPanelView.f43418d;
            if (scanningAnimButton == null || view != scanningAnimButton || (v2Var = fullScreenHeaderPanelView.f43423i) == null) {
                return;
            }
            ((s2) v2Var).f44605a.a(1, 23);
        }
    }
}
