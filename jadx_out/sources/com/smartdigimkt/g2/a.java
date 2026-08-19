package com.smartdigimkt.g2;

import com.smartdigimkt.sdk.basead.ui.CountDownView;

/* loaded from: classes5.dex */
public final class a implements com.smartdigimkt.k2.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f40317a;

    public a(d dVar) {
        this.f40317a = dVar;
    }

    @Override // com.smartdigimkt.k2.e
    public final void a(int i2, int i3) {
        CountDownView countDownView = this.f40317a.f40333n;
        if (countDownView != null) {
            countDownView.setClickViewAlpha(1.0d);
        }
        if (this.f40317a.b() != null && this.f40317a.b() != null) {
            this.f40317a.b().setClickViewAlpha(1.0d);
        }
        com.smartdigimkt.k2.e eVar = this.f40317a.f40323d;
        if (eVar != null) {
            eVar.a(i2, i3);
        }
    }
}
