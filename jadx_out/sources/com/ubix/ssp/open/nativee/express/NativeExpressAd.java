package com.ubix.ssp.open.nativee.express;

import android.view.View;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;

/* loaded from: classes5.dex */
public interface NativeExpressAd {
    void destroy();

    @Deprecated
    int getAdType();

    int getCreativeType();

    View getNativeExpressView();

    ParamsReview getParamsReview();

    long getPrice();

    long getVideoDuration();

    boolean isValid();

    boolean isVideoAd();

    void lossNotice(UBiXAdLossInfo uBiXAdLossInfo);

    void renderExpressNativeAd(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener);

    void setNativeExpressVideoListener(UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener);

    void winNotice(long j2);
}
