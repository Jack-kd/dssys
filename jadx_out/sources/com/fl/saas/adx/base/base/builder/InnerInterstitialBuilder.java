package com.fl.saas.adx.base.base.builder;

import android.content.Context;
import com.fl.saas.adx.base.annotation.API;
import com.fl.saas.adx.base.base.BaseBuilder;
import com.fl.saas.adx.base.base.Build;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewInterstitialListener;
import com.fl.saas.adx.base.interfaces.AdViewListener;

/* loaded from: classes3.dex */
public abstract class InnerInterstitialBuilder<T> extends BaseBuilder<T> implements AdEventListener<AdViewInterstitialListener> {
    private int autoCloseCountDown;
    private int height;
    protected AdViewInterstitialListener listener;
    private int width;

    public static abstract class Builder<T, S> extends InnerInterstitialBuilder<T> implements Build<S> {
        public Builder(Context context) {
            super(context);
        }

        @Override // com.fl.saas.adx.base.base.builder.InnerInterstitialBuilder, com.fl.saas.adx.base.base.builder.AdEventListener
        public /* bridge */ /* synthetic */ AdViewListener getEventListener() {
            return super.getEventListener();
        }
    }

    @API(AdType.Interstitial)
    public static class Default extends InnerInterstitialBuilder<Default> {
        /* JADX WARN: Multi-variable type inference failed */
        public Default(Context context) {
            super(context);
            this.builder = this;
        }

        @Override // com.fl.saas.adx.base.base.builder.InnerInterstitialBuilder, com.fl.saas.adx.base.base.builder.AdEventListener
        public /* bridge */ /* synthetic */ AdViewListener getEventListener() {
            return super.getEventListener();
        }
    }

    public InnerInterstitialBuilder(Context context) {
        super(context);
    }

    public int getAutoCloseCountDown() {
        return this.autoCloseCountDown;
    }

    @Override // com.fl.saas.adx.base.base.builder.AdEventListener
    public AdViewInterstitialListener getEventListener() {
        return this.listener;
    }

    public int getHeight() {
        int i2 = this.height;
        if (i2 > 0) {
            return i2;
        }
        return 300;
    }

    public int getWidth() {
        int i2 = this.width;
        if (i2 > 0) {
            return i2;
        }
        return 300;
    }

    @Override // com.fl.saas.adx.base.base.BaseBuilder, com.fl.saas.adx.base.interfaces.AdViewListener
    public void onAdFailed(FLError fLError) {
        AdViewInterstitialListener adViewInterstitialListener = this.listener;
        if (adViewInterstitialListener != null) {
            adViewInterstitialListener.onAdFailed(fLError);
        }
    }

    public T setAutoCloseCountDown(int i2) {
        this.autoCloseCountDown = i2;
        return this.builder;
    }

    public T setHeight(int i2) {
        this.height = i2;
        return this.builder;
    }

    public T setWidth(int i2) {
        this.width = i2;
        return this.builder;
    }
}
