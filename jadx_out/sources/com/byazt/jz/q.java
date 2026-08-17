package com.byazt.jz;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.xci.mp;
import com.byazt.zn.ky;

@com.byazt.kj.hp(hp = {0, 1, 40, 150})
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public View f21934a;
    public String eb;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qk.a f21935j;
    public com.byazt.gog.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public final mp f21936l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.qk.w f21937w;

    public q(Context context, mp mpVar, View view, String str) {
        this.eb = "rewarded_video";
        this.f21936l = mpVar;
        this.hp = context;
        this.f21934a = view;
        if (TextUtils.isEmpty(str)) {
            this.eb = ky.l(ky.jl(mpVar));
        } else {
            this.eb = str;
        }
        if (mpVar.q() == 4) {
            this.jx = com.byazt.ff.s.hp(context, mpVar, this.eb);
        }
        String str2 = this.eb;
        com.byazt.qk.a aVar = new com.byazt.qk.a(context, mpVar, str2, ky.j(str2));
        this.f21935j = aVar;
        aVar.hp(this.f21934a);
        ((com.byazt.sw.hp) this.f21935j.hp(com.byazt.sw.hp.class)).hp(this.jx);
        String str3 = this.eb;
        com.byazt.qk.w wVar = new com.byazt.qk.w(context, mpVar, str3, ky.j(str3));
        this.f21937w = wVar;
        wVar.hp(this.f21934a);
        ((com.byazt.sw.hp) this.f21937w.hp(com.byazt.sw.hp.class)).hp(this.jx);
    }

    public void hp(int i2, com.byazt.xci.b bVar) {
        com.byazt.qk.w wVar;
        if (i2 == -1 || bVar == null) {
            return;
        }
        com.byazt.xci.e eVar = new com.byazt.xci.e();
        eVar.hp(bVar.hp);
        eVar.l(bVar.f27199l);
        eVar.jx(bVar.jx);
        eVar.j(bVar.f27197j);
        eVar.l(bVar.f27203v);
        eVar.hp(bVar.xs);
        if (i2 != 1) {
            if (i2 == 2 && (wVar = this.f21937w) != null) {
                wVar.hp(bVar);
                this.f21937w.hp(eVar);
                this.f21937w.hp(this.f21934a, eVar);
                return;
            }
            return;
        }
        com.byazt.qk.a aVar = this.f21935j;
        if (aVar != null) {
            aVar.hp(bVar);
            this.f21935j.hp(eVar);
            this.f21935j.hp(this.f21934a, eVar);
        }
    }
}
