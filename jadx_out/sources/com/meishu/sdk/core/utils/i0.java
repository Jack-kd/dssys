package com.meishu.sdk.core.utils;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.domain.SdkAdInfo;
import java.net.URLEncoder;

/* loaded from: classes4.dex */
public class i0 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f31911a = 0;

    public static String a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            return TextUtils.replace(str, new String[]{"__MS_EVENT_SEC__", "__MS_EVENT_MSEC__"}, new String[]{String.valueOf(jCurrentTimeMillis / 1000), String.valueOf(jCurrentTimeMillis)}).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void b(String[] strArr) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            try {
                strArr[i2] = strArr[i2].replace("__MS_CR__", String.valueOf(1));
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
    }

    public static String b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String a(String str, long j2) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__FINAL__", "__PST__"}, new String[]{String.valueOf(1), String.valueOf(j2)}).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String[] b(String[] strArr, String str) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            try {
                strArr[i2] = TextUtils.replace(strArr[i2], new String[]{"__MS_STAT__"}, new String[]{str}).toString();
            } catch (Exception e2) {
                e2.printStackTrace();
                return strArr;
            }
        }
        return strArr;
    }

    public static String[] b(String[] strArr, int i2) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    for (int i3 = 0; i3 < strArr.length; i3++) {
                        strArr[i3] = TextUtils.replace(strArr[i3], new String[]{"__MS_DP_SIGN__"}, new String[]{String.valueOf(i2)}).toString();
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return strArr;
    }

    public static String a(String str, String str2, String str3) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__UUID__", "__SUUID__"}, new String[]{b(str2), b(str3)}).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void a(SdkAdInfo sdkAdInfo, View view) {
        if (sdkAdInfo == null || view == null) {
            return;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            String imp = sdkAdInfo.getImp();
            if (!TextUtils.isEmpty(imp)) {
                sdkAdInfo.setImp(a(imp, width, height));
            }
            String clk = sdkAdInfo.getClk();
            if (TextUtils.isEmpty(clk)) {
                return;
            }
            sdkAdInfo.setClk(a(clk, width, height));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(com.meishu.sdk.platform.ms.c cVar, ViewGroup viewGroup) {
        AdSlot adSlotA;
        try {
            int width = viewGroup.getWidth();
            int height = viewGroup.getHeight();
            if (width > 0 && height > 0 && (adSlotA = cVar.a()) != null && adSlotA.getClickUrl() != null) {
                for (int i2 = 0; i2 < adSlotA.getClickUrl().length; i2++) {
                    adSlotA.getClickUrl()[i2] = a(adSlotA.getClickUrl()[i2], width, height);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String a(String str, int i2, int i3) {
        try {
            return TextUtils.isEmpty(str) ? "" : TextUtils.replace(str, new String[]{"__WIDTH__", "__HEIGHT__"}, new String[]{String.valueOf((int) m.b(AdSdk.getContext(), i2)), String.valueOf((int) m.b(AdSdk.getContext(), i3))}).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String a(String str, int i2, AdType adType) {
        try {
            int iA = h.a(i2, adType.value());
            if (adType != AdType.SPLASH) {
                if ((i2 & 128) == 128) {
                    iA &= -129;
                }
                if ((i2 & 32) == 32) {
                    iA &= -33;
                }
            }
            return str.replace("__MS_CT__", iA + "");
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }

    public static String[] a(String[] strArr, String str) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    String[] strArr2 = new String[strArr.length];
                    for (int i2 = 0; i2 < strArr.length; i2++) {
                        if (!TextUtils.isEmpty(strArr[i2])) {
                            strArr2[i2] = TextUtils.replace(strArr[i2], new String[]{"__ACCEPT_ID__"}, new String[]{str}).toString();
                        }
                    }
                    return strArr2;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return strArr;
    }

    public static String[] a(String[] strArr, View view, View view2) {
        int measuredHeight;
        int iWidth;
        int iHeight;
        int measuredWidth;
        if (strArr != null) {
            try {
                if (strArr.length != 0 && view != null) {
                    Rect rect = new Rect();
                    int[] iArr = new int[2];
                    if (view.getGlobalVisibleRect(rect)) {
                        iWidth = rect.width();
                        iHeight = rect.height();
                        view.getLocationInWindow(iArr);
                        measuredWidth = view.getMeasuredWidth();
                        measuredHeight = view.getMeasuredHeight();
                    } else {
                        if (view2 != null) {
                            if (view2.getGlobalVisibleRect(rect)) {
                                LogUtil.dev("i0", "replaceHWParams backUpView visible");
                                int iWidth2 = rect.width();
                                iHeight = rect.height();
                                view2.getLocationInWindow(iArr);
                                measuredWidth = view2.getMeasuredWidth();
                                int measuredHeight2 = view2.getMeasuredHeight();
                                iWidth = iWidth2;
                                measuredHeight = measuredHeight2;
                            } else {
                                LogUtil.dev("i0", "replaceHWParams backUpView not visible");
                            }
                        } else {
                            LogUtil.dev("i0", "replaceHWParams view not visible");
                        }
                        measuredHeight = 0;
                        iWidth = 0;
                        iHeight = 0;
                        measuredWidth = 0;
                    }
                    int i2 = ((iWidth * iHeight) * 100) / (measuredWidth * measuredHeight);
                    for (int i3 = 0; i3 < strArr.length; i3++) {
                        strArr[i3] = TextUtils.replace(strArr[i3], new String[]{"__M_SHOW_RATI__", "__M_SCREEN_X__", "__M_SCREEN_Y__"}, new String[]{String.valueOf(i2), String.valueOf(iArr[0]), String.valueOf(iArr[1])}).toString();
                    }
                    LogUtil.dev("i0", "replaceHWParams ratio：" + i2 + " x:" + iArr[0] + " y:" + iArr[1]);
                    return strArr;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return strArr;
    }

    public static String[] a(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    for (int i2 = 0; i2 < strArr.length; i2++) {
                        strArr[i2] = TextUtils.replace(strArr[i2], new String[]{"__M_SHOW_RATI__", "__M_SCREEN_X__", "__M_SCREEN_Y__"}, new String[]{String.valueOf(100), String.valueOf(0), String.valueOf(0)}).toString();
                    }
                    LogUtil.dev("i0", "replaceHWParams fullscreen");
                    return strArr;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return strArr;
    }

    public static String[] a(String[] strArr, int i2) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    for (int i3 = 0; i3 < strArr.length; i3++) {
                        strArr[i3] = TextUtils.replace(strArr[i3], new String[]{"__MS_DP_OPEN__"}, new String[]{String.valueOf(i2)}).toString();
                    }
                    LogUtil.dev("i0", "replaceDPOpen");
                    return strArr;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return strArr;
    }
}
