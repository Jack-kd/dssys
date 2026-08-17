package com.fl.saas.adx.api.mixNative;

import android.graphics.Bitmap;
import android.view.View;
import androidx.annotation.Nullable;
import com.fl.saas.adx.base.bean.MaterialBean;
import com.fl.saas.adx.base.bean.Size;
import java.util.List;

/* loaded from: classes3.dex */
public interface NativeMaterial {
    NativeAdAppInfo getAdAppInfo();

    @Deprecated
    Bitmap getAdLogo();

    Bitmap getAdLogoBitmap();

    String getAdLogoUrl();

    View getAdMediaView();

    int getAdType();

    String getCallToAction();

    String getDescription();

    String getIconUrl();

    List<String> getImageUrlList();

    @Nullable
    String getMainImageUrl();

    MaterialBean getMaterial();

    Size getSize();

    String getTitle();

    double getVideoDuration();

    String getVideoUrl();

    boolean isNativeAppAd();
}
