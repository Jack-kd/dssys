package com.smartdigimkt.sdk.basead.ui.component.emdcardimprove;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e2.p;
import com.smartdigimkt.e2.q;
import com.smartdigimkt.e2.r;
import com.smartdigimkt.e2.s;
import com.smartdigimkt.e2.t;
import com.smartdigimkt.r2.m;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class SecondEndCardView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public RelativeLayout f43828a;

    /* renamed from: b, reason: collision with root package name */
    public RoundImageView f43829b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f43830c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f43831d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f43832e;

    /* renamed from: f, reason: collision with root package name */
    public ScanningAnimButton f43833f;

    /* renamed from: g, reason: collision with root package name */
    public m f43834g;

    /* renamed from: h, reason: collision with root package name */
    public ObjectAnimator f43835h;

    public SecondEndCardView(Context context) {
        this(context, null);
    }

    public void a() {
        LayoutInflater.from(getContext()).inflate(getLayoutInflateID(), this);
        this.f43828a = (RelativeLayout) findViewById(k.a(getContext(), "myoffer_second_ec_container", "id"));
        this.f43829b = (RoundImageView) findViewById(k.a(getContext(), "myoffer_second_ec_ad_icon", "id"));
        this.f43830c = (ImageView) findViewById(k.a(getContext(), "myoffer_second_ec_ad_poster", "id"));
        if (h.y(getContext()) == 2) {
            this.f43829b.setRadiusInDip(18);
        } else {
            this.f43829b.setRadiusInDip(24);
        }
        this.f43829b.setNeedRadiu(true);
        this.f43831d = (TextView) findViewById(k.a(getContext(), "myoffer_second_ec_ad_title", "id"));
        this.f43832e = (TextView) findViewById(k.a(getContext(), "myoffer_second_ec_ad_desc", "id"));
        this.f43833f = (ScanningAnimButton) findViewById(k.a(getContext(), "myoffer_second_ec_cta", "id"));
        b();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.2f, 1.0f);
        this.f43835h = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(500L);
        if (this.f43830c != null) {
            String strB = d.a().b(b.d.f2202p);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            a0.a().a(new o(3, strB), -1, -1, new com.smartdigimkt.e2.o(this));
        }
    }

    public void addCloseView(View view, ViewGroup.LayoutParams layoutParams) {
        RelativeLayout relativeLayout = this.f43828a;
        if (relativeLayout != null) {
            relativeLayout.addView(view, layoutParams);
        } else {
            addView(view, layoutParams);
        }
    }

    public void addComplianceElements(boolean z2) {
        RelativeLayout relativeLayout;
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_include_4_element", "layout"), (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        if (z2 || (relativeLayout = this.f43828a) == null) {
            addView(viewInflate, layoutParams);
        } else {
            relativeLayout.addView(viewInflate, layoutParams);
        }
    }

    public void b() {
        ScanningAnimButton scanningAnimButton = this.f43833f;
        if (scanningAnimButton != null) {
            scanningAnimButton.setOnClickListener(new p(this));
        }
        RelativeLayout relativeLayout = this.f43828a;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new q(this));
        }
        setOnClickListener(new r(this));
    }

    public int getLayoutInflateID() {
        return k.a(getContext(), "myoffer_endcard_improve_second_endcard", "layout");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ObjectAnimator objectAnimator = this.f43835h;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.f43835h;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public void setAdDesc(String str) {
        if (this.f43832e == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f43832e.setText(str);
    }

    public void setAdIcon(String str) {
        if (this.f43829b == null || TextUtils.isEmpty(str)) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f43829b.getLayoutParams();
        com.smartdigimkt.t3.m.a(getContext()).a(new o(1, str), layoutParams.width, layoutParams.height, new s(this, str));
    }

    public void setAdPoster(String str) {
        if (this.f43830c == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.smartdigimkt.t3.m.a(getContext()).a(new o(1, str), -1, -1, new t(this, str));
    }

    public void setAdTitle(String str) {
        if (this.f43831d == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f43831d.setText(str);
    }

    public void setCTAText(String str) {
        if (this.f43833f == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f43833f.setText(str);
    }

    public void setSecondECClickListener(m mVar) {
        this.f43834g = mVar;
    }

    public SecondEndCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SecondEndCardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
