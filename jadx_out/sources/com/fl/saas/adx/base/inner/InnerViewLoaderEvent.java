package com.fl.saas.adx.base.inner;

import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.InnerNativeView;

/* loaded from: classes3.dex */
public interface InnerViewLoaderEvent<T extends InnerNativeView> {
    void onAdFailed(FLError fLError);

    void onLoaded(T t2);
}
