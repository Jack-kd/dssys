package com.smartdigimkt.v1;

import android.view.MotionEvent;
import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseBannerATView;

/* loaded from: classes5.dex */
public final class c0 implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseBannerATView f44440a;

    public c0(BaseBannerATView baseBannerATView) {
        this.f44440a = baseBannerATView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        com.smartdigimkt.p1.a aVar;
        if (motionEvent.getAction() != 0 || (aVar = this.f44440a.f43242E) == null) {
            return true;
        }
        aVar.onAdClosed();
        return true;
    }
}
