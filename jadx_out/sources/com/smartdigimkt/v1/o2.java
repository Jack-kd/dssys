package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.PanelView;

/* loaded from: classes5.dex */
public final class o2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p2 f44565a;

    public o2(p2 p2Var) {
        this.f44565a = p2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        super/*com.smartdigimkt.sdk.basead.ui.BaseScreenATView*/.D();
        PanelView panelView = this.f44565a.f44573b.f43404E0;
        if (panelView != null) {
            panelView.setVisibility(8);
        }
    }
}
