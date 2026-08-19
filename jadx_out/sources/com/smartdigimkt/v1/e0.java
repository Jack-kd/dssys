package com.smartdigimkt.v1;

import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.BaseMediaATView;

/* loaded from: classes5.dex */
public final class e0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseMediaATView f44458a;

    public e0(BaseMediaATView baseMediaATView) {
        this.f44458a = baseMediaATView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseMediaATView baseMediaATView = this.f44458a;
        baseMediaATView.f43255f = baseMediaATView.getMeasuredWidth();
        this.f44458a.a();
        BaseMediaATView baseMediaATView2 = this.f44458a;
        if (baseMediaATView2.getParent() != null) {
            ViewGroup.LayoutParams layoutParams = baseMediaATView2.getLayoutParams();
            layoutParams.width = baseMediaATView2.getMediaViewWidth();
            layoutParams.height = baseMediaATView2.getMediaViewHeight();
            baseMediaATView2.setLayoutParams(layoutParams);
            baseMediaATView2.postInvalidate();
        }
    }
}
