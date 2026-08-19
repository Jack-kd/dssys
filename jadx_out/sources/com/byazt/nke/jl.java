package com.byazt.nke;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes3.dex */
public interface jl {
    boolean cancelRequest();

    Bitmap.Config getBitmapConfig();

    int getHeight();

    String getMemoryCacheKey();

    String getRawCacheKey();

    ImageView.ScaleType getScaleType();

    String getUrl();

    int getWidth();
}
