package com.smartdigimkt.sdk.api;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.b0.a;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.d4.i;
import com.smartdigimkt.f4.b;
import com.smartdigimkt.m3.p;
import com.smartdigimkt.sdk.api.format.IMyOfferAdManager;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMSDK {
    private static volatile SDMSDK instance;
    private static Object lockObject = new Object();
    private volatile boolean mHasInit = false;
    private volatile SDMSetting mSdmSetting = new SDMSetting();
    private volatile ISDMDirectlyOfferSetting mDirectlyOfferSetting = new a();

    public interface InitCallBack {
        void fail(String str);

        void success();
    }

    private SDMSDK() {
    }

    public static SDMSDK getInstance() {
        if (instance == null) {
            synchronized (lockObject) {
                try {
                    if (instance == null) {
                        instance = new SDMSDK();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static void setDeepRewardEnabled(boolean z2) {
        p.f42139a = z2;
    }

    public ISDMDirectlyOfferSetting getDirectlyOfferSetting() {
        return this.mDirectlyOfferSetting;
    }

    public IMyOfferAdManager getMyOfferAdManager() {
        if (b.f40274a == null) {
            synchronized (b.class) {
                try {
                    if (b.f40274a == null) {
                        b.f40274a = new b();
                    }
                } finally {
                }
            }
        }
        return b.f40274a;
    }

    public String getSDKVersion() {
        return "UA_6.5.77";
    }

    public ISDMAdManager getSDMAdManager() {
        return i.a();
    }

    public String getSdkBuildLabel() {
        return "6.5.77.0";
    }

    public SDMSetting getSetting() {
        return this.mSdmSetting;
    }

    public void init(Context context, SDMInitConfig sDMInitConfig) {
        try {
            if (this.mHasInit) {
                return;
            }
            this.mHasInit = true;
            SDKContext.getInstance().a(context, sDMInitConfig);
        } catch (Throwable unused) {
        }
    }

    public void integrationChecking(Context context, Map<String, Object> map, IntegrationCheckListener integrationCheckListener) {
        if (context == null) {
            if (integrationCheckListener != null) {
                integrationCheckListener.onValidationFail("context is null");
                return;
            }
            return;
        }
        com.smartdigimkt.i4.b bVar = SDKContext.getInstance().f44130s;
        if (bVar.f40740c == null) {
            e.a().c(new com.smartdigimkt.i4.a(bVar, integrationCheckListener, map, context));
        } else if (integrationCheckListener != null) {
            if (TextUtils.isEmpty(bVar.f40740c)) {
                integrationCheckListener.onValidationSucceed();
            } else {
                integrationCheckListener.onValidationFail(bVar.f40740c);
            }
        }
    }

    public boolean isNetworkLogDebug() {
        return SDKContext.getInstance().j();
    }

    public boolean isUseLocalLogo() {
        return false;
    }

    public void start(InitCallBack initCallBack) {
        SDKContext.getInstance().a(initCallBack);
    }
}
