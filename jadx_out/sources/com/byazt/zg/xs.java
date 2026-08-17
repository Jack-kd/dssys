package com.byazt.zg;

import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 308, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {
    public static final HashSet hp = new HashSet(Arrays.asList("dalvik.system.VMStack.getThreadStackTrace", "java.lang.Thread.getStackTrace"));

    public static String hp() {
        StackTraceElement[] stackTrace;
        try {
            stackTrace = Thread.currentThread().getStackTrace();
        } catch (Throwable unused) {
            stackTrace = null;
        }
        if (stackTrace == null || stackTrace.length == 0) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (stackTraceElement != null) {
                    if (!hp.contains(stackTraceElement.getClassName() + i.f2495E + stackTraceElement.getMethodName())) {
                        String className = stackTraceElement.getClassName();
                        if (className != null && className.startsWith("android.app")) {
                            break;
                        }
                        jSONArray.put(stackTraceElement.toString());
                    } else {
                        continue;
                    }
                }
            }
            return jSONArray.toString();
        } catch (OutOfMemoryError unused2) {
            return "";
        }
    }

    private static boolean j() {
        Map<String, List<String>> mapM = com.byazt.di.l.l().m();
        if (mapM == null || mapM.size() == 0) {
            return false;
        }
        return hp(com.byazt.di.l.l().f());
    }

    public static double jx() {
        return com.byazt.di.l.l().f();
    }

    public static String l() {
        StackTraceElement[] stackTrace;
        Map<String, List<String>> mapM;
        try {
            stackTrace = Thread.currentThread().getStackTrace();
        } catch (Throwable unused) {
            stackTrace = null;
        }
        if (stackTrace != null && stackTrace.length != 0 && (mapM = com.byazt.di.l.l().m()) != null && !mapM.isEmpty()) {
            for (String str : mapM.keySet()) {
                if (hp(mapM.get(str), stackTrace)) {
                    return str;
                }
            }
        }
        return null;
    }

    public static String hp(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (String str : map.keySet()) {
            if (hp(map.get(str))) {
                jSONArray.put(str);
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        try {
            return jSONArray.toString();
        } catch (OutOfMemoryError unused) {
            return "";
        }
    }

    private static boolean hp(String str) throws ClassNotFoundException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean hp(List<String> list, StackTraceElement[] stackTraceElementArr) {
        if (list != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (list.get(i2) != null) {
                        try {
                            if (stackTraceElement.toString().contains(list.get(i2))) {
                                return true;
                            }
                        } catch (OutOfMemoryError unused) {
                            continue;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean hp(com.byazt.rt.jx jxVar) {
        if (jxVar == null || !jxVar.isCustomAd()) {
            return false;
        }
        return j();
    }

    public static boolean hp(com.byazt.tgw.e eVar) {
        if (eVar == null || !eVar.as()) {
            return false;
        }
        return j();
    }

    public static boolean hp(double d2) {
        return d2 > 0.0d && Math.random() <= d2;
    }
}
