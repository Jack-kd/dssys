package com.smartdigimkt.r1;

import android.content.Context;
import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;
import com.smartdigimkt.sdk.basead.ui.SinglePictureSplashATView;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f42976a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f42977b;

    public p(q qVar, ViewGroup viewGroup) {
        this.f42977b = qVar;
        this.f42976a = viewGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q qVar = this.f42977b;
        if (BaseSdkSplashATView.isSinglePicture(qVar.f42949e, qVar.f42946b.f41644r)) {
            q qVar2 = this.f42977b;
            Context context = this.f42976a.getContext();
            q qVar3 = this.f42977b;
            qVar2.f42979h = new SinglePictureSplashATView(context, qVar3.f42946b, qVar3.f42949e, qVar3.f42978g);
        } else {
            q qVar4 = this.f42977b;
            Context context2 = this.f42976a.getContext();
            q qVar5 = this.f42977b;
            qVar4.f42979h = new AsseblemSplashATView(context2, qVar5.f42946b, qVar5.f42949e, qVar5.f42978g);
        }
        q qVar6 = this.f42977b;
        qVar6.f42979h.setDontCountDown(qVar6.f42980i);
        this.f42976a.addView(this.f42977b.f42979h);
    }
}
