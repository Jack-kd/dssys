package com.smartdigimkt.r2;

import android.view.View;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f42983a;

    public e(l lVar) {
        this.f42983a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.d5.e.a(SDKContext.getInstance().d(), this.f42983a.f42990b.f41831v);
    }
}
