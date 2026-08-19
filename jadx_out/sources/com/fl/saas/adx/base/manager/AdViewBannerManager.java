package com.fl.saas.adx.base.manager;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import com.fl.saas.AbstractC1170d;
import com.fl.saas.B;
import com.fl.saas.C1188j;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.base.builder.InnerBannerBuilder;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.inner.banner.InnerNativeBannerAdapter;
import com.fl.saas.adx.base.interfaces.AdViewBannerListener;
import com.fl.saas.adx.base.manager.manager.BuilderLoadManager;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
public class AdViewBannerManager extends BuilderLoadManager<InnerBannerBuilder<?>, AbstractC1170d, AdViewBannerListener> {
    private FrameLayout bannerView;
    private boolean hasDestroy;
    private Timer mTimer;

    public AdViewBannerManager() {
        super(AdType.Banner);
        this.hasDestroy = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelRefresh() {
        try {
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer = null;
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerAutoRefresh() {
        try {
            if (this.mTimer != null && this.bannerView != null && !this.hasDestroy) {
                Rect rect = new Rect();
                boolean z2 = this.bannerView.getWindowVisibility() == 0;
                if (this.bannerView.getGlobalVisibleRect(rect) && z2) {
                    restManagerLoad(AdType.Banner);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            cancelRefresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRefresh() {
        C1188j adSource;
        if (!(getShowAdapter() instanceof InnerNativeBannerAdapter) || (adSource = getShowAdapter().getAdSource()) == null || adSource.f30500e0 != 1 || adSource.f30503f0 <= 0) {
            return;
        }
        TimerTask timerTask = new TimerTask() { // from class: com.fl.saas.adx.base.manager.AdViewBannerManager.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AdViewBannerManager.this.innerAutoRefresh();
            }
        };
        cancelRefresh();
        long j2 = 1000 * adSource.f30503f0;
        Timer timer = new Timer();
        this.mTimer = timer;
        timer.schedule(timerTask, j2, j2);
    }

    @Override // com.fl.saas.adx.base.manager.manager.BuilderLoadManager, com.fl.saas.adx.base.manager.api.ManagerInfoAPI
    public void destroy() {
        this.hasDestroy = true;
        this.bannerView = null;
        getValidAdapter().a(new B() { // from class: com.fl.saas.adx.base.manager.a
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                ((AbstractC1170d) obj).destroy();
            }
        });
        cancelRefresh();
        super.destroy();
    }

    @Override // com.fl.saas.adx.base.manager.manager.BuilderLoadManager
    public AdViewBannerListener initProxyEventListener(InnerBannerBuilder<?> innerBannerBuilder) {
        return new AdViewBannerListener(innerBannerBuilder, innerBannerBuilder.getEventListener()) { // from class: com.fl.saas.adx.base.manager.AdViewBannerManager.1
            private boolean isLoaded = false;
            private FrameLayout.LayoutParams mParams;
            final /* synthetic */ AdViewBannerListener val$adViewAdInterface;
            final /* synthetic */ InnerBannerBuilder val$builder;

            {
                this.val$builder = innerBannerBuilder;
                this.val$adViewAdInterface = adViewBannerListener;
                AdViewBannerManager.this.bannerView = new FrameLayout((Context) AdViewBannerManager.this.getContextOpt().b());
                AdViewBannerManager.this.bannerView.setBackgroundColor(-1);
                this.mParams = new FrameLayout.LayoutParams(DeviceUtil.dip2px(innerBannerBuilder.getWidth()), DeviceUtil.dip2px(innerBannerBuilder.getHeight()));
                AdViewBannerManager.this.bannerView.setLayoutParams(this.mParams);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
            public void onAdClick(String str) {
                AdViewBannerListener adViewBannerListener = this.val$adViewAdInterface;
                if (adViewBannerListener == null) {
                    return;
                }
                adViewBannerListener.onAdClick(str);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
            public void onAdExposure() {
                AdViewBannerListener adViewBannerListener = this.val$adViewAdInterface;
                if (adViewBannerListener == null) {
                    return;
                }
                adViewBannerListener.onAdExposure();
            }

            @Override // com.fl.saas.adx.base.interfaces.AdViewListener
            public void onAdFailed(FLError fLError) {
                AdViewBannerListener adViewBannerListener = this.val$adViewAdInterface;
                if (adViewBannerListener == null) {
                    return;
                }
                adViewBannerListener.onAdFailed(fLError);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
            public void onClosed() {
                ViewHelper.removeParent(AdViewBannerManager.this.bannerView);
                AdViewBannerManager.this.cancelRefresh();
                AdViewBannerListener adViewBannerListener = this.val$adViewAdInterface;
                if (adViewBannerListener == null) {
                    return;
                }
                adViewBannerListener.onClosed();
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
            public void onReceived(View view) {
                try {
                    if (AdViewBannerManager.this.hasDestroy) {
                        return;
                    }
                    if (AdViewBannerManager.this.bannerView == null) {
                        AdViewBannerManager.this.bannerView = new FrameLayout((Context) AdViewBannerManager.this.getContextOpt().b());
                        AdViewBannerManager.this.bannerView.setBackgroundColor(-1);
                        this.mParams = new FrameLayout.LayoutParams(DeviceUtil.dip2px(this.val$builder.getWidth()), DeviceUtil.dip2px(this.val$builder.getHeight()));
                        AdViewBannerManager.this.bannerView.setLayoutParams(this.mParams);
                    }
                    if (AdViewBannerManager.this.bannerView == null) {
                        AdViewBannerListener adViewBannerListener = this.val$adViewAdInterface;
                        if (adViewBannerListener == null) {
                            return;
                        }
                        adViewBannerListener.onAdFailed(new FLError("BannerView加载失败"));
                        return;
                    }
                    AdViewBannerManager.this.bannerView.removeAllViews();
                    AdViewBannerManager.this.bannerView.addView(view, this.mParams);
                    if (this.isLoaded) {
                        return;
                    }
                    this.isLoaded = true;
                    if (this.val$adViewAdInterface == null) {
                        return;
                    }
                    ViewHelper.removeParent(AdViewBannerManager.this.bannerView);
                    this.val$adViewAdInterface.onReceived(AdViewBannerManager.this.bannerView);
                    AdViewBannerManager.this.setRefresh();
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                    AdViewBannerListener adViewBannerListener2 = this.val$adViewAdInterface;
                    if (adViewBannerListener2 == null) {
                        return;
                    }
                    adViewBannerListener2.onAdFailed(new FLError("BannerView加载失败"));
                }
            }
        };
    }

    public boolean isReady() {
        try {
            AdapterAPI showAdapter = getShowAdapter();
            if (showAdapter instanceof AbstractC1170d) {
                return ((AbstractC1170d) showAdapter).isBannerReady();
            }
            return false;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }
}
