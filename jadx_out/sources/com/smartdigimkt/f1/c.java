package com.smartdigimkt.f1;

import android.view.MotionEvent;
import android.view.View;
import com.smartdigimkt.sdk.basead.express.web.BaseWebView;

/* loaded from: classes5.dex */
public final class c implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseWebView f40196a;

    public c(BaseWebView baseWebView) {
        this.f40196a = baseWebView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f40196a.lastTouchTime = System.currentTimeMillis();
        }
        View.OnTouchListener onTouchListener = this.f40196a.f43151d;
        if (onTouchListener != null) {
            return onTouchListener.onTouch(view, motionEvent);
        }
        return false;
    }
}
