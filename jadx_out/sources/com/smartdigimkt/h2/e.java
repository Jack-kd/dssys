package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.ChopOnceG2CV2View;

/* loaded from: classes5.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChopOnceG2CV2View f40475a;

    public e(ChopOnceG2CV2View chopOnceG2CV2View) {
        this.f40475a = chopOnceG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f40475a.removeAllViews();
        this.f40475a.b();
    }
}
