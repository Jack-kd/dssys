package com.fl.saas.adx.base.base;

import com.fl.saas.A;
import com.fl.saas.C0;
import com.fl.saas.C1172d1;
import com.fl.saas.E0;
import com.fl.saas.adx.api.FLConfig;
import com.fl.saas.adx.api.MediaExtraInfo;
import com.fl.saas.adx.base.annotation.API;
import com.fl.saas.adx.base.base.BaseBuilder;
import com.fl.saas.adx.base.bean.AdInfo;
import com.fl.saas.adx.base.bean.MaterialBean;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdLoadEvent;
import com.fl.saas.adx.base.interfaces.AdReRequestListener;
import com.fl.saas.adx.base.manager.manager.BuilderLoadManager;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public abstract class BaseAPI<T extends BaseBuilder<?>, S extends BuilderLoadManager<T, ?, ?>> implements MediaExtraInfo {
    protected final T builder;
    protected S manager;

    public BaseAPI(T t2) {
        this.builder = t2;
    }

    public static /* synthetic */ void c(BaseAPI baseAPI, FLError fLError) {
        T t2 = baseAPI.builder;
        if (t2 instanceof AdLoadEvent) {
            ((AdLoadEvent) t2).onLoadFailed(fLError);
        } else {
            t2.onAdFailed(fLError);
        }
    }

    private S createManager() {
        API api = (API) C0.a(API.class, getClass());
        if (api == null) {
            return null;
        }
        return (S) api.value().createManager();
    }

    private void loadFailed(final FLError fLError) {
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.base.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseAPI.c(this.f30136b, fLError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestAd(boolean z2) {
        String str;
        FLError fLErrorCreate;
        try {
            if (FLConfig.isInit()) {
                T t2 = this.builder;
                if (t2 != null && A.a(t2.getKey())) {
                    fLErrorCreate = FLError.create(ErrorCodeConstant.FREQUENCY_ERROR, "Request too frequently,Please check if the advertising space has frequency control set up.");
                } else if ("0".equals(DeviceUtil.getNetworkType())) {
                    fLErrorCreate = FLError.create(ErrorCodeConstant.NETWORK_ERROR, "无网络连接");
                } else {
                    E0.a().e();
                    S s2 = (S) createManager();
                    this.manager = s2;
                    if (s2 != null) {
                        if (z2) {
                            s2.setAdReRequestListener(new AdReRequestListener() { // from class: com.fl.saas.adx.base.base.b
                                @Override // com.fl.saas.adx.base.interfaces.AdReRequestListener
                                public final void onReRequest() {
                                    this.f30138a.requestAd(false);
                                }
                            });
                        }
                        if (this.builder.isValid()) {
                            this.manager.request(this.builder);
                            return;
                        }
                        str = "builder is invalid";
                    } else {
                        str = "manager create error: " + getClass().getSimpleName();
                    }
                    fLErrorCreate = FLError.create(ErrorCodeConstant.METHOD_ERROR, str);
                }
            } else {
                fLErrorCreate = FLError.create(ErrorCodeConstant.INIT_ERROR, "Please initialize the SDK first");
            }
            loadFailed(fLErrorCreate);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            loadFailed(FLError.create(ErrorCodeConstant.METHOD_ERROR, "request has error" + th.getMessage()));
        }
    }

    @Override // com.fl.saas.adx.api.MediaExtraInfo
    public void biddingResultUpload(boolean z2, int i2, int i3) {
        try {
            S s2 = this.manager;
            if (s2 != null) {
                s2.biddingResultUpload(z2, i2, i3);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void destroy() {
        try {
            S s2 = this.manager;
            if (s2 != null) {
                s2.destroy();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.adx.api.MediaExtraInfo
    public AdInfo getAdInfo() {
        try {
            S s2 = this.manager;
            if (s2 != null) {
                return s2.getAdInfo();
            }
            return null;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    @Override // com.fl.saas.adx.api.MediaExtraInfo
    public int getECPM() {
        try {
            S s2 = this.manager;
            if (s2 != null) {
                return s2.getEcpm();
            }
            return 0;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return 0;
        }
    }

    public int getEcpm() {
        try {
            S s2 = this.manager;
            if (s2 != null) {
                return s2.getEcpm();
            }
            return 0;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return 0;
        }
    }

    public MaterialBean getMaterial() {
        try {
            S s2 = this.manager;
            if (s2 != null) {
                return s2.getMaterial();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return new MaterialBean();
    }

    public String getReqId() {
        try {
            S s2 = this.manager;
            return s2 != null ? s2.getReqId() : "";
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return "";
        }
    }

    public void request() {
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.base.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f30139b.requestAd(true);
            }
        });
    }
}
