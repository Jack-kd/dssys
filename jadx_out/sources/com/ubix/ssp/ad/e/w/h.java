package com.ubix.ssp.ad.e.w;

import android.util.Log;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes5.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f47315a = false;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f47316b;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f47317c;

    private static int a(byte[] bArr, int i2) {
        int iMin = Math.min(i2 + TTAdConstant.INIT_LOCAL_FAIL_CODE, bArr.length - 1);
        for (int i3 = iMin; i3 > iMin + AVMDLDataLoader.AVMDLErrorIsInvalidRequestInfo; i3--) {
            if (bArr[i3] == 10) {
                return i3;
            }
        }
        return iMin;
    }

    public static void b(String str, String str2) {
        if (!f47316b || f47317c) {
            return;
        }
        b(str, str2, null);
    }

    public static void a(Exception exc) {
        if (!f47316b || f47317c || exc == null) {
            return;
        }
        Log.e("Monitor.Exception", "", exc);
    }

    public static void b(String str, String str2, Throwable th) {
        if (str2 != null) {
            try {
                byte[] bytes = str2.getBytes();
                int length = bytes.length;
                if (length <= 4000) {
                    return;
                }
                int i2 = 0;
                while (i2 < length + AVMDLDataLoader.AVMDLErrorIsInvalidRequestInfo) {
                    int iA = a(bytes, i2);
                    int i3 = iA - i2;
                    new String(bytes, i2, i3);
                    if (i3 < 4000) {
                        iA++;
                    }
                    i2 = iA;
                }
                if (length > i2) {
                    new String(bytes, i2, length - i2);
                }
            } catch (Exception e2) {
                a(e2);
            }
        }
    }

    public static void a(String str, String str2) {
        if (!f47315a || f47317c) {
            return;
        }
        b(str, str2, null);
    }

    public static void b(boolean z2) {
        f47316b = z2;
    }

    public static void a(String str, String str2, Throwable th) {
        if (!f47316b || f47317c) {
            return;
        }
        b(str, str2, th);
    }

    public static void a(boolean z2) {
        f47317c = z2;
    }

    public static boolean a() {
        return f47316b;
    }
}
