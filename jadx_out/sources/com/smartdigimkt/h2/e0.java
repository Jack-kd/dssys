package com.smartdigimkt.h2;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View;

/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f40476a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f40477b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f40478c;

    /* renamed from: d, reason: collision with root package name */
    public final RelativeLayout f40479d;

    /* renamed from: e, reason: collision with root package name */
    public final View f40480e;

    /* renamed from: f, reason: collision with root package name */
    public final int f40481f;

    /* renamed from: g, reason: collision with root package name */
    public final int f40482g;

    /* renamed from: h, reason: collision with root package name */
    public final b f40483h;

    /* renamed from: i, reason: collision with root package name */
    public BaseG2CV2View f40484i;

    /* renamed from: j, reason: collision with root package name */
    public long f40485j;

    /* renamed from: k, reason: collision with root package name */
    public long f40486k;

    /* renamed from: l, reason: collision with root package name */
    public final long f40487l;

    /* renamed from: m, reason: collision with root package name */
    public final String f40488m;

    /* renamed from: n, reason: collision with root package name */
    public final int f40489n;

    /* renamed from: o, reason: collision with root package name */
    public final com.smartdigimkt.k2.e f40490o;

    /* renamed from: p, reason: collision with root package name */
    public final z f40491p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f40492q = false;

    /* renamed from: r, reason: collision with root package name */
    public final int f40493r;

    /* renamed from: s, reason: collision with root package name */
    public long f40494s;

    /* renamed from: t, reason: collision with root package name */
    public long f40495t;

    public e0(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, int i2, d0 d0Var, RelativeLayout relativeLayout, View view, com.smartdigimkt.k2.e eVar, b bVar) {
        this.f40476a = context;
        this.f40477b = cVar;
        this.f40478c = aVar;
        this.f40479d = relativeLayout;
        this.f40480e = view;
        this.f40481f = i2;
        this.f40490o = eVar;
        this.f40483h = bVar;
        this.f40482g = d0Var.f40469b;
        this.f40487l = d0Var.f40470c;
        this.f40486k = d0Var.f40471d;
        this.f40488m = d0Var.f40472e;
        this.f40489n = d0Var.f40473f;
        this.f40493r = d0Var.f40468a;
        this.f40491p = new z(this, i2);
    }

    public final void a() {
        if (this.f40492q) {
            this.f40492q = false;
            long j2 = this.f40486k;
            if (j2 > 0) {
                this.f40486k = Math.max(j2 - (SystemClock.elapsedRealtime() - this.f40485j), 0L);
            }
            com.smartdigimkt.b4.e eVarA = com.smartdigimkt.b4.e.a();
            eVarA.f39592b.removeCallbacks(this.f40491p);
            BaseG2CV2View baseG2CV2View = this.f40484i;
            if (baseG2CV2View != null) {
                baseG2CV2View.pauseAnimPlay();
            }
        }
    }

    public final RelativeLayout.LayoutParams a(int i2) {
        if (i2 != 13) {
            switch (i2) {
                case 1:
                    return new RelativeLayout.LayoutParams(-1, -1);
                case 2:
                    return new RelativeLayout.LayoutParams(-1, -1);
                case 3:
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(13);
                    return layoutParams;
                case 4:
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                    if (this.f40481f != 2 && this.f40489n == 1) {
                        layoutParams2.setMargins(0, 0, 0, com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 290.0f));
                        layoutParams2.addRule(12);
                        return layoutParams2;
                    }
                    layoutParams2.addRule(13);
                    return layoutParams2;
                case 5:
                    if (this.f40481f == 2) {
                        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 48.0f));
                        layoutParams3.setMargins(com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 36.0f), 0, com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 36.0f), 0);
                        layoutParams3.addRule(13);
                        return layoutParams3;
                    }
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 300.0f), com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 48.0f));
                    if (this.f40489n == 2) {
                        layoutParams4.setMargins(0, 0, com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 24.0f), com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 96.0f));
                        layoutParams4.addRule(11);
                        layoutParams4.addRule(12);
                        return layoutParams4;
                    }
                    layoutParams4.setMargins(0, 0, 0, com.smartdigimkt.c5.k.a(this.f40479d.getContext(), 290.0f));
                    layoutParams4.addRule(14);
                    layoutParams4.addRule(12);
                    return layoutParams4;
                case 6:
                    return new RelativeLayout.LayoutParams(-1, -1);
                case 7:
                    return new RelativeLayout.LayoutParams(-1, -1);
                case 8:
                case 9:
                case 10:
                    return new RelativeLayout.LayoutParams(-1, -1);
                default:
                    return new RelativeLayout.LayoutParams(-2, -2);
            }
        }
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        int i3 = this.f40481f;
        if (i3 == 3) {
            layoutParams5.addRule(12);
            return layoutParams5;
        }
        if (i3 == 2) {
            layoutParams5.addRule(12);
            return layoutParams5;
        }
        if (i3 == 1) {
            layoutParams5.addRule(12);
        }
        return layoutParams5;
    }
}
