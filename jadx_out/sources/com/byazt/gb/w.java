package com.byazt.gb;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.kc.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 861, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static PackageInfo hp(@NonNull File file) {
        FileInputStream fileInputStream;
        ZipInputStream zipInputStream;
        ZipEntry nextEntry;
        int iL;
        long j2;
        hp hpVar = null;
        String strHp = null;
        hpVar = null;
        hpVar = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                ZipInputStream zipInputStream2 = new ZipInputStream(fileInputStream);
                while (true) {
                    nextEntry = zipInputStream2.getNextEntry();
                    if (nextEntry == null) {
                        zipInputStream = null;
                        break;
                    }
                    if (!nextEntry.isDirectory()) {
                        if ("AndroidManifest.xml".equals(nextEntry.getName())) {
                            zipInputStream = zipInputStream2;
                            break;
                        }
                        zipInputStream2.closeEntry();
                    } else {
                        try {
                            zipInputStream2.closeEntry();
                        } catch (Throwable unused) {
                        }
                    }
                }
                if (nextEntry != null) {
                    try {
                        if ("AndroidManifest.xml".equals(nextEntry.getName())) {
                            hp hpVar2 = new hp();
                            try {
                                hpVar2.hp(zipInputStream);
                                do {
                                    iL = hpVar2.l();
                                    if (iL == 1) {
                                        throw new jx("已达到END_DOCUMENT");
                                    }
                                } while (iL != 2);
                                int iW = hpVar2.w();
                                String strHp2 = null;
                                String strHp3 = null;
                                for (int i2 = 0; i2 != iW; i2++) {
                                    if ("versionName".equals(hpVar2.hp(i2))) {
                                        strHp3 = hp(hpVar2, i2);
                                    } else if ("versionCode".equals(hpVar2.hp(i2))) {
                                        strHp = hp(hpVar2, i2);
                                    } else if (AbsServerManager.PACKAGE_QUERY_BINDER.equals(hpVar2.hp(i2))) {
                                        strHp2 = hp(hpVar2, i2);
                                    }
                                }
                                try {
                                    j2 = Long.parseLong(strHp);
                                } catch (jx unused2) {
                                    j2 = -1;
                                }
                                if (j2 == -1) {
                                    throw new jx("versionCode获取失败: ".concat(String.valueOf(strHp)));
                                }
                                PackageInfo packageInfo = new PackageInfo();
                                packageInfo.versionName = strHp3;
                                packageInfo.versionCode = (int) j2;
                                packageInfo.packageName = strHp2;
                                try {
                                    zipInputStream2.closeEntry();
                                } catch (Throwable unused3) {
                                }
                                try {
                                    hpVar2.hp();
                                } catch (Throwable unused4) {
                                }
                                if (zipInputStream != null) {
                                    try {
                                        zipInputStream.close();
                                    } catch (Throwable unused5) {
                                    }
                                }
                                try {
                                    fileInputStream.close();
                                } catch (Throwable unused6) {
                                }
                                return packageInfo;
                            } catch (Throwable th) {
                                th = th;
                                hpVar = hpVar2;
                                try {
                                    throw new jx("throwable: " + th.getMessage() + th.toString());
                                } finally {
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                throw new jx("没有找到AndroidManifest.xml entry");
            } catch (Throwable th3) {
                th = th3;
                zipInputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
            zipInputStream = null;
        }
    }

    private static PackageInfo l(@NonNull Context context, @NonNull File file, int i2) throws JSONException {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            hp("unzip_getpackagearchiveinfo", "packageManager == null");
            return null;
        }
        try {
            return packageManager.getPackageArchiveInfo(file.getPath(), i2);
        } catch (Throwable th) {
            hp("unzip_getpackagearchiveinfo", "pm.getPackageArchiveInfo failed: " + th.getMessage());
            return null;
        }
    }

    public static PackageInfo hp(@NonNull Context context, @NonNull File file, int i2) {
        if (com.byazt.xq.hp.hp(C.ENCODING_PCM_MU_LAW) && Build.VERSION.SDK_INT < 26) {
            try {
                return hp(file);
            } catch (Throwable th) {
                hp("getPackageInfo::unzip_getpackagearchiveinfo", th.getMessage());
            }
        }
        return l(context, file, i2);
    }

    private static void hp(@NonNull String str, @NonNull String str2) throws JSONException {
        if (com.byazt.yk.jx.eb() == null) {
            return;
        }
        try {
            new JSONObject().put("message", str2);
        } catch (JSONException unused) {
        }
    }

    private static String hp(int i2) {
        if ((i2 >>> 24) == 1) {
            return "android:";
        }
        return "";
    }

    private static String hp(hp hpVar, int i2) {
        int iL = hpVar.l(i2);
        int iJx = hpVar.jx(i2);
        if (iL == 3) {
            return hpVar.j(i2);
        }
        if (iL == 2) {
            return String.format("?%s%08X", hp(iJx), Integer.valueOf(iJx));
        }
        if (iL >= 16 && iL <= 31) {
            return String.valueOf(iJx);
        }
        return String.format("<0x%X, type 0x%02X>", Integer.valueOf(iJx), Integer.valueOf(iL));
    }

    public static String hp(Context context, PackageInfo packageInfo, String str) throws JSONException {
        ApplicationInfo applicationInfo;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        try {
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (OutOfMemoryError e2) {
            hp("getPackageInfo::fail_load_label", e2.getMessage());
            return null;
        }
    }
}
