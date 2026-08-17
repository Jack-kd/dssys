package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.t2;
import com.smartdigimkt.v1.u2;
import com.smartdigimkt.v1.v2;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class FullScreenHeaderPanelView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public View f43415a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f43416b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f43417c;

    /* renamed from: d, reason: collision with root package name */
    public ScanningAnimButton f43418d;

    /* renamed from: e, reason: collision with root package name */
    public RoundImageView f43419e;

    /* renamed from: f, reason: collision with root package name */
    public c f43420f;

    /* renamed from: g, reason: collision with root package name */
    public a f43421g;

    /* renamed from: h, reason: collision with root package name */
    public e f43422h;

    /* renamed from: i, reason: collision with root package name */
    public v2 f43423i;

    /* renamed from: j, reason: collision with root package name */
    public final t2 f43424j;

    public FullScreenHeaderPanelView(Context context) {
        super(context);
        this.f43424j = new t2(this);
        a();
    }

    public final void a() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_full_screen_top_panel", "layout"), (ViewGroup) this, true);
        this.f43415a = viewInflate;
        this.f43419e = (RoundImageView) viewInflate.findViewById(k.a(getContext(), "myoffer_full_screen_top_banner_icon", "id"));
        this.f43418d = (ScanningAnimButton) this.f43415a.findViewById(k.a(getContext(), "myoffer_full_screen_top_banner_cta", "id"));
        this.f43416b = (TextView) this.f43415a.findViewById(k.a(getContext(), "myoffer_full_screen_top_banner_title", "id"));
        this.f43417c = (TextView) this.f43415a.findViewById(k.a(getContext(), "myoffer_full_screen_top_banner_desc", "id"));
        RoundImageView roundImageView = this.f43419e;
        if (roundImageView != null) {
            roundImageView.setNeedRadiu(true);
            this.f43419e.setRadiusInDip(12);
        }
        ScanningAnimButton scanningAnimButton = this.f43418d;
        if (scanningAnimButton != null) {
            scanningAnimButton.setOnClickListener(this.f43424j);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(k.a(getContext(), 12.0f));
        setBackground(gradientDrawable);
        setOnClickListener(this.f43424j);
    }

    public void initSetting(c cVar, a aVar, v2 v2Var) {
        this.f43420f = cVar;
        this.f43421g = aVar;
        this.f43422h = aVar.f41644r;
        this.f43423i = v2Var;
        String str = cVar.f41814e;
        if (TextUtils.isEmpty(str)) {
            str = this.f43420f.f41815f;
        }
        if (TextUtils.isEmpty(str)) {
            this.f43419e.setVisibility(8);
        } else {
            this.f43419e.setVisibility(0);
            int iA = k.a(getContext(), 42.0f);
            m.a(getContext()).a(new o(1, str), iA, iA, new u2(this, str));
        }
        if (this.f43418d != null) {
            if (TextUtils.isEmpty(this.f43420f.f41817h)) {
                this.f43418d.setText(z.a(getContext(), this.f43420f));
            } else {
                this.f43418d.setText(this.f43420f.f41817h);
            }
            this.f43418d.startAnimation(this.f43421g.f41644r.f41845C0);
        }
        if (TextUtils.isEmpty(this.f43420f.f41810c)) {
            this.f43416b.setVisibility(8);
        } else {
            this.f43416b.setVisibility(0);
            this.f43416b.setText(this.f43420f.f41810c);
        }
        if (TextUtils.isEmpty(this.f43420f.f41812d)) {
            this.f43417c.setVisibility(8);
        } else {
            this.f43417c.setVisibility(0);
            this.f43417c.setText(this.f43420f.f41812d);
        }
    }

    public FullScreenHeaderPanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43424j = new t2(this);
        a();
    }

    public FullScreenHeaderPanelView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43424j = new t2(this);
        a();
    }
}
