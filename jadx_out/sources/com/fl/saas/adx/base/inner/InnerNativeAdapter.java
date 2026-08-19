package com.fl.saas.adx.base.inner;

import androidx.annotation.Nullable;
import com.fl.saas.AbstractC1192k0;
import com.fl.saas.B;
import com.fl.saas.C1207p0;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.base.bidding.BiddingResult;
import com.fl.saas.adx.base.interfaces.AdMaterial;
import com.fl.saas.adx.base.interfaces.AdValid;

/* loaded from: classes3.dex */
public interface InnerNativeAdapter extends AdMaterial, BiddingResult, AdValid {
    @Override // com.fl.saas.adx.base.bidding.BiddingResult
    default void biddingResult(boolean z2, int i2, int i3, int i4) {
        NativeAd nativeAd = getNativeAd();
        if (nativeAd instanceof BiddingResult) {
            ((BiddingResult) nativeAd).biddingResult(z2, i2, i3, i4);
        }
    }

    @Override // com.fl.saas.adx.base.interfaces.AdMaterial
    @Nullable
    default AdMaterial.AdMaterialData getAdMaterialData() {
        NativeAd nativeAd = getNativeAd();
        if (nativeAd instanceof AdMaterial) {
            return ((AdMaterial) nativeAd).getAdMaterialData();
        }
        return null;
    }

    @Nullable
    NativeAd getNativeAd();

    default void innerDestroy(AbstractC1192k0 abstractC1192k0, NativeAd nativeAd) {
        C1207p0.b(abstractC1192k0).a(new B() { // from class: com.fl.saas.adx.base.inner.a
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((AbstractC1192k0) obj).destroy();
            }
        });
        C1207p0.b(nativeAd).a(new B() { // from class: com.fl.saas.adx.base.inner.b
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((NativeAd) obj).release();
            }
        });
    }

    @Override // com.fl.saas.adx.base.interfaces.AdValid
    default boolean isValid() {
        NativeAd nativeAd = getNativeAd();
        if (nativeAd == null) {
            return false;
        }
        if (nativeAd instanceof AdValid) {
            return ((AdValid) nativeAd).isValid();
        }
        return true;
    }

    AbstractC1192k0 loadNativeHandler();
}
