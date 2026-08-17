package com.smartdigimkt.sdk.basead.ui.h5template;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.core.common.inner.b.b;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.j2.e;
import com.smartdigimkt.j2.f;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;
import com.smartdigimkt.sdk.basead.ui.CloseImageView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebContainerView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.v1.r;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class WTWebViewSplashATView extends BaseSdkSplashATView {

    /* renamed from: n0, reason: collision with root package name */
    public static final /* synthetic */ int f43968n0 = 0;

    /* renamed from: l0, reason: collision with root package name */
    public WTWebContainerView f43969l0;

    /* renamed from: m0, reason: collision with root package name */
    public CloseImageView f43970m0;

    public WTWebViewSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(int i2) {
        super.a(i2);
        WTWebContainerView wTWebContainerView = this.f43969l0;
        if (wTWebContainerView != null) {
            r rVar = this.f43230p;
            wTWebContainerView.notifyInnerAdEvent(i2, rVar != null ? rVar.f41296f : null);
        }
    }

    public final /* synthetic */ void b(View view) {
        a(9, true);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        WTWebContainerView wTWebContainerView = this.f43969l0;
        if (wTWebContainerView != null) {
            wTWebContainerView.release();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_h5_template_splash", "layout"), this);
        p();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public int getATViewType() {
        return 100;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public boolean needShowSplashEndCard() {
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void p() {
        c cVar;
        super.p();
        setDontCountDown(true);
        t();
        WTWebContainerView wTWebContainerView = new WTWebContainerView(getContext(), this.f43217c, this.f43216b, new e(this));
        this.f43969l0 = wTWebContainerView;
        d dVar = this.f43229o;
        if (dVar != null) {
            dVar.f39649p = wTWebContainerView;
        }
        Object aVar = null;
        try {
            cVar = this.f43217c;
        } catch (Throwable th) {
            th.getMessage();
        }
        if (cVar != null) {
            ConcurrentHashMap concurrentHashMap = t.f40027c;
            if (concurrentHashMap.containsKey(t.a(3, (a) null, cVar))) {
                WTWebView wTWebView = (WTWebView) concurrentHashMap.get(t.a(3, (a) null, this.f43217c));
                if (wTWebView != null) {
                    aVar = wTWebView.getJsCommunicationObject();
                }
            }
            if (aVar != null && (aVar instanceof com.smartdigimkt.z2.a)) {
                ((com.smartdigimkt.z2.a) aVar).f45104b = this.f43229o;
                ((com.smartdigimkt.z2.a) aVar).f45103a = new f(this);
            }
            if (aVar != null || !(aVar instanceof com.smartdigimkt.z2.a)) {
                b(new com.smartdigimkt.i0.f(b.f4594k, "empty jsCommunication"));
            }
            this.f43969l0.init(aVar);
            this.f43969l0.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            addView(this.f43969l0, 1);
            return;
        }
        HashMap map = t.f40025a;
        aVar = new com.smartdigimkt.z2.a();
        if (aVar != null) {
            ((com.smartdigimkt.z2.a) aVar).f45104b = this.f43229o;
            ((com.smartdigimkt.z2.a) aVar).f45103a = new f(this);
        }
        if (aVar != null) {
        }
        b(new com.smartdigimkt.i0.f(b.f4594k, "empty jsCommunication"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void q() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void r() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public void setDontCountDown(boolean z2) {
        super.setDontCountDown(true);
    }

    public final void t() {
        CloseImageView closeImageView = (CloseImageView) findViewById(k.a(getContext(), "myoffer_btn_close_id", "id"));
        this.f43970m0 = closeImageView;
        if (closeImageView == null) {
            return;
        }
        closeImageView.setVisibility(8);
        this.f43970m0.setOnClickListener(new View.OnClickListener() { // from class: d1.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f50663b.b(view);
            }
        });
    }

    public WTWebViewSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }

    public final void b(com.smartdigimkt.i0.f fVar) {
        fVar.a();
        CloseImageView closeImageView = this.f43970m0;
        if (closeImageView != null) {
            closeImageView.setVisibility(0);
            this.f43970m0.setAlpha(0.2f);
            this.f43970m0.animate().alpha(1.0f).setDuration(300L).start();
        }
        a(new com.smartdigimkt.i0.f(b.f4594k, b.af + fVar.a()));
        a(10, true);
    }
}
