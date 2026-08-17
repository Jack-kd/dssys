package com.smartdigimkt.sdk.basead.ui;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.androidquery.callback.AjaxStatus;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.q5;
import com.smartdigimkt.v1.r5;
import com.smartdigimkt.v1.s5;
import com.smartdigimkt.v1.t5;
import com.smartdigimkt.v1.u5;
import com.smartdigimkt.v1.v5;
import com.smartdigimkt.v1.y5;
import com.smartdigimkt.v1.z5;
import com.smartdigimkt.z.z;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class SinglePictureBottomSlideSplashATView extends BaseNewStyleSDKSplashATView {

    /* renamed from: n0, reason: collision with root package name */
    public View f43634n0;

    /* renamed from: o0, reason: collision with root package name */
    public ImageView f43635o0;

    /* renamed from: p0, reason: collision with root package name */
    public SplashBottomShakeTextHintView f43636p0;

    /* renamed from: q0, reason: collision with root package name */
    public TextView f43637q0;

    /* renamed from: r0, reason: collision with root package name */
    public TextView f43638r0;

    /* renamed from: s0, reason: collision with root package name */
    public ArrayList f43639s0;

    /* renamed from: t0, reason: collision with root package name */
    public ObjectAnimator f43640t0;

    /* renamed from: u0, reason: collision with root package name */
    public ValueAnimator f43641u0;

    public SinglePictureBottomSlideSplashATView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView, com.smartdigimkt.sdk.basead.ui.BaseSplashATView, com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(int i2) {
        super.a(i2);
        if (i2 != 110) {
            if (i2 == 111) {
                e.a().a(new u5(this));
                return;
            } else if (i2 != 114) {
                if (i2 != 115) {
                    return;
                }
                e.a().a(new v5(this));
                return;
            }
        }
        e.a().a(new t5(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void e() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_ad_layout_single_bottom_slide", "layout"), this);
        p();
        t tVar = this.f43343S;
        if (tVar != null) {
            tVar.f43027c = AjaxStatus.AUTH_ERROR;
            tVar.f43036l = new q5(this);
            tVar.a(getContext(), viewInflate);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void o() {
        this.f43315k0 = true;
        m.a(getContext()).a(new o(1, this.f43217c.f41815f), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new y5(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void q() {
        View viewFindViewById = findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_container", "id"));
        this.f43228n = viewFindViewById;
        this.f43225k.add(viewFindViewById);
        this.f43634n0 = findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_bg", "id"));
        this.f43635o0 = (ImageView) findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_slide_icon", "id"));
        this.f43636p0 = (SplashBottomShakeTextHintView) findViewById(k.a(getContext(), "myoffer_splash_cta_shake", "id"));
        this.f43637q0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_slide_hint", "id"));
        this.f43638r0 = (TextView) findViewById(k.a(getContext(), "myoffer_splash_ad_bottom_slide_title", "id"));
        if (z.d(this.f43216b)) {
            if (this.f43636p0 != null) {
                this.f43635o0.setVisibility(8);
                this.f43637q0.setVisibility(8);
                this.f43638r0.setText(z.a(getContext(), this.f43217c.f41824o));
                this.f43636p0.setVisibility(0);
                this.f43636p0.setShakeSetting(this.f43216b.f41644r, this.f43217c.f41824o);
                this.f43636p0.setOnShakeListener(new r5(this), this.f43216b.f41644r);
                return;
            }
            return;
        }
        View view = this.f43634n0;
        if (view != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 1.1f);
            this.f43640t0 = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f43640t0.setRepeatCount(-1);
            this.f43640t0.setRepeatMode(2);
        }
        if (this.f43635o0 != null) {
            ArrayList arrayList = new ArrayList();
            this.f43639s0 = arrayList;
            arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_slide_up_arrow_1", "drawable")));
            this.f43639s0.add(Integer.valueOf(k.a(getContext(), "myoffer_slide_up_arrow_2", "drawable")));
            this.f43639s0.add(Integer.valueOf(k.a(getContext(), "myoffer_slide_up_arrow_3", "drawable")));
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, this.f43639s0.size());
            this.f43641u0 = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(700L);
            this.f43641u0.setRepeatCount(-1);
            this.f43641u0.addUpdateListener(new s5(this));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView
    public final void r() {
        int i2 = this.f43216b.f41644r.f41892S;
        if (i2 < 0) {
            i2 = 100;
        }
        a(i2, new z5(this));
    }

    public SinglePictureBottomSlideSplashATView(Context context, a aVar, c cVar, com.smartdigimkt.p1.a aVar2) {
        super(context, aVar, cVar, aVar2);
    }
}
