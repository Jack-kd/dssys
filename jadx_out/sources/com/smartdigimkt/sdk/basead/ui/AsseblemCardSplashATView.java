package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.a;
import com.smartdigimkt.v1.b;
import com.smartdigimkt.v1.g;
import com.smartdigimkt.v1.h;
import com.smartdigimkt.z.a0;
import com.smartdigimkt.z.z;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class AsseblemCardSplashATView extends BaseNewStyleSDKSplashATView {

    /* renamed from: n0, reason: collision with root package name */
    public TextView f43170n0;

    /* renamed from: o0, reason: collision with root package name */
    public TextView f43171o0;

    /* renamed from: p0, reason: collision with root package name */
    public TextView f43172p0;

    /* renamed from: q0, reason: collision with root package name */
    public RoundImageView f43173q0;

    /* renamed from: r0, reason: collision with root package name */
    public SplashShakeTextHintView f43174r0;

    /* renamed from: s0, reason: collision with root package name */
    public ImageView f43175s0;

    public AsseblemCardSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        View viewInflate = this.f43260l0 > this.f43261m0 ? LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_asseblem_card_horizontal", "layout"), this) : LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_asseblem_card_vertical", "layout"), this);
        p();
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new a(this);
            tVar.a(getContext(), viewInflate);
        }
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
        m.a(getContext()).a(new o(1, this.f43217c.f41815f), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new g(this, frameLayout, wrapRoundImageView, roundImageView));
        if (this.f43216b.f41644r.f41927e != 1) {
            this.f43225k.add(wrapRoundImageView);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void q() {
        this.f43170n0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_ad_title", "id"));
        this.f43171o0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_desc", "id"));
        this.f43172p0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_cta_text", "id"));
        this.f43173q0 = (RoundImageView) findViewById(k.a(getContext(), "myoffer_splash_icon", "id"));
        this.f43228n = findViewById(k.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        this.f43174r0 = (SplashShakeTextHintView) findViewById(k.a(getContext(), "myoffer_splash_cta_shake", "id"));
        this.f43175s0 = (ImageView) findViewById(k.a(getContext(), "myoffer_splash_ambience_bg", "id"));
        if (TextUtils.isEmpty(this.f43217c.f41814e)) {
            d.a(0, 0, this.f43173q0);
        } else {
            this.f43173q0.setVisibility(0);
            this.f43173q0.setNeedRadiu(true);
            this.f43173q0.setRadiusInDip(12);
            int i2 = this.f43173q0.getLayoutParams().width;
            m.a(getContext()).a(new o(1, this.f43217c.f41814e), i2, i2, new b(this));
        }
        if (TextUtils.isEmpty(this.f43217c.f41810c)) {
            d.a(0, 0, this.f43170n0);
        } else {
            this.f43170n0.setText(this.f43217c.f41810c);
            this.f43170n0.setVisibility(0);
        }
        if (this.f43171o0 != null) {
            if (TextUtils.isEmpty(this.f43217c.f41812d)) {
                this.f43171o0.setVisibility(8);
            } else {
                this.f43171o0.setText(this.f43217c.f41812d);
            }
        }
        View view = this.f43228n;
        if (view != null) {
            this.f43225k.add(view);
        }
        if (z.d(this.f43216b)) {
            TextView textView = this.f43172p0;
            if (textView != null) {
                textView.setVisibility(8);
            }
            SplashShakeTextHintView splashShakeTextHintView = this.f43174r0;
            if (splashShakeTextHintView != null) {
                if (this.f43260l0 > this.f43261m0) {
                    splashShakeTextHintView.setTextSize(17);
                }
                this.f43174r0.setVisibility(0);
                SplashShakeTextHintView splashShakeTextHintView2 = this.f43174r0;
                e eVar = this.f43216b.f41644r;
                c cVar = this.f43217c;
                splashShakeTextHintView2.setShakeSetting(eVar, cVar.f41824o, cVar);
                this.f43174r0.setOnShakeListener(new com.smartdigimkt.v1.c(this), this.f43216b.f41644r);
            }
        } else {
            if (this.f43172p0 != null && this.f43260l0 > this.f43261m0) {
                if (TextUtils.isEmpty(this.f43217c.f41817h)) {
                    this.f43172p0.setText(z.a(getContext(), this.f43217c));
                } else {
                    this.f43172p0.setText(this.f43217c.f41817h);
                }
            }
            SplashShakeTextHintView splashShakeTextHintView3 = this.f43174r0;
            if (splashShakeTextHintView3 != null) {
                splashShakeTextHintView3.setVisibility(8);
            }
        }
        if (this.f43175s0 != null) {
            String strB = com.smartdigimkt.t1.d.a().b(b.d.f2196j);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            a0.a().a(new o(3, strB), -1, -1, new com.smartdigimkt.v1.d(this));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void r() {
        int i2 = this.f43216b.f41644r.f41892S;
        if (i2 < 0) {
            i2 = 100;
        }
        a(i2, new h(this));
    }

    public AsseblemCardSplashATView(Context context, com.smartdigimkt.l3.a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }
}
