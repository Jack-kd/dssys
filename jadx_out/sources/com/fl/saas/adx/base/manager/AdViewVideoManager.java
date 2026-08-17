package com.fl.saas.adx.base.manager;

import android.app.Activity;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.fl.saas.AbstractC1173e;
import com.fl.saas.AbstractC1179g;
import com.fl.saas.AbstractC1182h;
import com.fl.saas.C1188j;
import com.fl.saas.E0;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.base.builder.InnerVideoBuilder;
import com.fl.saas.adx.base.bean.AdType;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewVideoCheckListener;
import com.fl.saas.adx.base.interfaces.AdViewVideoListener;
import com.fl.saas.adx.base.manager.manager.BuilderLoadManager;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class AdViewVideoManager extends BuilderLoadManager<InnerVideoBuilder<?>, AbstractC1182h, AdViewVideoListener> {
    private boolean isRequestAd;

    public AdViewVideoManager() {
        super(AdType.RewardVideo);
        this.isRequestAd = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isServerVerify() {
        C1188j adSource;
        AdapterAPI showAdapter = getShowAdapter();
        if (showAdapter == null || (adSource = showAdapter.getAdSource()) == null) {
            return false;
        }
        return adSource.f30533p0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isServerVerifyShowLoad() {
        C1188j adSource;
        AdapterAPI showAdapter = getShowAdapter();
        return (showAdapter == null || (adSource = showAdapter.getAdSource()) == null || adSource.f30536q0 != 1) ? false : true;
    }

    public boolean isReady() {
        try {
            AdapterAPI showAdapter = getShowAdapter();
            if (showAdapter instanceof AbstractC1182h) {
                return ((AbstractC1182h) showAdapter).b();
            }
            if (showAdapter instanceof AbstractC1173e) {
                return ((AbstractC1173e) showAdapter).isIntersReady();
            }
            if (showAdapter instanceof AbstractC1179g) {
                return ((AbstractC1179g) showAdapter).isAdReady();
            }
            return false;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    @Deprecated
    public void show() {
        show(null);
    }

    @Override // com.fl.saas.adx.base.manager.manager.BuilderLoadManager
    public AdViewVideoListener initProxyEventListener(final InnerVideoBuilder<?> innerVideoBuilder) {
        final AdViewVideoListener eventListener = innerVideoBuilder.getEventListener();
        final AdViewVideoCheckListener checkListener = innerVideoBuilder.getCheckListener();
        return new AdViewVideoListener() { // from class: com.fl.saas.adx.base.manager.AdViewVideoManager.1
            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onAdClick(String str) {
                LogcatUtil.d("FLSDK-Video", IAdInterListener.AdCommandType.AD_CLICK);
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onAdClick(str);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onAdClose() {
                LogcatUtil.d("FLSDK-Video", "onAdClose");
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onAdClose();
            }

            @Override // com.fl.saas.adx.base.interfaces.AdViewListener
            public void onAdFailed(FLError fLError) {
                LogcatUtil.d("FLSDK-Video", "onAdFailed: " + fLError);
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onAdFailed(fLError);
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onAdShow() {
                LogcatUtil.d("FLSDK-Video", "onAdShow");
                AdapterAPI showAdapter = AdViewVideoManager.this.getShowAdapter();
                String userId = innerVideoBuilder.getUserId();
                if (AdViewVideoManager.this.isServerVerifyShowLoad() && AdViewVideoManager.this.isServerVerify() && showAdapter != null) {
                    LogcatUtil.d("FLSDK-Video", "reqVideoVerify");
                    C1188j adSource = showAdapter.getAdSource();
                    int iJ = adSource.j();
                    E0.a().a(userId, innerVideoBuilder.getCustomData(), DeviceUtil.appId, innerVideoBuilder.getKey(), adSource.f30505g, iJ + "");
                }
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onAdShow();
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onSkipVideo() {
                LogcatUtil.d("FLSDK-Video", "onSkipVideo");
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onSkipVideo();
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onVideoCompleted() {
                LogcatUtil.d("FLSDK-Video", "onVideoCompleted");
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onVideoCompleted();
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onVideoPrepared() {
                LogcatUtil.d("FLSDK-Video", "onVideoPrepared");
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onVideoPrepared();
            }

            @Override // com.fl.saas.adx.base.base.listener.InnerVideoListener
            public void onVideoReward(double d2) {
                AdViewVideoCheckListener adViewVideoCheckListener;
                LogcatUtil.d("FLSDK-Video", "onVideoReward:" + d2);
                AdapterAPI showAdapter = AdViewVideoManager.this.getShowAdapter();
                String userId = innerVideoBuilder.getUserId();
                if (!AdViewVideoManager.this.isServerVerifyShowLoad() && AdViewVideoManager.this.isServerVerify() && showAdapter != null) {
                    LogcatUtil.d("FLSDK-Video", "reqVideoVerify");
                    C1188j adSource = showAdapter.getAdSource();
                    int iJ = adSource.j();
                    E0.a().a(userId, innerVideoBuilder.getCustomData(), DeviceUtil.appId, innerVideoBuilder.getKey(), adSource.f30505g, iJ + "");
                }
                if (AdViewVideoManager.this.isServerVerify() && (adViewVideoCheckListener = checkListener) != null) {
                    adViewVideoCheckListener.onVideoCheckReward(AdViewVideoManager.this.getReqId());
                }
                AdViewVideoListener adViewVideoListener = eventListener;
                if (adViewVideoListener == null) {
                    return;
                }
                adViewVideoListener.onVideoReward(d2);
            }
        };
    }

    @Override // com.fl.saas.adx.base.manager.manager.BuilderLoadManager, com.fl.saas.adx.base.manager.api.ManagerAPI
    public void request(InnerVideoBuilder<?> innerVideoBuilder) {
        super.request((AdViewVideoManager) innerVideoBuilder);
        this.isRequestAd = true;
    }

    public void show(Activity activity) {
        if (!this.isRequestAd) {
            LogcatUtil.d("FLSDK-Video", "调用show()方法前，必须先调用requestAd()方法");
            onAdFailed(new FLError(ErrorCodeConstant.METHOD_ERROR, "未执行requestAd()方法"));
            return;
        }
        if (!isReady()) {
            LogcatUtil.d("FLSDK-Video", "调用show()方法前，必须先检查isReady()状态，或者在onVideoPrepared()回调后调用");
            onAdFailed(new FLError(ErrorCodeConstant.METHOD_ERROR, "调用show()方法前，必须先检查isReady()状态，或者在onVideoPrepared()回调后调用"));
            return;
        }
        try {
            AdapterAPI showAdapter = getShowAdapter();
            if (showAdapter instanceof AbstractC1182h) {
                AbstractC1182h abstractC1182h = (AbstractC1182h) showAdapter;
                if (activity == null) {
                    abstractC1182h.f();
                    return;
                } else {
                    abstractC1182h.b(activity);
                    return;
                }
            }
            if (showAdapter instanceof AbstractC1173e) {
                AbstractC1173e abstractC1173e = (AbstractC1173e) showAdapter;
                if (activity == null) {
                    activity = DeviceUtil.getTopActivity();
                }
                abstractC1173e.showInterstitialAd(activity);
                return;
            }
            if (showAdapter instanceof AbstractC1179g) {
                AbstractC1179g abstractC1179g = (AbstractC1179g) showAdapter;
                if (activity == null) {
                    activity = DeviceUtil.getTopActivity();
                }
                abstractC1179g.startActivityShow(activity);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }
}
