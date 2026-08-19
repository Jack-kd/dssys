package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.u1.c;
import com.smartdigimkt.v1.b0;
import com.smartdigimkt.v1.b3;
import com.smartdigimkt.v1.c0;
import com.smartdigimkt.v1.o3;
import com.smartdigimkt.y3.h;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class MraidBannerATView extends BaseBannerATView {

    /* renamed from: J, reason: collision with root package name */
    public MraidContainerView f43473J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f43474K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f43475L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f43476M;

    public MraidBannerATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        MraidContainerView mraidContainerView = this.f43473J;
        if (mraidContainerView != null) {
            mraidContainerView.release();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        int iA;
        int iA2;
        String str = this.f43216b.f41644r.f41954n;
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_web_banner_ad_layout", "layout"), this);
        this.f43243F = (CloseImageView) findViewById(k.a(getContext(), "myoffer_banner_close", "id"));
        iA = k.a(getContext(), 50.0f);
        iA2 = k.a(getContext(), 320.0f);
        str.getClass();
        switch (str) {
            case "300x250":
                iA2 = k.a(getContext(), 300.0f);
                iA = k.a(getContext(), 250.0f);
                break;
            case "320x90":
                iA2 = k.a(getContext(), 320.0f);
                iA = k.a(getContext(), 90.0f);
                break;
            case "728x90":
                iA2 = k.a(getContext(), 720.0f);
                iA = k.a(getContext(), 90.0f);
                break;
        }
        int iMin = Math.min(iA2, getResources().getDisplayMetrics().widthPixels);
        if (this.f43212A != null) {
            a(findViewById(k.a(getContext(), "myoffer_banner_root", "id")));
            c cVar = this.f43212A;
            CloseImageView closeImageView = this.f43243F;
            cVar.getClass();
            if (closeImageView != null) {
                new WeakReference(closeImageView);
            }
        }
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.f43217c, this.f43216b, this.f43212A, new o3(this));
        this.f43473J = mraidContainerView;
        mraidContainerView.init();
        FrameLayout frameLayout = (FrameLayout) findViewById(k.a(getContext(), "myoffer_banner_web", "id"));
        this.f43473J.setMinimumHeight(k.a(getContext(), 50.0f));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iMin, iA);
        layoutParams.gravity = 17;
        frameLayout.addView(this.f43473J, 0, layoutParams);
        setLayoutParams(new ViewGroup.LayoutParams(iMin, iA));
        if (this.f43216b.f41644r.f41957o == 0) {
            this.f43243F.setVisibility(0);
            a((b3) this.f43243F, false);
        } else {
            this.f43243F.setVisibility(8);
        }
        new l(this.f43217c, this.f43216b).a(this);
    }

    public final void n() {
        if (this.f43473J == null) {
            return;
        }
        int i2 = this.f43216b.f41644r.f41892S;
        if (i2 < 0) {
            i2 = 100;
        }
        a(i2, new b0(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseBannerATView, com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f43475L = true;
        synchronized (this) {
            if (this.f43474K && this.f43475L && !this.f43476M) {
                this.f43476M = true;
                h.a(this.f43217c, this.f43216b);
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f43475L = false;
    }

    public MraidBannerATView(Context context, a aVar, com.smartdigimkt.m3.c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
        this.f43243F.setOnTouchListener(new c0(this));
    }
}
