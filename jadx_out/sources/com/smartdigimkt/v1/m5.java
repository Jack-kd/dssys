package com.smartdigimkt.v1;

import android.view.View;
import android.widget.ImageView;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;
import com.smartdigimkt.sdk.basead.ui.SimplePlayerMediaView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;

/* loaded from: classes5.dex */
public final class m5 implements com.smartdigimkt.y1.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f44544a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44545b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SimplePlayerMediaView f44546c;

    public m5(SimplePlayerMediaView simplePlayerMediaView, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar) {
        this.f44546c = simplePlayerMediaView;
        this.f44544a = aVar;
        this.f44545b = cVar;
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.y1.k
    public final void b() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void c() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void d() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void e() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void f() {
        ImageView imageView = this.f44546c.f43621k;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = this.f44546c.f43622l;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
        com.smartdigimkt.c2.d dVar = this.f44546c.f43612b;
        BasePlayerView basePlayerView = dVar == null ? null : dVar.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setClickable(true);
        }
        SimplePlayerMediaView simplePlayerMediaView = this.f44546c;
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = simplePlayerMediaView.f43616f;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoAdStartPlay(simplePlayerMediaView.f43615e);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void g() {
        View.OnClickListener onClickListener;
        com.smartdigimkt.c2.d dVar;
        BasePlayerView basePlayerView;
        BasePlayerView basePlayerView2;
        SimplePlayerMediaView simplePlayerMediaView = this.f44546c;
        if ((simplePlayerMediaView.f43631u || this.f44544a.f41644r.f41927e == 0) && (onClickListener = simplePlayerMediaView.f43624n) != null) {
            onClickListener.onClick(simplePlayerMediaView);
            return;
        }
        if (!String.valueOf(this.f44544a.f41628b).equals("0") || (dVar = this.f44546c.f43612b) == null) {
            return;
        }
        BasePlayerView basePlayerView3 = dVar.f39641h;
        if ((basePlayerView3 == null || !basePlayerView3.isPlayCompletion()) && (basePlayerView = this.f44546c.f43612b.f39641h) != null && basePlayerView.isPlaying()) {
            SimplePlayerMediaView simplePlayerMediaView2 = this.f44546c;
            simplePlayerMediaView2.f43625o = true;
            com.smartdigimkt.c2.d dVar2 = simplePlayerMediaView2.f43612b;
            if (dVar2 != null && (basePlayerView2 = dVar2.f39641h) != null && basePlayerView2.isPlaying()) {
                simplePlayerMediaView2.f43612b.b(1);
            }
            ImageView imageView = simplePlayerMediaView2.f43619i;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a() {
        com.smartdigimkt.m3.e eVar;
        WebProgressBarView webProgressBarView;
        SimplePlayerMediaView simplePlayerMediaView = this.f44546c;
        if (simplePlayerMediaView.f43615e > 0 && (webProgressBarView = simplePlayerMediaView.f43613c) != null) {
            if (webProgressBarView.getVisibility() != 0) {
                this.f44546c.f43613c.setVisibility(0);
            }
            this.f44546c.f43613c.setProgress(100);
        }
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f44546c.f43616f;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoAdComplete();
        }
        ImageView imageView = this.f44546c.f43620j;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        com.smartdigimkt.l3.a aVar = this.f44544a;
        if (aVar == null || (eVar = aVar.f41644r) == null || eVar.f41927e != 0) {
            return;
        }
        SimplePlayerMediaView simplePlayerMediaView2 = this.f44546c;
        String str = simplePlayerMediaView2.f43611a;
        com.smartdigimkt.c2.d dVar = simplePlayerMediaView2.f43612b;
        BasePlayerView basePlayerView = dVar == null ? null : dVar.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setClickable(false);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void b(long j2) {
        com.smartdigimkt.c2.d dVar;
        WebProgressBarView webProgressBarView;
        SimplePlayerMediaView simplePlayerMediaView = this.f44546c;
        if (simplePlayerMediaView.f43615e > 0 && (webProgressBarView = simplePlayerMediaView.f43613c) != null) {
            if (webProgressBarView.getVisibility() != 0) {
                this.f44546c.f43613c.setVisibility(0);
            }
            this.f44546c.f43613c.setProgress((int) ((j2 * 100.0d) / r0.f43615e));
        }
        SimplePlayerMediaView simplePlayerMediaView2 = this.f44546c;
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = simplePlayerMediaView2.f43616f;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onProgressUpdate(j2, simplePlayerMediaView2.f43615e);
        }
        ImageView imageView = this.f44546c.f43620j;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        View view = this.f44546c.f43623m;
        if (view != null) {
            view.setVisibility(8);
        }
        SimplePlayerMediaView simplePlayerMediaView3 = this.f44546c;
        if (simplePlayerMediaView3.f43625o || (dVar = simplePlayerMediaView3.f43612b) == null || simplePlayerMediaView3.f43618h.a(simplePlayerMediaView3, dVar.f39641h, 50, 0)) {
            return;
        }
        this.f44546c.f43612b.b(2);
        this.f44546c.b();
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(com.smartdigimkt.i0.f fVar) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f44546c.f43616f;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoError(fVar.f40651a, fVar.f40652b);
        }
        this.f44546c.f43625o = true;
        com.smartdigimkt.y3.h.a(this.f44544a, this.f44545b, 2, fVar.a());
        if (this.f44546c.f43612b.a() > 0) {
            SimplePlayerMediaView simplePlayerMediaView = this.f44546c;
            if (simplePlayerMediaView.f43620j != null) {
                WebProgressBarView webProgressBarView = simplePlayerMediaView.f43613c;
                if (webProgressBarView != null) {
                    webProgressBarView.setVisibility(8);
                }
                this.f44546c.f43620j.setVisibility(0);
                return;
            }
        }
        View view = this.f44546c.f43623m;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(long j2) {
        WebProgressBarView webProgressBarView;
        SimplePlayerMediaView simplePlayerMediaView = this.f44546c;
        simplePlayerMediaView.f43615e = j2;
        if (j2 <= 0 || (webProgressBarView = simplePlayerMediaView.f43613c) == null) {
            return;
        }
        webProgressBarView.setVisibility(0);
    }
}
