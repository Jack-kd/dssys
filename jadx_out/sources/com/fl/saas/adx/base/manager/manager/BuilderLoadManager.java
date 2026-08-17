package com.fl.saas.adx.base.manager.manager;

import android.content.Context;
import androidx.arch.core.util.Function;
import com.fl.saas.AbstractC1203o;
import com.fl.saas.B;
import com.fl.saas.C1207p0;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.base.BaseBuilder;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.bean.MaterialBean;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdLoadEvent;
import com.fl.saas.adx.base.interfaces.AdReRequestListener;
import com.fl.saas.adx.base.interfaces.AdViewListener;
import com.fl.saas.adx.base.manager.api.ManagerAPI;
import com.fl.saas.adx.base.manager.api.ManagerLoader;
import com.fl.saas.adx.base.manager.loader.BuilderAdLoader;
import com.fl.saas.adx.util.LogcatUtil;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public abstract class BuilderLoadManager<T extends BaseBuilder<?>, S extends AdapterAPI, U extends AdViewListener> implements ManagerLoader<S>, ManagerAPI<T> {
    private AdReRequestListener adReRequestListener;
    private T mBuilder;
    private U mEventListener;
    private BuilderAdLoader<S> mLoader;
    private boolean isFailedCallBack = false;
    private boolean isDestroy = false;

    public BuilderLoadManager(AdType adType) {
        this.mLoader = new BuilderAdLoader<>(adType, this);
    }

    public void biddingResultUpload(boolean z2, int i2, int i3) {
        BuilderAdLoader<S> builderAdLoader = this.mLoader;
        if (builderAdLoader != null) {
            builderAdLoader.biddingResultUpload(z2, i2, i3);
        }
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public S bindAdapter(S s2) {
        return ((AbstractC1203o) s2).setBuilder(this.mBuilder).setEventListener(this.mEventListener).setAdReRequestListener(this.adReRequestListener);
    }

    public void destroy() {
        this.isDestroy = true;
        this.mLoader.destroy();
        this.mEventListener = null;
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerInfoAPI
    public AdInfo getAdInfo() {
        return this.mLoader.getAdInfo();
    }

    public T getBuilder() {
        return this.mBuilder;
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public Context getContext() {
        T t2 = this.mBuilder;
        if (t2 == null || t2.getContextRef() == null) {
            return null;
        }
        return this.mBuilder.getContextRef().get();
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public C1207p0 getContextOpt() {
        return C1207p0.b(this.mBuilder).a(new Function() { // from class: o0.b
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return ((BaseBuilder) obj).getContextRef();
            }
        }).a(new Function() { // from class: o0.c
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return (Context) ((WeakReference) obj).get();
            }
        });
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerInfoAPI
    public int getEcpm() {
        return this.mLoader.getEcpm();
    }

    @Override // com.fl.saas.adx.base.manager.api.ManagerLoader
    public String getLinkId() {
        T t2 = this.mBuilder;
        return t2 != null ? t2.getLinkId() : "";
    }

    public MaterialBean getMaterial() {
        return this.mLoader.getMaterial();
    }

    public String getReqId() {
        return this.mLoader.getReqId();
    }

    public AdapterAPI getShowAdapter() {
        return this.mLoader.getShowAdapter();
    }

    public C1207p0 getValidAdapter() {
        return this.mLoader.getValidAdapter();
    }

    public abstract U initProxyEventListener(T t2);

    public boolean isDestroy() {
        return this.isDestroy;
    }

    @Override // com.fl.saas.adx.base.manager.api.FailedLoader
    public boolean isFailedCallBack() {
        return this.isFailedCallBack;
    }

    @Override // com.fl.saas.adx.base.manager.api.FailedLoader
    public void onAdFailed(final FLError fLError) {
        if (this.isFailedCallBack) {
            return;
        }
        this.isFailedCallBack = true;
        C1207p0.b(this.mEventListener).a(new B() { // from class: o0.a
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((AdViewListener) obj).onAdFailed(fLError);
            }
        });
        this.mEventListener = null;
    }

    @Override // com.fl.saas.adx.base.interfaces.AdLoadEvent
    public void onLoadFailed(FLError fLError) {
        if (!(getBuilder() instanceof AdLoadEvent)) {
            onAdFailed(fLError);
        } else {
            if (this.isFailedCallBack) {
                return;
            }
            this.isFailedCallBack = true;
            ((AdLoadEvent) getBuilder()).onLoadFailed(fLError);
        }
    }

    public void request(T t2) {
        LogcatUtil.d("FLSDK", "request, isDestroy:" + this.isDestroy);
        this.mBuilder = t2;
        this.mEventListener = (U) initProxyEventListener(t2);
        this.mLoader.setHot(this.mBuilder.isHot());
        this.mLoader.request(this.mBuilder.getKey());
    }

    public void restManagerLoad(AdType adType) {
        BuilderAdLoader<S> builderAdLoader = new BuilderAdLoader<>(adType, this);
        this.mLoader = builderAdLoader;
        builderAdLoader.request(this.mBuilder.getKey());
    }

    public void setAdReRequestListener(AdReRequestListener adReRequestListener) {
        this.adReRequestListener = adReRequestListener;
    }
}
