package com.smartdigimkt.v1;

import android.widget.FrameLayout;
import com.smartdigimkt.sdk.basead.mraid.MraidWebView;
import com.smartdigimkt.sdk.basead.ui.MraidContainerView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class s3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44606a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44607b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f44608c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MraidContainerView f44609d;

    public s3(MraidContainerView mraidContainerView, String str, String str2, int i2) {
        this.f44609d = mraidContainerView;
        this.f44606a = str;
        this.f44607b = str2;
        this.f44608c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f44609d.f43482f = new MraidWebView(SDKContext.getInstance().d());
            MraidContainerView mraidContainerView = this.f44609d;
            if (mraidContainerView.f43491o && mraidContainerView.f43482f.getParent() == null) {
                mraidContainerView.f43482f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                mraidContainerView.addView(mraidContainerView.f43482f);
            }
            String str = this.f44606a;
            String str2 = this.f44607b;
            MraidContainerView mraidContainerView2 = this.f44609d;
            MraidWebView mraidWebView = mraidContainerView2.f43482f;
            r3 r3Var = new r3(this);
            com.smartdigimkt.m3.c cVar = mraidContainerView2.f43477a;
            com.smartdigimkt.l3.a aVar = mraidContainerView2.f43478b;
            int i2 = this.f44608c;
            boolean z2 = mraidContainerView2.f43491o;
            if (mraidWebView == null) {
                return;
            }
            com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.q1.r(aVar, cVar, i2, z2, str2, r3Var, mraidWebView, str));
        } catch (Throwable th) {
            this.f44609d.f43486j = false;
            int i3 = MraidContainerView.ENDCARD_INIT;
            th.getMessage();
            j3 j3Var = this.f44609d.f43480d;
            if (j3Var != null && j3Var.f44510b != null) {
                j3Var.f44509a.post(new i3(j3Var));
            }
            u3 u3Var = this.f44609d.f43483g;
            if (u3Var != null) {
                th.getMessage();
                u3Var.b();
            }
        }
    }
}
