package com.byazt.hu;

import android.app.Application;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.ik.a;
import com.byazt.ye.q;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.io.FileFilter;

@com.byazt.kj.hp(hp = {0, 1, 1745, 30})
/* loaded from: classes2.dex */
public class jx {
    public static File hp;
    public static File jx;

    /* renamed from: l, reason: collision with root package name */
    public static File f20954l;

    public static String a(String str, int i2) {
        return new File(hp(str, "version-".concat(String.valueOf(i2)), "apk")).getPath();
    }

    public static File[] e(String str, int i2) {
        String strHp = hp(str, "version-".concat(String.valueOf(i2)), "dex");
        if (TextUtils.isEmpty(strHp)) {
            return null;
        }
        return new File(strHp).listFiles(new FileFilter() { // from class: com.byazt.hu.jx.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file.isFile() && file.getName().endsWith(".dex");
            }
        });
    }

    public static String eb(String str, int i2) {
        return new File(hp(str, "version-".concat(String.valueOf(i2)), "apk", "temp")).getPath();
    }

    public static String gu(String str, int i2) {
        return new File(hp(str, "version-".concat(String.valueOf(i2)), "config"), "config.json").getPath();
    }

    public static String hp(File file) {
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getPath();
    }

    public static String j() {
        Application appApplication = Zeus.getAppApplication();
        try {
            if (!"mounted".equals(Environment.getExternalStorageState())) {
                return null;
            }
            File externalFilesDir = appApplication.getExternalFilesDir(".pangle" + q.f27891l);
            if (externalFilesDir != null) {
                return hp(externalFilesDir);
            }
            return null;
        } catch (Exception e2) {
            a.hp(e2);
            return null;
        }
    }

    public static String jx() {
        Application appApplication = Zeus.getAppApplication();
        if (jx == null) {
            jx = new File(appApplication.getFilesDir(), ".pangle" + q.hp);
        }
        return hp(jx);
    }

    public static String l() {
        Application appApplication = Zeus.getAppApplication();
        if (f20954l == null) {
            File downloadDir = GlobalParam.getInstance().getDownloadDir();
            if (downloadDir == null) {
                downloadDir = new File(appApplication.getFilesDir(), ".pangle" + q.f27891l);
            }
            f20954l = downloadDir;
        }
        return hp(f20954l);
    }

    public static boolean q(@NonNull String str, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(hp());
        String str2 = File.separator;
        sb.append(str2);
        sb.append(str);
        sb.append(str2);
        sb.append("version-");
        sb.append(i2);
        return new File(sb.toString()).exists();
    }

    public static String s(String str, int i2) {
        return com.byazt.lc.q.zy() ? hp(str, "version-".concat(String.valueOf(i2)), "apk", "temp", "oat", com.byazt.ld.l.hp()) : hp(str, "version-".concat(String.valueOf(i2)), "dalvik-cache");
    }

    private static void w() {
        if (hp == null) {
            File file = new File(Zeus.getAppApplication().getFilesDir(), MediationConstant.ADN_PANGLE + q.jx);
            hp = file;
            hp(file);
        }
    }

    private static String hp(String... strArr) {
        w();
        File file = hp;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    file = new File(file, str);
                }
            }
        }
        return hp(file);
    }

    public static String w(String str, int i2) {
        return new File(hp(str, "version-".concat(String.valueOf(i2)), "apk", "temp"), "base-1.apk").getPath();
    }

    public static String jx(String str, int i2) {
        if (com.byazt.lc.q.zy()) {
            return hp(str, "version-".concat(String.valueOf(i2)), "apk", "oat", com.byazt.ld.l.hp());
        }
        return hp(str, "version-".concat(String.valueOf(i2)), "dalvik-cache");
    }

    public static String j(String str, int i2) {
        return hp(str, "version-".concat(String.valueOf(i2)), "lib");
    }

    public static String l(String str, int i2) {
        return new File(hp(str, "version-".concat(String.valueOf(i2)), "apk"), "base-1.apk").getPath();
    }

    public static String hp() {
        w();
        return hp.getPath();
    }

    public static String hp(String str, int i2) {
        w();
        File file = hp;
        String[] strArr = {str, "version-".concat(String.valueOf(i2))};
        for (int i3 = 0; i3 < 2; i3++) {
            String str2 = strArr[i3];
            if (!TextUtils.isEmpty(str2)) {
                file = new File(file, str2);
            }
        }
        if (file != null) {
            return file.getPath();
        }
        return null;
    }

    public static String hp(String str) {
        return hp(str);
    }

    public static String hp(String str, int i2, String str2) {
        return new File(hp(str, "version-".concat(String.valueOf(i2)), "dex"), str2).getPath();
    }
}
