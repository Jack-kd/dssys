package com.byazt.ktd;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public final class s {
    public static volatile String hp;

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f22170j = {"android.app", "android.os", "android.view.Choreographer", "android.view.View.perform", "android.view.ViewRootImpl", "androidx.compose", "androidx.activity.compose", "androidx.recyclerview.widget.LinearLayoutManager", "androidx.recyclerview.widget.GridLayoutManager", "androidx.recyclerview.widget.StaggeredGridLayoutManager", "androidx.recyclerview.widget.LinearLayoutManager", "androidx.recyclerview.widget.GridLayoutManager", "androidx.recyclerview.widget.StaggeredGridLayoutManager"};
    public static volatile String jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f22171l;

    private s() {
    }

    private static boolean hp(String str) {
        if (str == null) {
            return true;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == 'd') {
            if (str.startsWith("dalvik.")) {
                return true;
            }
        } else if (cCharAt == 'j') {
            if (str.startsWith("java.lang.Thread") || str.startsWith("java.lang.reflect.") || str.startsWith("javax")) {
                return true;
            }
        } else if (cCharAt == 'c') {
            if (str.startsWith("com.android.")) {
                return true;
            }
        } else {
            if (cCharAt != 'a') {
                if (cCharAt != 'k' || (!str.startsWith("kotlin.") && !str.startsWith("kotlinx."))) {
                    break;
                }
                return true;
            }
            int i2 = 0;
            while (true) {
                String[] strArr = f22170j;
                if (i2 >= strArr.length) {
                    break;
                }
                if (str.startsWith(strArr[i2])) {
                    return true;
                }
                i2++;
            }
        }
        return false;
    }

    private static String l() {
        return hp(1, s.class.getName(), 2);
    }

    private static String hp(int i2) {
        if (i2 == 1) {
            return hp;
        }
        if (i2 == 2) {
            return f22171l;
        }
        if (i2 != 3) {
            return "";
        }
        return jx;
    }

    private static void hp(int i2, String str) {
        if (i2 == 1) {
            hp = str;
        } else if (i2 == 2) {
            f22171l = str;
        } else {
            if (i2 != 3) {
                return;
            }
            jx = str;
        }
    }

    private static String hp(int i2, String str, int i3) {
        String strHp = hp(i2);
        if (!TextUtils.isEmpty(strHp)) {
            return strHp;
        }
        String strHp2 = hp(str, i3);
        hp(i2, strHp2);
        return strHp2;
    }

    private static String hp(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length < 2) {
            return "";
        }
        if (strArrSplit.length < i2 || !"com".equals(strArrSplit[0])) {
            i2 = Math.min(i2, strArrSplit.length - 1);
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append('.');
            }
            sb.append(strArrSplit[i3]);
        }
        return sb.toString();
    }

    private static boolean hp(String str, String str2) {
        int length;
        int length2;
        if (TextUtils.isEmpty(str2) || (length = str.length()) < (length2 = str2.length()) || str.charAt(0) != str2.charAt(0)) {
            return false;
        }
        if (length2 <= 1 || length <= 1 || str.charAt(1) == str2.charAt(1)) {
            return str.startsWith(str2);
        }
        return false;
    }

    public static boolean hp(float f2, String str) {
        if (f2 <= 0.0f) {
            return false;
        }
        if (f2 >= 1.0f) {
            return true;
        }
        return ((str != null ? str.hashCode() : (int) System.nanoTime()) & Integer.MAX_VALUE) % 1000000 < ((int) (f2 * 1000000.0f));
    }

    public static StackTraceElement[] hp() {
        return Thread.currentThread().getStackTrace();
    }

    public static JSONArray hp(StackTraceElement[] stackTraceElementArr, int i2) {
        return hp(stackTraceElementArr, i2, false, true);
    }

    public static String hp(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        return com.byazt.ymw.a.l(jSONArray.toString());
    }

    private static JSONArray hp(StackTraceElement[] stackTraceElementArr, int i2, boolean z2, boolean z3) {
        String className;
        StringBuilder sb;
        JSONArray jSONArray = new JSONArray();
        if (i2 > 0 && stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            String strL = l();
            boolean zIsEmpty = TextUtils.isEmpty(strL);
            int i3 = 0;
            for (int i4 = 0; i4 < stackTraceElementArr.length && i3 < i2; i4++) {
                StackTraceElement stackTraceElement = stackTraceElementArr[i4];
                if (stackTraceElement != null && (className = stackTraceElement.getClassName()) != null && className.length() != 0 && !hp(className) && ((zIsEmpty || !hp(className, strL) || hp(stackTraceElement)) && !hp(className, "com.byazt"))) {
                    if (z2) {
                        String fileName = stackTraceElement.getFileName();
                        int lineNumber = stackTraceElement.getLineNumber();
                        sb = new StringBuilder(className.length() + 24);
                        sb.append(className);
                        sb.append('.');
                        sb.append(stackTraceElement.getMethodName());
                        sb.append('(');
                        if (fileName != null) {
                            sb.append(fileName);
                        }
                        sb.append(':');
                        sb.append(lineNumber);
                        sb.append(')');
                    } else {
                        sb = new StringBuilder(className.length() + 8);
                        sb.append(className);
                        sb.append('.');
                        sb.append(stackTraceElement.getMethodName());
                    }
                    jSONArray.put(sb.toString());
                    i3++;
                }
            }
        }
        return jSONArray;
    }

    private static boolean hp(StackTraceElement stackTraceElement) {
        if (stackTraceElement == null) {
            return false;
        }
        String methodName = stackTraceElement.getMethodName();
        if (TextUtils.isEmpty(methodName)) {
            return false;
        }
        return methodName.startsWith("load") ? methodName.endsWith("Ad") || "loadStream".equals(methodName) : "showRewardVideoAd".equals(methodName) || "showFullScreenVideoAd".equals(methodName) || "showSplashView".equals(methodName) || "getAdView".equals(methodName) || "getExpressAdView".equals(methodName) || "getSplashView".equals(methodName) || "getSplashCardView".equals(methodName);
    }
}
