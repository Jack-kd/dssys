package com.anythink.core.common.inner.ui.component;

import android.view.View;
import com.anythink.core.basead.ui.web.WebProgressBarView;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.ui.CountDownView;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    CountDownView f5156a;

    /* renamed from: b, reason: collision with root package name */
    WebProgressBarView f5157b;

    /* renamed from: c, reason: collision with root package name */
    int f5158c = 4;

    /* renamed from: d, reason: collision with root package name */
    private y f5159d;

    /* renamed from: e, reason: collision with root package name */
    private long f5160e;

    public a(y yVar, CountDownView countDownView, WebProgressBarView webProgressBarView) {
        this.f5159d = yVar;
        this.f5156a = countDownView;
        this.f5157b = webProgressBarView;
    }

    private boolean c() {
        return this.f5159d.N() == 2 || this.f5159d.N() == 4;
    }

    public final void a(long j2) {
        this.f5160e = j2;
        CountDownView countDownView = this.f5156a;
        if (countDownView != null) {
            countDownView.setDuration(j2);
        }
    }

    public final void b(long j2) {
        CountDownView countDownView = this.f5156a;
        if (countDownView != null) {
            countDownView.refresh(j2);
        }
        WebProgressBarView webProgressBarView = this.f5157b;
        if (webProgressBarView != null) {
            long j3 = this.f5160e;
            if (j3 > 0) {
                webProgressBarView.setProgress((int) ((j2 * 100.0d) / j3));
            } else {
                webProgressBarView.setProgress(100);
            }
        }
    }

    public final void a() {
        CountDownView countDownView = this.f5156a;
        if (countDownView != null) {
            countDownView.refreshToEnd();
        }
        WebProgressBarView webProgressBarView = this.f5157b;
        if (webProgressBarView != null) {
            webProgressBarView.setProgress(100);
        }
    }

    private boolean b() {
        return this.f5159d.N() == 1 || this.f5159d.N() == 4;
    }

    public final void a(int i2) {
        this.f5158c = i2;
        if (this.f5159d.N() != 1 && this.f5159d.N() != 4) {
            a(this.f5156a, 8);
        } else {
            a(this.f5156a, i2);
        }
        if (this.f5159d.N() != 2 && this.f5159d.N() != 4) {
            a(this.f5157b, 8);
        } else {
            a(this.f5157b, i2);
        }
    }

    private static void a(View view, int i2) {
        if (view == null || view.getVisibility() == i2) {
            return;
        }
        view.setVisibility(i2);
    }
}
