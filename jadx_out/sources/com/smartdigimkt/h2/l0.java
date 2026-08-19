package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.LuckyBagG2CV2View;

/* loaded from: classes5.dex */
public final class l0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LuckyBagG2CV2View f40506a;

    public l0(LuckyBagG2CV2View luckyBagG2CV2View) {
        this.f40506a = luckyBagG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f40506a.removeAllViews();
        this.f40506a.b();
    }
}
