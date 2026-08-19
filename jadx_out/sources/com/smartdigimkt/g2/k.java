package com.smartdigimkt.g2;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;
import com.smartdigimkt.v1.r0;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class k extends d {

    /* renamed from: p, reason: collision with root package name */
    public RedPacketPage f40342p;

    /* renamed from: q, reason: collision with root package name */
    public int f40343q;

    /* renamed from: r, reason: collision with root package name */
    public int f40344r;

    public k(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.k2.e eVar, int i2, ViewGroup viewGroup) {
        super(context, cVar, aVar, eVar, i2, viewGroup);
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(RelativeLayout relativeLayout) {
        if (!z.d(this.f40321b, this.f40322c)) {
            a(false);
        }
        int i2 = this.f40322c.f41644r.f41902V0;
        this.f40343q = i2 / 10;
        this.f40344r = i2 % 10;
        this.f40342p = new RedPacketPage(this.f40320a);
        new com.smartdigimkt.r2.l(this.f40321b, this.f40322c).a(this.f40342p);
        this.f40342p.setOpenIconClickClickAction(this.f40322c.f41644r.f41899U0);
        this.f40342p.setRedPacketClickListener(new i(this));
        com.smartdigimkt.m3.c cVar = this.f40321b;
        if (cVar != null) {
            String str = cVar.f41810c;
            if ((cVar instanceof com.smartdigimkt.m3.b) && !TextUtils.isEmpty(((com.smartdigimkt.m3.b) cVar).f42049j0)) {
                str = ((com.smartdigimkt.m3.b) this.f40321b).f42049j0;
            }
            this.f40342p.setAdTitle(!TextUtils.isEmpty(str) ? !TextUtils.isEmpty(this.f40322c.f41644r.f41887Q0) ? this.f40322c.f41644r.f41887Q0.replace("{__sender__}", "") : this.f40320a.getResources().getString(com.smartdigimkt.c5.k.a(this.f40320a, "myoffer_red_packet_title_text", "string"), str) : "");
            this.f40342p.setAdBless(this.f40322c.f41644r.f41890R0);
            if (TextUtils.isEmpty(this.f40321b.f41814e)) {
                this.f40342p.setAdIconUrl(this.f40321b.f41815f);
            } else {
                this.f40342p.setAdIconUrl(this.f40321b.f41814e);
            }
            this.f40342p.setAdNotice(this.f40322c.f41644r.f41896T0, this.f40321b.f41824o);
            RedPacketPage redPacketPage = this.f40342p;
            this.f40322c.f41644r.getClass();
            redPacketPage.setCTAText("");
        }
        relativeLayout.addView(this.f40342p, -1, -1);
        b(this.f40322c.f41644r.f41881O0);
        CountDownView countDownView = this.f40333n;
        if (countDownView != null) {
            com.smartdigimkt.r2.n.a(countDownView, false, this.f40322c, false);
        }
        r0 r0Var = this.f40327h;
        if (r0Var != null) {
            r0Var.a(true);
        }
    }

    @Override // com.smartdigimkt.g2.d
    public final void d() {
        r0 r0Var = this.f40327h;
        if (r0Var != null) {
            Context context = r0Var.f44590a.getContext();
            if (!(context instanceof Activity) || context.getResources().getConfiguration().orientation == 1) {
                return;
            }
            ((Activity) context).setRequestedOrientation(1);
            BaseScreenATView baseScreenATView = r0Var.f44590a;
            int i2 = baseScreenATView.f43266G;
            int i3 = baseScreenATView.f43267H;
            if (i2 > i3) {
                int i4 = i2 + i3;
                int i5 = i4 - i3;
                baseScreenATView.f43267H = i5;
                baseScreenATView.f43266G = i4 - i5;
            }
        }
    }

    @Override // com.smartdigimkt.g2.d
    public final void a(long j2) {
        super.a(j2);
        if (this.f40331l >= this.f40332m) {
            this.f40333n.setOnClickListener(new j(this));
        }
    }
}
