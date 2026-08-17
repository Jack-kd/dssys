package com.anythink.network.ubix;

import android.view.View;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.ubix.ssp.open.nativee.express.NativeExpressAd;

/* loaded from: classes2.dex */
public class UbATExpressAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private NativeExpressAd f10477a;

    /* renamed from: b, reason: collision with root package name */
    private View f10478b;

    public UbATExpressAd(NativeExpressAd nativeExpressAd, View view) {
        this.f10477a = nativeExpressAd;
        this.f10478b = view;
    }

    public void a(View view) {
        this.f10478b = view;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeExpressAd nativeExpressAd = this.f10477a;
        if (nativeExpressAd != null) {
            try {
                nativeExpressAd.destroy();
            } catch (Throwable unused) {
            }
            this.f10477a = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return this.f10478b;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.core.api.BaseAd
    public boolean isValid() {
        NativeExpressAd nativeExpressAd = this.f10477a;
        return nativeExpressAd != null ? nativeExpressAd.isValid() : super.isValid();
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
    }
}
