package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.d0;
import com.smartdigimkt.v1.f6;
import com.smartdigimkt.v1.g6;
import com.smartdigimkt.v1.h6;
import com.smartdigimkt.v1.i6;
import com.smartdigimkt.v1.j6;
import com.smartdigimkt.v1.k6;
import com.smartdigimkt.z.a0;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class SplashEndCardView extends BaseEndCardView {

    /* renamed from: e, reason: collision with root package name */
    public final String f43643e;

    /* renamed from: f, reason: collision with root package name */
    public final RoundImageView f43644f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f43645g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f43646h;

    /* renamed from: i, reason: collision with root package name */
    public final CTAButtonLayout f43647i;

    /* renamed from: j, reason: collision with root package name */
    public final TextView f43648j;

    /* renamed from: k, reason: collision with root package name */
    public final BaseShakeView f43649k;

    /* renamed from: l, reason: collision with root package name */
    public final ImageView f43650l;

    /* renamed from: m, reason: collision with root package name */
    public long f43651m;

    /* renamed from: n, reason: collision with root package name */
    public final f6 f43652n;

    public SplashEndCardView(Context context, c cVar, a aVar) {
        View viewFindViewById;
        super(context, cVar, aVar);
        this.f43643e = "Skip";
        f6 f6Var = new f6(this);
        this.f43652n = f6Var;
        this.f43643e = getResources().getString(k.a(getContext(), "myoffer_splash_skip_text", "string"));
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_endcard", "layout"), (ViewGroup) this, true);
        RoundImageView roundImageView = (RoundImageView) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_icon", "id"));
        this.f43644f = roundImageView;
        CTAButtonLayout cTAButtonLayout = (CTAButtonLayout) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_cta", "id"));
        this.f43647i = cTAButtonLayout;
        this.f43645g = (TextView) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_title", "id"));
        this.f43646h = (TextView) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_desc", "id"));
        TextView textView = (TextView) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_count_down_text", "id"));
        this.f43648j = textView;
        this.f43649k = (BaseShakeView) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_shake_hint_text", "id"));
        this.f43650l = (ImageView) viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_top_bg", "id"));
        this.f43246a.getClass();
        setOnClickListener(f6Var);
        if (roundImageView != null) {
            roundImageView.setNeedRadiu(true);
            roundImageView.setRadiusInDip(12);
        }
        if (cTAButtonLayout != null) {
            this.f43246a.getClass();
            cTAButtonLayout.setOnClickListener(f6Var);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(k.a(getContext(), 12.0f));
        setBackground(gradientDrawable);
        if (textView != null) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(Integer.MIN_VALUE);
            gradientDrawable2.setCornerRadius(k.a(getContext(), 12.0f));
            textView.setBackground(gradientDrawable2);
            textView.setOnClickListener(new g6(this));
        }
        if (TextUtils.isEmpty(this.f43246a.f41810c) && TextUtils.isEmpty(this.f43246a.f41812d) && (viewFindViewById = viewInflate.findViewById(k.a(getContext(), "myoffer_splash_endcard_header_container", "id"))) != null) {
            viewFindViewById.getLayoutParams().height = k.a(getContext(), 240.0f);
        }
        String strB = d.a().b(b.d.f2191e);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        a0.a().a(new o(3, strB), -1, -1, new h6(this));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseEndCardView
    public final void a() {
    }

    public void init(d0 d0Var, long j2) {
        this.mListener = d0Var;
        String str = this.f43246a.f41814e;
        if (TextUtils.isEmpty(str)) {
            str = this.f43246a.f41815f;
        }
        int iA = k.a(getContext(), 60.0f);
        m.a(getContext()).a(new o(1, str), iA, iA, new i6(this, str));
        CTAButtonLayout cTAButtonLayout = this.f43647i;
        if (cTAButtonLayout != null) {
            cTAButtonLayout.initSetting(this.f43246a, this.f43247b, true, new j6(this));
        }
        if (TextUtils.isEmpty(this.f43246a.f41810c)) {
            this.f43645g.setVisibility(8);
        } else {
            this.f43645g.setVisibility(0);
            this.f43645g.setText(this.f43246a.f41810c);
        }
        if (TextUtils.isEmpty(this.f43246a.f41812d)) {
            this.f43646h.setVisibility(8);
        } else {
            this.f43646h.setVisibility(0);
            this.f43646h.setText(this.f43246a.f41812d);
        }
        if (z.d(this.f43247b)) {
            this.f43649k.setVisibility(0);
            this.f43649k.setShakeSetting(this.f43247b.f41644r, this.f43246a.f41824o);
            if (this.f43248c.f41927e != 1) {
                this.f43246a.getClass();
                this.f43649k.setOnClickListener(this.f43652n);
            }
            this.f43649k.setOnShakeListener(new k6(this), this.f43248c);
        } else {
            this.f43649k.setVisibility(8);
        }
        this.f43651m = j2;
    }

    public void onCountDownTick(long j2) {
        TextView textView = this.f43648j;
        if (textView != null) {
            textView.setText((j2 / 1000) + "s | " + this.f43643e);
        }
    }
}
