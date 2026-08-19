package com.anythink.network.ubix;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATDeviceUtils;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.MediationInitCallback;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdLoadCallbackListener;
import com.ubix.ssp.open.UBiXAdPrivacyManager;
import com.ubix.ssp.open.UBiXAdSetting;
import com.ubix.ssp.open.UBiXInitManger;
import com.ubix.ssp.open.UBiXWinPlatform;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class UbATInitManager extends ATInitMediation {

    /* renamed from: e, reason: collision with root package name */
    private static final String f10483e = "UbATInitManager";

    /* renamed from: f, reason: collision with root package name */
    private static UbATInitManager f10484f;

    /* renamed from: b, reason: collision with root package name */
    private List<MediationInitCallback> f10486b;

    /* renamed from: d, reason: collision with root package name */
    private UBiXAdPrivacyManager f10488d;
    public volatile boolean mHasInit;

    /* renamed from: a, reason: collision with root package name */
    private final Object f10485a = new Object();

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f10487c = new AtomicBoolean(false);

    public class a implements AdLoadCallbackListener {
        public a() {
        }

        @Override // com.ubix.ssp.open.AdLoadCallbackListener
        public void onError(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String unused = UbATInitManager.f10483e;
            UbATInitManager.this.a(false, String.valueOf(errorCode), errorMessage);
        }

        @Override // com.ubix.ssp.open.AdLoadCallbackListener
        public void onSuccess() {
            String unused = UbATInitManager.f10483e;
            UbATInitManager.this.mHasInit = true;
            UbATInitManager.this.a(true, null, null);
        }
    }

    private UbATInitManager() {
    }

    public static UbATInitManager getInstance() {
        if (f10484f == null) {
            synchronized (UbATInitManager.class) {
                try {
                    if (f10484f == null) {
                        f10484f = new UbATInitManager();
                    }
                } finally {
                }
            }
        }
        return f10484f;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public int getAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getAdapterVersion() {
        return "2.10.2.11.1.0";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return UBiXWinPlatform.PLATFORM_UBIX;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkSDKClass() {
        return "com.ubix.ssp.open.UBiXInitManger";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        try {
            return UbATConst.getNetworkVersion();
        } catch (Throwable unused) {
            return "";
        }
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
        synchronized (this.f10485a) {
            try {
                if (this.f10487c.get()) {
                    if (mediationInitCallback != null) {
                        this.f10486b.add(mediationInitCallback);
                    }
                    return;
                }
                if (this.f10486b == null) {
                    this.f10486b = new ArrayList();
                }
                if (mediationInitCallback != null) {
                    this.f10486b.add(mediationInitCallback);
                }
                this.f10487c.set(true);
                String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                Thread.currentThread().getName();
                if (TextUtils.isEmpty(stringFromMap)) {
                    a(false, "", "ubix init failed: app_id is empty");
                    return;
                }
                try {
                    if (this.f10488d == null) {
                        UBiXAdPrivacyManager.Builder builder = new UBiXAdPrivacyManager.Builder();
                        try {
                            String oaid = ATDeviceUtils.getOaid();
                            if (!TextUtils.isEmpty(oaid)) {
                                builder.setCanUseOaid(true).setDevOaid(oaid);
                            }
                        } catch (Throwable unused) {
                        }
                        try {
                            builder.setPersonalizedState(ATSDK.getPersionalizedAdStatus() == 2 ? 1 : 0);
                        } catch (Throwable unused2) {
                        }
                        this.f10488d = builder.build();
                    }
                    UBiXInitManger.getInstance(context.getApplicationContext()).launchSDK(stringFromMap, new UBiXAdSetting.Builder().setPrivacyManager(this.f10488d).setPublisherId("TaKu").setUseTextureView(true).setUserId(getUserId()).build(), new a());
                } catch (Throwable th) {
                    a(false, "", th.getMessage());
                }
            } finally {
            }
        }
    }

    public void setUBiXAdPrivacyManager(UBiXAdPrivacyManager uBiXAdPrivacyManager) {
        this.f10488d = uBiXAdPrivacyManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, String str, String str2) {
        synchronized (this.f10485a) {
            try {
                int size = this.f10486b.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.f10486b.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.f10486b.clear();
                this.f10487c.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
