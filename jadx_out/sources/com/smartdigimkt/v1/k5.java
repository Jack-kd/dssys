package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;

/* loaded from: classes5.dex */
public final class k5 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimplePlayerMediaView f44522a;

    public k5(SimplePlayerMediaView simplePlayerMediaView) {
        this.f44522a = simplePlayerMediaView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SimplePlayerMediaView simplePlayerMediaView = this.f44522a;
        simplePlayerMediaView.f43625o = false;
        simplePlayerMediaView.f43619i.setVisibility(8);
        com.smartdigimkt.c2.d dVar = this.f44522a.f43612b;
        if (dVar != null) {
            dVar.c();
        }
    }
}
