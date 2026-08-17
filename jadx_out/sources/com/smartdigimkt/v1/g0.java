package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;

/* loaded from: classes5.dex */
public final class g0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44478a;

    public g0(BaseScreenATView baseScreenATView) {
        this.f44478a = baseScreenATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j3 j3Var = this.f44478a.f43292j0;
        if (j3Var == null || j3Var.f44510b == null) {
            return;
        }
        j3Var.f44509a.post(new i3(j3Var));
    }
}
