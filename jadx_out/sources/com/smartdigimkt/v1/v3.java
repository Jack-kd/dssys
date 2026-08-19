package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.MraidEndCardView;

/* loaded from: classes5.dex */
public final class v3 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidEndCardView f44632a;

    public v3(MraidEndCardView mraidEndCardView) {
        this.f44632a = mraidEndCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MraidEndCardView mraidEndCardView = this.f44632a;
        x3 x3Var = mraidEndCardView.f43496f;
        if (x3Var != null) {
            String str = mraidEndCardView.f43246a.f41821l;
            String str2 = BaseScreenATView.TAG;
            BaseScreenATView baseScreenATView = ((w0) x3Var).f44635a;
            baseScreenATView.f43217c.f41821l = str;
            baseScreenATView.a(1, 13);
        }
    }
}
