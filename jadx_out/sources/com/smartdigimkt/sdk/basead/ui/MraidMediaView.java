package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m1.r;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.u1.c;
import com.smartdigimkt.v1.y3;
import com.smartdigimkt.v1.z3;
import com.smartdigimkt.y3.h;

/* loaded from: classes5.dex */
public class MraidMediaView extends BaseMediaATView {

    /* renamed from: k, reason: collision with root package name */
    public MraidContainerView f43498k;

    /* renamed from: l, reason: collision with root package name */
    public z3 f43499l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f43500m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f43501n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f43502o;

    /* renamed from: p, reason: collision with root package name */
    public final c f43503p;

    public MraidMediaView(Context context) {
        this(context, null, null, null, null);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseMediaATView
    public void destroy() {
        super.destroy();
        MraidContainerView mraidContainerView = this.f43498k;
        if (mraidContainerView != null) {
            mraidContainerView.release();
        }
    }

    public void fireAudioVolumeChange(boolean z2) {
        MraidContainerView mraidContainerView = this.f43498k;
        if (mraidContainerView != null) {
            mraidContainerView.fireAudioVolumeChange(z2);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseMediaATView
    public void init(int i2, int i3, int i4) {
        super.init(i2, i3, i4);
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.f43250a, this.f43252c, this.f43503p, new y3(this));
        this.f43498k = mraidContainerView;
        mraidContainerView.init();
        FrameLayout frameLayout = this.f43257h;
        if (frameLayout == null || this.f43498k == null) {
            return;
        }
        frameLayout.removeAllViews();
        this.f43257h.addView(this.f43498k, new ViewGroup.LayoutParams(-1, -1));
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_include_4_element_with_feedback", "layout"), (ViewGroup) null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.f43257h.addView(viewInflate, layoutParams);
        new l(this.f43250a, this.f43252c).a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f43501n = true;
        synchronized (this) {
            if (this.f43500m && this.f43501n && !this.f43502o) {
                this.f43502o = true;
                h.a(this.f43250a, this.f43252c);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f43501n = false;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        MraidContainerView mraidContainerView = this.f43498k;
        if (mraidContainerView != null) {
            mraidContainerView.fireMraidIsViewable(z2);
        }
    }

    public void setMraidWebViewListener(z3 z3Var) {
        this.f43499l = z3Var;
    }

    public MraidMediaView(Context context, com.smartdigimkt.m3.c cVar, a aVar, r rVar, c cVar2) {
        super(context, cVar, aVar, rVar);
        this.f43503p = cVar2;
    }
}
