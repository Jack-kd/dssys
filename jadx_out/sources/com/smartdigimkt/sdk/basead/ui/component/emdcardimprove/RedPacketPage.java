package com.smartdigimkt.sdk.basead.ui.component.emdcardimprove;

import android.animation.ValueAnimator;
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
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e2.i;
import com.smartdigimkt.e2.j;
import com.smartdigimkt.e2.l;
import com.smartdigimkt.e2.n;
import com.smartdigimkt.r2.m;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.x1.h;
import com.smartdigimkt.z.a0;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class RedPacketPage extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final RelativeLayout f43808a;

    /* renamed from: b, reason: collision with root package name */
    public final RelativeLayout f43809b;

    /* renamed from: c, reason: collision with root package name */
    public final RoundImageView f43810c;

    /* renamed from: d, reason: collision with root package name */
    public final RoundImageView f43811d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f43812e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f43813f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f43814g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f43815h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f43816i;

    /* renamed from: j, reason: collision with root package name */
    public final ImageView f43817j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageView f43818k;

    /* renamed from: l, reason: collision with root package name */
    public final ImageView f43819l;

    /* renamed from: m, reason: collision with root package name */
    public final ImageView f43820m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f43821n;

    /* renamed from: o, reason: collision with root package name */
    public h f43822o;

    /* renamed from: p, reason: collision with root package name */
    public ValueAnimator f43823p;

    /* renamed from: q, reason: collision with root package name */
    public ValueAnimator f43824q;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f43825r;

    /* renamed from: s, reason: collision with root package name */
    public int f43826s;

    /* renamed from: t, reason: collision with root package name */
    public m f43827t;

    public RedPacketPage(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            h hVar = this.f43822o;
            if (hVar != null) {
                hVar.a();
                return;
            }
            return;
        }
        h hVar2 = this.f43822o;
        if (hVar2 != null) {
            hVar2.pause();
        }
    }

    public void setAdBless(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f43815h.setText(str);
        this.f43816i.setText(str);
    }

    public void setAdIconUrl(String str) {
        if (this.f43810c == null || this.f43811d == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.f43810c.setVisibility(8);
            this.f43811d.setVisibility(8);
        } else {
            ViewGroup.LayoutParams layoutParams = this.f43810c.getLayoutParams();
            com.smartdigimkt.t3.m.a(getContext()).a(new o(1, str), layoutParams.width, layoutParams.height, new n(this, str));
        }
    }

    public void setAdNotice(String str, int i2) {
        if (!TextUtils.isEmpty(str)) {
            this.f43814g.setText(str);
        } else if (i2 == 4) {
            this.f43814g.setText(getResources().getString(k.a(getContext(), "myoffer_red_packet_hint_link4_text", "string")));
        }
    }

    public void setAdTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f43812e.setText(str);
        this.f43813f.setText(str);
    }

    public void setCTAText(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f43821n.setText(str);
    }

    public void setOpenIconClickClickAction(int i2) {
        this.f43826s = i2;
    }

    public void setRedPacketClickListener(m mVar) {
        this.f43827t = mVar;
    }

    public void stopAnimation() {
        h hVar = this.f43822o;
        if (hVar != null) {
            hVar.stop();
            this.f43822o = null;
        }
        ValueAnimator valueAnimator = this.f43823p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f43823p = null;
        }
        ValueAnimator valueAnimator2 = this.f43824q;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.f43824q = null;
        }
    }

    public RedPacketPage(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RedPacketPage(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_endcard_improve_red_packet", "layout"), this);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(k.a(getContext(), "myoffer_red_packet_receive_page", "id"));
        this.f43809b = relativeLayout;
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(k.a(getContext(), "myoffer_red_packet_cover", "id"));
        this.f43808a = relativeLayout2;
        this.f43818k = (ImageView) findViewById(k.a(getContext(), "myoffer_red_packet_half_topbg", "id"));
        this.f43819l = (ImageView) findViewById(k.a(getContext(), "myoffer_red_packet_half_bottombg", "id"));
        RoundImageView roundImageView = (RoundImageView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_icon", "id"));
        this.f43810c = roundImageView;
        RoundImageView roundImageView2 = (RoundImageView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_icon_2", "id"));
        this.f43811d = roundImageView2;
        this.f43812e = (TextView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_title", "id"));
        TextView textView = (TextView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_title_2", "id"));
        this.f43813f = textView;
        this.f43815h = (TextView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_bless", "id"));
        TextView textView2 = (TextView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_bless_2", "id"));
        this.f43816i = textView2;
        TextView textView3 = (TextView) findViewById(k.a(getContext(), "myoffer_red_packet_ad_hint_link", "id"));
        this.f43814g = textView3;
        ImageView imageView = (ImageView) findViewById(k.a(getContext(), "myoffer_red_packet_open_icon", "id"));
        this.f43817j = imageView;
        this.f43820m = (ImageView) findViewById(k.a(getContext(), "myoffer_red_packet_anim_open_icon", "id"));
        TextView textView4 = (TextView) findViewById(k.a(getContext(), "myoffer_red_packet_cta", "id"));
        this.f43821n = textView4;
        roundImageView.setRadiusInDip(18);
        roundImageView.setNeedRadiu(true);
        roundImageView2.setRadiusInDip(12);
        roundImageView2.setNeedRadiu(true);
        ArrayList arrayList = new ArrayList();
        this.f43825r = arrayList;
        arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_red_packet_frame1", "drawable")));
        arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_red_packet_frame2", "drawable")));
        arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_red_packet_frame3", "drawable")));
        arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_red_packet_frame4", "drawable")));
        arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_red_packet_frame5", "drawable")));
        arrayList.add(Integer.valueOf(k.a(getContext(), "myoffer_red_packet_frame6", "drawable")));
        if (imageView != null) {
            h hVar = this.f43822o;
            if (hVar != null) {
                hVar.stop();
            }
            h hVar2 = new h(imageView);
            this.f43822o = hVar2;
            hVar2.f45079e = 0.85f;
            hVar2.start();
        }
        imageView.setOnClickListener(new i(this));
        relativeLayout2.setOnClickListener(new j(this));
        setOnClickListener(new com.smartdigimkt.e2.k(this));
        l lVar = new l(this);
        textView4.setOnClickListener(lVar);
        textView.setOnClickListener(lVar);
        roundImageView2.setOnClickListener(lVar);
        textView2.setOnClickListener(lVar);
        textView3.setOnClickListener(lVar);
        relativeLayout.setOnClickListener(new com.smartdigimkt.e2.m(this));
        String strB = d.a().b(b.d.f2187a);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        a0.a().a(new o(3, strB), -1, -1, new com.smartdigimkt.e2.d(this));
    }
}
