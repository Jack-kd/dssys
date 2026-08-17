package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.ClickToReLoadView;

/* loaded from: classes5.dex */
public final class e2 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public long f44460a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ClickToReLoadView f44461b;

    public e2(ClickToReLoadView clickToReLoadView) {
        this.f44461b = clickToReLoadView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f44460a > 1000) {
            this.f44460a = jCurrentTimeMillis;
            f2 f2Var = this.f44461b.f43353c;
            if (f2Var != null) {
                ((t3) f2Var).f44617a.loadMraidWebView(3);
            }
        }
    }
}
