package com.smartdigimkt.q1;

import android.view.ViewTreeObserver;
import com.smartdigimkt.sdk.basead.mraid.MraidWebView;
import com.smartdigimkt.v1.p3;
import com.smartdigimkt.v1.u3;

/* loaded from: classes5.dex */
public final class u implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidWebView f42710a;

    public u(MraidWebView mraidWebView) {
        this.f42710a = mraidWebView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        u3 u3Var;
        try {
            MraidWebView mraidWebView = this.f42710a;
            if (!mraidWebView.f43163p) {
                mraidWebView.getViewTreeObserver().removeOnPreDrawListener(this);
                MraidWebView mraidWebView2 = this.f42710a;
                mraidWebView2.f43163p = true;
                int[] iArr = new int[2];
                mraidWebView2.getLocationInWindow(iArr);
                d.a(this.f42710a, iArr[0], iArr[1]);
                MraidWebView mraidWebView3 = this.f42710a;
                d.a(mraidWebView3, iArr[0], iArr[1], mraidWebView3.getWidth(), this.f42710a.getHeight());
                MraidWebView.a(this.f42710a);
                MraidWebView mraidWebView4 = this.f42710a;
                if (mraidWebView4.f43165r) {
                    MraidWebView.b(mraidWebView4);
                }
                g gVar = this.f42710a.f43162o;
                if (gVar != null && (u3Var = ((p3) gVar).f44574a.f43483g) != null) {
                    u3Var.c();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }
}
