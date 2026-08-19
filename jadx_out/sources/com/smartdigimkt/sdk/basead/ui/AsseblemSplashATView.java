package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.i;
import com.smartdigimkt.v1.j;
import com.smartdigimkt.v1.n;

/* loaded from: classes5.dex */
public class AsseblemSplashATView extends BaseSdkSplashATView {

    /* renamed from: l0, reason: collision with root package name */
    public TextView f43176l0;

    /* renamed from: m0, reason: collision with root package name */
    public TextView f43177m0;

    /* renamed from: n0, reason: collision with root package name */
    public RoundImageView f43178n0;

    /* renamed from: o0, reason: collision with root package name */
    public View f43179o0;

    public AsseblemSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public void beforeSplashEndCardShow() {
        super.beforeSplashEndCardShow();
        TextView textView = (TextView) findViewById(k.a(getContext(), "myoffer_splash_ad_title", "id"));
        View viewFindViewById = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        TextView textView2 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_desc", "id"));
        RoundImageView roundImageView = (RoundImageView) findViewById(k.a(getContext(), "myoffer_splash_icon", "id"));
        if (textView != null) {
            textView.setVisibility(8);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        if (roundImageView != null) {
            roundImageView.setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void e() {
        View viewInflate = this.f43216b.f41644r.f41951m == 2 ? LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_asseblem_vertical_land", "layout"), this) : LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_asseblem_vertical_port", "layout"), this);
        p();
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new i(this);
            tVar.a(getContext(), viewInflate);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public View getAutoClickPanelView() {
        View view = this.f43179o0;
        return view != null ? view : super.getAutoClickPanelView();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void o() {
        this.f43315k0 = true;
        FrameLayout frameLayout = (FrameLayout) findViewById(k.a(getContext(), "myoffer_splash_ad_content_image_area", "id"));
        RoundImageView roundImageView = (RoundImageView) findViewById(k.a(getContext(), "myoffer_splash_bg", "id"));
        frameLayout.removeAllViews();
        WrapRoundImageView wrapRoundImageView = new WrapRoundImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        wrapRoundImageView.setLayoutParams(layoutParams);
        wrapRoundImageView.setNeedRadiu(false);
        wrapRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        wrapRoundImageView.setVisibility(4);
        frameLayout.addView(wrapRoundImageView, layoutParams);
        frameLayout.setVisibility(0);
        roundImageView.setNeedRadiu(false);
        roundImageView.setVisibility(0);
        if (TextUtils.isEmpty(this.f43217c.f41815f)) {
            roundImageView.setBackgroundColor(Color.parseColor("#EFEFEF"));
            return;
        }
        m.a(getContext()).a(new o(1, this.f43217c.f41815f), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new n(this, frameLayout, wrapRoundImageView, roundImageView));
        if (this.f43216b.f41644r.f41927e != 1) {
            this.f43225k.add(wrapRoundImageView);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public void q() {
        this.f43179o0 = findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_container", "id"));
        this.f43176l0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_ad_title", "id"));
        this.f43177m0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_desc", "id"));
        this.f43178n0 = (RoundImageView) findViewById(k.a(getContext(), "myoffer_splash_icon", "id"));
        this.f43228n = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        if (TextUtils.isEmpty(this.f43217c.f41814e)) {
            com.smartdigimkt.r2.n.a((ImageView) this.f43178n0, false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f43178n0.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.rightMargin = 0;
                this.f43178n0.setLayoutParams(layoutParams);
            }
            if (this.f43216b.f41644r.f41951m != 2) {
                TextView textView = this.f43176l0;
                if (textView != null) {
                    textView.setGravity(17);
                }
                TextView textView2 = this.f43177m0;
                if (textView2 != null) {
                    textView2.setGravity(17);
                }
            }
        } else {
            this.f43178n0.setVisibility(0);
            this.f43178n0.setNeedRadiu(true);
            this.f43178n0.setRadiusInDip(12);
            int i2 = this.f43178n0.getLayoutParams().width;
            m.a(getContext()).a(new o(1, this.f43217c.f41814e), i2, i2, new j(this));
        }
        if (this.f43216b.f41644r.f41927e != 1) {
            this.f43225k.add(this.f43178n0);
        }
        if (TextUtils.isEmpty(this.f43217c.f41810c)) {
            this.f43176l0.setVisibility(4);
        } else {
            this.f43176l0.setText(this.f43217c.f41810c);
            this.f43176l0.setVisibility(0);
        }
        if (this.f43216b.f41644r.f41927e != 1) {
            this.f43225k.add(this.f43176l0);
        }
        View view = this.f43228n;
        if (view != null) {
            if (view instanceof CTAButtonLayout) {
                ((CTAButtonLayout) view).initSetting(this.f43217c, this.f43216b, false, new com.smartdigimkt.v1.k(this));
                ((CTAButtonLayout) this.f43228n).changeMinorButtonStyle();
            }
            this.f43225k.add(this.f43228n);
        }
        if (this.f43177m0 != null) {
            if (TextUtils.isEmpty(this.f43217c.f41812d)) {
                this.f43177m0.setVisibility(8);
            } else {
                this.f43177m0.setText(this.f43217c.f41812d);
            }
            if (this.f43216b.f41644r.f41927e != 1) {
                this.f43225k.add(this.f43177m0);
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void r() {
        int i2 = this.f43216b.f41644r.f41892S;
        if (i2 < 0) {
            i2 = 100;
        }
        a(i2, new com.smartdigimkt.v1.o(this));
    }

    public AsseblemSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }
}
