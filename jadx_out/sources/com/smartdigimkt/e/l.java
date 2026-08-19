package com.smartdigimkt.e;

import android.content.Context;
import android.os.SystemClock;
import com.smartdigimkt.sdk.R;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f39952a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable[] f39953b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long[] f39954c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f39955d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p f39956e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f39957f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f39958g;

    public l(BaseSdkSplashATView baseSdkSplashATView, Runnable[] runnableArr, long[] jArr, com.smartdigimkt.l3.a aVar, p pVar, boolean z2, String str) {
        this.f39952a = baseSdkSplashATView;
        this.f39953b = runnableArr;
        this.f39954c = jArr;
        this.f39955d = aVar;
        this.f39956e = pVar;
        this.f39957f = z2;
        this.f39958g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f39952a.getTag(R.id.sdm_bubble_delay_runnable_tag) != this.f39953b[0]) {
            return;
        }
        if (!q.a(this.f39952a)) {
            this.f39952a.setTag(R.id.sdm_bubble_delay_runnable_tag, null);
            return;
        }
        long[] jArr = this.f39954c;
        if (jArr[0] < 0) {
            jArr[0] = SystemClock.elapsedRealtime() + 2500;
        }
        if (!q.a(this.f39952a, this.f39954c[0])) {
            this.f39952a.postDelayed(this.f39953b[0], 50L);
            return;
        }
        Context context = this.f39952a.getContext();
        if (q.c(this.f39952a) && com.smartdigimkt.z.z.b(this.f39955d) && !com.smartdigimkt.z.z.c(this.f39955d)) {
            q.a(context, this.f39952a);
        }
        int i2 = this.f39955d.f41644r.f41927e;
        h hVar = new h(this);
        i iVar = i2 == 0 ? new i(this) : null;
        int i3 = context.getResources().getDisplayMetrics().widthPixels;
        int i4 = context.getResources().getDisplayMetrics().heightPixels;
        char[] cArr = com.smartdigimkt.c5.k.f39779a;
        int iMax = Math.max((int) ((context.getResources().getDisplayMetrics().density * 64.0f) + 0.5f), Math.min(i3, i4) / 2);
        if (this.f39957f) {
            com.smartdigimkt.t3.m.a(context).a(new com.smartdigimkt.t3.o(1, this.f39958g), iMax, iMax, new k(this, context, iMax, iVar, hVar, i2));
        } else {
            q.a(context, this.f39952a, iMax, iVar, hVar, i2, this.f39953b[0]);
        }
    }
}
