package com.smartdigimkt.c2;

import com.smartdigimkt.sdk.basead.ui.CountDownView;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.m3.e f39652a;

    /* renamed from: b, reason: collision with root package name */
    public final CountDownView f39653b;

    /* renamed from: c, reason: collision with root package name */
    public final WebProgressBarView f39654c;

    /* renamed from: d, reason: collision with root package name */
    public long f39655d;

    public e(com.smartdigimkt.m3.e eVar, CountDownView countDownView, WebProgressBarView webProgressBarView) {
        this.f39652a = eVar;
        this.f39653b = countDownView;
        this.f39654c = webProgressBarView;
    }

    public final void a(int i2) {
        long j2 = this.f39652a.f41929e1;
        if (j2 == 1 || j2 == 4) {
            CountDownView countDownView = this.f39653b;
            if (countDownView != null && countDownView.getVisibility() != i2) {
                countDownView.setVisibility(i2);
            }
        } else {
            CountDownView countDownView2 = this.f39653b;
            if (countDownView2 != null && countDownView2.getVisibility() != 8) {
                countDownView2.setVisibility(8);
            }
        }
        long j3 = this.f39652a.f41929e1;
        if (j3 == 2 || j3 == 4) {
            WebProgressBarView webProgressBarView = this.f39654c;
            if (webProgressBarView == null || webProgressBarView.getVisibility() == i2) {
                return;
            }
            webProgressBarView.setVisibility(i2);
            return;
        }
        WebProgressBarView webProgressBarView2 = this.f39654c;
        if (webProgressBarView2 == null || webProgressBarView2.getVisibility() == 8) {
            return;
        }
        webProgressBarView2.setVisibility(8);
    }
}
