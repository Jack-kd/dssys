package com.byazt.k;

import android.content.Context;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.y.zy;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.kuaishou.weapon.p0.bg;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 42, 30})
/* loaded from: classes2.dex */
public class jx {
    public static void hp() throws Throwable {
        List<DownloadInfo> listHp = com.byazt.ni.j.gu().hp(jl.getContext());
        if (listHp == null || listHp.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < listHp.size(); i2++) {
            DownloadInfo downloadInfo = listHp.get(i2);
            File file = new File(downloadInfo.getTempPath(), downloadInfo.getTempName());
            long jLastModified = file.lastModified();
            long jHp = com.byazt.jb.hp.hp(downloadInfo.getId()).hp("download_file_expire_hours", 0) * bg.f30873s;
            if (jHp <= 0) {
                jHp = 604800000;
            }
            if (file.isFile() && file.exists() && System.currentTimeMillis() - jLastModified >= jHp) {
                hp(file);
                Downloader.getInstance(jl.getContext()).clearDownloadData(downloadInfo.getId());
            }
        }
    }

    public static void l() throws Throwable {
        List successedDownloadInfosWithMimeType = Downloader.getInstance(jl.getContext()).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
        if (successedDownloadInfosWithMimeType == null || successedDownloadInfosWithMimeType.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < successedDownloadInfosWithMimeType.size(); i2++) {
            DownloadInfo downloadInfo = (DownloadInfo) successedDownloadInfosWithMimeType.get(i2);
            if (downloadInfo != null) {
                String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
                File file = new File(str);
                if (file.exists()) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - file.lastModified();
                    long jHp = com.byazt.jb.hp.hp(downloadInfo.getId()).hp("download_complete_file_expire_hours", 0) * bg.f30873s;
                    if (jHp <= 0) {
                        jHp = 604800000;
                    }
                    if (jCurrentTimeMillis >= jHp || zy.a(jl.getContext(), str)) {
                        hp(file);
                    }
                }
            }
        }
    }

    public static void hp(Context context) {
        File externalCacheDir;
        if (context == null || (externalCacheDir = context.getExternalCacheDir()) == null) {
            return;
        }
        try {
            hp(externalCacheDir.getPath());
        } catch (Exception unused) {
        }
    }

    public static void hp(File file) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (Exception unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write("1".getBytes());
            fileOutputStream.close();
        } catch (Exception unused2) {
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception unused3) {
                }
            }
            file.delete();
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (Exception unused4) {
                }
            }
            throw th;
        }
        file.delete();
    }

    private static void hp(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (String str2 : list) {
                if (str2 != null) {
                    String str3 = File.separator;
                    String str4 = str.endsWith(str3) ? str + str2 : str + str3 + str2;
                    File file2 = new File(str4);
                    if (file2.isFile()) {
                        file2.delete();
                    }
                    if (file2.isDirectory()) {
                        hp(str4);
                    }
                }
            }
            file.delete();
        }
    }
}
