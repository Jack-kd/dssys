package com.fl.saas.adx.base.manager;

import android.app.Activity;
import androidx.arch.core.util.Function;
import com.fl.saas.AbstractC1173e;
import com.fl.saas.AbstractC1179g;
import com.fl.saas.AbstractC1182h;
import com.fl.saas.J;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.base.builder.InnerInterstitialBuilder;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewInterstitialListener;
import com.fl.saas.adx.base.manager.manager.BuilderLoadManager;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class AdViewInterstitialManager extends BuilderLoadManager<InnerInterstitialBuilder<?>, AbstractC1173e, AdViewInterstitialListener> {
    public AdViewInterstitialManager() {
        super(AdType.Interstitial);
    }

    @Override // com.fl.saas.adx.base.manager.manager.BuilderLoadManager
    public AdViewInterstitialListener initProxyEventListener(InnerInterstitialBuilder<?> innerInterstitialBuilder) {
        final AdViewInterstitialListener eventListener = innerInterstitialBuilder.getEventListener();
        return new AdViewInterstitialListener() { // from class: com.fl.saas.adx.base.manager.AdViewInterstitialManager.1
            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdClick(String str) {
                AdViewInterstitialListener adViewInterstitialListener = eventListener;
                if (adViewInterstitialListener == null) {
                    return;
                }
                adViewInterstitialListener.onAdClick(str);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdClosed() {
                AdViewInterstitialListener adViewInterstitialListener = eventListener;
                if (adViewInterstitialListener == null) {
                    return;
                }
                adViewInterstitialListener.onAdClosed();
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdDisplay() {
                AdViewInterstitialListener adViewInterstitialListener = eventListener;
                if (adViewInterstitialListener == null) {
                    return;
                }
                adViewInterstitialListener.onAdDisplay();
            }

            @Override // com.fl.saas.adx.base.interfaces.AdViewListener
            public void onAdFailed(FLError fLError) {
                AdViewInterstitialListener adViewInterstitialListener = eventListener;
                if (adViewInterstitialListener == null) {
                    return;
                }
                adViewInterstitialListener.onAdFailed(fLError);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdReady() {
                AdViewInterstitialListener adViewInterstitialListener = eventListener;
                if (adViewInterstitialListener == null) {
                    return;
                }
                adViewInterstitialListener.onAdReady();
            }
        };
    }

    public boolean isReady() {
        try {
            AdapterAPI showAdapter = getShowAdapter();
            return showAdapter instanceof AbstractC1182h ? ((AbstractC1182h) showAdapter).b() : showAdapter instanceof AbstractC1173e ? ((AbstractC1173e) showAdapter).isIntersReady() : showAdapter instanceof AbstractC1179g ? ((AbstractC1179g) showAdapter).isAdReady() : ((Boolean) getValidAdapter().a(new Function() { // from class: com.fl.saas.adx.base.manager.b
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return Boolean.valueOf(((AbstractC1173e) obj).isIntersReady());
                }
            }).c(Boolean.FALSE)).booleanValue();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    public void show(Activity activity) {
        try {
            AdapterAPI showAdapter = getShowAdapter();
            if (showAdapter instanceof AbstractC1182h) {
                AbstractC1182h abstractC1182h = (AbstractC1182h) showAdapter;
                if (activity == null) {
                    abstractC1182h.f();
                } else {
                    abstractC1182h.b(activity);
                }
            } else if (showAdapter instanceof AbstractC1173e) {
                AbstractC1173e abstractC1173e = (AbstractC1173e) showAdapter;
                if (activity == null) {
                    activity = DeviceUtil.getTopActivity();
                }
                abstractC1173e.showInterstitialAd(activity);
            } else if (showAdapter instanceof AbstractC1179g) {
                AbstractC1179g abstractC1179g = (AbstractC1179g) showAdapter;
                if (activity == null) {
                    activity = DeviceUtil.getTopActivity();
                }
                abstractC1179g.startActivityShow(activity);
            }
            if (activity == null || getShowAdapter().getAdSource().f30515j0) {
                return;
            }
            J.b().a(activity.getComponentName().getClassName());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }
}
