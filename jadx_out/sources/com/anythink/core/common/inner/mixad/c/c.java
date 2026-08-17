package com.anythink.core.common.inner.mixad.c;

import android.view.View;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.IATThirdPartyMaterial;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.l.e.a.g;

/* loaded from: classes2.dex */
public final class c implements g {

    /* renamed from: a, reason: collision with root package name */
    private final BaseAd f4742a;

    /* renamed from: b, reason: collision with root package name */
    private IATThirdPartyMaterial f4743b;

    /* renamed from: c, reason: collision with root package name */
    private ATNativeAdInfo.AdPrepareInfo f4744c;

    /* renamed from: d, reason: collision with root package name */
    private ATNativeAdInfo.AdController f4745d;

    /* renamed from: e, reason: collision with root package name */
    private ATNativeAdCustomRender f4746e;

    /* renamed from: f, reason: collision with root package name */
    private com.anythink.core.common.l.b f4747f;

    public c(BaseAd baseAd) {
        this.f4742a = baseAd;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final void a(ATNativeAdInfo.AdController adController) {
        this.f4745d = adController;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final ATBaseAdAdapter b() {
        return null;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final ATNativeAdInfo.AdPrepareInfo c() {
        return this.f4744c;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final ATNativeAdCustomRender d() {
        return this.f4746e;
    }

    @Override // com.anythink.core.api.ATNativeAdInfo
    public final ATNativeAdInfo.AdController getAdController() {
        return this.f4745d;
    }

    @Override // com.anythink.core.api.ATNativeAdInfo
    public final IATThirdPartyMaterial getAdMaterial() {
        BaseAd baseAd = this.f4742a;
        if (baseAd == null) {
            return null;
        }
        if (this.f4743b == null) {
            this.f4743b = new d(baseAd, this);
        }
        return this.f4743b;
    }

    @Override // com.anythink.core.api.ATNativeAdInfo
    public final void prepare(ATNativeAdInfo.AdPrepareInfo adPrepareInfo) {
        this.f4744c = adPrepareInfo;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final BaseAd a() {
        return this.f4742a;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final void a(ATNativeAdCustomRender aTNativeAdCustomRender) {
        this.f4746e = aTNativeAdCustomRender;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final void a(com.anythink.core.common.l.b bVar) {
        this.f4747f = bVar;
    }

    @Override // com.anythink.core.common.l.e.a.g
    public final View a(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        View shakeView;
        BaseAd baseAd = this.f4742a;
        if (baseAd != null && (shakeView = baseAd.getShakeView(i2, i3, aTShakeViewListener)) != null) {
            return shakeView;
        }
        com.anythink.core.common.l.b bVar = this.f4747f;
        if (bVar == null) {
            return null;
        }
        Object objA = bVar.a(i2, i3, aTShakeViewListener);
        if (objA instanceof View) {
            return (View) objA;
        }
        return null;
    }
}
