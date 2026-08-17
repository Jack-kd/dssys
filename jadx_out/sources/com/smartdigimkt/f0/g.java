package com.smartdigimkt.f0;

import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.r2.m;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final CTAButtonLayout f40187a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f40188b;

    /* renamed from: c, reason: collision with root package name */
    public final View f40189c;

    /* renamed from: d, reason: collision with root package name */
    public final View f40190d;

    /* renamed from: e, reason: collision with root package name */
    public ValueAnimator f40191e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f40192f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f40193g;

    /* renamed from: h, reason: collision with root package name */
    public int f40194h;

    /* renamed from: i, reason: collision with root package name */
    public int f40195i;

    public g(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(k.a(context, "myoffer_letter_top_layout", "layout"), (ViewGroup) null);
        this.f40189c = viewInflate;
        View view = new View(context);
        this.f40190d = view;
        view.setBackgroundResource(k.a(context, "myoffer_letter_bottom", "drawable"));
        this.f40187a = (CTAButtonLayout) viewInflate.findViewById(k.a(context, "myoffer_panel_cta_layout", "id"));
        this.f40188b = (ImageView) viewInflate.findViewById(k.a(context, "myoffer_letter_icon", "id"));
        String strB = com.smartdigimkt.t1.d.a().b(b.d.f2189c);
        String strB2 = com.smartdigimkt.t1.d.a().b(b.d.f2190d);
        if (!TextUtils.isEmpty(strB)) {
            a0.a().a(new o(3, strB), -1, -1, new a(this, context));
        }
        if (TextUtils.isEmpty(strB2)) {
            return;
        }
        a0.a().a(new o(3, strB2), -1, -1, new b(this, context));
    }

    public final void a(RelativeLayout relativeLayout, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(8, i2);
        this.f40189c.setLayoutParams(layoutParams);
        relativeLayout.addView(this.f40189c, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(8, this.f40189c.getId());
        layoutParams2.addRule(5, this.f40189c.getId());
        layoutParams2.addRule(7, this.f40189c.getId());
        relativeLayout.addView(this.f40190d, 0, layoutParams2);
    }

    public final void a(int i2) {
        this.f40194h = (i2 * 111) / 300;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f40189c.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = this.f40194h;
        this.f40189c.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f40190d.getLayoutParams();
        layoutParams2.width = i2;
        layoutParams2.height = (layoutParams.height * 200) / 111;
        this.f40190d.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f40187a.getLayoutParams();
        layoutParams3.height = (layoutParams.height * 48) / WebSocketProtocol.PAYLOAD_SHORT;
        layoutParams3.bottomMargin = (this.f40194h / 129) * 35;
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f40188b.getLayoutParams();
        int i3 = this.f40194h;
        layoutParams4.bottomMargin = (i3 / 129) * 35;
        this.f40195i = i3 / 3;
    }

    public final void a() {
        this.f40193g = true;
        try {
            ValueAnimator valueAnimator = this.f40191e;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.f40191e.cancel();
        } catch (Throwable unused) {
        }
    }

    public final void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, m mVar) {
        if (!TextUtils.isEmpty(cVar.f41821l)) {
            this.f40187a.initSetting(cVar, aVar, false, new c(mVar));
            this.f40187a.setOnClickListener(new d(mVar));
            this.f40188b.setVisibility(8);
            this.f40187a.setVisibility(0);
        } else {
            this.f40187a.setVisibility(8);
            this.f40188b.setVisibility(0);
        }
        new l(cVar, aVar).a(this.f40189c);
    }
}
