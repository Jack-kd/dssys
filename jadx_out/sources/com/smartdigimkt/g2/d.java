package com.smartdigimkt.g2;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.CloseImageView;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.v1.r0;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f40320a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f40321b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f40322c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.k2.e f40323d;

    /* renamed from: f, reason: collision with root package name */
    public final int f40325f;

    /* renamed from: g, reason: collision with root package name */
    public final ViewGroup f40326g;

    /* renamed from: h, reason: collision with root package name */
    public r0 f40327h;

    /* renamed from: i, reason: collision with root package name */
    public final b f40328i;

    /* renamed from: k, reason: collision with root package name */
    public Thread f40330k;

    /* renamed from: l, reason: collision with root package name */
    public long f40331l;

    /* renamed from: m, reason: collision with root package name */
    public long f40332m;

    /* renamed from: n, reason: collision with root package name */
    public CountDownView f40333n;

    /* renamed from: o, reason: collision with root package name */
    public final com.smartdigimkt.a4.f f40334o;

    /* renamed from: j, reason: collision with root package name */
    public boolean f40329j = false;

    /* renamed from: e, reason: collision with root package name */
    public final a f40324e = new a(this);

    public d(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.k2.e eVar, int i2, ViewGroup viewGroup) {
        com.smartdigimkt.m3.e eVar2;
        this.f40320a = context.getApplicationContext();
        this.f40321b = cVar;
        this.f40322c = aVar;
        this.f40323d = eVar;
        this.f40325f = i2;
        this.f40326g = viewGroup;
        this.f40334o = new com.smartdigimkt.a4.f((cVar == null || (eVar2 = cVar.f41832w) == null) ? 1 : eVar2.a());
        this.f40328i = new b(this, Looper.getMainLooper());
    }

    public void a() {
    }

    public abstract void a(RelativeLayout relativeLayout);

    public final CloseImageView b() {
        r0 r0Var = this.f40327h;
        if (r0Var != null) {
            return r0Var.f44590a.getCloseView();
        }
        return null;
    }

    public View c() {
        return this.f40326g;
    }

    public void d() {
    }

    public final void a(boolean z2) {
        String strValueOf;
        int i2;
        int iA = z.a(this.f40322c, this.f40326g.getContext());
        com.smartdigimkt.m3.e eVar = this.f40322c.f41644r;
        int i3 = eVar.f41878N0;
        if (i3 != 3) {
            i2 = 0;
            strValueOf = i3 != 4 ? i3 != 5 ? "" : String.valueOf(eVar.f41905W0) : String.valueOf(eVar.f41908X0);
        } else {
            strValueOf = String.valueOf(eVar.f41902V0);
            i2 = eVar.f41899U0;
        }
        String str = strValueOf;
        int i4 = i2;
        com.smartdigimkt.m3.c cVar = this.f40321b;
        com.smartdigimkt.l3.a aVar = this.f40322c;
        int i5 = eVar.f41878N0;
        com.smartdigimkt.y3.h.a(cVar, aVar, iA, z2, i5, str, i4, i5);
    }

    public final void b(long j2) {
        CloseImageView closeImageViewB = b();
        if (j2 > 0) {
            j2 = Math.min(j2, 30L);
        } else if (j2 < 0) {
            j2 = Math.max(j2, -30L);
        }
        long j3 = j2 * 1000;
        if (closeImageViewB != null) {
            CountDownView countDownView = new CountDownView(this.f40320a);
            this.f40333n = countDownView;
            Context context = this.f40320a;
            countDownView.setCountDownEndDrawable(com.smartdigimkt.z3.d.a(context, com.smartdigimkt.c5.k.a(context, "myoffer_base_close_icon", "drawable")));
            this.f40333n.setDuration(Math.abs(j3));
            if (Math.abs(j3) > 0) {
                long jAbs = Math.abs(j3);
                if (this.f40330k == null) {
                    this.f40331l = 0L;
                    this.f40332m = jAbs;
                    this.f40329j = true;
                    Thread thread = new Thread(new c(this));
                    this.f40330k = thread;
                    thread.setName("sdm_type_endcard_improve_progress");
                    this.f40330k.start();
                }
            } else {
                a(0L);
            }
            if (j3 >= 0) {
                this.f40333n.setVisibility(0);
            } else {
                this.f40333n.setVisibility(8);
            }
            CloseImageView closeImageViewB2 = b();
            if (closeImageViewB2 == null || this.f40333n == null) {
                return;
            }
            ((ViewGroup) closeImageViewB2.getParent()).addView(this.f40333n, closeImageViewB2.getLayoutParams());
            if (b() != null) {
                com.smartdigimkt.z3.d.a(b());
            }
        }
    }

    public void a(long j2) {
        CountDownView countDownView = this.f40333n;
        if (countDownView != null) {
            countDownView.refresh(j2);
            if (this.f40331l >= this.f40332m) {
                this.f40333n.setVisibility(0);
            }
        }
    }
}
