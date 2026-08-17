package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.u1.c;
import com.smartdigimkt.v1.v3;
import com.smartdigimkt.v1.w3;
import com.smartdigimkt.v1.x3;

/* loaded from: classes5.dex */
public class MraidEndCardView extends BaseEndCardView {

    /* renamed from: e, reason: collision with root package name */
    public MraidContainerView f43495e;

    /* renamed from: f, reason: collision with root package name */
    public x3 f43496f;

    /* renamed from: g, reason: collision with root package name */
    public final c f43497g;

    public MraidEndCardView(Context context, com.smartdigimkt.m3.c cVar, a aVar, c cVar2) {
        super(context, cVar, aVar);
        this.f43497g = cVar2;
        setId(k.a(getContext(), "myoffer_end_card_id", "id"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseEndCardView
    public final void a() {
        MraidContainerView mraidContainerView = this.f43495e;
        if (mraidContainerView != null) {
            mraidContainerView.release();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseEndCardView
    public Drawable getBgDrawable() {
        return new com.smartdigimkt.f2.a();
    }

    public void init(boolean z2) {
        if (this.f43247b.f41644r.f41927e == 0) {
            setOnClickListener(new v3(this));
        }
        this.f43495e = new MraidContainerView(getContext(), this.f43246a, this.f43247b, this.f43497g, new w3(this));
        this.f43495e.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.f43495e);
        this.f43495e.setNeedRegisterVolumeChangeReceiver(true);
        this.f43495e.init();
        if (z2) {
            this.f43495e.loadMraidWebView(1);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        MraidContainerView mraidContainerView = this.f43495e;
        if (mraidContainerView != null) {
            mraidContainerView.fireMraidIsViewable(z2);
        }
    }

    public void setEndCardListener(x3 x3Var) {
        this.f43496f = x3Var;
    }
}
