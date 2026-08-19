package com.fl.saas;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.fl.saas.adx.base.activity.h5.QuickAppHelper;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.bean.MaterialBean;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdMaterial;
import com.fl.saas.adx.base.widget.ErrorInfo;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.lang.ref.WeakReference;
import n0.C1733a;

/* renamed from: com.fl.saas.n, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1200n implements AdapterAPI, D0 {
    private WeakReference<Activity> activityRef;
    private AdMaterial.AdMaterialData mAdMaterialData;
    protected C1188j mAdxInfo;
    private Context mContext;
    protected String mLinkId;
    protected String mPlaceId;
    private long reqTime;
    private final String TAG = CommConstant.getObjTag(this);
    private boolean isCache = false;
    private boolean isFailedCallBack = false;
    private boolean isHot = false;
    private boolean isReportExposure = false;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(Activity activity) {
        return !activity.isFinishing();
    }

    public void bindC2SBidECPM(InterfaceC1164b1 interfaceC1164b1) {
        try {
            if (getAdSource() == null || !getAdSource().f30541s || interfaceC1164b1 == null) {
                return;
            }
            setECPM(((Integer) interfaceC1164b1.a()).intValue());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            LogcatUtil.e(this.TAG, "bindC2SBidECPM is exception, " + getAdSource());
        }
    }

    public boolean canUseEcpm() {
        C1188j c1188j = this.mAdxInfo;
        return c1188j == null || c1188j.f30539r0 == 1;
    }

    public boolean changeReRequestCount() {
        return false;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void clearCache() {
        this.isCache = false;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void destroy() {
        this.mContext = null;
    }

    public void disposeError(FLError fLError) {
        if (fLError != null) {
            ErrorInfo errorInfo = new ErrorInfo();
            errorInfo.code = fLError.getCode();
            errorInfo.errorType = fLError.getErrorType();
            errorInfo.msg = fLError.getMsg();
            disposeError(errorInfo);
        }
    }

    @Nullable
    public Activity getActivityOrNull() {
        WeakReference<Activity> weakReference = this.activityRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public C1207p0 getActivityValid() {
        return C1207p0.b(this.activityRef).a((Function) new C1733a()).a(new InterfaceC1231x0() { // from class: com.fl.saas.x2
            @Override // com.fl.saas.InterfaceC1231x0
            public final boolean a(Object obj) {
                return AbstractC1200n.a((Activity) obj);
            }
        });
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public C1188j getAdSource() {
        return this.mAdxInfo;
    }

    public String getAppId() {
        return DeviceUtil.appId;
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    public String getLinkId() {
        return this.mLinkId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AdMaterial.AdMaterialData getMaterialData() {
        AdMaterial.AdMaterialData adMaterialData = this.mAdMaterialData;
        if (adMaterialData != null) {
            return adMaterialData;
        }
        if (this instanceof AdMaterial) {
            this.mAdMaterialData = ((AdMaterial) this).getAdMaterialData();
        }
        return this.mAdMaterialData;
    }

    public String getPlaceId() {
        return this.mPlaceId;
    }

    public String getPosId() {
        return this.mPlaceId;
    }

    public abstract void handle(Context context);

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public boolean isCache() {
        return this.isCache;
    }

    public boolean isFullScreenInterstitial() {
        if (getAdSource() != null) {
            return getAdSource().o();
        }
        return false;
    }

    public boolean isHot() {
        return this.isHot;
    }

    public boolean isReRequest() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void load() {
        try {
            this.reqTime = DeviceUtil.getBootTime();
            Activity activityOrNull = getActivityOrNull();
            if (activityOrNull == null) {
                activityOrNull = DeviceUtil.getTopActivity();
            }
            ?? r3 = this.mContext;
            if (r3 == 0 && activityOrNull == null) {
                onAdFailed(FLError.create(ErrorCodeConstant.CONTEXT_ERROR, "adapter is not ready, context exception"));
                return;
            }
            if (activityOrNull == null) {
                activityOrNull = r3;
            }
            handle(activityOrNull);
        } catch (Throwable unused) {
            onAdFailed(FLError.create(ErrorCodeConstant.CONTEXT_ERROR, "adapter is not ready, context exception"));
        }
    }

    public abstract void onAdFailed(FLError fLError);

    public void onClickedEvent() {
        LogcatUtil.d(this.TAG, "onClickedEvent");
        QuickAppHelper.getInstance().setAdSource(this.mAdxInfo);
    }

    public void onLoadedEvent() {
        try {
            if (this.mAdxInfo == null) {
                disposeError(new FLError(ErrorCodeConstant.AD_DATA_ERROR, "没有填充"));
            } else {
                a();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void onShowEvent() {
        if (this.isReportExposure) {
            return;
        }
        this.isReportExposure = true;
        LogcatUtil.d(this.TAG, "onShowEvent");
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI, com.fl.saas.D0
    public void reportRequestShow() {
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public AbstractC1200n setAdSource(@NonNull C1188j c1188j) {
        if (!this.isCache) {
            this.mAdxInfo = c1188j;
            if (c1188j != null) {
                c1188j.f30520l = this.reqTime;
                c1188j.f30407A = DeviceUtil.getBootTime() - this.mAdxInfo.f30520l;
            }
        }
        return this;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void setCache() {
        this.isCache = true;
        this.activityRef = null;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public AbstractC1200n setContext(@NonNull Context context) {
        if (!(context instanceof Activity)) {
            this.mContext = context;
            return this;
        }
        this.activityRef = new WeakReference<>((Activity) context);
        this.mContext = context.getApplicationContext();
        return this;
    }

    public void setECPM(int i2) {
        C1188j c1188j = this.mAdxInfo;
        if (c1188j != null) {
            c1188j.f30496d = Math.max(i2, 0);
        }
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void setHot(boolean z2) {
        this.isHot = z2;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void setLinkId(String str) {
        this.mLinkId = str;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void setMaterial(MaterialBean materialBean) {
        C1188j c1188j;
        if (materialBean == null || (c1188j = this.mAdxInfo) == null || c1188j.x2 != 1) {
            return;
        }
        materialBean.setId(c1188j.f30562z);
        materialBean.setPlaceId(this.mAdxInfo.f30511i);
        materialBean.setTitle(this.mAdxInfo.f30530o0);
        materialBean.setDes(this.mAdxInfo.f30543s1);
        materialBean.setImgUrl(this.mAdxInfo.f30534p1);
        materialBean.setDeepLinkUrl(this.mAdxInfo.f30560y0);
        materialBean.setLandPageUrl(this.mAdxInfo.f30557x0);
        materialBean.setDownloadUrl(this.mAdxInfo.f30563z0);
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public AdapterAPI setPlaceId(String str) {
        this.mPlaceId = str;
        return this;
    }

    @Override // com.fl.saas.adx.base.base.AdapterAPI
    public void showAd() {
        this.isCache = false;
    }

    private void a() {
        LogcatUtil.d(this.TAG, "onLoadedEvent");
        C1188j c1188j = this.mAdxInfo;
        if (c1188j != null) {
            c1188j.f30529o = DeviceUtil.getBootTime() - this.reqTime;
        }
        showAd();
    }

    public void disposeError(ErrorInfo errorInfo) {
        if (errorInfo == null) {
            return;
        }
        LogcatUtil.d(this.TAG, "disposeError:" + errorInfo);
        if (this.isFailedCallBack) {
            return;
        }
        this.isFailedCallBack = true;
        onAdFailed(FLError.create(errorInfo.code, errorInfo.errorType, errorInfo.msg));
    }
}
