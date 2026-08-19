package com.smartdigimkt.f0;

import android.view.View;
import com.smartdigimkt.r2.m;

/* loaded from: classes5.dex */
public final class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f40183a;

    public d(m mVar) {
        this.f40183a = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m mVar = this.f40183a;
        if (mVar != null) {
            mVar.a(1, 1);
        }
    }
}
