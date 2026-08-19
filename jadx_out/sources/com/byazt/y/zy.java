package com.byazt.y;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.byazt.b.u;
import com.byazt.fu.DownloadInfo;
import com.byazt.pu.TTDownloadField;
import com.byazt.yk.Downloader;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 302})
/* loaded from: classes3.dex */
public class zy {

    /* renamed from: l, reason: collision with root package name */
    public static Object[] f27865l = new Object[0];
    public static Object[] jx = new Object[73];
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: j, reason: collision with root package name */
    public static String f27864j = null;

    public static boolean a(Context context, String str) throws PackageManager.NameNotFoundException {
        PackageInfo packageArchiveInfo;
        PackageInfo packageInfo;
        if (context == null || str == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            File file = new File(str);
            if (!file.exists() || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 0)) == null) {
                return false;
            }
            String str2 = packageArchiveInfo.packageName;
            int i2 = packageArchiveInfo.versionCode;
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str2, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfo = null;
            }
            if (packageInfo == null) {
                return false;
            }
            return i2 <= packageInfo.versionCode;
        } catch (Exception unused2) {
            return false;
        }
    }

    public static File e(Context context, String str) {
        File parentFile = context.getExternalFilesDir(null).getParentFile();
        File file = new File((parentFile != null ? parentFile.getParent() : null) + File.separator + str);
        StringBuilder sb = new StringBuilder("getExtDir: file.toString()-->");
        sb.append(file.toString());
        com.byazt.nu.hp.l("ToolUtils", sb.toString());
        return file;
    }

    public static Intent eb(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(C.ENCODING_PCM_MU_LAW);
        return launchIntentForPackage;
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static Drawable j(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationInfo(str, 0).loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String jx(Context context, String str) throws PackageManager.NameNotFoundException {
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static boolean l(String str) {
        return !TextUtils.isEmpty(str) && new File(str).exists();
    }

    public static Signature[] q(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 64);
            if (packageArchiveInfo != null) {
                return packageArchiveInfo.signatures;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Signature[] s(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo != null) {
                return packageInfo.signatures;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean w(Context context, String str) {
        if (context == null) {
            context = com.byazt.t.jl.getContext();
        }
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                if (context.getPackageManager().getPackageInfo(str, 0) != null) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static long hp(JSONObject jSONObject, String str) {
        return com.byazt.pp.l.hp(jSONObject, str);
    }

    public static int l(Context context, String str) throws PackageManager.NameNotFoundException {
        if (context == null || TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public static JSONObject hp(JSONObject jSONObject, JSONObject jSONObject2) {
        return com.byazt.pp.l.hp(jSONObject, jSONObject2);
    }

    @NonNull
    public static JSONObject hp(JSONObject jSONObject) {
        return com.byazt.pp.l.hp(jSONObject);
    }

    @WorkerThread
    public static boolean jx(String str) throws PackageManager.NameNotFoundException {
        File file;
        Context context = com.byazt.t.jl.getContext();
        if (TextUtils.isEmpty(str) || !w(context, str)) {
            return false;
        }
        int i2 = context.getApplicationInfo().targetSdkVersion;
        if (com.byazt.t.jl.q().optInt("get_ext_dir_mode") == 0 && Build.VERSION.SDK_INT >= 29 && ((i2 == 29 && !Environment.isExternalStorageLegacy()) || i2 > 29)) {
            return true;
        }
        try {
            if (Build.VERSION.SDK_INT >= 29 && context.getApplicationInfo().targetSdkVersion >= 29 && com.byazt.t.jl.q().optInt("get_ext_dir_mode") == 1) {
                file = e(context, str);
            } else {
                file = new File(Environment.getExternalStorageDirectory().getPath(), "android/data/".concat(String.valueOf(str)));
            }
            if (!file.exists()) {
                return false;
            }
            long jHp = eb.hp(file);
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                if (packageInfo.lastUpdateTime < jHp) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    @NonNull
    public static JSONObject hp(JSONObject... jSONObjectArr) {
        return com.byazt.pp.l.hp(jSONObjectArr);
    }

    public static boolean hp(Context context, Intent intent) {
        try {
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            if (listQueryIntentActivities != null) {
                if (!listQueryIntentActivities.isEmpty()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean l(com.byazt.zv.l lVar) {
        if (lVar == null) {
            return false;
        }
        return hp(lVar.w(), lVar.pu(), lVar.ky()).hp();
    }

    public static boolean l(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context == null) {
            context = com.byazt.t.jl.getContext();
        }
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        return listQueryIntentActivities != null && listQueryIntentActivities.size() > 0;
    }

    public static String hp(long j2) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        if (j2 >= 1073741824) {
            return (j2 / 1073741824) + "G";
        }
        if (j2 >= 1048576) {
            return (j2 / 1048576) + "M";
        }
        return decimalFormat.format(j2 / 1048576.0f) + "M";
    }

    public static long l(long j2) {
        try {
            return hp(Environment.getExternalStorageDirectory(), j2);
        } catch (Exception unused) {
            return j2;
        }
    }

    public static boolean l() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @NonNull
    public static HashMap<String, String> l(JSONObject jSONObject) {
        HashMap<String, String> map = new HashMap<>();
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.optString(next));
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }

    public static PackageInfo hp(com.byazt.zv.l lVar) {
        DownloadInfo downloadInfo;
        if (lVar == null || (downloadInfo = Downloader.getInstance(com.byazt.t.jl.getContext()).getDownloadInfo(lVar.ec())) == null) {
            return null;
        }
        try {
            return com.byazt.ni.jx.hp(com.byazt.t.jl.getContext(), downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Drawable hp(Context context, String str) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (context != null && !TextUtils.isEmpty(str) && (packageArchiveInfo = (packageManager = context.getPackageManager()).getPackageArchiveInfo(str, 0)) != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            applicationInfo.sourceDir = str;
            applicationInfo.publicSourceDir = str;
            try {
                return applicationInfo.loadIcon(packageManager);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @SuppressLint({"MissingPermission"})
    public static void jx() {
        try {
            if (com.byazt.t.jl.w().hp(com.byazt.t.jl.getContext(), "android.permission.REORDER_TASKS")) {
                ActivityManager activityManager = (ActivityManager) com.byazt.t.jl.getContext().getSystemService(TTDownloadField.TT_ACTIVITY);
                for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager.getRunningTasks(20)) {
                    if (com.byazt.t.jl.getContext().getPackageName().equals(runningTaskInfo.topActivity.getPackageName())) {
                        activityManager.moveTaskToFront(runningTaskInfo.id, 1);
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static com.byazt.w.jx hp(String str, int i2, String str2) throws PackageManager.NameNotFoundException {
        com.byazt.w.jx jxVar = new com.byazt.w.jx();
        if (!TextUtils.isEmpty(str)) {
            try {
                PackageInfo packageInfo = com.byazt.t.jl.getContext().getPackageManager().getPackageInfo(str, 0);
                if (packageInfo != null) {
                    jxVar.l(packageInfo.versionCode);
                    jxVar.hp(com.byazt.w.jx.f26858l);
                    u uVarEb = com.byazt.t.jl.eb();
                    if (uVarEb != null && uVarEb.hp() && !hp(packageInfo.versionCode, i2, packageInfo.versionName, str2)) {
                        jxVar.hp(com.byazt.w.jx.jx);
                        return jxVar;
                    }
                }
            } catch (Exception e2) {
                com.byazt.nu.hp.w("ToolUtils", "getInstalledAppInfo:" + e2.getMessage());
                return jxVar;
            }
        }
        return jxVar;
    }

    private static boolean hp(int i2, int i3, String str, String str2) {
        if (i3 == 0 && TextUtils.isEmpty(str2)) {
            return true;
        }
        return (i3 > 0 && i2 >= i3) || hp(str, str2) >= 0;
    }

    public static boolean hp(DownloadModel downloadModel) {
        if (downloadModel == null) {
            return false;
        }
        return hp(downloadModel.getPackageName(), downloadModel.getVersionCode(), downloadModel.getVersionName()).hp();
    }

    public static boolean hp(Context context, String str, String str2) throws PackageManager.NameNotFoundException {
        PackageInfo packageArchiveInfo;
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        try {
            File file = new File(str);
            if (!file.exists() || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 0)) == null || !packageArchiveInfo.packageName.equals(str2)) {
                return false;
            }
            int i2 = packageArchiveInfo.versionCode;
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str2, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfo = null;
            }
            if (packageInfo == null) {
                return false;
            }
            return i2 == packageInfo.versionCode;
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean hp(Signature[] signatureArr, Signature[] signatureArr2) {
        if (signatureArr == signatureArr2) {
            return true;
        }
        if (signatureArr == null || signatureArr2 == null || signatureArr.length != signatureArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < signatureArr.length; i2++) {
            Signature signature = signatureArr[i2];
            if ((signature == null && signatureArr2[i2] != null) || (signature != null && !signature.equals(signatureArr2[i2]))) {
                return false;
            }
        }
        return true;
    }

    public static int hp(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String hp(String str, int i2) {
        if (i2 == 0) {
            return "";
        }
        return (TextUtils.isEmpty(str) || str.length() <= i2) ? str : str.substring(0, i2);
    }

    public static int hp(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (str.equals(str2)) {
                    return 0;
                }
                String[] strArrSplit = str.split("\\.");
                String[] strArrSplit2 = str2.split("\\.");
                int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
                int i2 = 0;
                int i3 = 0;
                while (i2 < iMin) {
                    i3 = Integer.parseInt(strArrSplit[i2]) - Integer.parseInt(strArrSplit2[i2]);
                    if (i3 != 0) {
                        break;
                    }
                    i2++;
                }
                if (i3 != 0) {
                    return i3 > 0 ? 1 : -1;
                }
                for (int i4 = i2; i4 < strArrSplit.length; i4++) {
                    if (Integer.parseInt(strArrSplit[i4]) > 0) {
                        return 1;
                    }
                }
                while (i2 < strArrSplit2.length) {
                    if (Integer.parseInt(strArrSplit2[i2]) > 0) {
                        return -1;
                    }
                    i2++;
                }
                return 0;
            }
        } catch (Exception unused) {
        }
        return -2;
    }

    public static String hp(String... strArr) {
        return com.byazt.pp.l.hp(strArr);
    }

    @NonNull
    public static <T> T hp(T... tArr) {
        if (tArr != null) {
            for (T t2 : tArr) {
                if (t2 != null) {
                    return t2;
                }
            }
            throw new IllegalArgumentException("args is null");
        }
        throw new IllegalArgumentException("args is null");
    }

    public static boolean hp() {
        try {
            if (com.byazt.t.jl.getContext().getPackageManager().getPackageInfo(com.byazt.t.jl.getContext().getPackageName(), 0).applicationInfo.targetSdkVersion >= 33) {
                return Build.VERSION.SDK_INT >= 33;
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static long hp(File file, long j2) {
        if (file != null) {
            try {
                return com.byazt.xq.a.j(file.getAbsolutePath());
            } catch (Exception unused) {
            }
        }
        return j2;
    }

    public static long hp(File file) {
        if (file == null) {
            return -1L;
        }
        try {
            return new StatFs(file.getAbsolutePath()).getTotalBytes();
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public static void hp(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.putOpt(str, obj);
        } catch (JSONException unused) {
        }
    }
}
