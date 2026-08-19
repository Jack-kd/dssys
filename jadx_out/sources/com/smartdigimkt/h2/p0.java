package com.smartdigimkt.h2;

import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PicVerifyG2CV2View;

/* loaded from: classes5.dex */
public final class p0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q0 f40523a;

    public p0(q0 q0Var) {
        this.f40523a = q0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((RelativeLayout.LayoutParams) this.f40523a.f40526b.f43910i.getLayoutParams()).setMargins(0, (this.f40523a.f40525a / 2) + (this.f40523a.f40526b.getMeasuredHeight() / 2), 0, 0);
        this.f40523a.f40526b.f43910i.setVisibility(0);
        PicVerifyG2CV2View.a(this.f40523a.f40526b);
    }
}
