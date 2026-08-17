package com.byazt.wm;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 75, 34})
/* loaded from: classes3.dex */
public class l {
    public static void hp(DownloadInfo downloadInfo) {
        l(downloadInfo);
    }

    private static void l(final DownloadInfo downloadInfo) {
        final Context contextMp = com.byazt.yk.jx.mp();
        final int iHp = (((!downloadInfo.isAutoResumed() || downloadInfo.isShowNotificationForNetworkResumed()) && !com.byazt.ni.jx.l(downloadInfo.getExtra()) && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(AdBaseConstants.MIME_APK)) || com.byazt.jb.hp.hp(downloadInfo.getId()).hp("auto_install_when_resume", 0) == 1) ? com.byazt.ni.jx.hp(contextMp, downloadInfo.getId(), false) : 2;
        com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.wm.l.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.f.w wVarJx = com.byazt.ni.j.gu().jx();
                o downloadNotificationEventListener = Downloader.getInstance(contextMp).getDownloadNotificationEventListener(downloadInfo.getId());
                if (wVarJx == null && downloadNotificationEventListener == null) {
                    return;
                }
                File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                if (file.exists()) {
                    try {
                        PackageInfo packageInfoHp = com.byazt.ni.jx.hp(downloadInfo, file);
                        if (packageInfoHp != null) {
                            String packageName = (iHp == 1 || TextUtils.isEmpty(downloadInfo.getPackageName())) ? packageInfoHp.packageName : downloadInfo.getPackageName();
                            if (wVarJx != null) {
                                wVarJx.hp(downloadInfo.getId(), 1, packageName, -3, downloadInfo.getDownloadTime());
                            }
                            if (downloadNotificationEventListener != null) {
                                downloadNotificationEventListener.hp(1, downloadInfo, packageName, "");
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        });
    }
}
