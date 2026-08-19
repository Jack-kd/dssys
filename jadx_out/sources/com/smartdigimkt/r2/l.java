package com.smartdigimkt.r2;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.basead.ui.RoundCornerRelativeLayout;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f42989a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f42990b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f42991c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.m3.e f42992d;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f42993e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f42994f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f42995g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f42996h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f42997i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f42998j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f42999k;

    /* renamed from: l, reason: collision with root package name */
    public RoundCornerRelativeLayout f43000l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f43001m;

    public l(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        this.f42990b = cVar;
        this.f42991c = aVar;
        if (cVar != null) {
            this.f42992d = aVar.f41644r;
        }
    }

    public final void a(View view) {
        if (view == null) {
            return;
        }
        Context context = view.getContext();
        Context context2 = view.getContext();
        this.f42993e = (ImageView) view.findViewById(com.smartdigimkt.c5.k.a(context2, "myoffer_ad_logo", "id"));
        this.f43000l = (RoundCornerRelativeLayout) view.findViewById(com.smartdigimkt.c5.k.a(context2, "myoffer_banner_ad_logo_container", "id"));
        this.f43001m = (ImageView) view.findViewById(com.smartdigimkt.c5.k.a(context2, "myoffer_banner_self_ad_logo_label", "id"));
        if (this.f42993e == null) {
            this.f42993e = (ImageView) view.findViewById(com.smartdigimkt.c5.k.a(context2, "myoffer_banner_self_ad_logo", "id"));
        }
        ImageView imageView = this.f42993e;
        if (imageView != null) {
            imageView.setVisibility(0);
            this.f42993e.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.f42993e.setOnClickListener(new g());
            this.f42993e.setImageResource(com.smartdigimkt.c5.k.a(context2, "myoffer_ad_logo_default", "drawable"));
            if (SDMSDK.getInstance().isUseLocalLogo() || TextUtils.isEmpty(this.f42990b.f41816g)) {
                this.f42990b.getClass();
                this.f42990b.getClass();
            } else {
                int iA = com.smartdigimkt.c5.k.a(context2, 100.0f);
                com.smartdigimkt.t3.m.a(context2).a(new com.smartdigimkt.t3.o(3, this.f42990b.f41816g), iA, iA, new i(this));
            }
        }
        if (this.f43000l != null) {
            com.smartdigimkt.m3.c cVar = this.f42990b;
            if (cVar == null || TextUtils.isEmpty(cVar.f41799T) || this.f43001m == null) {
                this.f43000l.setRadius(0);
            } else {
                this.f43000l.setRadius(2);
                this.f43001m.setVisibility(0);
                this.f42993e.setClickable(false);
                this.f43000l.setOnClickListener(new k(this, context2));
            }
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_four_element_container", "id"));
        this.f42989a = viewGroup;
        if (viewGroup == null) {
            return;
        }
        this.f42994f = (TextView) viewGroup.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_publisher_name", "id"));
        this.f42996h = (TextView) this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_privacy_agreement", "id"));
        this.f42997i = (TextView) this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_permission_manage", "id"));
        this.f42995g = (TextView) this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_version_name", "id"));
        this.f42998j = (TextView) this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_function_manage", "id"));
        this.f42999k = (TextView) this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_disclaimer", "id"));
        View viewFindViewById = view.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_four_element_container_bg", "id"));
        View viewFindViewById2 = this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_center_line1", "id"));
        if (viewFindViewById2 == null) {
            viewFindViewById2 = this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_banner_center_line", "id"));
        }
        View viewFindViewById3 = this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_center_line2", "id"));
        if (viewFindViewById3 == null) {
            viewFindViewById3 = this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_banner_center_line2", "id"));
        }
        View viewFindViewById4 = this.f42989a.findViewById(com.smartdigimkt.c5.k.a(context, "myoffer_center_line3", "id"));
        if (this.f42990b.f()) {
            this.f42989a.setVisibility(0);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            TextView textView = this.f42994f;
            if (textView != null) {
                textView.setVisibility(0);
                this.f42994f.setText(this.f42990b.f41827r);
                this.f42994f.setOnClickListener(new a());
            }
            TextView textView2 = this.f42995g;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.f42995g.setText(context.getResources().getString(com.smartdigimkt.c5.k.a(context, "myoffer_panel_version", "string"), this.f42990b.f41828s));
                this.f42995g.setOnClickListener(new b());
            }
            if (this.f42996h != null) {
                if (TextUtils.isEmpty(this.f42990b.f41829t)) {
                    this.f42996h.setVisibility(8);
                } else {
                    this.f42996h.setVisibility(0);
                    this.f42996h.setOnClickListener(new c(this));
                }
            }
            if (this.f42997i != null) {
                if (TextUtils.isEmpty(this.f42990b.f41830u)) {
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(8);
                    }
                    this.f42997i.setVisibility(8);
                } else {
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(0);
                    }
                    this.f42997i.setVisibility(0);
                    this.f42997i.setOnClickListener(new d(this));
                }
            }
            if (this.f42998j != null) {
                if (TextUtils.isEmpty(this.f42990b.f41831v)) {
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(8);
                    }
                    this.f42998j.setVisibility(8);
                } else {
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(0);
                    }
                    this.f42998j.setVisibility(0);
                    this.f42998j.setOnClickListener(new e(this));
                }
            }
        } else {
            if (this.f42989a != null && !TextUtils.equals(String.valueOf(this.f42992d.f41915a), "2")) {
                this.f42989a.setVisibility(8);
            }
            TextView textView3 = this.f42995g;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            TextView textView4 = this.f42994f;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            TextView textView5 = this.f42996h;
            if (textView5 != null) {
                textView5.setVisibility(8);
            }
            TextView textView6 = this.f42997i;
            if (textView6 != null) {
                textView6.setVisibility(8);
            }
            TextView textView7 = this.f42998j;
            if (textView7 != null) {
                textView7.setVisibility(8);
            }
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(8);
            }
            if (viewFindViewById3 != null) {
                viewFindViewById3.setVisibility(8);
            }
            if (viewFindViewById != null) {
                try {
                    viewFindViewById.setBackground(null);
                } catch (Throwable unused) {
                }
            }
        }
        if (this.f42999k != null) {
            ViewGroup viewGroup2 = this.f42989a;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(0);
            }
            this.f42999k.setVisibility(0);
            if (viewFindViewById4 != null && this.f42990b.f()) {
                viewFindViewById4.setVisibility(0);
            }
            if (TextUtils.isEmpty(this.f42991c.f41644r.f41893S0)) {
                return;
            }
            this.f42999k.setOnClickListener(new f(this));
        }
    }
}
