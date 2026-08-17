package com.byazt.yk;

import android.content.Context;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.o;
import com.byazt.fn.wv;
import com.byazt.fu.DownloadInfo;
import java.io.File;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 90, 1572})
/* loaded from: classes3.dex */
public class Downloader extends l {
    public static volatile Downloader instance;

    static {
        jx.hp(new ns());
        instance = null;
    }

    private Downloader() {
    }

    public static Downloader getInstance(Context context) {
        if (instance == null) {
            synchronized (Downloader.class) {
                try {
                    if (instance == null) {
                        jx.hp(context);
                        instance = new Downloader();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static synchronized void init(DownloaderBuilder downloaderBuilder) {
        initOrCover(downloaderBuilder, false);
    }

    public static synchronized void initOrCover(DownloaderBuilder downloaderBuilder, boolean z2) {
        if (downloaderBuilder == null) {
            return;
        }
        if (instance == null) {
            instance = downloaderBuilder.build();
        } else if (!jx.rz()) {
            jx.hp(downloaderBuilder);
        } else {
            if (z2) {
                jx.l(downloaderBuilder);
            }
        }
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void addMainThreadListener(int i2, IDownloadListener iDownloadListener) {
        super.addMainThreadListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void addNotificationListener(int i2, IDownloadListener iDownloadListener) {
        super.addNotificationListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void addSubThreadListener(int i2, IDownloadListener iDownloadListener) {
        super.addSubThreadListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ boolean canResume(int i2) {
        return super.canResume(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void cancel(int i2) {
        super.cancel(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void clearDownloadData(int i2) {
        super.clearDownloadData(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void destoryDownloader() {
        super.destoryDownloader();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void forceDownloadIngoreRecommendSize(int i2) {
        super.forceDownloadIngoreRecommendSize(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ List getAllDownloadInfo() {
        return super.getAllDownloadInfo();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ long getCurBytes(int i2) {
        return super.getCurBytes(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ IDownloadFileUriProvider getDownloadFileUriProvider(int i2) {
        return super.getDownloadFileUriProvider(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ int getDownloadId(String str, String str2) {
        return super.getDownloadId(str, str2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ DownloadInfo getDownloadInfo(int i2) {
        return super.getDownloadInfo(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ List getDownloadInfoList(String str) {
        return super.getDownloadInfoList(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ o getDownloadNotificationEventListener(int i2) {
        return super.getDownloadNotificationEventListener(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ List getDownloadingDownloadInfosWithMimeType(String str) {
        return super.getDownloadingDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ List getFailedDownloadInfosWithMimeType(String str) {
        return super.getFailedDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ File getGlobalSaveDir() {
        return super.getGlobalSaveDir();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ File getGlobalSaveTempDir() {
        return super.getGlobalSaveTempDir();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ vv getReserveWifiStatusListener() {
        return super.getReserveWifiStatusListener();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ int getStatus(int i2) {
        return super.getStatus(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ List getSuccessedDownloadInfosWithMimeType(String str) {
        return super.getSuccessedDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ List getUnCompletedDownloadInfosWithMimeType(String str) {
        return super.getUnCompletedDownloadInfosWithMimeType(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ boolean isDownloadCacheSyncSuccess() {
        return super.isDownloadCacheSyncSuccess();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ boolean isDownloadServiceForeground(int i2) {
        return super.isDownloadServiceForeground(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ boolean isDownloadSuccessAndFileNotExist(DownloadInfo downloadInfo) {
        return super.isDownloadSuccessAndFileNotExist(downloadInfo);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ boolean isDownloading(int i2) {
        return super.isDownloading(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ boolean isHttpServiceInit() {
        return super.isHttpServiceInit();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void pause(int i2) {
        super.pause(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void pauseAll() {
        super.pauseAll();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void registerDownloadCacheSyncListener(com.byazt.fn.gu guVar) {
        super.registerDownloadCacheSyncListener(guVar);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void registerDownloaderProcessConnectedListener(wv wvVar) {
        super.registerDownloaderProcessConnectedListener(wvVar);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void removeMainThreadListener(int i2, IDownloadListener iDownloadListener) {
        super.removeMainThreadListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void removeNotificationListener(int i2, IDownloadListener iDownloadListener) {
        super.removeNotificationListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void removeSubThreadListener(int i2, IDownloadListener iDownloadListener) {
        super.removeSubThreadListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void removeTaskMainListener(int i2) {
        super.removeTaskMainListener(i2);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void removeTaskNotificationListener(int i2) {
        super.removeTaskNotificationListener(i2);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void removeTaskSubListener(int i2) {
        super.removeTaskSubListener(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void restart(int i2) {
        super.restart(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void restartAllFailedDownloadTasks(List list) {
        super.restartAllFailedDownloadTasks(list);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void restartAllPauseReserveOnWifiDownloadTasks(List list) {
        super.restartAllPauseReserveOnWifiDownloadTasks(list);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void resume(int i2) {
        super.resume(i2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setDefaultSavePath(String str) {
        super.setDefaultSavePath(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setDefaultSaveTempPath(String str) {
        super.setDefaultSaveTempPath(str);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setDownloadInMultiProcess() {
        super.setDownloadInMultiProcess();
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setDownloadNotificationEventListener(int i2, o oVar) {
        super.setDownloadNotificationEventListener(i2, oVar);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setLogLevel(int i2) {
        super.setLogLevel(i2);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void setMainThreadListener(int i2, IDownloadListener iDownloadListener) {
        super.setMainThreadListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void setNotificationListener(int i2, IDownloadListener iDownloadListener) {
        super.setNotificationListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setReserveWifiStatusListener(vv vvVar) {
        super.setReserveWifiStatusListener(vvVar);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void setSubThreadListener(int i2, IDownloadListener iDownloadListener) {
        super.setSubThreadListener(i2, iDownloadListener);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void setThrottleNetSpeed(int i2, long j2) {
        super.setThrottleNetSpeed(i2, j2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void unRegisterDownloadCacheSyncListener(com.byazt.fn.gu guVar) {
        super.unRegisterDownloadCacheSyncListener(guVar);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void unRegisterDownloaderProcessConnectedListener(wv wvVar) {
        super.unRegisterDownloaderProcessConnectedListener(wvVar);
    }

    public Downloader(DownloaderBuilder downloaderBuilder) {
        jx.hp(downloaderBuilder);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void cancel(int i2, boolean z2) {
        super.cancel(i2, z2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ void clearDownloadData(int i2, boolean z2) {
        super.clearDownloadData(i2, z2);
    }

    @Override // com.byazt.yk.l
    public /* bridge */ /* synthetic */ DownloadInfo getDownloadInfo(String str, String str2) {
        return super.getDownloadInfo(str, str2);
    }

    @Override // com.byazt.yk.l
    @Deprecated
    public /* bridge */ /* synthetic */ void setMainThreadListener(int i2, IDownloadListener iDownloadListener, boolean z2) {
        super.setMainThreadListener(i2, iDownloadListener, z2);
    }
}
