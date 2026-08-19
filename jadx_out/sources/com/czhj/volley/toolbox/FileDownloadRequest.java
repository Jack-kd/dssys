package com.czhj.volley.toolbox;

import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.Request;
import com.czhj.volley.VolleyError;
import com.czhj.volley.VolleyLog;
import com.sigmob.sdk.downloader.core.c;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes3.dex */
public class FileDownloadRequest extends Request<DownloadItem> {

    /* renamed from: a, reason: collision with root package name */
    private File f29626a;

    /* renamed from: b, reason: collision with root package name */
    private File f29627b;

    /* renamed from: c, reason: collision with root package name */
    private DownloadItem f29628c;

    /* renamed from: d, reason: collision with root package name */
    private long f29629d;

    /* renamed from: e, reason: collision with root package name */
    private final Object f29630e;

    /* renamed from: f, reason: collision with root package name */
    private FileDownloadListener f29631f;

    public interface FileDownloadListener {
        void downloadProgress(DownloadItem downloadItem, long j2, long j3);

        void onCancel(DownloadItem downloadItem);

        void onErrorResponse(DownloadItem downloadItem);

        void onSuccess(DownloadItem downloadItem);
    }

    public FileDownloadRequest(DownloadItem downloadItem, FileDownloadListener fileDownloadListener) {
        super(0, downloadItem.url, null);
        this.f29629d = 0L;
        this.f29630e = new Object();
        this.f29631f = null;
        File file = new File(downloadItem.filePath);
        this.f29626a = file;
        if (file.getParentFile() != null && !this.f29626a.getParentFile().exists()) {
            this.f29626a.getParentFile().mkdirs();
        }
        if (this.f29626a.exists()) {
            this.f29626a.delete();
        }
        this.f29628c = downloadItem;
        File file2 = new File(downloadItem.filePath + ".tmp");
        this.f29627b = file2;
        if (!downloadItem.userRange) {
            file2.delete();
        }
        this.f29631f = fileDownloadListener;
        setRetryPolicy(new DefaultRetryPolicy(10000, 2, 0.0f));
        setShouldCache(false);
        VolleyLog.d("FileDownloadRequest()  [ %s ], url = [%s]", downloadItem.filePath, downloadItem.url);
    }

    @Override // com.czhj.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f29630e) {
            this.f29631f = null;
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError volleyError) {
        this.f29628c.status = 0;
        if (this.f29626a.exists()) {
            this.f29626a.delete();
        }
        if (this.f29627b.exists()) {
            this.f29627b.delete();
        }
        DownloadItem downloadItem = this.f29628c;
        downloadItem.error = volleyError;
        this.f29631f.onErrorResponse(downloadItem);
    }

    @Override // com.czhj.volley.Request
    public void deliverResponse(DownloadItem downloadItem) {
        this.f29628c.status = 1;
        this.f29631f.onSuccess(downloadItem);
    }

    @Override // com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        HashMap map = new HashMap();
        this.f29629d = this.f29627b.length();
        map.put("Connection", "Keep-Alive");
        map.put("Accept-Encoding", "gzip");
        map.put(c.f37363b, BytesRange.PREFIX + this.f29629d + "-");
        addMarker("Range,bytes=" + this.f29629d + "-");
        return map;
    }

    @Override // com.czhj.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:0|2|(16:7|(1:28)(1:(1:(2:19|(2:21|(2:24|25))))(2:16|17))|26|29|77|30|71|(1:32)(1:35)|36|(3:37|38|(1:83)(2:40|(2:84|42)(3:44|(5:46|73|47|48|86)(2:52|85)|53)))|43|54|81|55|58|59)(1:6)|27|29|77|30|71|(0)(0)|36|(4:37|38|(0)(0)|53)|43|54|81|55|58|59|(1:(1:80))) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01bf, code lost:
    
        com.czhj.volley.VolleyLog.v("Error occured when calling consumingContent", new java.lang.Object[0]);
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fd A[Catch: all -> 0x0102, TRY_ENTER, TryCatch #0 {all -> 0x0102, blocks: (B:32:0x00fd, B:36:0x0108, B:37:0x0110, B:40:0x011c, B:42:0x0122, B:44:0x013f, B:53:0x0175, B:51:0x0156, B:54:0x019a, B:35:0x0105, B:47:0x014b), top: B:71:0x00fb, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0105 A[Catch: all -> 0x0102, TryCatch #0 {all -> 0x0102, blocks: (B:32:0x00fd, B:36:0x0108, B:37:0x0110, B:40:0x011c, B:42:0x0122, B:44:0x013f, B:53:0x0175, B:51:0x0156, B:54:0x019a, B:35:0x0105, B:47:0x014b), top: B:71:0x00fb, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011c A[Catch: all -> 0x0102, TRY_ENTER, TryCatch #0 {all -> 0x0102, blocks: (B:32:0x00fd, B:36:0x0108, B:37:0x0110, B:40:0x011c, B:42:0x0122, B:44:0x013f, B:53:0x0175, B:51:0x0156, B:54:0x019a, B:35:0x0105, B:47:0x014b), top: B:71:0x00fb, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x013c A[EDGE_INSN: B:83:0x013c->B:43:0x013c BREAK  A[LOOP:0: B:37:0x0110->B:53:0x0175], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] handleRawResponse(com.czhj.volley.toolbox.HttpResponse r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.volley.toolbox.FileDownloadRequest.handleRawResponse(com.czhj.volley.toolbox.HttpResponse):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fd  */
    @Override // com.czhj.volley.Request
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.czhj.volley.Response<com.czhj.volley.toolbox.DownloadItem> parseNetworkResponse(com.czhj.volley.NetworkResponse r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.volley.toolbox.FileDownloadRequest.parseNetworkResponse(com.czhj.volley.NetworkResponse):com.czhj.volley.Response");
    }

    public void setListener(FileDownloadListener fileDownloadListener) {
        this.f29631f = fileDownloadListener;
    }
}
