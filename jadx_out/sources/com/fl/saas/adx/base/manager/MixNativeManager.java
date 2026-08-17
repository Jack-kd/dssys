package com.fl.saas.adx.base.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import com.fl.saas.B;
import com.fl.saas.C1176f;
import com.fl.saas.C1207p0;
import com.fl.saas.adx.api.AdParams;
import com.fl.saas.adx.api.mixNative.MixNativeAdManager;
import com.fl.saas.adx.api.mixNative.NativeAd;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.manager.api.ManagerLoader;
import com.fl.saas.adx.base.manager.loader.BaseLoader;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MixNativeManager implements MixNativeAdManager, ManagerLoader<C1176f> {
    private boolean isFailedCallBack = false;
    private final WeakReference<Context> mContextRef;
    private NativeLoadListener mLoadListener;
    private final BaseLoader<C1176f> mLoader;
    private final AdParams mParams;
    private final OnNativeReleaseListener onNativeReleaseListener;

    public interface OnNativeReleaseListener {
        void release();
    }

    public MixNativeManager(@NonNull Context context, AdParams adParams, NativeLoadListener nativeLoadListener) {
        this.mParams = adParams;
        this.mContextRef = new WeakReference<>(context);
        this.mLoadListener = nativeLoadListener;
        final BaseLoader<C1176f> baseLoader = new BaseLoader<C1176f>(this, 10) { // from class: com.fl.saas.adx.base.manager.MixNativeManager.1
            @Override // com.fl.saas.adx.base.manager.loader.BaseLoader
            public void loadAdapter(AdapterAPI adapterAPI) {
                if (adapterAPI instanceof C1176f) {
                    C1176f c1176f = (C1176f) adapterAPI;
                    c1176f.b().a(MixNativeManager.this.mParams);
                    c1176f.a(MixNativeManager.this.onNativeReleaseListener);
                }
                super.loadAdapter(adapterAPI);
            }
        };
        this.mLoader = baseLoader;
        this.onNativeReleaseListener = new OnNativeReleaseListener() { // from class: com.fl.saas.adx.base.manager.g
            @Override // com.fl.saas.adx.base.manager.MixNativeManager.OnNativeReleaseListener
            public final void release() {
                baseLoader.destroy();
            }
        };
    }

    public static /* synthetic */ void a(MixNativeManager mixNativeManager, FLError fLError) {
        NativeLoadListener nativeLoadListener = mixNativeManager.mLoadListener;
        if (nativeLoadListener == null || mixNativeManager.isFailedCallBack) {
            return;
        }
        mixNativeManager.isFailedCallBack = true;
        nativeLoadListener.onAdFailed(fLError);
    }

    public static /* synthetic */ void b(MixNativeManager mixNativeManager, NativeAd nativeAd) {
        if (mixNativeManager.mLoadListener != null) {
            if (nativeAd != null) {
                nativeAd.setNativeAdParams(mixNativeManager.mParams);
            }
            mixNativeManager.mLoadListener.onNativeAdLoaded(nativeAd);
        }
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public C1176f bindAdapter(C1176f c1176f) {
        return c1176f.b(new B() { // from class: com.fl.saas.adx.base.manager.h
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                MixNativeManager.b(this.f30284a, (NativeAd) obj);
            }
        }).a(new B() { // from class: com.fl.saas.adx.base.manager.i
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                MixNativeManager.a(this.f30285a, (FLError) obj);
            }
        });
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public Context getContext() {
        WeakReference<Context> weakReference = this.mContextRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public C1207p0 getContextOpt() {
        return C1207p0.b(this.mContextRef.get());
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public String getLinkId() {
        AdParams adParams = this.mParams;
        return adParams != null ? adParams.getLinkId() : "";
    }

    @Override // com.fl.saas.adx.base.manager.api.FailedLoader
    public boolean isFailedCallBack() {
        return this.isFailedCallBack;
    }

    @Override // com.fl.saas.adx.api.mixNative.MixNativeAdManager
    public void load() {
        this.mLoader.request(this.mParams.getKey());
    }

    @Override // com.fl.saas.adx.base.manager.api.FailedLoader
    public void onAdFailed(FLError fLError) {
        if (this.isFailedCallBack) {
            return;
        }
        this.isFailedCallBack = true;
        NativeLoadListener nativeLoadListener = this.mLoadListener;
        if (nativeLoadListener != null) {
            nativeLoadListener.onAdFailed(fLError);
        }
        this.mLoadListener = null;
    }

    @Override // com.fl.saas.adx.base.interfaces.AdLoadEvent
    public void onLoadFailed(FLError fLError) {
        onAdFailed(fLError);
    }
}
