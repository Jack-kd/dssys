package com.byazt.yk;

import android.content.Context;
import com.byazt.fn.d;
import com.byazt.fn.nu;
import com.byazt.ip.IDownloadHttpService;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, 90, 1701})
/* loaded from: classes3.dex */
public class DownloaderBuilder {
    public eb chunkAdjustCalculator;
    public s chunkCntCalculator;
    public ExecutorService chunkDownloadExecutor;
    public final Context context;
    public ExecutorService cpuThreadExecutor;
    public ExecutorService dbThreadExecutor;
    public e downloadCache;
    public com.byazt.ip.a downloadDns;
    public boolean downloadInMultiProcess;
    public jl downloadLaunchHandler;
    public com.byazt.no.l downloadMonitorListener;
    public d downloadSetting;
    public com.byazt.ip.s headHttpService;
    public IDownloadHttpService httpService;
    public gu idGenerator;
    public ExecutorService ioThreadExecutor;
    public int maxDownloadPoolSize;
    public ExecutorService mixApkDownloadExecutor;
    public ExecutorService mixDefaultDownloadExecutor;
    public ExecutorService mixFrequentDownloadExecutor;
    public xs monitorConfig;
    public nu notificationClickCallback;
    public ExecutorService okHttpDispatcherExecutor;
    public n ttNetHandler;
    public int writeBufferSize;
    public List<com.byazt.fn.zy> downloadCompleteHandlers = new ArrayList();
    public boolean needAutoRefreshUnSuccessTask = true;
    public int downloadExpSwitch = 1056964607;

    public DownloaderBuilder(Context context) {
        this.context = context;
    }

    public DownloaderBuilder addDownloadCompleteHandler(com.byazt.fn.zy zyVar) {
        synchronized (this.downloadCompleteHandlers) {
            if (zyVar != null) {
                try {
                    if (!this.downloadCompleteHandlers.contains(zyVar)) {
                        this.downloadCompleteHandlers.add(zyVar);
                        return this;
                    }
                } finally {
                }
            }
            return this;
        }
    }

    public Downloader build() {
        return new Downloader(this);
    }

    public DownloaderBuilder chunkAdjustCalculator(eb ebVar) {
        this.chunkAdjustCalculator = ebVar;
        return this;
    }

    public DownloaderBuilder chunkCntCalculator(s sVar) {
        this.chunkCntCalculator = sVar;
        return this;
    }

    public DownloaderBuilder chunkThreadExecutor(ExecutorService executorService) {
        this.chunkDownloadExecutor = executorService;
        return this;
    }

    public DownloaderBuilder cpuThreadExecutor(ExecutorService executorService) {
        this.cpuThreadExecutor = executorService;
        return this;
    }

    public DownloaderBuilder dbThreadExecutor(ExecutorService executorService) {
        this.dbThreadExecutor = executorService;
        return this;
    }

    public DownloaderBuilder downloadCache(e eVar) {
        this.downloadCache = eVar;
        return this;
    }

    public DownloaderBuilder downloadDns(com.byazt.ip.a aVar) {
        this.downloadDns = aVar;
        return this;
    }

    public DownloaderBuilder downloadExpSwitch(int i2) {
        this.downloadExpSwitch = i2;
        return this;
    }

    public DownloaderBuilder downloadInMultiProcess(boolean z2) {
        this.downloadInMultiProcess = z2;
        return this;
    }

    public DownloaderBuilder downloadLaunchHandler(jl jlVar) {
        this.downloadLaunchHandler = jlVar;
        return this;
    }

    public DownloaderBuilder downloadMonitorListener(com.byazt.no.l lVar) {
        this.downloadMonitorListener = lVar;
        return this;
    }

    public DownloaderBuilder downloadSetting(d dVar) {
        this.downloadSetting = dVar;
        return this;
    }

    public ExecutorService getCPUThreadExecutor() {
        return this.cpuThreadExecutor;
    }

    public eb getChunkAdjustCalculator() {
        return this.chunkAdjustCalculator;
    }

    public s getChunkCntCalculator() {
        return this.chunkCntCalculator;
    }

    public ExecutorService getChunkThreadExecutor() {
        return this.chunkDownloadExecutor;
    }

    public Context getContext() {
        return this.context;
    }

    public ExecutorService getDBThreadExecutor() {
        return this.dbThreadExecutor;
    }

    public e getDownloadCache() {
        return this.downloadCache;
    }

    public List<com.byazt.fn.zy> getDownloadCompleteHandlers() {
        return this.downloadCompleteHandlers;
    }

    public com.byazt.ip.a getDownloadDns() {
        return this.downloadDns;
    }

    public int getDownloadExpSwitch() {
        return this.downloadExpSwitch;
    }

    public jl getDownloadLaunchHandler() {
        return this.downloadLaunchHandler;
    }

    public com.byazt.no.l getDownloadMonitorListener() {
        return this.downloadMonitorListener;
    }

    public d getDownloadSetting() {
        return this.downloadSetting;
    }

    public com.byazt.ip.s getHeadHttpService() {
        return this.headHttpService;
    }

    public IDownloadHttpService getHttpService() {
        return this.httpService;
    }

    public ExecutorService getIOThreadExecutor() {
        return this.ioThreadExecutor;
    }

    public gu getIdGenerator() {
        return this.idGenerator;
    }

    public int getMaxDownloadPoolSize() {
        return this.maxDownloadPoolSize;
    }

    public ExecutorService getMixApkDownloadExecutor() {
        return this.mixApkDownloadExecutor;
    }

    public ExecutorService getMixDefaultDownloadExecutor() {
        return this.mixDefaultDownloadExecutor;
    }

    public ExecutorService getMixFrequentDownloadExecutor() {
        return this.mixFrequentDownloadExecutor;
    }

    public xs getMonitorConfig() {
        return this.monitorConfig;
    }

    public nu getNotificationClickCallback() {
        return this.notificationClickCallback;
    }

    public ExecutorService getOkHttpDispatcherExecutor() {
        return this.okHttpDispatcherExecutor;
    }

    public n getTTNetHandler() {
        return this.ttNetHandler;
    }

    public int getWriteBufferSize() {
        return this.writeBufferSize;
    }

    public DownloaderBuilder headHttpService(com.byazt.ip.s sVar) {
        this.headHttpService = sVar;
        return this;
    }

    public DownloaderBuilder httpService(IDownloadHttpService iDownloadHttpService) {
        this.httpService = iDownloadHttpService;
        return this;
    }

    public DownloaderBuilder idGenerator(gu guVar) {
        this.idGenerator = guVar;
        return this;
    }

    public DownloaderBuilder ioThreadExecutor(ExecutorService executorService) {
        this.ioThreadExecutor = executorService;
        return this;
    }

    public boolean isDownloadInMultiProcess() {
        return this.downloadInMultiProcess;
    }

    public DownloaderBuilder maxDownloadPoolSize(int i2) {
        this.maxDownloadPoolSize = i2;
        return this;
    }

    public DownloaderBuilder mixApkDownloadExecutor(ExecutorService executorService) {
        this.mixApkDownloadExecutor = executorService;
        return this;
    }

    public DownloaderBuilder mixDefaultDownloadExecutor(ExecutorService executorService) {
        this.mixDefaultDownloadExecutor = executorService;
        return this;
    }

    public DownloaderBuilder mixFrequentDownloadExecutor(ExecutorService executorService) {
        this.mixFrequentDownloadExecutor = executorService;
        return this;
    }

    public DownloaderBuilder monitorConfig(xs xsVar) {
        this.monitorConfig = xsVar;
        return this;
    }

    public DownloaderBuilder needAutoRefreshUnSuccessTask(boolean z2) {
        this.needAutoRefreshUnSuccessTask = z2;
        return this;
    }

    public DownloaderBuilder notificationClickCallback(nu nuVar) {
        this.notificationClickCallback = nuVar;
        return this;
    }

    public DownloaderBuilder okHttpDispatcherExecutor(ExecutorService executorService) {
        this.okHttpDispatcherExecutor = executorService;
        return this;
    }

    public DownloaderBuilder ttNetHandler(n nVar) {
        this.ttNetHandler = nVar;
        return this;
    }

    public DownloaderBuilder writeBufferSize(int i2) {
        this.writeBufferSize = i2;
        return this;
    }

    public boolean needAutoRefreshUnSuccessTask() {
        return this.needAutoRefreshUnSuccessTask;
    }
}
