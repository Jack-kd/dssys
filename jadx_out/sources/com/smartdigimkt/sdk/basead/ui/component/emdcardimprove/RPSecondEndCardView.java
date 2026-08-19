package com.smartdigimkt.sdk.basead.ui.component.emdcardimprove;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e2.a;
import com.smartdigimkt.e2.b;
import com.smartdigimkt.e2.c;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.x1.h;

/* loaded from: classes5.dex */
public class RPSecondEndCardView extends SecondEndCardView {

    /* renamed from: i, reason: collision with root package name */
    public h f43807i;

    public RPSecondEndCardView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView
    public final void a() {
        super.a();
        RoundImageView roundImageView = this.f43829b;
        if (roundImageView != null) {
            roundImageView.setRadiusInDip(12);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView
    public final void b() {
        RelativeLayout relativeLayout = this.f43828a;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new a(this));
        }
        ScanningAnimButton scanningAnimButton = this.f43833f;
        if (scanningAnimButton != null) {
            scanningAnimButton.setOnClickListener(new b(this));
        }
        setOnClickListener(new c(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView
    public int getLayoutInflateID() {
        return k.a(getContext(), "myoffer_endcard_improve_rp_second_endcard", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ScanningAnimButton scanningAnimButton = this.f43833f;
        if (scanningAnimButton == null) {
            return;
        }
        h hVar = this.f43807i;
        if (hVar != null) {
            hVar.stop();
        }
        h hVar2 = new h(scanningAnimButton);
        this.f43807i = hVar2;
        hVar2.start();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            h hVar = this.f43807i;
            if (hVar != null) {
                hVar.a();
                return;
            }
            return;
        }
        h hVar2 = this.f43807i;
        if (hVar2 != null) {
            hVar2.pause();
        }
    }

    public void stopAnimation() {
        h hVar = this.f43807i;
        if (hVar != null) {
            hVar.stop();
            this.f43807i = null;
        }
    }

    public RPSecondEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RPSecondEndCardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
