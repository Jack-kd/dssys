package com.smartdigimkt.s2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;

/* loaded from: classes5.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandPageActivity f43120a;

    public e(WebLandPageActivity webLandPageActivity) {
        this.f43120a = webLandPageActivity;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        WebLandPageActivity webLandPageActivity = this.f43120a;
        if (webLandPageActivity.f44035a == null || iIntValue % webLandPageActivity.f44043i != 0) {
            return;
        }
        webLandPageActivity.f44043i = webLandPageActivity.f44042h.nextInt(12) + 3;
        this.f43120a.f44035a.setProgress(iIntValue);
    }
}
