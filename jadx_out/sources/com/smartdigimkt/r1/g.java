package com.smartdigimkt.r1;

import android.view.View;

/* loaded from: classes5.dex */
public final class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f42955a;

    public g(m mVar) {
        this.f42955a = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m mVar = this.f42955a;
        View view2 = mVar.f42968l;
        if (view2 != null && view == view2) {
            mVar.a(1, 1, false);
            return;
        }
        View view3 = mVar.f42966j;
        if (view3 == null || view != view3) {
            mVar.a(1, 2, false);
        } else {
            mVar.a(1, 3, false);
        }
    }
}
