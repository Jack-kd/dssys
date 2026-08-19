package com.alex;

import android.content.Context;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.network.toutiao.TTATInitManager;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfig;
import java.lang.reflect.Constructor;
import java.util.Map;

/* loaded from: classes.dex */
public class AlexGromoreInitManager extends ATInitMediation {

    /* renamed from: f, reason: collision with root package name */
    private static final String f1296f = "AlexGromoreInitManager";

    /* renamed from: g, reason: collision with root package name */
    private static volatile AlexGromoreInitManager f1297g;

    /* renamed from: a, reason: collision with root package name */
    MediationConfig.Builder f1298a;

    /* renamed from: b, reason: collision with root package name */
    TTCustomController f1299b;

    /* renamed from: d, reason: collision with root package name */
    private final String f1301d = "com.anythink.network.toutiao.TTATInitManager";

    /* renamed from: e, reason: collision with root package name */
    private boolean f1302e = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f1300c = true;

    private AlexGromoreInitManager() {
        b();
    }

    private Object a() {
        try {
            String str = TTATInitManager.TAG;
            Constructor declaredConstructor = TTATInitManager.class.asSubclass(ATInitMediation.class).getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            ATInitMediation aTInitMediation = (ATInitMediation) declaredConstructor.newInstance(null);
            return aTInitMediation.getClass().getMethod("getInstance", null).invoke(aTInitMediation, null);
        } catch (Throwable th) {
            if (ATSDK.isNetworkLogDebug()) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private void b() {
        try {
            Object objA = a();
            Object objInvoke = objA.getClass().getMethod("isMediationCSJ", null).invoke(objA, null);
            if (objInvoke instanceof Boolean) {
                this.f1302e = ((Boolean) objInvoke).booleanValue();
            }
        } catch (Throwable th) {
            if (ATSDK.isNetworkLogDebug()) {
                th.printStackTrace();
            }
        }
    }

    public static AlexGromoreInitManager getInstance() {
        if (f1297g == null) {
            synchronized (AlexGromoreInitManager.class) {
                try {
                    if (f1297g == null) {
                        f1297g = new AlexGromoreInitManager();
                    }
                } finally {
                }
            }
        }
        return f1297g;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    public MediationConfig.Builder getMediationConfigBuilder() {
        return this.f1298a;
    }

    public TTCustomController getTtCustomController() {
        return this.f1299b;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
    }

    public boolean isOpenDirectDownload() {
        return this.f1300c;
    }

    public void setIsOpenDirectDownload(boolean z2) {
        this.f1300c = z2;
        if (this.f1302e) {
            try {
                Object objA = a();
                objA.getClass().getMethod("setIsOpenDirectDownload", Boolean.TYPE).invoke(objA, Boolean.valueOf(z2));
            } catch (Throwable unused) {
            }
        }
    }

    public void setMediationConfigBuilder(MediationConfig.Builder builder) {
        this.f1298a = builder;
        if (this.f1302e) {
            try {
                Object objA = a();
                objA.getClass().getMethod("setMediationConfigBuilder", MediationConfig.Builder.class).invoke(objA, builder);
            } catch (Throwable unused) {
            }
        }
    }

    public void setTtCustomController(TTCustomController tTCustomController) {
        this.f1299b = tTCustomController;
        if (this.f1302e) {
            try {
                Object objA = a();
                objA.getClass().getMethod("setTtCustomController", TTCustomController.class).invoke(objA, tTCustomController);
            } catch (Throwable unused) {
            }
        }
    }
}
