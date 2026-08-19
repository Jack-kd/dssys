package com.smartdigimkt.sdk.basead.ui.h5template;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.j2.a;
import com.smartdigimkt.j2.b;
import com.smartdigimkt.j2.c;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.CloseImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebContainerView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.v1.r;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class WTWebViewBaseScreenATView extends BaseScreenATView {

    /* renamed from: D0, reason: collision with root package name */
    public static final /* synthetic */ int f43966D0 = 0;

    /* renamed from: C0, reason: collision with root package name */
    public WTWebContainerView f43967C0;

    public WTWebViewBaseScreenATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void C() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void I() {
        D();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void J() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void K() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void a(List list) {
        super.a(list);
        BasePlayerView basePlayerView = this.f43229o.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setVisibility(4);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final boolean b(int i2) {
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void c(int i2) {
        M();
        WTWebContainerView wTWebContainerView = this.f43967C0;
        if (wTWebContainerView != null) {
            wTWebContainerView.release();
        }
        super.c(i2);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_h5_template_half_screen", "layout"), this);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final boolean f() {
        return false;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public int getATViewType() {
        return 100;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public CloseImageView getCloseView() {
        return null;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public int getPanelViewTypeForShowEndCard() {
        return 108;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void r() {
        CloseImageView closeImageView = this.f43295m0;
        if (closeImageView != null) {
            closeImageView.setVisibility(0);
            this.f43295m0.setAlpha(0.2f);
            this.f43295m0.animate().alpha(1.0f).setDuration(1000L).start();
            this.f43295m0.setOnClickListener(new c(this));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void v() {
        com.smartdigimkt.m3.c cVar;
        super.v();
        WTWebContainerView wTWebContainerView = new WTWebContainerView(getContext(), this.f43217c, this.f43216b, new a(this));
        this.f43967C0 = wTWebContainerView;
        d dVar = this.f43229o;
        if (dVar != null) {
            dVar.f39649p = wTWebContainerView;
            dVar.f39650q = true;
            dVar.b();
        }
        Object aVar = null;
        try {
            cVar = this.f43217c;
        } catch (Throwable unused) {
        }
        if (cVar != null) {
            ConcurrentHashMap concurrentHashMap = t.f40027c;
            if (concurrentHashMap.containsKey(t.a(3, (com.smartdigimkt.l3.a) null, cVar))) {
                WTWebView wTWebView = (WTWebView) concurrentHashMap.get(t.a(3, (com.smartdigimkt.l3.a) null, this.f43217c));
                if (wTWebView != null) {
                    aVar = wTWebView.getJsCommunicationObject();
                }
            }
            if (aVar != null && (aVar instanceof com.smartdigimkt.y2.a)) {
                ((com.smartdigimkt.y2.a) aVar).f45104b = this.f43229o;
                ((com.smartdigimkt.y2.a) aVar).f45103a = new b(this);
            }
            if (aVar != null || !(aVar instanceof com.smartdigimkt.y2.a)) {
                a(new f(com.anythink.core.common.inner.b.b.f4594k, "Adx template show fail without exception:empty jsCommunication"));
                c(10);
            }
            this.f43967C0.init(aVar);
            if (this.f43289g0 != null) {
                this.f43967C0.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f43289g0.addView(this.f43967C0, 1);
                return;
            }
            return;
        }
        HashMap map = t.f40025a;
        aVar = new com.smartdigimkt.y2.a();
        if (aVar != null) {
            ((com.smartdigimkt.y2.a) aVar).f45104b = this.f43229o;
            ((com.smartdigimkt.y2.a) aVar).f45103a = new b(this);
        }
        if (aVar != null) {
        }
        a(new f(com.anythink.core.common.inner.b.b.f4594k, "Adx template show fail without exception:empty jsCommunication"));
        c(10);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseScreenATView
    public final void y() {
        c(9);
    }

    public WTWebViewBaseScreenATView(Context context, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, int i2, int i3) {
        super(context, aVar, cVar, str, i2, i3);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(int i2) {
        super.a(i2);
        WTWebContainerView wTWebContainerView = this.f43967C0;
        if (wTWebContainerView != null) {
            r rVar = this.f43230p;
            wTWebContainerView.notifyInnerAdEvent(i2, rVar != null ? rVar.f41296f : null);
        }
    }
}
