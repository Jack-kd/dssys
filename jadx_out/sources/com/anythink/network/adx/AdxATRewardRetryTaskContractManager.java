package com.anythink.network.adx;

import android.text.TextUtils;
import com.anythink.rewardvideo.api.ATRewardRetryTaskContract;
import com.anythink.rewardvideo.api.ATRewardRetryTaskInfo;
import com.anythink.rewardvideo.api.ATRewardRetryTaskManager;
import com.anythink.rewardvideo.api.ATRewardRetryTaskResult;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class AdxATRewardRetryTaskContractManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f9241a = "AdxATRewardRetryTaskContractManager";

    /* renamed from: b, reason: collision with root package name */
    private static final Object f9242b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static volatile String f9243c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile List<ATRewardRetryTaskInfo> f9244d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile ATRewardRetryTaskContract.RetryRewardResultListener f9245e;

    public static final class b implements ATRewardRetryTaskContract {
        private b() {
        }

        @Override // com.anythink.rewardvideo.api.ATRewardRetryTaskContract
        public void rewardAdRetryTaskUpdate(ATRewardRetryTaskInfo aTRewardRetryTaskInfo, ATRewardRetryTaskContract.RetryRewardConvertResultListener retryRewardConvertResultListener) {
        }

        @Override // com.anythink.rewardvideo.api.ATRewardRetryTaskContract
        public void setRetryRewardResultListener(List<ATRewardRetryTaskInfo> list, ATRewardRetryTaskContract.RetryRewardResultListener retryRewardResultListener) {
            if (list == null || list.isEmpty()) {
                if (retryRewardResultListener != null) {
                    retryRewardResultListener.onError(-1, "taskInfoList is null or empty");
                    return;
                }
                return;
            }
            if (retryRewardResultListener == null) {
                return;
            }
            List listE = AdxATRewardRetryTaskContractManager.e(list);
            if (listE.isEmpty()) {
                retryRewardResultListener.onError(-1, "no adx task in taskInfoList");
                return;
            }
            String strD = AdxATRewardRetryTaskContractManager.d(listE);
            if (TextUtils.isEmpty(strD)) {
                retryRewardResultListener.onError(-1, "taskInfo requestId is empty, cannot match ad session");
                return;
            }
            synchronized (AdxATRewardRetryTaskContractManager.f9242b) {
                String unused = AdxATRewardRetryTaskContractManager.f9243c = strD;
                List unused2 = AdxATRewardRetryTaskContractManager.f9244d = new ArrayList(list);
                ATRewardRetryTaskContract.RetryRewardResultListener unused3 = AdxATRewardRetryTaskContractManager.f9245e = retryRewardResultListener;
            }
        }
    }

    private AdxATRewardRetryTaskContractManager() {
    }

    public static void clearPendingRetryRewardQueryIfSession(String str) {
        synchronized (f9242b) {
            try {
                if (b(str)) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(List<ATRewardRetryTaskInfo> list) {
        if (list == null) {
            return null;
        }
        for (ATRewardRetryTaskInfo aTRewardRetryTaskInfo : list) {
            if (aTRewardRetryTaskInfo != null && String.valueOf(66).equals(aTRewardRetryTaskInfo.getFirmId()) && !TextUtils.isEmpty(aTRewardRetryTaskInfo.getRequestId())) {
                return aTRewardRetryTaskInfo.getRequestId();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<ATRewardRetryTaskInfo> e(List<ATRewardRetryTaskInfo> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            String strValueOf = String.valueOf(66);
            for (ATRewardRetryTaskInfo aTRewardRetryTaskInfo : list) {
                if (aTRewardRetryTaskInfo != null && strValueOf.equals(aTRewardRetryTaskInfo.getFirmId())) {
                    arrayList.add(aTRewardRetryTaskInfo);
                }
            }
        }
        return arrayList;
    }

    public static void install() {
        try {
            ATRewardRetryTaskManager.getInstance().registerContract(String.valueOf(66), new b());
        } catch (Throwable unused) {
        }
    }

    public static void notifyAdClosedIncompleteRetryReward(String str, boolean z2) {
        if (z2) {
            synchronized (f9242b) {
                try {
                    if (f9245e == null || !b(str)) {
                        return;
                    }
                    try {
                        f9245e.onError(-1, "ad closed");
                    } catch (Throwable unused) {
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void notifyRetryRewardResult(String str, boolean z2) {
        if (z2) {
            synchronized (f9242b) {
                try {
                    if (f9245e == null || f9244d == null || !b(str)) {
                        return;
                    }
                    try {
                        ArrayList arrayList = new ArrayList(f9244d.size());
                        for (ATRewardRetryTaskInfo aTRewardRetryTaskInfo : f9244d) {
                            if (aTRewardRetryTaskInfo != null) {
                                arrayList.add(new ATRewardRetryTaskResult(aTRewardRetryTaskInfo, 0));
                            }
                        }
                        if (arrayList.isEmpty()) {
                            f9245e.onError(-1, "no valid taskInfo in pending list");
                        } else {
                            f9245e.onSuccess(arrayList);
                        }
                    } catch (Throwable unused) {
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void notifyRetryRewardResultFailed(String str, boolean z2, int i2, String str2) {
        if (z2) {
            synchronized (f9242b) {
                try {
                    if (f9245e == null || !b(str)) {
                        return;
                    }
                    try {
                        ATRewardRetryTaskContract.RetryRewardResultListener retryRewardResultListener = f9245e;
                        if (str2 == null) {
                            str2 = "";
                        }
                        retryRewardResultListener.onError(i2, str2);
                    } catch (Throwable unused) {
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static boolean b(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(f9243c)) {
            return false;
        }
        return TextUtils.equals(str, f9243c);
    }

    private static void b() {
        f9243c = null;
        f9244d = null;
        f9245e = null;
    }
}
