package com.smartdigimkt.g2;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;
import com.smartdigimkt.v1.r0;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class o extends d {

    /* renamed from: p, reason: collision with root package name */
    public SecondEndCardView f40349p;

    /* renamed from: q, reason: collision with root package name */
    public com.smartdigimkt.r2.l f40350q;

    /* renamed from: r, reason: collision with root package name */
    public int f40351r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f40352s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f40353t;

    /* renamed from: u, reason: collision with root package name */
    public View f40354u;

    public o(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.k2.e eVar, int i2, ViewGroup viewGroup) {
        super(context, cVar, aVar, eVar, i2, viewGroup);
        this.f40351r = 1;
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(RelativeLayout relativeLayout) {
        View view;
        if (!z.d(this.f40321b, this.f40322c)) {
            a(false);
        }
        this.f40354u = this.f40326g;
        this.f40351r = this.f40322c.f41644r.f41905W0;
        SecondEndCardView secondEndCardView = new SecondEndCardView(this.f40320a);
        this.f40349p = secondEndCardView;
        secondEndCardView.setAdTitle(this.f40321b.f41810c);
        this.f40349p.setAdDesc(this.f40321b.f41812d);
        if (TextUtils.isEmpty(this.f40321b.f41814e)) {
            this.f40349p.setAdIcon(this.f40321b.f41815f);
        } else {
            this.f40349p.setAdIcon(this.f40321b.f41814e);
        }
        if (TextUtils.isEmpty(this.f40321b.f41817h)) {
            SecondEndCardView secondEndCardView2 = this.f40349p;
            Context context = this.f40320a;
            secondEndCardView2.setCTAText(context.getString(z.a(context, this.f40321b)));
        } else {
            this.f40349p.setCTAText(this.f40321b.f41817h);
        }
        boolean z2 = this.f40325f != 1;
        this.f40352s = z2;
        this.f40349p.addComplianceElements(!z2);
        if (!this.f40352s) {
            this.f40349p.setBackgroundColor(Color.parseColor("#CC000000"));
        }
        r0 r0Var = this.f40327h;
        View subCloseView = (r0Var == null || (view = r0Var.f44590a.f43228n) == null || !(view instanceof CTAButtonLayout)) ? null : ((CTAButtonLayout) view).getSubCloseView();
        if (subCloseView == null) {
            subCloseView = b();
        }
        if (subCloseView != null) {
            if ((subCloseView instanceof TextView) && TextUtils.isEmpty(this.f40322c.f41644r.f41935g1)) {
                ((TextView) subCloseView).setText(com.smartdigimkt.c5.k.a(this.f40320a, "myoffer_sub_close_default_skip_text", "string"));
            }
            if (subCloseView instanceof ImageView) {
                subCloseView.setBackgroundResource(com.smartdigimkt.c5.k.a(this.f40320a, "myoffer_base_skip_icon", "drawable"));
            }
            subCloseView.setOnClickListener(new m(this, relativeLayout));
        }
        this.f40353t = false;
    }

    @Override // com.smartdigimkt.g2.d
    public final View c() {
        return this.f40354u;
    }

    @Override // com.smartdigimkt.g2.d
    public final void a() {
        this.f40353t = true;
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(long j2) {
        super.a(j2);
        if (this.f40331l >= this.f40332m) {
            com.smartdigimkt.r2.n.a(this.f40333n, true, this.f40322c, false);
            this.f40333n.setOnClickListener(new n(this));
        }
    }
}
