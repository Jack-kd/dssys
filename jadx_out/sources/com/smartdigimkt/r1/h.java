package com.smartdigimkt.r1;

import android.view.View;

/* loaded from: classes5.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f42956a;

    public h(m mVar) {
        this.f42956a = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m mVar = this.f42956a;
        View view2 = mVar.f42968l;
        if (view2 != null && view == view2) {
            mVar.a(1, 1, true);
            return;
        }
        View view3 = mVar.f42966j;
        if (view3 == null || view != view3) {
            mVar.a(1, 2, true);
        } else {
            mVar.a(1, 3, true);
        }
    }
}
