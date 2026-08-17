package com.smartdigimkt.c2;

import android.content.Context;
import android.view.View;
import com.smartdigimkt.i0.l;
import com.smartdigimkt.i0.m;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebContainerView;
import com.smartdigimkt.y1.k;
import com.smartdigimkt.z.p;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f39634a = d.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final Context f39635b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f39636c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f39637d;

    /* renamed from: e, reason: collision with root package name */
    public final int f39638e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f39639f;

    /* renamed from: g, reason: collision with root package name */
    public com.smartdigimkt.k2.c f39640g;

    /* renamed from: h, reason: collision with root package name */
    public BasePlayerView f39641h;

    /* renamed from: i, reason: collision with root package name */
    public k f39642i;

    /* renamed from: j, reason: collision with root package name */
    public c f39643j;

    /* renamed from: k, reason: collision with root package name */
    public long f39644k;

    /* renamed from: l, reason: collision with root package name */
    public a f39645l;

    /* renamed from: m, reason: collision with root package name */
    public com.smartdigimkt.y.a f39646m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f39647n;

    /* renamed from: o, reason: collision with root package name */
    public final View f39648o;

    /* renamed from: p, reason: collision with root package name */
    public WTWebContainerView f39649p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f39650q;

    /* renamed from: r, reason: collision with root package name */
    public ConcurrentHashMap f39651r;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(android.view.View r6, com.smartdigimkt.l3.a r7, com.smartdigimkt.m3.c r8, int r9) {
        /*
            r5 = this;
            r5.<init>()
            java.lang.Class<com.smartdigimkt.c2.d> r0 = com.smartdigimkt.c2.d.class
            java.lang.String r0 = r0.getSimpleName()
            r5.f39634a = r0
            r0 = 1
            r5.f39650q = r0
            android.content.Context r1 = r6.getContext()
            r5.f39635b = r1
            r5.f39636c = r7
            r5.f39637d = r8
            r5.f39638e = r9
            java.lang.String r9 = "myoffer_player_view_id"
            java.lang.String r2 = "id"
            int r9 = com.smartdigimkt.c5.k.a(r1, r9, r2)
            android.view.View r9 = r6.findViewById(r9)
            com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView r9 = (com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView) r9
            r5.f39641h = r9
            r9 = 0
            if (r7 == 0) goto L56
            if (r8 == 0) goto L56
            int r3 = r7.f41628b
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r3.getClass()
            java.lang.String r4 = "1"
            boolean r4 = r3.equals(r4)
            if (r4 != 0) goto L4e
            java.lang.String r4 = "3"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L49
            goto L56
        L49:
            boolean r7 = com.smartdigimkt.z.z.h(r8, r7)
            goto L57
        L4e:
            java.lang.String r7 = r8.f41818i
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            r7 = r7 ^ r0
            goto L57
        L56:
            r7 = r9
        L57:
            r5.f39647n = r7
            java.lang.String r7 = "myoffer_player_view_container_id"
            int r7 = com.smartdigimkt.c5.k.a(r1, r7, r2)
            android.view.View r6 = r6.findViewById(r7)
            r5.f39648o = r6
            if (r6 == 0) goto L70
            boolean r7 = r6 instanceof com.smartdigimkt.sdk.basead.ui.RoundCornerRelativeLayout
            if (r7 == 0) goto L70
            com.smartdigimkt.sdk.basead.ui.RoundCornerRelativeLayout r6 = (com.smartdigimkt.sdk.basead.ui.RoundCornerRelativeLayout) r6
            r6.setRadius(r9)
        L70:
            r5.f39650q = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c2.d.<init>(android.view.View, com.smartdigimkt.l3.a, com.smartdigimkt.m3.c, int):void");
    }

    public final void a(boolean z2, List list, com.smartdigimkt.u1.c cVar) {
        this.f39639f = z2;
        BasePlayerView basePlayerView = this.f39641h;
        if (basePlayerView != null) {
            a aVar = new a(this);
            this.f39645l = aVar;
            basePlayerView.setListener(aVar);
            this.f39641h.init(this.f39637d, this.f39636c, this.f39639f, list, cVar);
        }
    }

    public final void b() {
        c cVar;
        BasePlayerView basePlayerView = this.f39641h;
        if (basePlayerView != null) {
            if (basePlayerView.isPlaying() && (cVar = this.f39643j) != null) {
                p.a(11, this.f39637d, cVar.a());
            }
            this.f39641h.pause();
        }
    }

    public final void c() {
        BasePlayerView basePlayerView;
        if (this.f39650q && (basePlayerView = this.f39641h) != null && basePlayerView.hasVideo()) {
            if (!this.f39641h.isPlaying() && this.f39643j != null) {
                System.currentTimeMillis();
                long currentPosition = this.f39641h.getCurrentPosition();
                this.f39644k = currentPosition;
                if (currentPosition != 0) {
                    p.a(15, this.f39637d, this.f39643j.a());
                }
            }
            this.f39641h.start();
            if (this.f39639f || !this.f39647n) {
                return;
            }
            if (this.f39646m == null) {
                com.smartdigimkt.y.a aVar = new com.smartdigimkt.y.a();
                this.f39646m = aVar;
                aVar.a(this.f39635b);
            }
            this.f39646m.b();
        }
    }

    public final void d() {
        a(124);
        BasePlayerView basePlayerView = this.f39641h;
        if (basePlayerView == null || !basePlayerView.isPlaying()) {
            return;
        }
        this.f39641h.stop();
        this.f39641h.removeAllViews();
        c cVar = this.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            lVarA.f40671g = this.f39643j.b();
            p.a(16, this.f39637d, lVarA);
        }
    }

    public final void a(int i2) {
        com.smartdigimkt.k2.c cVar = this.f39640g;
        if (cVar != null) {
            cVar.a(i2);
        }
        WTWebContainerView wTWebContainerView = this.f39649p;
        if (wTWebContainerView != null) {
            com.smartdigimkt.k2.c cVar2 = this.f39640g;
            wTWebContainerView.notifyInnerAdEvent(i2, cVar2 != null ? cVar2.f41296f : null);
        }
    }

    public final void b(int i2) {
        BasePlayerView basePlayerView = this.f39641h;
        boolean zIsPlaying = basePlayerView != null ? basePlayerView.isPlaying() : false;
        b();
        if (zIsPlaying) {
            com.smartdigimkt.b4.e.a().a(new b(this, i2), 0L, 8);
        }
    }

    public final long a() {
        BasePlayerView basePlayerView = this.f39641h;
        if (basePlayerView != null) {
            return basePlayerView.getCurrentPosition();
        }
        return 0L;
    }

    public final void b(boolean z2) {
        if (!z2 && this.f39647n) {
            if (this.f39646m == null) {
                com.smartdigimkt.y.a aVar = new com.smartdigimkt.y.a();
                this.f39646m = aVar;
                aVar.a(this.f39635b);
            }
            this.f39646m.b();
        }
        this.f39639f = z2;
        BasePlayerView basePlayerView = this.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setMute(z2);
        }
    }

    public final m a(boolean z2) {
        BasePlayerView basePlayerView = this.f39641h;
        if (basePlayerView == null || !basePlayerView.hasVideo()) {
            return null;
        }
        m mVar = new m();
        mVar.f40687h = this.f39638e == 2 ? 4 : 1;
        mVar.f40689j = 1;
        BasePlayerView basePlayerView2 = this.f39641h;
        mVar.f40680a = basePlayerView2 != null ? basePlayerView2.getVideoLength() / 1000 : 0L;
        mVar.f40681b = this.f39644k / 1000;
        BasePlayerView basePlayerView3 = this.f39641h;
        mVar.f40682c = basePlayerView3 != null ? basePlayerView3.getCurrentPosition() / 1000 : 0L;
        long j2 = this.f39644k;
        mVar.f40683d = j2 == 0 ? 1 : 0;
        mVar.f40688i = j2 == 0 ? 1 : 2;
        BasePlayerView basePlayerView4 = this.f39641h;
        mVar.f40684e = (basePlayerView4 == null || basePlayerView4.getCurrentPosition() != this.f39641h.getVideoLength()) ? 0 : 1;
        mVar.f40690k = z2 ? 0 : 2;
        System.currentTimeMillis();
        BasePlayerView basePlayerView5 = this.f39641h;
        mVar.f40685f = basePlayerView5 != null ? basePlayerView5.getCurrentPosition() : 0L;
        mVar.toString();
        return mVar;
    }
}
