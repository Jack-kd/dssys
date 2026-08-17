package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.EndCardView;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;

/* loaded from: classes5.dex */
public final class i2 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EndCardView f44498a;

    public i2(EndCardView endCardView) {
        this.f44498a = endCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d0 d0Var;
        EndCardView endCardView = this.f44498a;
        com.smartdigimkt.m3.e eVar = endCardView.f43248c;
        if (eVar != null) {
            if (eVar.f41927e == 0) {
                int i2 = view != endCardView.f43399i ? 7 : 6;
                d0 d0Var2 = endCardView.mListener;
                if (d0Var2 != null) {
                    d0Var2.a(i2);
                    return;
                }
                return;
            }
            ScanningAnimButton scanningAnimButton = endCardView.f43399i;
            if (scanningAnimButton == null || view != scanningAnimButton || scanningAnimButton.getVisibility() != 0 || (d0Var = this.f44498a.mListener) == null) {
                return;
            }
            d0Var.a(6);
        }
    }
}
