package com.anythink.network.meishu;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATDeviceUtils;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.MediationInitCallback;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.MSAdConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class MsATInitManager extends ATInitMediation {
    public static String CHANNEL = "3718";

    /* renamed from: g, reason: collision with root package name */
    private static final String f9970g = "MsATInitManager";

    /* renamed from: h, reason: collision with root package name */
    private static MsATInitManager f9971h;

    /* renamed from: b, reason: collision with root package name */
    private List<MediationInitCallback> f9973b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9974c;

    /* renamed from: e, reason: collision with root package name */
    private MSAdConfig.CustomController f9976e;

    /* renamed from: f, reason: collision with root package name */
    private MSAdConfig.Builder f9977f;

    /* renamed from: a, reason: collision with root package name */
    private final Object f9972a = new Object();

    /* renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f9975d = new AtomicBoolean(false);

    public class a extends MSAdConfig.CustomController {
        public a() {
        }

        @Override // com.meishu.sdk.core.MSAdConfig.CustomController
        public String getOaid() {
            return ATDeviceUtils.getOaid();
        }
    }

    private MsATInitManager() {
    }

    private void a(boolean z2, String str, String str2) {
        synchronized (this.f9972a) {
            try {
                int size = this.f9973b.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f9973b.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.f9973b.clear();
                this.f9975d.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static MsATInitManager getInstance() {
        if (f9971h == null) {
            synchronized (MsATInitManager.class) {
                try {
                    if (f9971h == null) {
                        f9971h = new MsATInitManager();
                    }
                } finally {
                }
            }
        }
        return f9971h;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "2.5.13.0.1.0";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Meishu";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.meishu.sdk.core.AdSdk";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return AdSdk.getVersionName();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (this.f9974c) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f9972a) {
            try {
                if (this.f9975d.get()) {
                    if (mediationInitCallback != null) {
                        this.f9973b.add(mediationInitCallback);
                    }
                    return;
                }
                if (this.f9973b == null) {
                    this.f9973b = new ArrayList();
                }
                this.f9975d.set(true);
                if (mediationInitCallback != null) {
                    this.f9973b.add(mediationInitCallback);
                }
                String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                int intFromMap = ATInitMediation.getIntFromMap(map, "secure", 2);
                if (TextUtils.isEmpty(stringFromMap)) {
                    a(false, "", "ms init failed: app_id is empty");
                    return;
                }
                try {
                    if (this.f9977f == null) {
                        this.f9977f = new MSAdConfig.Builder();
                    }
                    this.f9977f.appId(stringFromMap).enableDebug(ATSDK.isNetworkLogDebug()).setUseMediation(false).secure(intFromMap).downloadConfirm(1);
                    String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.KEY.WECHAT_APPID);
                    if (!TextUtils.isEmpty(stringFromMap2)) {
                        this.f9977f.setWxAppid(stringFromMap2);
                    }
                    MSAdConfig.CustomController customController = this.f9976e;
                    if (customController != null) {
                        this.f9977f.customController(customController);
                    } else {
                        this.f9977f.customController(new a());
                    }
                    MSAdConfig mSAdConfigBuild = this.f9977f.build();
                    Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(93);
                    if (boolIsShakeEnabled != null) {
                        if (boolIsShakeEnabled.booleanValue()) {
                            mSAdConfigBuild.clearDisableSensor(1);
                            mSAdConfigBuild.clearDisableSensor(9);
                            mSAdConfigBuild.clearDisableSensor(4);
                        } else {
                            mSAdConfigBuild.disableSensorType(1);
                            mSAdConfigBuild.disableSensorType(9);
                            mSAdConfigBuild.disableSensorType(4);
                        }
                    }
                    AdSdk.init(context.getApplicationContext(), mSAdConfigBuild);
                    this.f9974c = true;
                    a(true, null, null);
                } catch (Throwable th) {
                    a(false, "", th.getMessage());
                }
            } finally {
            }
        }
    }

    public void setCustomController(MSAdConfig.CustomController customController) {
        this.f9976e = customController;
    }

    public void setMSAdConfigBuilder(MSAdConfig.Builder builder) {
        this.f9977f = builder;
    }
}
