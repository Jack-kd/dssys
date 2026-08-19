package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMRTLog;

/* loaded from: classes5.dex */
public class bg {

    /* renamed from: a, reason: collision with root package name */
    private static bf f48825a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f48826b = null;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f48827c = false;

    public static synchronized String a(Context context) {
        if (!UMConfigure.shouldCollectOaid()) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** OpenDeviceId.getOAID(): oaid开关已关闭。");
            return null;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** real call OpenDeviceId.getOaid()");
        if (context == null) {
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        if (f48825a == null) {
            f48825a = bi.a();
        }
        bf bfVar = f48825a;
        if (bfVar != null) {
            try {
                String strA = bfVar.a(context);
                if (!TextUtils.isEmpty(strA)) {
                    f48826b = strA;
                }
                f48827c = true;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "OpenDeviceId:getOAID() result: " + f48826b);
                return f48826b;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String b(Context context) {
        if (UMConfigure.shouldCollectOaid()) {
            return f48827c ? f48826b : a(context);
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** OpenDeviceId.getOAIDFromCache(): oaid开关已关闭。");
        return null;
    }

    @Deprecated
    public static synchronized String c(Context context) {
        if (UMConfigure.shouldCollectOaid()) {
            return null;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** OpenDeviceId.getHonorCompatibleOaid(): oaid开关已关闭。");
        return null;
    }

    @Deprecated
    public static synchronized String d(Context context) {
        if (UMConfigure.shouldCollectOaid()) {
            return null;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** OpenDeviceId.getHonorCompatibleOaidFromCache(): oaid开关已关闭。");
        return null;
    }
}
