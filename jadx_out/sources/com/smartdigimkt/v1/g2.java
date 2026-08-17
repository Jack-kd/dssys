package com.smartdigimkt.v1;

import android.graphics.Rect;
import com.smartdigimkt.sdk.basead.ui.CloseFrameLayout;

/* loaded from: classes5.dex */
public final class g2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CloseFrameLayout f44480a;

    public g2(CloseFrameLayout closeFrameLayout) {
        this.f44480a = closeFrameLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44480a.f43356b = new Rect();
        CloseFrameLayout closeFrameLayout = this.f44480a;
        closeFrameLayout.getHitRect(closeFrameLayout.f43356b);
        float fWidth = this.f44480a.f43356b.width();
        CloseFrameLayout closeFrameLayout2 = this.f44480a;
        int i2 = ((int) ((closeFrameLayout2.f43355a - 1.0f) * fWidth)) / 2;
        float fHeight = closeFrameLayout2.f43356b.height();
        CloseFrameLayout closeFrameLayout3 = this.f44480a;
        int i3 = ((int) ((closeFrameLayout3.f43355a - 1.0f) * fHeight)) / 2;
        Rect rect = closeFrameLayout3.f43356b;
        rect.top -= i3;
        rect.bottom += i3;
        rect.left -= i2;
        rect.right += i2;
    }
}
