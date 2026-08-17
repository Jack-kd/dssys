package com.octopus.ad.topon;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.MediationInitCallback;
import com.octopus.ad.Octopus;
import com.octopus.ad.OctopusAdSdkController;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public class OctopusATInitManager extends ATInitMediation {
    public static final String TAG = "OctopusATInitManager";
    private static volatile OctopusATInitManager sInstance;
    private boolean mHasInit;
    private List<MediationInitCallback> mListeners;
    private final Object mLock = new Object();
    private int personAdStatus = 0;
    private final AtomicBoolean mIsIniting = new AtomicBoolean(false);

    private OctopusATInitManager() {
    }

    private void callbackResult(boolean z2, String str, String str2) {
        synchronized (this.mLock) {
            try {
                int size = this.mListeners.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MediationInitCallback mediationInitCallback = this.mListeners.get(i2);
                    if (mediationInitCallback != null) {
                        if (z2) {
                            mediationInitCallback.onSuccess();
                        } else {
                            mediationInitCallback.onFail(str + " | " + str2);
                        }
                    }
                }
                this.mListeners.clear();
                this.mIsIniting.set(false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static OctopusATInitManager getInstance() {
        if (sInstance == null) {
            synchronized (OctopusATInitManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new OctopusATInitManager();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkName() {
        return "Octopus";
    }

    @Override // com.anythink.core.api.ATInitMediation
    public String getNetworkVersion() {
        return Octopus.getSdkVersion();
    }

    @Override // com.anythink.core.api.ATInitMediation
    public synchronized void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback) {
        try {
            this.personAdStatus = ATSDK.getPersionalizedAdStatus();
        } catch (Throwable unused) {
        }
        try {
            Octopus.setLimitPersonalAds(this.personAdStatus == 2);
            if (ATSDK.isNetworkLogDebug()) {
                Octopus.isLimitPersonalAds();
            }
            if (this.mHasInit) {
                if (mediationInitCallback != null) {
                    mediationInitCallback.onSuccess();
                }
                return;
            }
            synchronized (this.mLock) {
                try {
                    if (this.mIsIniting.get()) {
                        if (mediationInitCallback != null) {
                            this.mListeners.add(mediationInitCallback);
                        }
                        return;
                    }
                    if (this.mListeners == null) {
                        this.mListeners = new ArrayList();
                    }
                    this.mIsIniting.set(true);
                    String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
                    if (mediationInitCallback != null) {
                        this.mListeners.add(mediationInitCallback);
                    }
                    if (TextUtils.isEmpty(stringFromMap)) {
                        callbackResult(false, "80000", "AppId is empty!");
                        return;
                    }
                    try {
                        Octopus.init(context, stringFromMap, new OctopusAdSdkController() { // from class: com.octopus.ad.topon.OctopusATInitManager.1
                            @Override // com.octopus.ad.OctopusAdSdkController
                            public String getImei() {
                                return super.getImei();
                            }

                            @Override // com.octopus.ad.OctopusAdSdkController
                            public String getOaid() {
                                return super.getOaid();
                            }

                            @Override // com.octopus.ad.OctopusAdSdkController
                            public boolean isCanUsePhoneState() {
                                return false;
                            }
                        });
                        Octopus.setIsDownloadDirect(false);
                        this.mHasInit = true;
                        callbackResult(true, null, null);
                    } catch (Throwable th) {
                        callbackResult(false, "80000", "init fail:" + th.getMessage());
                        th.getMessage();
                    }
                } finally {
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
