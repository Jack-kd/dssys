package com.czhj.volley.toolbox;

import android.os.Looper;
import com.czhj.volley.RequestQueue;
import com.czhj.volley.toolbox.FileDownloadRequest;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class FileDownloader {

    /* renamed from: a, reason: collision with root package name */
    final RequestQueue f29632a;

    /* renamed from: b, reason: collision with root package name */
    private final int f29633b;

    /* renamed from: c, reason: collision with root package name */
    private final LinkedList<DownloadController> f29634c;

    public class DownloadController {
        public static final int STATUS_DISCARD = 4;
        public static final int STATUS_DOWNLOADING = 1;
        public static final int STATUS_PAUSE = 2;
        public static final int STATUS_SUCCESS = 3;
        public static final int STATUS_WAITING = 0;

        /* renamed from: a, reason: collision with root package name */
        FileDownloadRequest.FileDownloadListener f29635a;

        /* renamed from: b, reason: collision with root package name */
        int f29636b;

        /* renamed from: d, reason: collision with root package name */
        private FileDownloadRequest f29638d;

        /* renamed from: e, reason: collision with root package name */
        private DownloadItem f29639e;

        public DownloadController(DownloadItem downloadItem, FileDownloadRequest.FileDownloadListener fileDownloadListener) {
            this.f29635a = fileDownloadListener;
            this.f29639e = downloadItem;
        }

        public boolean a() {
            if (this.f29636b != 0) {
                return false;
            }
            FileDownloadRequest fileDownloadRequestBuildRequest = FileDownloader.this.buildRequest(this.f29639e, new FileDownloadRequest.FileDownloadListener() { // from class: com.czhj.volley.toolbox.FileDownloader.DownloadController.1

                /* renamed from: a, reason: collision with root package name */
                boolean f29640a;

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void downloadProgress(DownloadItem downloadItem, long j2, long j3) {
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = DownloadController.this.f29635a;
                    if (fileDownloadListener != null) {
                        fileDownloadListener.downloadProgress(downloadItem, j2, j3);
                    }
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onCancel(DownloadItem downloadItem) {
                    this.f29640a = true;
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = DownloadController.this.f29635a;
                    if (fileDownloadListener != null) {
                        fileDownloadListener.onCancel(downloadItem);
                    }
                    DownloadController downloadController = DownloadController.this;
                    FileDownloader.this.a(downloadController);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onErrorResponse(DownloadItem downloadItem) {
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = DownloadController.this.f29635a;
                    if (fileDownloadListener != null && !this.f29640a) {
                        fileDownloadListener.onErrorResponse(downloadItem);
                    }
                    DownloadController downloadController = DownloadController.this;
                    FileDownloader.this.a(downloadController);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onSuccess(DownloadItem downloadItem) {
                    DownloadController downloadController = DownloadController.this;
                    downloadController.f29636b = 3;
                    FileDownloadRequest.FileDownloadListener fileDownloadListener = downloadController.f29635a;
                    if (fileDownloadListener != null && !this.f29640a) {
                        fileDownloadListener.onSuccess(downloadItem);
                    }
                    DownloadController downloadController2 = DownloadController.this;
                    FileDownloader.this.a(downloadController2);
                }
            });
            this.f29638d = fileDownloadRequestBuildRequest;
            this.f29636b = 1;
            RequestQueue requestQueue = FileDownloader.this.f29632a;
            if (requestQueue == null) {
                return false;
            }
            requestQueue.add(fileDownloadRequestBuildRequest);
            return true;
        }

        public boolean discard() {
            int i2 = this.f29636b;
            if (i2 == 0) {
                this.f29636b = 4;
                FileDownloader.this.a(this);
                FileDownloadRequest.FileDownloadListener fileDownloadListener = this.f29635a;
                if (fileDownloadListener != null) {
                    fileDownloadListener.onCancel(this.f29639e);
                }
                return true;
            }
            if (i2 == 4 || i2 == 3) {
                return false;
            }
            if (i2 == 1) {
                this.f29638d.cancel();
            }
            this.f29636b = 4;
            FileDownloader.this.a(this);
            return true;
        }

        public DownloadItem getDownloadItem() {
            return this.f29639e;
        }

        public FileDownloadRequest.FileDownloadListener getDownloadListener() {
            return this.f29635a;
        }

        public int getStatus() {
            return this.f29636b;
        }

        public String getStorePath() {
            return this.f29639e.filePath;
        }

        public String getUrl() {
            return this.f29639e.url;
        }

        public boolean isDownloading() {
            return this.f29636b == 1;
        }

        public boolean pause() {
            if (this.f29636b != 1) {
                return false;
            }
            this.f29636b = 2;
            this.f29638d.cancel();
            FileDownloader.this.a();
            return true;
        }

        public boolean resume() {
            if (this.f29636b != 2) {
                return false;
            }
            this.f29636b = 0;
            FileDownloader.this.a();
            return true;
        }

        public void setDownloadListener(FileDownloadRequest.FileDownloadListener fileDownloadListener) {
            this.f29635a = fileDownloadListener;
        }
    }

    public FileDownloader(RequestQueue requestQueue) {
        this(requestQueue, 0);
    }

    private void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("FileDownloader must be invoked from the main thread.");
        }
    }

    public void a() {
        synchronized (this.f29634c) {
            try {
                Iterator<DownloadController> it = this.f29634c.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    if (it.next().isDownloading()) {
                        i2++;
                    }
                }
                if (i2 < this.f29633b) {
                    Iterator<DownloadController> it2 = this.f29634c.iterator();
                    while (it2.hasNext() && (!it2.next().a() || (i2 = i2 + 1) != this.f29633b)) {
                    }
                }
            } finally {
            }
        }
    }

    public DownloadController add(DownloadItem downloadItem, FileDownloadRequest.FileDownloadListener fileDownloadListener) {
        DownloadController downloadController = get(downloadItem.filePath, downloadItem.url);
        if (downloadController != null) {
            return downloadController;
        }
        DownloadController downloadController2 = new DownloadController(downloadItem, fileDownloadListener);
        synchronized (this.f29634c) {
            this.f29634c.add(downloadController2);
        }
        a();
        return downloadController2;
    }

    public FileDownloadRequest buildRequest(DownloadItem downloadItem, FileDownloadRequest.FileDownloadListener fileDownloadListener) {
        return new FileDownloadRequest(downloadItem, fileDownloadListener);
    }

    public void clearAll() {
        synchronized (this.f29634c) {
            while (this.f29634c.size() > 0) {
                try {
                    this.f29634c.get(0).discard();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public DownloadController get(String str, String str2) {
        synchronized (this.f29634c) {
            try {
                Iterator<DownloadController> it = this.f29634c.iterator();
                while (it.hasNext()) {
                    DownloadController next = it.next();
                    if (next.getStorePath().equals(str) && next.getUrl().equals(str2)) {
                        return next;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public List<DownloadController> getAll() {
        LinkedList<DownloadController> linkedList;
        synchronized (this.f29634c) {
            linkedList = this.f29634c;
        }
        return linkedList;
    }

    public FileDownloader(RequestQueue requestQueue, int i2) {
        this.f29634c = new LinkedList<>();
        this.f29633b = i2;
        this.f29632a = requestQueue;
    }

    public void a(DownloadController downloadController) {
        synchronized (this.f29634c) {
            this.f29634c.remove(downloadController);
        }
        a();
    }
}
