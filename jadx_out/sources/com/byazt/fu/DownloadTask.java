package com.byazt.fu;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadInterceptor;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.b;
import com.byazt.fn.cx;
import com.byazt.fn.k;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fn.vv;
import com.byazt.fn.zy;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.oy.EnqueueType;
import com.byazt.oy.a;
import com.byazt.yk.eb;
import com.byazt.yk.ec;
import com.byazt.yk.s;
import com.byazt.yk.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 677, 1678})
/* loaded from: classes2.dex */
public class DownloadTask {
    public boolean autoSetHashCodeForSameTask;
    public eb chunkAdjustCalculator;
    public s chunkStrategy;
    public k depend;
    public vv diskSpaceHandler;
    public final List<zy> downloadCompleteHandlers;
    public DownloadInfo downloadInfo;
    public DownloadInfo.hp downloadInfoBuilder;
    public IDownloadFileUriProvider fileUriProvider;
    public cx forbiddenHandler;
    public int hashCodeForSameTask;
    public IDownloadInterceptor interceptor;
    public final SparseArray<IDownloadListener> mainThreadListeners;
    public b monitorDepend;
    public boolean needDelayForCacheSync;
    public nu notificationClickCallback;
    public o notificationEventListener;
    public final SparseArray<IDownloadListener> notificationListeners;
    public ec retryDelayTimeCalculator;
    public final SparseArray<a> singleListenerHashCodeMap;
    public final Map<a, IDownloadListener> singleListenerMap;
    public final SparseArray<IDownloadListener> subThreadListeners;

    public DownloadTask() {
        this.singleListenerMap = new ConcurrentHashMap();
        this.singleListenerHashCodeMap = new SparseArray<>();
        this.needDelayForCacheSync = false;
        this.downloadCompleteHandlers = new ArrayList();
        this.autoSetHashCodeForSameTask = true;
        this.downloadInfoBuilder = new DownloadInfo.hp();
        this.mainThreadListeners = new SparseArray<>();
        this.subThreadListeners = new SparseArray<>();
        this.notificationListeners = new SparseArray<>();
    }

    private void addAll(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null || sparseArray2 == null) {
            return;
        }
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = sparseArray.keyAt(i2);
            sparseArray2.put(iKeyAt, sparseArray.get(iKeyAt));
        }
    }

    private void copyListeners(SparseArray<IDownloadListener> sparseArray, SparseArray<IDownloadListener> sparseArray2) {
        sparseArray.clear();
        for (int i2 = 0; i2 < sparseArray2.size(); i2++) {
            int iKeyAt = sparseArray2.keyAt(i2);
            IDownloadListener iDownloadListener = sparseArray2.get(iKeyAt);
            if (iDownloadListener != null) {
                sparseArray.put(iKeyAt, iDownloadListener);
            }
        }
    }

    private void removeAll(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null || sparseArray2 == null) {
            return;
        }
        int size = sparseArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseArray.remove(sparseArray2.keyAt(i2));
        }
    }

    private void setChunkCalculator() {
        if (this.downloadInfo.getThrottleNetSpeed() > 0) {
            chunkStategy(new s() { // from class: com.byazt.fu.DownloadTask.2
                @Override // com.byazt.yk.s
                public int hp(long j2) {
                    return 1;
                }
            });
        }
    }

    public DownloadTask addDownloadCompleteHandler(zy zyVar) {
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

    public void addDownloadListener(int i2, IDownloadListener iDownloadListener, a aVar, boolean z2) {
        Map<a, IDownloadListener> map;
        if (iDownloadListener == null) {
            return;
        }
        if (z2 && (map = this.singleListenerMap) != null) {
            map.put(aVar, iDownloadListener);
            synchronized (this.singleListenerHashCodeMap) {
                this.singleListenerHashCodeMap.put(i2, aVar);
            }
        }
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null) {
            return;
        }
        synchronized (downloadListeners) {
            downloadListeners.put(i2, iDownloadListener);
        }
    }

    public void addListenerToDownloadingSameTask() {
        com.byazt.nu.hp.l("DownloadTask", "same task just tryDownloading, so add listener in last task instead of tryDownload");
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo != null && !downloadInfo.isAddListenerToSameTask()) {
            this.downloadInfo.setAddListenerToSameTask(true);
        }
        addListenerToDownloadingSameTask(a.MAIN);
        addListenerToDownloadingSameTask(a.SUB);
        com.byazt.no.hp.hp(this.monitorDepend, this.downloadInfo, new BaseException(1003, "has another same task, add Listener to old task"), 0);
    }

    public DownloadTask addListenerToSameTask(boolean z2) {
        this.downloadInfoBuilder.u(z2);
        return this;
    }

    public void asyncDownload(final u uVar) {
        com.byazt.ez.j.hp(new Runnable() { // from class: com.byazt.fu.DownloadTask.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask.this.download();
            }
        });
    }

    public synchronized int autoCalAndGetHashCodeForSameTask() {
        try {
            IDownloadListener singleDownloadListener = getSingleDownloadListener(a.MAIN);
            if (singleDownloadListener == null) {
                singleDownloadListener = getSingleDownloadListener(a.SUB);
            }
            if (singleDownloadListener != null) {
                this.hashCodeForSameTask = singleDownloadListener.hashCode();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.hashCodeForSameTask;
    }

    public DownloadTask autoResumed(boolean z2) {
        this.downloadInfoBuilder.a(z2);
        return this;
    }

    public DownloadTask autoSetHashCodeForSameTask(boolean z2) {
        this.autoSetHashCodeForSameTask = z2;
        return this;
    }

    public DownloadTask backUpUrlRetryCount(int i2) {
        this.downloadInfoBuilder.jx(i2);
        return this;
    }

    public DownloadTask backUpUrls(List<String> list) {
        this.downloadInfoBuilder.l(list);
        return this;
    }

    public boolean canShowNotification() {
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo != null) {
            return downloadInfo.canShowNotification();
        }
        return false;
    }

    public DownloadTask chunkAdjustCalculator(eb ebVar) {
        this.chunkAdjustCalculator = ebVar;
        return this;
    }

    public DownloadTask chunkStategy(s sVar) {
        this.chunkStrategy = sVar;
        return this;
    }

    public void copyInterfaceFromNewTask(DownloadTask downloadTask) {
        this.chunkAdjustCalculator = downloadTask.chunkAdjustCalculator;
        this.chunkStrategy = downloadTask.chunkStrategy;
        this.singleListenerMap.clear();
        this.singleListenerMap.putAll(downloadTask.singleListenerMap);
        synchronized (this.mainThreadListeners) {
            this.mainThreadListeners.clear();
            addAll(downloadTask.mainThreadListeners, this.mainThreadListeners);
        }
        synchronized (this.subThreadListeners) {
            this.subThreadListeners.clear();
            addAll(downloadTask.subThreadListeners, this.subThreadListeners);
        }
        synchronized (this.notificationListeners) {
            this.notificationListeners.clear();
            addAll(downloadTask.notificationListeners, this.notificationListeners);
        }
        this.notificationEventListener = downloadTask.notificationEventListener;
        this.interceptor = downloadTask.interceptor;
        this.depend = downloadTask.depend;
        this.monitorDepend = downloadTask.monitorDepend;
        this.forbiddenHandler = downloadTask.forbiddenHandler;
        this.diskSpaceHandler = downloadTask.diskSpaceHandler;
        this.retryDelayTimeCalculator = downloadTask.retryDelayTimeCalculator;
        this.notificationClickCallback = downloadTask.notificationClickCallback;
        this.fileUriProvider = downloadTask.fileUriProvider;
        synchronized (this.downloadCompleteHandlers) {
            this.downloadCompleteHandlers.clear();
            this.downloadCompleteHandlers.addAll(downloadTask.downloadCompleteHandlers);
        }
    }

    public void copyListenerFromPendingTask(DownloadTask downloadTask) {
        for (Map.Entry<a, IDownloadListener> entry : downloadTask.singleListenerMap.entrySet()) {
            if (entry != null && !this.singleListenerMap.containsKey(entry.getKey())) {
                this.singleListenerMap.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            if (downloadTask.mainThreadListeners.size() != 0) {
                synchronized (this.mainThreadListeners) {
                    removeAll(this.mainThreadListeners, downloadTask.mainThreadListeners);
                    addAll(downloadTask.mainThreadListeners, this.mainThreadListeners);
                }
            }
            if (downloadTask.subThreadListeners.size() != 0) {
                synchronized (this.subThreadListeners) {
                    removeAll(this.subThreadListeners, downloadTask.subThreadListeners);
                    addAll(downloadTask.subThreadListeners, this.subThreadListeners);
                }
            }
            if (downloadTask.notificationListeners.size() != 0) {
                synchronized (this.notificationListeners) {
                    removeAll(this.notificationListeners, downloadTask.notificationListeners);
                    addAll(downloadTask.notificationListeners, this.notificationListeners);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public DownloadTask deleteCacheIfCheckFailed(boolean z2) {
        this.downloadInfoBuilder.sz(z2);
        return this;
    }

    public DownloadTask depend(k kVar) {
        this.depend = kVar;
        return this;
    }

    public DownloadTask diskSpaceHandler(vv vvVar) {
        this.diskSpaceHandler = vvVar;
        return this;
    }

    public DownloadTask distinctDirectory(boolean z2) {
        this.downloadInfoBuilder.n(z2);
        return this;
    }

    public int download() {
        this.downloadInfo = this.downloadInfoBuilder.hp();
        DownloadInfo downloadInfoL = com.byazt.yk.jx.di().l(this.downloadInfo.getId());
        if (downloadInfoL == null) {
            this.downloadInfo.generateTaskId();
            com.byazt.no.hp.hp(this, (BaseException) null, 0);
        } else {
            this.downloadInfo.copyTaskIdFromCacheData(downloadInfoL);
        }
        setChunkCalculator();
        com.byazt.yk.j.hp().hp(this);
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo == null) {
            return 0;
        }
        return downloadInfo.getId();
    }

    public DownloadTask downloadSetting(JSONObject jSONObject) {
        this.downloadInfoBuilder.hp(jSONObject);
        return this;
    }

    public DownloadTask enqueueType(EnqueueType enqueueType) {
        this.downloadInfoBuilder.hp(enqueueType);
        return this;
    }

    public DownloadTask executorGroup(int i2) {
        this.downloadInfoBuilder.a(i2);
        return this;
    }

    public DownloadTask expectFileLength(long j2) {
        this.downloadInfoBuilder.hp(j2);
        return this;
    }

    public DownloadTask expiredRedownload(boolean z2) {
        this.downloadInfoBuilder.ec(z2);
        return this;
    }

    public DownloadTask extra(String str) {
        this.downloadInfoBuilder.eb(str);
        return this;
    }

    public DownloadTask extraHeaders(List<jx> list) {
        this.downloadInfoBuilder.hp(list);
        return this;
    }

    public DownloadTask extraMonitorStatus(int[] iArr) {
        this.downloadInfoBuilder.l(iArr);
        return this;
    }

    public DownloadTask fileUriProvider(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.fileUriProvider = iDownloadFileUriProvider;
        return this;
    }

    public DownloadTask forbiddenHandler(cx cxVar) {
        this.forbiddenHandler = cxVar;
        return this;
    }

    public DownloadTask force(boolean z2) {
        this.downloadInfoBuilder.l(z2);
        return this;
    }

    public eb getChunkAdjustCalculator() {
        return this.chunkAdjustCalculator;
    }

    public s getChunkStrategy() {
        return this.chunkStrategy;
    }

    public k getDepend() {
        return this.depend;
    }

    public vv getDiskSpaceHandler() {
        return this.diskSpaceHandler;
    }

    public zy getDownloadCompleteHandlerByIndex(int i2) {
        synchronized (this.downloadCompleteHandlers) {
            try {
                if (i2 >= this.downloadCompleteHandlers.size()) {
                    return null;
                }
                return this.downloadCompleteHandlers.get(i2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public List<zy> getDownloadCompleteHandlers() {
        return this.downloadCompleteHandlers;
    }

    public int getDownloadId() {
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo == null) {
            return 0;
        }
        return downloadInfo.getId();
    }

    public DownloadInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public IDownloadListener getDownloadListenerByIndex(a aVar, int i2) {
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null || i2 < 0) {
            return null;
        }
        synchronized (downloadListeners) {
            try {
                if (i2 >= downloadListeners.size()) {
                    return null;
                }
                return downloadListeners.get(downloadListeners.keyAt(i2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getDownloadListenerSize(a aVar) {
        int size;
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null) {
            return 0;
        }
        synchronized (downloadListeners) {
            size = downloadListeners.size();
        }
        return size;
    }

    public SparseArray<IDownloadListener> getDownloadListeners(a aVar) {
        if (aVar == a.MAIN) {
            return this.mainThreadListeners;
        }
        if (aVar == a.SUB) {
            return this.subThreadListeners;
        }
        if (aVar == a.NOTIFICATION) {
            return this.notificationListeners;
        }
        return null;
    }

    public IDownloadFileUriProvider getFileUriProvider() {
        return this.fileUriProvider;
    }

    public cx getForbiddenHandler() {
        return this.forbiddenHandler;
    }

    public int getHashCodeForSameTask() {
        return this.hashCodeForSameTask;
    }

    public IDownloadInterceptor getInterceptor() {
        return this.interceptor;
    }

    public b getMonitorDepend() {
        return this.monitorDepend;
    }

    public nu getNotificationClickCallback() {
        return this.notificationClickCallback;
    }

    public o getNotificationEventListener() {
        return this.notificationEventListener;
    }

    public ec getRetryDelayTimeCalculator() {
        return this.retryDelayTimeCalculator;
    }

    public IDownloadListener getSingleDownloadListener(a aVar) {
        return this.singleListenerMap.get(aVar);
    }

    public DownloadTask hashCodeForSameTask(int i2) {
        this.hashCodeForSameTask = i2;
        return this;
    }

    public DownloadTask headConnectionAvailable(boolean z2) {
        this.downloadInfoBuilder.zy(z2);
        return this;
    }

    public DownloadTask iconUrl(String str) {
        this.downloadInfoBuilder.zy(str);
        return this;
    }

    public DownloadTask ignoreDataVerify(boolean z2) {
        this.downloadInfoBuilder.k(z2);
        return this;
    }

    public DownloadTask interceptor(IDownloadInterceptor iDownloadInterceptor) {
        this.interceptor = iDownloadInterceptor;
        return this;
    }

    public boolean isAutoSetHashCodeForSameTask() {
        return this.autoSetHashCodeForSameTask;
    }

    public boolean isNeedDelayForCacheSync() {
        return this.needDelayForCacheSync;
    }

    public DownloadTask isOpenLimitSpeed(boolean z2) {
        this.downloadInfoBuilder.vv(z2);
        return this;
    }

    public DownloadTask mainThreadListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : mainThreadListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask mainThreadListenerWithHashCode(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return this;
        }
        synchronized (this.mainThreadListeners) {
            this.mainThreadListeners.put(i2, iDownloadListener);
        }
        Map<a, IDownloadListener> map = this.singleListenerMap;
        a aVar = a.MAIN;
        map.put(aVar, iDownloadListener);
        synchronized (this.singleListenerHashCodeMap) {
            this.singleListenerHashCodeMap.put(i2, aVar);
        }
        return this;
    }

    public DownloadTask maxBytes(int i2) {
        this.downloadInfoBuilder.hp(i2);
        return this;
    }

    public DownloadTask maxProgressCount(int i2) {
        this.downloadInfoBuilder.j(i2);
        return this;
    }

    public DownloadTask md5(String str) {
        this.downloadInfoBuilder.e(str);
        return this;
    }

    public DownloadTask mimeType(String str) {
        this.downloadInfoBuilder.s(str);
        return this;
    }

    public DownloadTask minProgressTimeMsInterval(int i2) {
        this.downloadInfoBuilder.w(i2);
        return this;
    }

    public DownloadTask monitorDepend(b bVar) {
        this.monitorDepend = bVar;
        return this;
    }

    public DownloadTask monitorScene(String str) {
        this.downloadInfoBuilder.jl(str);
        return this;
    }

    public DownloadTask name(String str) {
        this.downloadInfoBuilder.hp(str);
        return this;
    }

    public DownloadTask needChunkDowngradeRetry(boolean z2) {
        this.downloadInfoBuilder.v(z2);
        return this;
    }

    public DownloadTask needDefaultHttpServiceBackUp(boolean z2) {
        this.downloadInfoBuilder.s(z2);
        return this;
    }

    public DownloadTask needHttpsToHttpRetry(boolean z2) {
        this.downloadInfoBuilder.j(z2);
        return this;
    }

    public DownloadTask needIndependentProcess(boolean z2) {
        this.downloadInfoBuilder.jl(z2);
        return this;
    }

    public DownloadTask needPostProgress(boolean z2) {
        this.downloadInfoBuilder.jx(z2);
        return this;
    }

    public DownloadTask needRetryDelay(boolean z2) {
        this.downloadInfoBuilder.e(z2);
        return this;
    }

    public DownloadTask needReuseChunkRunnable(boolean z2) {
        this.downloadInfoBuilder.q(z2);
        return this;
    }

    public DownloadTask needReuseFirstConnection(boolean z2) {
        this.downloadInfoBuilder.gu(z2);
        return this;
    }

    public DownloadTask needSDKMonitor(boolean z2) {
        this.downloadInfoBuilder.xs(z2);
        return this;
    }

    @Deprecated
    public DownloadTask newSaveTempFileEnable(boolean z2) {
        return this;
    }

    public DownloadTask notificationClickCallback(nu nuVar) {
        this.notificationClickCallback = nuVar;
        return this;
    }

    public DownloadTask notificationEventListener(o oVar) {
        this.notificationEventListener = oVar;
        return this;
    }

    public DownloadTask notificationListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : notificationListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask notificationListenerWithHashCode(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return this;
        }
        synchronized (this.notificationListeners) {
            this.notificationListeners.put(i2, iDownloadListener);
        }
        Map<a, IDownloadListener> map = this.singleListenerMap;
        a aVar = a.NOTIFICATION;
        map.put(aVar, iDownloadListener);
        synchronized (this.singleListenerHashCodeMap) {
            this.singleListenerHashCodeMap.put(i2, aVar);
        }
        return this;
    }

    public DownloadTask onlyWifi(boolean z2) {
        this.downloadInfoBuilder.hp(z2);
        return this;
    }

    public DownloadTask outIp(String[] strArr) {
        this.downloadInfoBuilder.hp(strArr);
        return this;
    }

    public DownloadTask outSize(int[] iArr) {
        this.downloadInfoBuilder.hp(iArr);
        return this;
    }

    public DownloadTask packageName(String str) {
        this.downloadInfoBuilder.q(str);
        return this;
    }

    public void removeDownloadListener(int i2, IDownloadListener iDownloadListener, a aVar, boolean z2) {
        int iIndexOfValue;
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        if (downloadListeners == null) {
            if (z2 && this.singleListenerMap.containsKey(aVar)) {
                this.singleListenerMap.remove(aVar);
                return;
            }
            return;
        }
        synchronized (downloadListeners) {
            try {
                if (z2) {
                    if (this.singleListenerMap.containsKey(aVar)) {
                        iDownloadListener = this.singleListenerMap.get(aVar);
                        this.singleListenerMap.remove(aVar);
                    }
                    if (iDownloadListener != null && (iIndexOfValue = downloadListeners.indexOfValue(iDownloadListener)) >= 0 && iIndexOfValue < downloadListeners.size()) {
                        downloadListeners.removeAt(iIndexOfValue);
                    }
                } else {
                    downloadListeners.remove(i2);
                    synchronized (this.singleListenerHashCodeMap) {
                        try {
                            a aVar2 = this.singleListenerHashCodeMap.get(i2);
                            if (aVar2 != null && this.singleListenerMap.containsKey(aVar2)) {
                                this.singleListenerMap.remove(aVar2);
                                this.singleListenerHashCodeMap.remove(i2);
                            }
                        } finally {
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public DownloadTask retryCount(int i2) {
        this.downloadInfoBuilder.l(i2);
        return this;
    }

    public DownloadTask retryDelayTimeArray(String str) {
        this.downloadInfoBuilder.gu(str);
        return this;
    }

    public DownloadTask retryDelayTimeCalculator(ec ecVar) {
        this.retryDelayTimeCalculator = ecVar;
        return this;
    }

    public DownloadTask savePath(String str) {
        this.downloadInfoBuilder.w(str);
        return this;
    }

    public DownloadTask setAutoInstall(boolean z2) {
        this.downloadInfoBuilder.ns(z2);
        return this;
    }

    public DownloadTask setDownloadCompleteHandlers(List<zy> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<zy> it = list.iterator();
            while (it.hasNext()) {
                addDownloadCompleteHandler(it.next());
            }
        }
        return this;
    }

    public void setDownloadListeners(SparseArray<IDownloadListener> sparseArray, a aVar) {
        if (sparseArray == null) {
            return;
        }
        try {
            if (aVar == a.MAIN) {
                synchronized (this.mainThreadListeners) {
                    copyListeners(this.mainThreadListeners, sparseArray);
                }
            } else if (aVar == a.SUB) {
                synchronized (this.subThreadListeners) {
                    copyListeners(this.subThreadListeners, sparseArray);
                }
            } else if (aVar == a.NOTIFICATION) {
                synchronized (this.notificationListeners) {
                    copyListeners(this.notificationListeners, sparseArray);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void setNeedDelayForCacheSync(boolean z2) {
        this.needDelayForCacheSync = z2;
    }

    public void setNotificationEventListener(o oVar) {
        this.notificationEventListener = oVar;
    }

    public DownloadTask showNotification(boolean z2) {
        this.downloadInfoBuilder.w(z2);
        return this;
    }

    public DownloadTask showNotificationForAutoResumed(boolean z2) {
        this.downloadInfoBuilder.eb(z2);
        return this;
    }

    public DownloadTask subThreadListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : subThreadListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask subThreadListenerWithHashCode(int i2, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return this;
        }
        synchronized (this.subThreadListeners) {
            this.subThreadListeners.put(i2, iDownloadListener);
        }
        Map<a, IDownloadListener> map = this.singleListenerMap;
        a aVar = a.SUB;
        map.put(aVar, iDownloadListener);
        synchronized (this.singleListenerHashCodeMap) {
            this.singleListenerHashCodeMap.put(i2, aVar);
        }
        return this;
    }

    public DownloadTask taskKey(String str) {
        this.downloadInfoBuilder.j(str);
        return this;
    }

    public DownloadTask tempPath(String str) {
        this.downloadInfoBuilder.a(str);
        return this;
    }

    public DownloadTask throttleNetSpeed(long j2) {
        this.downloadInfoBuilder.l(j2);
        return this;
    }

    public DownloadTask title(String str) {
        this.downloadInfoBuilder.l(str);
        return this;
    }

    public DownloadTask ttnetProtectTimeout(long j2) {
        this.downloadInfoBuilder.jx(j2);
        return this;
    }

    public DownloadTask url(String str) {
        this.downloadInfoBuilder.jx(str);
        return this;
    }

    private void addListenerToDownloadingSameTask(a aVar) {
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(aVar);
        synchronized (downloadListeners) {
            for (int i2 = 0; i2 < downloadListeners.size(); i2++) {
                try {
                    IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i2));
                    if (iDownloadListener != null) {
                        com.byazt.yk.j.hp().l(getDownloadId(), iDownloadListener, aVar, false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public DownloadTask(DownloadInfo downloadInfo) {
        this();
        this.downloadInfo = downloadInfo;
    }
}
