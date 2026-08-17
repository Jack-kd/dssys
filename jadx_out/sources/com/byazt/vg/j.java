package com.byazt.vg;

import android.content.pm.PackageInfo;
import com.byazt.kc.AbsServerManager;
import com.byazt.lc.eb;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

@com.byazt.kj.hp(hp = {0, 1, 1750, 38})
/* loaded from: classes3.dex */
public class j {
    public static w hp(File file) {
        ZipFile zipFile;
        hp hpVar;
        PackageInfo packageArchiveInfo;
        int iL;
        int i2;
        try {
            if (!file.exists()) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, file.getAbsolutePath() + " not exists!");
                eb.hp((ZipFile) null);
                return null;
            }
            ZipFile zipFile2 = new ZipFile(file);
            try {
                ZipEntry entry = zipFile2.getEntry("AndroidManifest.xml");
                if (entry == null) {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "没有找到AndroidManifest.xml entry");
                    eb.hp(zipFile2);
                    return null;
                }
                hpVar = new hp();
                try {
                    hpVar.hp(zipFile2.getInputStream(entry));
                    do {
                        iL = hpVar.l();
                        if (iL == 1) {
                            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "已达到END_DOCUMENT");
                            try {
                                hpVar.hp();
                            } catch (Throwable unused) {
                            }
                            eb.hp(zipFile2);
                            return null;
                        }
                    } while (iL != 2);
                    int iJx = hpVar.jx();
                    String strHp = null;
                    String strHp2 = null;
                    for (int i3 = 0; i3 != iJx; i3++) {
                        if ("versionCode".equals(hpVar.hp(i3))) {
                            strHp = hp(hpVar, i3);
                        } else if (AbsServerManager.PACKAGE_QUERY_BINDER.equals(hpVar.hp(i3))) {
                            strHp2 = hp(hpVar, i3);
                        }
                    }
                    try {
                        i2 = Integer.parseInt(strHp);
                    } catch (Throwable unused2) {
                        i2 = -1;
                    }
                    if (i2 == -1) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "versionCode获取失败:".concat(String.valueOf(strHp)));
                        try {
                            hpVar.hp();
                        } catch (Throwable unused3) {
                        }
                        eb.hp(zipFile2);
                        return null;
                    }
                    w wVar = new w(strHp2, i2);
                    try {
                        hpVar.hp();
                    } catch (Throwable unused4) {
                    }
                    eb.hp(zipFile2);
                    return wVar;
                } catch (Throwable th) {
                    zipFile = zipFile2;
                    th = th;
                    try {
                        packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(file.getPath(), 0);
                    } catch (Throwable unused5) {
                        packageArchiveInfo = null;
                    }
                    try {
                        if (packageArchiveInfo == null) {
                            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "packageArchiveInfo == null", th);
                            return null;
                        }
                        w wVar2 = new w(packageArchiveInfo.packageName, packageArchiveInfo.versionCode);
                        if (hpVar != null) {
                            try {
                                hpVar.hp();
                            } catch (Throwable unused6) {
                            }
                        }
                        eb.hp(zipFile);
                        return wVar2;
                    } finally {
                        if (hpVar != null) {
                            try {
                                hpVar.hp();
                            } catch (Throwable unused7) {
                            }
                        }
                        eb.hp(zipFile);
                    }
                }
            } catch (Throwable th2) {
                zipFile = zipFile2;
                th = th2;
                hpVar = null;
            }
        } catch (Throwable th3) {
            th = th3;
            zipFile = null;
            hpVar = null;
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
}
