package com.byazt.kw;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 756, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes.dex */
public class v {
    public static JSONObject hp(Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("inner_app_used", l(context));
            jSONObject.put("inner_free", l());
            jSONObject.put("inner_total", jx());
            jSONObject.put("sdcard_app_used", jx(context));
            jSONObject.put("sdcard_free", j());
            jSONObject.put("sdcard_total", w());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static long j() {
        try {
            if (hp()) {
                return Environment.getExternalStorageDirectory().getFreeSpace();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private static long jx() {
        try {
            return hp(Environment.getRootDirectory());
        } catch (Exception unused) {
            return 0L;
        }
    }

    private static long l(Context context) {
        try {
            return jx(com.byazt.rz.l.hp(context).getParentFile());
        } catch (Exception unused) {
            return 0L;
        }
    }

    private static long w() {
        try {
            if (hp()) {
                return Environment.getExternalStorageDirectory().getTotalSpace();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private static long jx(Context context) {
        File fileHp;
        try {
            if (!hp() || (fileHp = com.byazt.rz.l.hp(context, null)) == null) {
                return 0L;
            }
            return jx(fileHp.getParentFile());
        } catch (Exception unused) {
            return 0L;
        }
    }

    private static long l() {
        try {
            return l(Environment.getRootDirectory());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long l(File file) {
        try {
            return new StatFs(file.getPath()).getFreeBytes();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long jx(File file) {
        long length;
        File[] fileArrListFiles = file.listFiles();
        long j2 = 0;
        if (fileArrListFiles == null) {
            return 0L;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                length = jx(file2);
            } else {
                length = file2.length();
            }
            j2 += length;
        }
        return j2;
    }

    public static boolean hp() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static long hp(File file) {
        try {
            return new StatFs(file.getPath()).getTotalBytes();
        } catch (Throwable unused) {
            return 0L;
        }
    }
}
