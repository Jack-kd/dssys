package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;

/* loaded from: classes5.dex */
public final class k0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44517a;

    public k0(BaseScreenATView baseScreenATView) {
        this.f44517a = baseScreenATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BaseScreenATView baseScreenATView = this.f44517a;
        baseScreenATView.a(111);
        baseScreenATView.f43281V = false;
        com.smartdigimkt.c2.d dVar = baseScreenATView.f43229o;
        if (dVar != null) {
            dVar.b();
        }
        if (baseScreenATView.f43293k0 == null) {
            baseScreenATView.f43293k0 = new com.smartdigimkt.x.n();
        }
        baseScreenATView.f43293k0.a(baseScreenATView.getContext(), baseScreenATView.f43217c, baseScreenATView.f43216b, new y0(baseScreenATView));
    }
}
