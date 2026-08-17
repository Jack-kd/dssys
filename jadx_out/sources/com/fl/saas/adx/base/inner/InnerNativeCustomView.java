package com.fl.saas.adx.base.inner;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.fl.saas.B;

/* loaded from: classes3.dex */
public interface InnerNativeCustomView {
    View getAdView();

    View getCATView();

    B loadIcon();

    InnerNativeCustomView setCAT(String str);

    InnerNativeCustomView setDes(String str);

    InnerNativeCustomView setMediaView(View view, @Nullable Drawable drawable);

    InnerNativeCustomView setTitle(String str);
}
