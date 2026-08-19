package com.smartdigimkt.sdk.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.h1.i;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.m3.k;
import com.smartdigimkt.p3.a;
import com.smartdigimkt.p3.b;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.h5template.WTWebViewSplashATView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.a1;
import com.smartdigimkt.v1.b1;
import com.smartdigimkt.v1.b3;
import com.smartdigimkt.v1.c1;
import com.smartdigimkt.v1.c2;
import com.smartdigimkt.v1.d1;
import com.smartdigimkt.v1.e1;
import com.smartdigimkt.v1.f1;
import com.smartdigimkt.v1.g1;
import com.smartdigimkt.v1.r;
import com.smartdigimkt.v1.z0;
import com.smartdigimkt.x.n;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public abstract class BaseSdkSplashATView extends BaseSplashATView {
    public static final int TYPE_ASSEBLEM = 1;
    public static final int TYPE_SINGLE_PICTURE = 0;

    /* renamed from: e0, reason: collision with root package name */
    public MuteImageView f43309e0;

    /* renamed from: f0, reason: collision with root package name */
    public ImageView f43310f0;

    /* renamed from: g0, reason: collision with root package name */
    public ImageView f43311g0;

    /* renamed from: h0, reason: collision with root package name */
    public final z0 f43312h0;

    /* renamed from: i0, reason: collision with root package name */
    public SplashEndCardView f43313i0;

    /* renamed from: j0, reason: collision with root package name */
    public ValueAnimator f43314j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f43315k0;

    public BaseSdkSplashATView(Context context) {
        super(context);
        this.f43312h0 = new z0(this);
        this.f43315k0 = false;
    }

    public static boolean isSinglePicture(c cVar, e eVar) {
        return ((cVar instanceof a) && (eVar instanceof b)) ? 2 == ((b) eVar).f42609Z1 : (cVar instanceof k) && 1 == ((k) cVar).f42046g0;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public void a(int i2) {
        d dVar;
        super.a(i2);
        if (i2 == 110) {
            s();
        } else if (i2 == 111 && (dVar = this.f43229o) != null) {
            dVar.b(2);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public void beforeSplashEndCardShow() {
        super.beforeSplashEndCardShow();
        TextView textView = this.f43329E;
        if (textView != null) {
            textView.setVisibility(8);
        }
        View view = this.f43228n;
        if (view != null) {
            view.setVisibility(8);
        }
        View viewFindViewById = findViewById(com.smartdigimkt.c5.k.a(getContext(), "myoffer_fl_invalid_btn", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        d dVar = this.f43229o;
        if (dVar != null) {
            dVar.b(5);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void d() {
        super.d();
        d dVar = this.f43229o;
        if (dVar != null) {
            dVar.f39640g = this.f43230p;
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public final boolean n() {
        return !this.f43315k0 && this.f43216b.f41644r.f41860H0 == 1;
    }

    public void o() {
        this.f43315k0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001e  */
    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDetachedFromWindow() {
        /*
            r5 = this;
            super.onDetachedFromWindow()
            android.animation.ValueAnimator r0 = r5.f43314j0
            if (r0 == 0) goto La
            r0.cancel()
        La:
            com.smartdigimkt.c2.d r0 = r5.f43229o
            if (r0 == 0) goto L26
            int r1 = r5.f43345U
            r2 = 2
            r3 = 1
            if (r1 == r3) goto L1f
            if (r1 == r2) goto L1e
            r4 = 6
            if (r1 == r4) goto L1f
            r2 = 7
            if (r1 == r2) goto L1e
            r2 = 4
            goto L1f
        L1e:
            r2 = r3
        L1f:
            com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView r0 = r0.f39641h
            if (r0 == 0) goto L26
            r0.release(r2)
        L26:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView.onDetachedFromWindow():void");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSplashATView
    public void onSplashEndCardCountDownTick(long j2) {
        super.onSplashEndCardCountDownTick(j2);
        if (this.f43313i0 == null) {
            beforeSplashEndCardShow();
            SplashEndCardView splashEndCardView = new SplashEndCardView(getContext(), this.f43217c, this.f43216b);
            this.f43313i0 = splashEndCardView;
            splashEndCardView.init(new a1(this), this.f43238x);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.f43313i0.setAlpha(0.2f);
            addView(this.f43313i0, layoutParams);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.2f, 1.0f);
            this.f43314j0 = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(500L);
            this.f43314j0.setRepeatCount(0);
            View viewFindViewById = findViewById(com.smartdigimkt.c5.k.a(getContext(), "myoffer_splash_ad_content_image_area", "id"));
            this.f43314j0.addUpdateListener(new b1(this, viewFindViewById));
            this.f43314j0.addListener(new c1(viewFindViewById));
            this.f43314j0.start();
        }
        this.f43313i0.onCountDownTick(j2);
    }

    public void p() {
        q();
        this.f43310f0 = (ImageView) findViewById(com.smartdigimkt.c5.k.a(getContext(), "myoffer_player_view_cover_img_id", "id"));
        this.f43311g0 = (ImageView) findViewById(com.smartdigimkt.c5.k.a(getContext(), "myoffer_player_view_cover_icon_id", "id"));
        this.f43331G = (ViewGroup) findViewById(com.smartdigimkt.c5.k.a(getContext(), "myoffer_feedback_ll_id", "id"));
        if (!z.h(this.f43217c, this.f43216b)) {
            ImageView imageView = this.f43311g0;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            ImageView imageView2 = this.f43310f0;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
        } else if (this.f43310f0 != null && !TextUtils.isEmpty(this.f43217c.f41815f)) {
            ImageView imageView3 = this.f43311g0;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
            }
            ImageView imageView4 = this.f43310f0;
            if (imageView4 != null) {
                imageView4.setVisibility(0);
            }
            m.a(getContext()).a(new o(1, this.f43217c.f41815f), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new g1(this));
        }
        if (!z.h(this.f43217c, this.f43216b)) {
            o();
            return;
        }
        d dVar = new d(this, this.f43216b, this.f43217c, h.y(getContext()));
        this.f43229o = dVar;
        int aTViewType = getATViewType();
        BasePlayerView basePlayerView = dVar.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setViewType(aTViewType);
        }
        r rVar = this.f43230p;
        if (rVar != null) {
            this.f43229o.f39640g = rVar;
        }
        BasePlayerView basePlayerView2 = this.f43229o.f39641h;
        this.f43315k0 = basePlayerView2 == null;
        if (basePlayerView2 != null) {
            basePlayerView2.setNeedInterruptRelease(true);
        }
        d dVar2 = this.f43229o;
        dVar2.f39643j = new d1(this);
        dVar2.f39642i = new e1(this);
        if (!(this instanceof WTWebViewSplashATView)) {
            BasePlayerView basePlayerView3 = dVar2.f39641h;
            if (basePlayerView3 != null) {
                basePlayerView3.setVisibility(0);
            }
            this.f43229o.a(true, null, this.f43212A);
        }
        MuteImageView muteImageView = (MuteImageView) findViewById(com.smartdigimkt.c5.k.a(getContext(), "myoffer_btn_mute_id", "id"));
        this.f43309e0 = muteImageView;
        if (muteImageView != null) {
            muteImageView.setMute(true);
            this.f43309e0.setVisibility(0);
            this.f43309e0.setOnClickListener(new f1(this));
            if (this.f43217c.e() == 4) {
                try {
                    if (SDMSDK.getInstance().getDirectlyOfferSetting().getDirectlySplashMuteIconVisible() != null) {
                        this.f43309e0.setVisibility(SDMSDK.getInstance().getDirectlyOfferSetting().getDirectlySplashMuteIconVisible().booleanValue() ? 0 : 8);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public abstract void q();

    public abstract void r();

    public final void s() {
        i iVar;
        if (this.f43229o != null) {
            n nVar = this.f43341Q;
            if ((nVar == null || (iVar = nVar.f45052a) == null || !iVar.isShowing()) && !this.f43315k0) {
                if (!this.f43349b0 || this.f43216b.f41644r.f41860H0 == 1) {
                    this.f43229o.c();
                }
            }
        }
    }

    public BaseSdkSplashATView(Context context, com.smartdigimkt.l3.a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
        this.f43312h0 = new z0(this);
        this.f43315k0 = false;
        r();
        int size = this.f43225k.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) this.f43225k.get(i2);
            if (view != null) {
                view.setOnClickListener(this.f43342R);
            }
        }
        ViewGroup viewGroup = this.f43331G;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new c2(this));
        }
        setOnClickListener(this.f43312h0);
        a((b3) this.f43330F, false);
    }
}
