package com.smartdigimkt.g2;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RPSecondEndCardView;
import com.smartdigimkt.sdk.basead.ui.simpleview.SimplePlayer;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class v extends d {

    /* renamed from: p, reason: collision with root package name */
    public ViewGroup f40361p;

    /* renamed from: q, reason: collision with root package name */
    public SimplePlayer f40362q;

    /* renamed from: r, reason: collision with root package name */
    public RPSecondEndCardView f40363r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f40364s;

    /* renamed from: t, reason: collision with root package name */
    public int f40365t;

    public v(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.k2.e eVar, int i2, ViewGroup viewGroup) {
        super(context, cVar, aVar, eVar, i2, viewGroup);
        this.f40364s = false;
        this.f40365t = 1;
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(RelativeLayout relativeLayout) {
        String str;
        if (!z.d(this.f40321b, this.f40322c)) {
            a(false);
        }
        this.f40361p = relativeLayout;
        com.smartdigimkt.m3.e eVar = this.f40321b.f41832w;
        if (eVar != null) {
            str = eVar.f41911Y0;
            this.f40365t = eVar.f41908X0;
        } else {
            str = "";
        }
        b(this.f40322c.f41644r.f41881O0);
        CountDownView countDownView = this.f40333n;
        Context context = this.f40320a;
        countDownView.setCountDownEndDrawable(com.smartdigimkt.z3.d.a(context, com.smartdigimkt.c5.k.a(context, "myoffer_base_skip_icon", "drawable")));
        SimplePlayer simplePlayer = new SimplePlayer(this.f40320a);
        this.f40362q = simplePlayer;
        relativeLayout.addView(simplePlayer, -1, -1);
        this.f40362q.load(str, true);
        this.f40362q.setSimplePlayerViewListener(new q(this));
        this.f40362q.setOnClickListener(new r(this));
        RPSecondEndCardView rPSecondEndCardView = new RPSecondEndCardView(this.f40320a);
        this.f40363r = rPSecondEndCardView;
        if (eVar != null) {
            rPSecondEndCardView.setAdTitle(eVar.f41917a1);
            this.f40363r.setAdIcon(eVar.f41914Z0);
            this.f40363r.setAdPoster(eVar.f41920b1);
            String str2 = eVar.f41923c1;
            if (!TextUtils.isEmpty(str2)) {
                this.f40363r.setCTAText(str2);
            } else if (this.f40321b.f41824o == 4) {
                this.f40363r.setCTAText(this.f40320a.getResources().getString(com.smartdigimkt.c5.k.a(this.f40320a, "myoffer_rp_second_hint_link4_text", "string")));
            }
        }
        this.f40363r.setBackgroundColor(Color.parseColor("#CC000000"));
        View viewInflate = LayoutInflater.from(this.f40320a).inflate(com.smartdigimkt.c5.k.a(this.f40320a, "myoffer_include_4_element", "layout"), (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        relativeLayout.addView(viewInflate, layoutParams);
        new com.smartdigimkt.r2.l(this.f40321b, this.f40322c).a(relativeLayout);
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(long j2) {
        super.a(j2);
        if (this.f40331l >= this.f40332m) {
            com.smartdigimkt.r2.n.a(this.f40333n, true, this.f40322c, false);
            this.f40333n.setOnClickListener(new u(this));
        }
    }
}
