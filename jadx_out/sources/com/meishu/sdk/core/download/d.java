package com.meishu.sdk.core.download;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.m1;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public class d extends l {

    /* renamed from: g, reason: collision with root package name */
    public static final Handler f31552g = new Handler(Looper.getMainLooper());

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.download.b f31553a;

    /* renamed from: b, reason: collision with root package name */
    public String f31554b;

    /* renamed from: c, reason: collision with root package name */
    public ThreadPoolExecutor f31555c;

    /* renamed from: d, reason: collision with root package name */
    public final OkHttpClient f31556d = new OkHttpClient.Builder().build();

    /* renamed from: e, reason: collision with root package name */
    public Map<Object, h> f31557e;

    /* renamed from: f, reason: collision with root package name */
    public transient long f31558f;

    public class a extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.core.download.b f31559a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ File f31560b;

        public a(com.meishu.sdk.core.download.b bVar, File file) {
            this.f31559a = bVar;
            this.f31560b = file;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            for (h hVar : d.this.f31557e.values()) {
                hVar.a(this.f31559a);
                hVar.a(this.f31560b, this.f31559a);
            }
        }
    }

    public class b extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.core.download.b f31562a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f31563b;

        public b(com.meishu.sdk.core.download.b bVar, String str) {
            this.f31562a = bVar;
            this.f31563b = str;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            for (h hVar : d.this.f31557e.values()) {
                hVar.a(this.f31562a);
                hVar.a(this.f31562a, this.f31563b);
            }
        }
    }

    public d(String str, String str2, String str3, String str4) {
        this.f31554b = str;
        com.meishu.sdk.core.download.b bVar = new com.meishu.sdk.core.download.b();
        this.f31553a = bVar;
        bVar.f31542a = str;
        this.f31553a.getClass();
        this.f31553a.f31543b = com.meishu.sdk.core.download.a.b().a();
        if (!TextUtils.isEmpty(str)) {
            this.f31553a.f31545d = str.substring(str.lastIndexOf(ServiceReference.DELIMITER)).replace(ServiceReference.DELIMITER, "");
            this.f31553a.f31544c = this.f31553a.f31543b + ServiceReference.DELIMITER + System.currentTimeMillis() + ".apk";
        }
        com.meishu.sdk.core.download.b bVar2 = this.f31553a;
        bVar2.f31548g = 0;
        bVar2.f31546e = -1L;
        this.f31555c = com.meishu.sdk.core.download.a.b().c().a();
        this.f31557e = new HashMap();
    }

    public void a() {
        com.meishu.sdk.core.download.b bVar = this.f31553a;
        int i2 = bVar.f31548g;
        if (i2 == 0 || i2 == 3 || i2 == 4) {
            bVar.f31548g = 0;
            f31552g.post(new e(this, bVar));
            this.f31555c.execute(this);
        } else if (i2 == 5) {
            if (bVar.f31544c == null) {
                a(bVar, "filePath is null");
                return;
            }
            com.meishu.sdk.core.download.b bVar2 = this.f31553a;
            File file = new File(bVar2.f31543b, bVar2.f31545d);
            if (file.exists()) {
                long length = file.length();
                com.meishu.sdk.core.download.b bVar3 = this.f31553a;
                if (length == bVar3.f31546e) {
                    a(bVar3, file);
                    return;
                }
            }
            a(this.f31553a, "filepath may be invalid or damaged");
        }
    }

    @Override // com.meishu.sdk.core.safe.l
    public void notifyRunnableCatch(Throwable th) {
        a(this.f31553a, "download runnable error");
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() throws IOException {
        com.meishu.sdk.core.download.b bVar = this.f31553a;
        long j2 = bVar.f31547f;
        if (j2 < 0) {
            a(bVar, "startPosition<0");
            return;
        }
        if (TextUtils.isEmpty(bVar.f31545d)) {
            return;
        }
        try {
            Response responseExecute = this.f31556d.newCall(new Request.Builder().addHeader(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-").url(this.f31553a.f31542a).get().build()).execute();
            int iCode = responseExecute.code();
            if (iCode == 404 || iCode >= 500) {
                a(this.f31553a, "network error! http response code is 404 or 5xx!");
                return;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                a(this.f31553a, "response body is null");
                return;
            }
            com.meishu.sdk.core.download.b bVar2 = this.f31553a;
            if (bVar2.f31546e == -1) {
                bVar2.f31546e = responseBodyBody.contentLength();
            }
            File file = new File(this.f31553a.f31543b);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = !TextUtils.isEmpty(this.f31553a.f31544c) ? new File(this.f31553a.f31544c) : new File(file, this.f31553a.f31545d);
            com.meishu.sdk.core.download.b bVar3 = this.f31553a;
            long j3 = bVar3.f31546e;
            if (j2 > j3) {
                a(bVar3, "file has expired");
                return;
            }
            if (j2 == j3 && j2 > 0) {
                if (!file2.exists() || j2 != file2.length()) {
                    a(this.f31553a, "file has expired");
                    return;
                }
                a(this.f31553a, file2);
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                randomAccessFile.seek(j2);
                this.f31553a.f31547f = j2;
                try {
                    a(responseBodyBody.byteStream(), randomAccessFile, this.f31553a);
                    com.meishu.sdk.core.download.b bVar4 = this.f31553a;
                    int i2 = bVar4.f31548g;
                    if (i2 == 3) {
                        bVar4.f31548g = 3;
                        f31552g.post(new f(this, bVar4));
                    } else {
                        if (i2 != 2) {
                            a(bVar4, "file has expired");
                            return;
                        }
                        long length = file2.length();
                        com.meishu.sdk.core.download.b bVar5 = this.f31553a;
                        if (length == bVar5.f31546e) {
                            a(bVar5, file2);
                        } else {
                            a(bVar5, "file has expired");
                        }
                    }
                } catch (Exception e2) {
                    a(this.f31553a, e2.toString());
                }
            } catch (Exception e3) {
                a(this.f31553a, e3.toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
            a(this.f31553a, th.toString());
        }
    }

    public final void a(com.meishu.sdk.core.download.b bVar, File file) {
        File file2;
        if (file.exists()) {
            String str = bVar.f31545d;
            try {
                str = m1.a(MessageDigest.getInstance("MD5").digest(bVar.f31542a.getBytes())).toLowerCase() + ".apk";
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            file2 = new File(bVar.f31543b, str);
            file.renameTo(file2);
        } else {
            file2 = null;
        }
        bVar.f31548g = 5;
        f31552g.post(new a(bVar, file2));
    }

    public final void a(com.meishu.sdk.core.download.b bVar, String str) {
        Log.e("DownloadTask", "postOnError: " + str);
        bVar.f31548g = 4;
        f31552g.post(new b(bVar, str));
    }

    public final void a(InputStream inputStream, RandomAccessFile randomAccessFile, com.meishu.sdk.core.download.b bVar) throws IOException {
        try {
            if (inputStream != null) {
                try {
                    bVar.f31548g = 2;
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1 || bVar.f31548g != 2) {
                            break;
                        }
                        randomAccessFile.write(bArr, 0, i2);
                        long j2 = i2;
                        bVar.f31547f += j2;
                        bVar.f31549h += j2;
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        if (jElapsedRealtime - this.f31558f >= 300) {
                            this.f31558f = jElapsedRealtime;
                            f31552g.post(new c(this, bVar));
                        }
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                        randomAccessFile.close();
                    } catch (Exception unused2) {
                    }
                    throw th;
                }
                inputStream.close();
                randomAccessFile.close();
                return;
            }
            if (inputStream != null) {
                inputStream.close();
            }
            randomAccessFile.close();
        } catch (Exception unused3) {
        }
    }
}
