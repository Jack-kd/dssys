package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.inner.ui.e.c;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.g;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public class AsseblemSplashATView extends BaseSdkSplashATView {

    /* renamed from: a, reason: collision with root package name */
    protected TextView f4785a;

    /* renamed from: b, reason: collision with root package name */
    protected TextView f4786b;

    /* renamed from: c, reason: collision with root package name */
    protected RoundImageView f4787c;

    /* renamed from: d, reason: collision with root package name */
    protected View f4788d;

    public AsseblemSplashATView(Context context) {
        super(context);
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a() {
        if (this.f4824f.f4500t.l() == 2) {
            LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_splash_ad_layout_asseblem_vertical_land", "layout"), this);
        } else {
            LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_splash_ad_layout_asseblem_vertical_port", "layout"), this);
        }
        f();
    }

    @Override // com.anythink.core.common.inner.ui.BaseSdkSplashATView
    public final void b() {
        this.f4788d = findViewById(p.a(getContext(), "myoffer_splash_ad_bottom_container", "id"));
        this.f4785a = (TextView) findViewById(p.a(getContext(), "myoffer_splash_ad_title", "id"));
        this.f4786b = (TextView) findViewById(p.a(getContext(), "myoffer_splash_desc", "id"));
        this.f4787c = (RoundImageView) findViewById(p.a(getContext(), "myoffer_splash_icon", "id"));
        this.f4829k = (ScanningAnimButton) findViewById(p.a(getContext(), "myoffer_splash_ad_cta_layout", "id"));
        if (TextUtils.isEmpty(this.f4825g.m())) {
            RoundImageView roundImageView = this.f4787c;
            ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
            layoutParams.width = 0;
            roundImageView.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f4787c.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.rightMargin = 0;
                this.f4787c.setLayoutParams(layoutParams2);
            }
            if (this.f4824f.f4500t.l() != 2) {
                TextView textView = this.f4785a;
                if (textView != null) {
                    textView.setGravity(17);
                }
                TextView textView2 = this.f4786b;
                if (textView2 != null) {
                    textView2.setGravity(17);
                }
            }
        } else {
            this.f4787c.setVisibility(0);
            this.f4787c.setNeedRadiu(true);
            this.f4787c.setRadiusInDip(12);
            int i2 = this.f4787c.getLayoutParams().width;
            b.a(getContext()).a(new e(1, this.f4825g.m()), i2, i2, new b.a() { // from class: com.anythink.core.common.inner.ui.AsseblemSplashATView.1
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (TextUtils.equals(str, AsseblemSplashATView.this.f4825g.m())) {
                        AsseblemSplashATView.this.f4787c.setImageBitmap(bitmap);
                    }
                }
            });
        }
        if (this.f4824f.f4500t.q() != 1) {
            this.f4828j.add(this.f4787c);
        }
        if (TextUtils.isEmpty(this.f4825g.k())) {
            this.f4785a.setVisibility(4);
        } else {
            this.f4785a.setText(this.f4825g.k());
            this.f4785a.setVisibility(0);
        }
        if (this.f4824f.f4500t.q() != 1) {
            this.f4828j.add(this.f4785a);
        }
        if (this.f4829k != null) {
            if (TextUtils.isEmpty(this.f4825g.p())) {
                this.f4829k.setText(c.a(getContext(), this.f4825g));
            } else {
                this.f4829k.setText(this.f4825g.p());
            }
            this.f4829k.startAnimation(this.f4824f.f4500t.D());
            this.f4828j.add(this.f4829k);
        }
        if (this.f4786b != null) {
            if (TextUtils.isEmpty(this.f4825g.l())) {
                this.f4786b.setVisibility(8);
            } else {
                this.f4786b.setText(this.f4825g.l());
            }
            if (this.f4824f.f4500t.q() != 1) {
                this.f4828j.add(this.f4786b);
            }
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseSdkSplashATView
    public final void c() {
        super.c();
        final FrameLayout frameLayout = (FrameLayout) findViewById(p.a(getContext(), "myoffer_splash_ad_content_image_area", "id"));
        final RoundImageView roundImageView = (RoundImageView) findViewById(p.a(getContext(), "myoffer_splash_bg", "id"));
        frameLayout.removeAllViews();
        final WrapRoundImageView wrapRoundImageView = new WrapRoundImageView(getContext());
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
        if (TextUtils.isEmpty(this.f4825g.n())) {
            roundImageView.setBackgroundColor(Color.parseColor("#EFEFEF"));
            return;
        }
        b.a(getContext()).a(new e(1, this.f4825g.n()), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new b.a() { // from class: com.anythink.core.common.inner.ui.AsseblemSplashATView.2
            @Override // com.anythink.core.common.res.b.a
            public final void onFail(String str, String str2) {
            }

            @Override // com.anythink.core.common.res.b.a
            public final void onSuccess(String str, final Bitmap bitmap) {
                if (TextUtils.equals(str, AsseblemSplashATView.this.f4825g.n())) {
                    frameLayout.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.AsseblemSplashATView.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            wrapRoundImageView.setBitmapAndResize(bitmap, frameLayout.getWidth(), frameLayout.getHeight());
                            wrapRoundImageView.setVisibility(0);
                        }
                    });
                    g.a(AsseblemSplashATView.this.getContext(), bitmap, new g.a() { // from class: com.anythink.core.common.inner.ui.AsseblemSplashATView.2.2
                        @Override // com.anythink.core.common.v.g.a
                        public final void a() {
                        }

                        @Override // com.anythink.core.common.v.g.a
                        public final void a(Bitmap bitmap2) {
                            roundImageView.setImageBitmap(bitmap2);
                        }
                    });
                }
            }
        });
        if (this.f4824f.f4500t.q() != 1) {
            this.f4828j.add(wrapRoundImageView);
        }
    }

    public AsseblemSplashATView(Context context, x xVar, w wVar, com.anythink.core.common.inner.e.a aVar) {
        super(context, xVar, wVar, aVar);
    }
}
