package com.byazt.yk;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.o;
import com.byazt.fn.wv;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import java.io.File;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 90, 34})
/* loaded from: classes3.dex */
public class l {
    public String globalDefaultSavePath;
    public String globalDefaultSaveTempPath;

    public static DownloadTask with(Context context) {
        Downloader.getInstance(context);
        return new DownloadTask();
    }

    public void addMainThreadListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().l(i2, iDownloadListener, com.byazt.oy.a.MAIN, false);
    }

    public void addNotificationListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().l(i2, iDownloadListener, com.byazt.oy.a.NOTIFICATION, false);
    }

    public void addSubThreadListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().l(i2, iDownloadListener, com.byazt.oy.a.SUB, false);
    }

    public boolean canResume(int i2) {
        return j.hp().w(i2);
    }

    public void cancel(int i2) {
        cancel(i2, true);
    }

    public void clearDownloadData(int i2) {
        j.hp().j(i2, true);
    }

    public void destoryDownloader() {
        jx.hp();
    }

    public void forceDownloadIngoreRecommendSize(int i2) {
        j.hp().k(i2);
    }

    public List<DownloadInfo> getAllDownloadInfo() {
        return j.hp().w();
    }

    public long getCurBytes(int i2) {
        return j.hp().s(i2);
    }

    public IDownloadFileUriProvider getDownloadFileUriProvider(int i2) {
        return j.hp().vv(i2);
    }

    public int getDownloadId(String str, String str2) {
        return j.hp().hp(str, str2);
    }

    public DownloadInfo getDownloadInfo(int i2) {
        return j.hp().gu(i2);
    }

    public List<DownloadInfo> getDownloadInfoList(String str) {
        return j.hp().hp(str);
    }

    public o getDownloadNotificationEventListener(int i2) {
        return j.hp().jl(i2);
    }

    public List<DownloadInfo> getDownloadingDownloadInfosWithMimeType(String str) {
        return j.hp().w(str);
    }

    public List<DownloadInfo> getFailedDownloadInfosWithMimeType(String str) {
        return j.hp().l(str);
    }

    public File getGlobalSaveDir() {
        return getGlobalSaveDir(this.globalDefaultSavePath, true);
    }

    public File getGlobalSaveTempDir() {
        return getGlobalSaveDir(this.globalDefaultSaveTempPath, false);
    }

    public vv getReserveWifiStatusListener() {
        return jx.yr();
    }

    public int getStatus(int i2) {
        return j.hp().q(i2);
    }

    public List<DownloadInfo> getSuccessedDownloadInfosWithMimeType(String str) {
        return j.hp().jx(str);
    }

    public List<DownloadInfo> getUnCompletedDownloadInfosWithMimeType(String str) {
        return j.hp().j(str);
    }

    public boolean isDownloadCacheSyncSuccess() {
        return j.hp().a();
    }

    public boolean isDownloadServiceForeground(int i2) {
        return j.hp().jx(i2).l();
    }

    public boolean isDownloadSuccessAndFileNotExist(DownloadInfo downloadInfo) {
        return j.hp().hp(downloadInfo);
    }

    public boolean isDownloading(int i2) {
        boolean zE;
        if (!com.byazt.xq.hp.hp(4194304)) {
            return j.hp().e(i2);
        }
        synchronized (this) {
            zE = j.hp().e(i2);
        }
        return zE;
    }

    public boolean isHttpServiceInit() {
        return j.hp().j();
    }

    public void pause(int i2) {
        j.hp().j(i2);
    }

    public void pauseAll() {
        j.hp().jx();
    }

    public void registerDownloadCacheSyncListener(com.byazt.fn.gu guVar) {
        j.hp().hp(guVar);
    }

    public void registerDownloaderProcessConnectedListener(wv wvVar) {
        j.hp().hp(wvVar);
    }

    public void removeMainThreadListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().hp(i2, iDownloadListener, com.byazt.oy.a.MAIN, false);
    }

    public void removeNotificationListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().hp(i2, iDownloadListener, com.byazt.oy.a.NOTIFICATION, false);
    }

    public void removeSubThreadListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().hp(i2, iDownloadListener, com.byazt.oy.a.SUB, false);
    }

    @Deprecated
    public void removeTaskMainListener(int i2) {
        j.hp().hp(i2, null, com.byazt.oy.a.MAIN, true);
    }

    @Deprecated
    public void removeTaskNotificationListener(int i2) {
        j.hp().hp(i2, null, com.byazt.oy.a.NOTIFICATION, true);
    }

    @Deprecated
    public void removeTaskSubListener(int i2) {
        j.hp().hp(i2, null, com.byazt.oy.a.SUB, true);
    }

    public void restart(int i2) {
        j.hp().eb(i2);
    }

    public void restartAllFailedDownloadTasks(List<String> list) {
        j.hp().hp(list);
    }

    public void restartAllPauseReserveOnWifiDownloadTasks(List<String> list) {
        j.hp().l(list);
    }

    public void resume(int i2) {
        j.hp().a(i2);
    }

    public void setDefaultSavePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.globalDefaultSavePath = str;
    }

    public void setDefaultSaveTempPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.globalDefaultSaveTempPath = str;
    }

    public void setDownloadInMultiProcess() {
        if (!com.byazt.xq.hp.hp(4194304)) {
            jx.l();
        } else {
            synchronized (this) {
                jx.l();
            }
        }
    }

    public void setDownloadNotificationEventListener(int i2, o oVar) {
        j.hp().hp(i2, oVar);
    }

    public void setLogLevel(int i2) {
        j.hp().u(i2);
    }

    @Deprecated
    public void setMainThreadListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().l(i2, iDownloadListener, com.byazt.oy.a.MAIN, true);
    }

    @Deprecated
    public void setNotificationListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().l(i2, iDownloadListener, com.byazt.oy.a.NOTIFICATION, true);
    }

    public void setReserveWifiStatusListener(vv vvVar) {
        jx.hp(vvVar);
    }

    @Deprecated
    public void setSubThreadListener(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().l(i2, iDownloadListener, com.byazt.oy.a.SUB, true);
    }

    public void setThrottleNetSpeed(int i2, long j2) {
        j.hp().hp(i2, j2);
    }

    public void unRegisterDownloadCacheSyncListener(com.byazt.fn.gu guVar) {
        j.hp().l(guVar);
    }

    public void unRegisterDownloaderProcessConnectedListener(wv wvVar) {
        j.hp().l(wvVar);
    }

    private File getGlobalSaveDir(String str, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File file = new File(str);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                    return file;
                }
                if (file.isDirectory()) {
                    return file;
                }
                if (!z2) {
                    return null;
                }
                file.delete();
                file.mkdirs();
                return file;
            } catch (Throwable unused) {
                return file;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public void cancel(int i2, boolean z2) {
        j.hp().jx(i2, z2);
    }

    public void clearDownloadData(int i2, boolean z2) {
        j.hp().j(i2, z2);
    }

    public DownloadInfo getDownloadInfo(String str, String str2) {
        return j.hp().l(str, str2);
    }

    @Deprecated
    public void setMainThreadListener(int i2, IDownloadListener iDownloadListener, boolean z2) {
        if (iDownloadListener == null) {
            return;
        }
        j.hp().hp(i2, iDownloadListener, com.byazt.oy.a.MAIN, true, z2);
    }
}
