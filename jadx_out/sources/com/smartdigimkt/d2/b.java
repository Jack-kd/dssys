package com.smartdigimkt.d2;

import android.view.View;
import com.smartdigimkt.r2.m;

/* loaded from: classes5.dex */
public final class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f39883a;

    public b(m mVar) {
        this.f39883a = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m mVar = this.f39883a;
        if (mVar != null) {
            mVar.a(-100, 13);
        }
    }
}
