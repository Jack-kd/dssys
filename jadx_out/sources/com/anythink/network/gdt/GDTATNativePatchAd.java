package com.anythink.network.gdt;

import android.content.Context;
import com.qq.e.ads.nativ.NativeUnifiedADData;

/* loaded from: classes2.dex */
public class GDTATNativePatchAd extends GDTATNativeAd {
    public GDTATNativePatchAd(Context context, NativeUnifiedADData nativeUnifiedADData, int i2, int i3, int i4, boolean z2) {
        super(context, nativeUnifiedADData, i2, i3, i4, z2);
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public int getNativeType() {
        return 2;
    }
}
