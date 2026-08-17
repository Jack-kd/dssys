package com.meishu.sdk.core.loader;

import com.meishu.sdk.core.loader.IAdLoadListener;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.ms.g;

/* loaded from: classes4.dex */
public class b<T, K extends IAdLoadListener<T>> implements IAdLoadListener<T> {

    /* renamed from: a, reason: collision with root package name */
    public d f31585a;

    /* renamed from: b, reason: collision with root package name */
    public K f31586b;

    public b(d dVar, K k2) {
        this.f31585a = dVar;
        this.f31586b = k2;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
        LogUtil.d("AdLoadListenerProxy", "send onAdClosed");
        if (this.f31585a.getCacheAdListener() != null) {
            com.meishu.sdk.core.loader.concurrent.a aVar = (com.meishu.sdk.core.loader.concurrent.a) this.f31585a.getCacheAdListener();
            if (aVar.f31615b.f31625e.getLoaderListener() != null) {
                aVar.f31615b.f31625e.getLoaderListener().onAdClosed();
                return;
            }
            return;
        }
        K k2 = this.f31586b;
        if (k2 != null) {
            k2.onAdClosed();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
        d dVar = this.f31585a;
        if (!(dVar instanceof g)) {
            a.a(dVar.getContext(), i0.a(this.f31585a.getSdkAdInfo().getImp()));
        }
        if (this.f31585a.getCacheAdListener() != null) {
            com.meishu.sdk.core.loader.concurrent.a aVar = (com.meishu.sdk.core.loader.concurrent.a) this.f31585a.getCacheAdListener();
            if (aVar.f31615b.f31625e.getLoaderListener() != null) {
                aVar.f31615b.f31625e.getLoaderListener().onAdExposure();
            }
        } else {
            K k2 = this.f31586b;
            if (k2 != null) {
                k2.onAdExposure();
            }
        }
        if (this.f31585a.getConCurrentListener() != null) {
            this.f31585a.getConCurrentListener().onAdExposure();
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdLoaded(T t2) {
        if (this.f31585a.getConCurrentListener() != null) {
            this.f31585a.getConCurrentListener().b(t2, this.f31585a.getTag());
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
        LogUtil.d("AdLoadListenerProxy", "send onAdPlatformError");
        K k2 = this.f31586b;
        if (k2 != null) {
            k2.onAdPlatformError(adPlatformError);
        }
        if (this.f31585a.getConCurrentListener() != null) {
            this.f31585a.getConCurrentListener().a(adPlatformError, this.f31585a.getTag());
        }
        if (this.f31585a.getCacheAdListener() != null) {
            com.meishu.sdk.core.loader.cache.c cacheAdListener = this.f31585a.getCacheAdListener();
            String message = adPlatformError.getMessage();
            int iIntValue = adPlatformError.getCode().intValue();
            long loadedTime = this.f31585a.getSdkAdInfo().getLoadedTime();
            com.meishu.sdk.core.loader.concurrent.a aVar = (com.meishu.sdk.core.loader.concurrent.a) cacheAdListener;
            aVar.getClass();
            LogUtil.e("ConCurrentManager", "onAdRenderFail");
            com.meishu.sdk.core.loader.cache.a aVar2 = aVar.f31614a;
            if ((aVar2.f31610e ? aVar2.f31611f : aVar2.f31607b.getLoadedTime()) != loadedTime || aVar.f31615b.f31625e.getLoaderListener() == null) {
                return;
            }
            aVar.f31615b.f31625e.getLoaderListener().onAdRenderFail(message, iIntValue);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(T t2) {
        if (this.f31585a.getConCurrentListener() != null) {
            this.f31585a.getConCurrentListener().a(t2, this.f31585a.getTag());
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31585a.getConCurrentListener() != null) {
            this.f31585a.getConCurrentListener().a(str, i2, this.f31585a.getTag());
        }
    }
}
