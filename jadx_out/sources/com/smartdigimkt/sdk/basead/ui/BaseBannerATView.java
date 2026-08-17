package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.p1.a;
import com.smartdigimkt.r2.u;
import com.smartdigimkt.v1.a0;
import com.smartdigimkt.v1.b3;

/* loaded from: classes5.dex */
public abstract class BaseBannerATView extends BaseATView {

    /* renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f43241I = 0;

    /* renamed from: E, reason: collision with root package name */
    public final a f43242E;

    /* renamed from: F, reason: collision with root package name */
    public CloseImageView f43243F;

    /* renamed from: G, reason: collision with root package name */
    public final u f43244G;

    /* renamed from: H, reason: collision with root package name */
    public View f43245H;
    public final String TAG;

    public BaseBannerATView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(com.smartdigimkt.p1.u uVar) {
        a aVar = this.f43242E;
        if (aVar != null) {
            aVar.onAdClick(uVar);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public int getATViewType() {
        return 4;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        int measuredHeight = getMeasuredHeight() - k.a(getContext(), 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, measuredHeight, 0, 0);
        return layoutParams;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void h() {
        a aVar = this.f43242E;
        if (aVar != null) {
            aVar.onAdShow(new com.smartdigimkt.p1.u());
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        u uVar;
        if (this.f43245H == null) {
            this.f43245H = findViewById(k.a(getContext(), "myoffer_guide2click_container", "id"));
        }
        View view = this.f43245H;
        return ((view == null || view.getVisibility() != 0) && (uVar = this.f43244G) != null) ? uVar.a(motionEvent) : super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        u uVar;
        if (this.f43245H == null) {
            this.f43245H = findViewById(k.a(getContext(), "myoffer_guide2click_container", "id"));
        }
        View view = this.f43245H;
        if ((view != null && view.getVisibility() == 0) || (uVar = this.f43244G) == null) {
            return super.onTouchEvent(motionEvent);
        }
        uVar.a(this, motionEvent);
        return true;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        if (z2) {
            a(110);
        } else {
            a(111);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (Build.VERSION.SDK_INT < 28) {
            if (z2) {
                a(110);
            } else {
                a(111);
            }
        }
    }

    public BaseBannerATView(Context context, com.smartdigimkt.l3.a aVar, c cVar, a aVar2) {
        e eVar;
        super(context, aVar, cVar);
        this.TAG = getClass().getSimpleName();
        this.f43242E = aVar2;
        if (aVar == null || (eVar = aVar.f41644r) == null || eVar.f41958o0 < 2) {
            return;
        }
        u uVar = new u();
        this.f43244G = uVar;
        uVar.f43041e = new a0(this);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(int i2, int i3) {
        super.a(i2, i3);
        a((b3) this.f43243F, true);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(boolean z2) {
        a aVar = this.f43242E;
        if (aVar != null) {
            aVar.onDeeplinkCallback(z2);
        }
    }
}
