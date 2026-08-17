package com.fl.saas;

import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.fl.saas.adx.base.base.BaseBuilder;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdReRequestListener;
import com.fl.saas.adx.base.interfaces.AdViewListener;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* renamed from: com.fl.saas.o, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1203o extends AbstractC1200n {
    private AdReRequestListener adReRequestListener;

    @Nullable
    private BaseBuilder<?> builder;
    private AdViewListener mAdEventListener;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(FLError fLError) {
        AdViewListener adViewListener = this.mAdEventListener;
        if (adViewListener != null) {
            adViewListener.onAdFailed(fLError);
        }
    }

    public AdViewListener getBuilder() {
        return this.builder;
    }

    public <U> C1207p0 getBuilderFieldOptional(Function<BaseBuilder<?>, ? extends U> function) {
        try {
            return C1207p0.b(this.builder).a((Function) function);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return C1207p0.a();
        }
    }

    public AdViewListener getEventListener() {
        return this.mAdEventListener;
    }

    public String getKey() {
        return this.mPlaceId;
    }

    public C1207p0 getListenerOptional() {
        return C1207p0.b(this.mAdEventListener);
    }

    public void handleListenerEvent(B b3) {
        getListenerOptional().a(b3);
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.interfaces.AdViewListener
    public void onAdFailed(final FLError fLError) {
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.y2
            @Override // java.lang.Runnable
            public final void run() {
                this.f30723b.a(fLError);
            }
        });
    }

    public void reRequest() {
        AdReRequestListener adReRequestListener = this.adReRequestListener;
        if (adReRequestListener != null) {
            adReRequestListener.onReRequest();
        }
    }

    public AbstractC1203o setAdReRequestListener(AdReRequestListener adReRequestListener) {
        this.adReRequestListener = adReRequestListener;
        return this;
    }

    public AbstractC1203o setBuilder(BaseBuilder<?> baseBuilder) {
        this.builder = baseBuilder;
        this.mPlaceId = baseBuilder.getKey();
        return this;
    }

    @Override // com.fl.saas.AbstractC1200n, com.fl.saas.adx.base.base.AdapterAPI
    public void setCache() {
        super.setCache();
        this.builder = null;
    }

    public AbstractC1203o setEventListener(AdViewListener adViewListener) {
        this.mAdEventListener = adViewListener;
        return this;
    }
}
