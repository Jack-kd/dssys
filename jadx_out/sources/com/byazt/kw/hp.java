package com.byazt.kw;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Debug;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.pu.TTDownloadField;
import java.lang.reflect.Field;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 756, 28})
/* loaded from: classes.dex */
public final class hp {
    public static String hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static Field f22230j = null;
    public static Field jx = null;

    /* renamed from: l, reason: collision with root package name */
    public static Class<?> f22231l = null;

    /* renamed from: w, reason: collision with root package name */
    public static boolean f22232w = false;

    public static int a(Context context) {
        Class<?> clsEb = eb(context);
        if (f22230j == null && clsEb != null) {
            try {
                f22230j = clsEb.getDeclaredField("VERSION_CODE");
            } catch (NoSuchFieldException unused) {
            }
        }
        Field field = f22230j;
        if (field == null) {
            return -1;
        }
        try {
            return ((Integer) field.get(null)).intValue();
        } catch (Throwable unused2) {
            return -1;
        }
    }

    @Nullable
    private static Class<?> eb(Context context) {
        if (f22231l == null && !f22232w) {
            try {
                f22231l = Class.forName(context.getPackageName() + ".BuildConfig");
            } catch (ClassNotFoundException unused) {
            }
            f22232w = true;
        }
        return f22231l;
    }

    private static long hp(int i2) {
        if (i2 < 0) {
            return 0L;
        }
        return i2 * 1024;
    }

    @Nullable
    public static String j(Context context) {
        String str = hp;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            hp = jl.hp(context);
        } catch (Throwable unused) {
        }
        String str2 = hp;
        return str2 == null ? "" : str2;
    }

    public static boolean jx(Context context) {
        return false;
    }

    public static boolean l(Context context) {
        String strJ = j(context);
        if (strJ != null && strJ.contains(":")) {
            return false;
        }
        if (strJ == null || !strJ.equals(context.getPackageName())) {
            return strJ != null && strJ.equals(context.getApplicationInfo().processName);
        }
        return true;
    }

    @NonNull
    public static String w(Context context) {
        Class<?> clsEb = eb(context);
        if (jx == null && clsEb != null) {
            try {
                jx = clsEb.getDeclaredField("VERSION_NAME");
            } catch (NoSuchFieldException unused) {
            }
        }
        Field field = jx;
        if (field == null) {
            return "";
        }
        try {
            return (String) field.get(null);
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static boolean hp(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ComponentName componentName;
        if (context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (componentName = runningTasks.get(0).topActivity) != null) {
                if (packageName.equals(componentName.getPackageName())) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static void l(@NonNull JSONObject jSONObject, ActivityManager activityManager) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        jSONObject2.put("availMem", memoryInfo.availMem);
        jSONObject2.put("lowMemory", memoryInfo.lowMemory);
        jSONObject2.put("threshold", memoryInfo.threshold);
        jSONObject2.put("totalMem", eb.hp(memoryInfo));
        jSONObject.put("sys_memory_info", jSONObject2);
    }

    @Nullable
    public static ActivityManager.ProcessErrorStateInfo hp(Context context, int i2) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager == null) {
            return null;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            SystemClock.sleep(200L);
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState != null) {
                for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                    if (processErrorStateInfo.condition == 2) {
                        return processErrorStateInfo;
                    }
                }
            }
        }
        return null;
    }

    public static void hp(@NonNull Context context, @NonNull JSONObject jSONObject) {
        try {
            hp(jSONObject);
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null) {
                l(jSONObject, activityManager);
            }
            hp(jSONObject, activityManager);
        } catch (Throwable unused) {
        }
    }

    private static void hp(@NonNull JSONObject jSONObject, ActivityManager activityManager) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("native_heap_size", Debug.getNativeHeapSize());
        jSONObject2.put("native_heap_alloc_size", Debug.getNativeHeapAllocatedSize());
        jSONObject2.put("native_heap_free_size", Debug.getNativeHeapFreeSize());
        Runtime runtime = Runtime.getRuntime();
        jSONObject2.put("max_memory", runtime.maxMemory());
        jSONObject2.put("free_memory", runtime.freeMemory());
        jSONObject2.put("total_memory", runtime.totalMemory());
        if (activityManager != null) {
            jSONObject2.put("memory_class", activityManager.getMemoryClass());
            jSONObject2.put("large_memory_class", activityManager.getLargeMemoryClass());
        }
        jSONObject.put("app_memory_info", jSONObject2);
    }

    private static void hp(@NonNull JSONObject jSONObject) throws JSONException {
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("dalvikPrivateDirty", hp(memoryInfo.dalvikPrivateDirty));
        jSONObject2.put("dalvikPss", hp(memoryInfo.dalvikPss));
        jSONObject2.put("dalvikSharedDirty", hp(memoryInfo.dalvikSharedDirty));
        jSONObject2.put("nativePrivateDirty", hp(memoryInfo.nativePrivateDirty));
        jSONObject2.put("nativePss", hp(memoryInfo.nativePss));
        jSONObject2.put("nativeSharedDirty", hp(memoryInfo.nativeSharedDirty));
        jSONObject2.put("otherPrivateDirty", hp(memoryInfo.otherPrivateDirty));
        jSONObject2.put("otherPss", hp(memoryInfo.otherPss));
        jSONObject2.put("otherSharedDirty", memoryInfo.otherSharedDirty);
        jSONObject2.put("totalPrivateClean", l.hp(memoryInfo));
        jSONObject2.put("totalPrivateDirty", memoryInfo.getTotalPrivateDirty());
        jSONObject2.put("totalPss", hp(memoryInfo.getTotalPss()));
        jSONObject2.put("totalSharedClean", l.l(memoryInfo));
        jSONObject2.put("totalSharedDirty", hp(memoryInfo.getTotalSharedDirty()));
        jSONObject2.put("totalSwappablePss", hp(l.jx(memoryInfo)));
        jSONObject.put("memory_info", jSONObject2);
    }
}
