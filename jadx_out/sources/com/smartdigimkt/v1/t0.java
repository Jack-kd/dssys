package com.smartdigimkt.v1;

import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.BaseATActivity;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.CloseImageView;
import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.MuteImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class t0 implements com.smartdigimkt.y1.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44614a;

    public t0(BaseScreenATView baseScreenATView) {
        this.f44614a = baseScreenATView;
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.y1.k
    public final void b() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void c() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void d() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void e() {
    }

    @Override // com.smartdigimkt.y1.k
    public final void f() {
        if (this.f44614a.f43230p != null) {
            HashMap map = new HashMap();
            BasePlayerView basePlayerView = this.f44614a.f43229o.f39641h;
            map.put("video_length", Long.valueOf(basePlayerView != null ? basePlayerView.getVideoLength() : 0L));
            this.f44614a.f43230p.a(map);
        }
        this.f44614a.L();
        this.f44614a.k();
        com.smartdigimkt.p1.t tVar = this.f44614a.f43303u0;
        if (tVar != null) {
            tVar.e();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void g() {
        BaseScreenATView baseScreenATView = this.f44614a;
        com.smartdigimkt.c2.d dVar = baseScreenATView.f43229o;
        if (dVar != null) {
            long jA = dVar.a();
            if (baseScreenATView.f43274O && baseScreenATView.f43271L == -1) {
                long j2 = baseScreenATView.f43272M;
                if (j2 != 0) {
                    baseScreenATView.f43271L = jA;
                    if (j2 > 0) {
                        baseScreenATView.f43273N = jA + j2;
                    }
                    baseScreenATView.J();
                }
            }
        }
        BaseScreenATView baseScreenATView2 = this.f44614a;
        com.smartdigimkt.m3.e eVar = baseScreenATView2.f43216b.f41644r;
        if ((eVar == null || eVar.f41918b != 1) && !baseScreenATView2.w()) {
            return;
        }
        this.f44614a.a(1, 3);
    }

    @Override // com.smartdigimkt.y1.k
    public final void a() {
        BaseScreenATView baseScreenATView;
        com.smartdigimkt.r2.o oVar;
        com.smartdigimkt.p1.t tVar = this.f44614a.f43303u0;
        if (tVar != null) {
            tVar.d();
        }
        if (this.f44614a.getATViewType() != 100 && !this.f44614a.o()) {
            this.f44614a.x();
        }
        BaseScreenATView baseScreenATView2 = this.f44614a;
        if (baseScreenATView2.f43216b.f41644r.f41847D == 1) {
            baseScreenATView2.f43227m = true;
            if (baseScreenATView2.f43282W) {
                baseScreenATView2.D();
                return;
            } else {
                baseScreenATView2.I();
                return;
            }
        }
        if (baseScreenATView2.getCloseView() != null && (oVar = (baseScreenATView = this.f44614a).f43234t) != null) {
            CloseImageView closeView = baseScreenATView.getCloseView();
            oVar.a(closeView, closeView, 1);
        }
        this.f44614a.c(2);
    }

    @Override // com.smartdigimkt.y1.k
    public final void b(long j2) {
        if (this.f44614a.f43221g) {
            return;
        }
        this.f44614a.a(j2);
        this.f44614a.b(j2);
        BaseScreenATView baseScreenATView = this.f44614a;
        if (!baseScreenATView.f43305w0) {
            baseScreenATView.d(0);
            BaseScreenATView baseScreenATView2 = this.f44614a;
            MuteImageView muteImageView = baseScreenATView2.f43297o0;
            if (muteImageView != null && muteImageView.getVisibility() != 0) {
                baseScreenATView2.f43297o0.setVisibility(0);
            }
            this.f44614a.f43305w0 = true;
        }
        BaseScreenATView baseScreenATView3 = this.f44614a;
        int i2 = baseScreenATView3.f43270K;
        if (i2 >= 0 && j2 >= i2) {
            baseScreenATView3.H();
        }
        if (this.f44614a.getATViewType() != 100) {
            BaseScreenATView baseScreenATView4 = this.f44614a;
            if (j2 < baseScreenATView4.f43280U || baseScreenATView4.n()) {
                return;
            }
            this.f44614a.x();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(com.smartdigimkt.i0.f fVar) {
        BaseScreenATView baseScreenATView = this.f44614a;
        baseScreenATView.f43227m = true;
        com.smartdigimkt.p1.t tVar = baseScreenATView.f43303u0;
        if (tVar != null) {
            q qVar = (q) tVar;
            if (TextUtils.equals(qVar.f44577d, "1")) {
                qVar.f44577d = "3";
                BaseATActivity baseATActivity = qVar.f44578e;
                baseATActivity.a("6-".concat(baseATActivity.f43209x - baseATActivity.f43210y <= 0 ? "2" : "1"), 0L);
            }
        }
        this.f44614a.a(fVar);
        if (this.f44614a.getATViewType() != 100) {
            BaseScreenATView baseScreenATView2 = this.f44614a;
            if (baseScreenATView2.f43216b.f41644r.f41987y == 1) {
                baseScreenATView2.x();
            }
        }
        com.smartdigimkt.c2.e eVar = this.f44614a.f43301s0;
        if (eVar != null) {
            CountDownView countDownView = eVar.f39653b;
            if (countDownView != null) {
                countDownView.refreshToEnd();
            }
            WebProgressBarView webProgressBarView = eVar.f39654c;
            if (webProgressBarView != null) {
                webProgressBarView.setProgress(100);
            }
        }
        BaseScreenATView baseScreenATView3 = this.f44614a;
        if (!baseScreenATView3.f43282W) {
            baseScreenATView3.k();
            this.f44614a.I();
        } else {
            baseScreenATView3.D();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(long j2) {
        BaseScreenATView baseScreenATView = this.f44614a;
        baseScreenATView.f43279T = j2;
        com.smartdigimkt.p1.t tVar = baseScreenATView.f43303u0;
        if (tVar != null) {
            q qVar = (q) tVar;
            if (TextUtils.equals(qVar.f44577d, "1")) {
                qVar.f44577d = "2";
            }
            BaseATActivity baseATActivity = qVar.f44578e;
            baseATActivity.a("5-".concat(baseATActivity.f43209x - baseATActivity.f43210y <= 0 ? "2" : "1"), 0L);
        }
        this.f44614a.setCountDownDuration(j2);
    }
}
