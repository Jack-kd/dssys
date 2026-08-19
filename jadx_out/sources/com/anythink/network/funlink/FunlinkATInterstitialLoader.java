package com.anythink.network.funlink;

import android.app.Activity;
import android.content.Context;
import com.fl.saas.adx.api.FLInterstitial;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewInterstitialListener;

/* loaded from: classes2.dex */
public interface FunlinkATInterstitialLoader {

    public static class InterstitialLoader implements FunlinkATInterstitialLoader {

        /* renamed from: a, reason: collision with root package name */
        private FLInterstitial f9589a;

        public class a implements AdViewInterstitialListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Listener f9590a;

            public a(Listener listener) {
                this.f9590a = listener;
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdClick(String str) {
                Listener listener = this.f9590a;
                if (listener != null) {
                    listener.onClick();
                }
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdClosed() {
                Listener listener = this.f9590a;
                if (listener != null) {
                    listener.onClose();
                }
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdDisplay() {
                Listener listener = this.f9590a;
                if (listener != null) {
                    listener.onShow();
                }
            }

            @Override // com.fl.saas.adx.base.interfaces.AdViewListener
            public void onAdFailed(FLError fLError) {
                if (this.f9590a != null) {
                    this.f9590a.onFail(fLError != null ? String.valueOf(fLError.getCode()) : "", fLError != null ? fLError.getMsg() : "unknown error");
                }
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerInterstitialListener
            public void onAdReady() {
                Listener listener;
                if (InterstitialLoader.this.f9589a == null || (listener = this.f9590a) == null) {
                    return;
                }
                listener.onPrepared(InterstitialLoader.this.f9589a.getECPM(), InterstitialLoader.this.f9589a);
            }
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader
        public void destroy() {
            FLInterstitial fLInterstitial = this.f9589a;
            if (fLInterstitial != null) {
                try {
                    fLInterstitial.destroy();
                } catch (Throwable unused) {
                }
                this.f9589a = null;
            }
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader
        public boolean isReady() {
            FLInterstitial fLInterstitial = this.f9589a;
            return fLInterstitial != null && fLInterstitial.isReady();
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader
        public void load(Context context, String str, Listener listener) {
            FLInterstitial fLInterstitialBuild = new FLInterstitial.Builder(context).setKey(str).setInterstitialListener(new a(listener)).build();
            this.f9589a = fLInterstitialBuild;
            fLInterstitialBuild.requestInterstitial();
        }

        @Override // com.anythink.network.funlink.FunlinkATInterstitialLoader
        public void show(Activity activity) {
            FLInterstitial fLInterstitial = this.f9589a;
            if (fLInterstitial == null || !fLInterstitial.isReady()) {
                return;
            }
            this.f9589a.show(activity);
        }
    }

    public interface Listener {
        void onClick();

        void onClose();

        void onFail(String str, String str2);

        void onPrepared(int i2, Object obj);

        void onShow();
    }

    void destroy();

    boolean isReady();

    void load(Context context, String str, Listener listener);

    void show(Activity activity);
}
