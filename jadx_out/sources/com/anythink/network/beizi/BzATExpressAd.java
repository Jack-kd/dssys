package com.anythink.network.beizi;

import android.view.View;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.beizi.fusion.NativeAd;
import java.util.Map;

/* loaded from: classes2.dex */
public class BzATExpressAd extends CustomNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final String f9472a = BzATExpressAd.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private NativeAd f9473b;

    /* renamed from: c, reason: collision with root package name */
    private final View f9474c;

    public BzATExpressAd(NativeAd nativeAd, View view) {
        this.f9473b = nativeAd;
        this.f9474c = view;
        a();
    }

    private void a() {
        if (this.f9473b != null) {
            setNetworkInfoMap(BzATInitManager.getInstance().a(this.f9473b.getCustomExtraJsonData(), (Map<String, Object>) null));
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        NativeAd nativeAd = this.f9473b;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f9473b = null;
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return this.f9474c;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void onResume() {
        NativeAd nativeAd = this.f9473b;
        if (nativeAd != null) {
            nativeAd.resume();
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
    }
}
