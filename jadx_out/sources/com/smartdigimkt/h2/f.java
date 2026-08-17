package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.ChopOnceG2CV2View;

/* loaded from: classes5.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChopOnceG2CV2View f40496a;

    public f(ChopOnceG2CV2View chopOnceG2CV2View) {
        this.f40496a = chopOnceG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f40496a.removeAllViews();
        this.f40496a.b();
    }
}
