package com.fl.saas.adx.api.mixNative;

import android.view.View;
import androidx.annotation.Nullable;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.MediaExtraInfo;
import com.fl.saas.adx.base.manager.MixNativeManager;

/* loaded from: classes3.dex */
public interface NativeAd extends MediaExtraInfo {
    @Deprecated
    void destroy();

    NativeMaterial getAdMaterial();

    @Nullable
    default NativeCustomizeVideo getCustomizeVideo() {
        return null;
    }

    String getReqId();

    boolean isNativeExpress();

    boolean isReady();

    boolean isShakeType();

    void onDetachedVideo();

    void onPause();

    void onResume();

    void prepare(NativePrepareInfo nativePrepareInfo);

    void release();

    void renderAdContainer(NativeAdView nativeAdView, View view);

    void setCanRefresh(boolean z2);

    void setClickCallBackListener(NativeClickCallbackListener nativeClickCallbackListener);

    void setNativeAdParams(AdParams adParams);

    void setNativeEventListener(NativeEventListener nativeEventListener);

    void setOnNativeReleaseListener(MixNativeManager.OnNativeReleaseListener onNativeReleaseListener);
}
