package com.anythink.network.octopus;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATDeviceUtils;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.MediationInitCallback;
import com.octopus.ad.Octopus;
import com.octopus.ad.OctopusAdSdkController;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class ZyATInitManager extends ATInitMediation {

    /* renamed from: e, reason: collision with root package name */
    private static final String f10114e = "ZyATInitManager";

    /* renamed from: f, reason: collision with root package name */
    private static ZyATInitManager f10115f;

    /* renamed from: b, reason: collision with root package name */
    private List<MediationInitCallback> f10117b;

    /* renamed from: d, reason: collision with root package name */
    private OctopusAdSdkController f10119d;
    public boolean mHasInit;

    /* renamed from: a, reason: collision with root package name */
    private final Object f10116a = new Object();

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f10118c = new AtomicBoolean(false);

    public class a extends OctopusAdSdkController {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10120a;

        public a(boolean z2) {
            this.f10120a = z2;
        }

        @Override // com.octopus.ad.OctopusAdSdkController
        public String getOaid() {
            return ATDeviceUtils.getOaid();
        }

        @Override // com.octopus.ad.OctopusAdSdkController
        public boolean isCanShake() {
            return this.f10120a;
        }
    }

    private ZyATInitManager() {
    }

    private void a(boolean z2, String str, String str2) {
        synchronized (this.f10116a) {
            try {
                int size = this.f10117b.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f10117b.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.f10117b.clear();
                this.f10118c.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ZyATInitManager getInstance() {
        if (f10115f == null) {
            synchronized (ZyATInitManager.class) {
                try {
                    if (f10115f == null) {
                        f10115f = new ZyATInitManager();
                    }
                } finally {
                }
            }
        }
        return f10115f;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "2.6.5.7.1.0";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Octopus";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.octopus.ad.Octopus";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return Octopus.getSdkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public List getServiceStatus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.octopus.ad.DownloadService");
        return arrayList;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        if (this.mHasInit) {
            if (mediationInitCallback != null) {
                mediationInitCallback.onSuccess();
                return;
            }
            return;
        }
        synchronized (this.f10116a) {
            try {
                if (this.f10118c.get()) {
                    if (mediationInitCallback != null) {
                        this.f10117b.add(mediationInitCallback);
                    }
                    return;
                }
                if (this.f10117b == null) {
                    this.f10117b = new ArrayList();
                }
                this.f10118c.set(true);
                if (mediationInitCallback != null) {
                    this.f10117b.add(mediationInitCallback);
                }
                String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                Thread.currentThread().getName();
                if (TextUtils.isEmpty(stringFromMap)) {
                    a(false, "", "Octopus init failed: app_id is empty");
                    return;
                }
                try {
                    Octopus.setLimitPersonalAds(ATSDK.getPersionalizedAdStatus() == 2);
                } catch (Throwable unused) {
                }
                Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(96);
                boolean z2 = boolIsShakeEnabled == null || boolIsShakeEnabled.booleanValue();
                try {
                    if (this.f10119d == null) {
                        this.f10119d = new a(z2);
                    }
                    Octopus.init(context, stringFromMap, this.f10119d);
                    this.mHasInit = true;
                    a(true, null, null);
                } catch (Throwable th) {
                    a(false, "", th.getMessage());
                }
            } finally {
            }
        }
    }

    public void setOctopusAdSdkController(OctopusAdSdkController octopusAdSdkController) {
        this.f10119d = octopusAdSdkController;
    }
}
