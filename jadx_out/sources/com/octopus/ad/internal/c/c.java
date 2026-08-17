package com.octopus.ad.internal.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public class c {

    public interface a {
        @UiThread
        void a();

        @UiThread
        void a(b bVar);

        @UiThread
        void a(d dVar);
    }

    public interface b {
        @UiThread
        void a(int i2);

        @UiThread
        void a(long j2, long j3);

        @WorkerThread
        boolean a(File file);

        @UiThread
        void b(File file);
    }

    /* renamed from: com.octopus.ad.internal.c.c$c, reason: collision with other inner class name */
    public static final class RunnableC0751c implements a, Runnable {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        private HandlerThread f34536a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private b f34537b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        private Handler f34538c;

        /* renamed from: d, reason: collision with root package name */
        private Handler f34539d = new Handler(Looper.getMainLooper());

        /* renamed from: e, reason: collision with root package name */
        private d f34540e;

        public RunnableC0751c() {
            HandlerThread handlerThread = new HandlerThread("download");
            this.f34536a = handlerThread;
            handlerThread.start();
            this.f34538c = new Handler(this.f34536a.getLooper());
        }

        private void b(final File file) {
            this.f34539d.post(new Runnable() { // from class: com.octopus.ad.internal.c.c.c.2
                @Override // java.lang.Runnable
                public void run() {
                    if (RunnableC0751c.this.f34537b != null) {
                        RunnableC0751c.this.f34537b.b(file);
                    }
                }
            });
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public void run() throws Throwable {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            byte[] bArr;
            RandomAccessFile randomAccessFile;
            d dVar = this.f34540e;
            dVar.f34548a = true;
            File file = new File(dVar.f34552e);
            if (!file.exists() && !file.mkdirs()) {
                a(3);
                return;
            }
            String str = dVar.f34552e + File.separator + dVar.f34553f;
            File file2 = new File(str);
            RandomAccessFile randomAccessFile2 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL(dVar.f34551d).openConnection();
                try {
                    if (dVar.f34555h != 0) {
                        httpURLConnection.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + dVar.f34555h + "-");
                    }
                    httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200 || responseCode == 206) {
                        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37371j);
                        String contentType = httpURLConnection.getContentType();
                        long contentLengthLong = httpURLConnection.getContentLengthLong();
                        if (responseCode == 200) {
                            dVar.f34555h = 0L;
                            dVar.f34554g = contentLengthLong;
                        }
                        com.octopus.ad.d.b.f.a("download", headerField + contentType);
                        inputStream = httpURLConnection.getInputStream();
                        try {
                            try {
                                bArr = new byte[8192];
                                randomAccessFile = new RandomAccessFile(str, "rw");
                            } catch (Exception e2) {
                                e = e2;
                            }
                        } catch (Throwable th) {
                            th = th;
                        }
                        try {
                            randomAccessFile.seek(dVar.f34555h);
                            int i2 = 0;
                            while (true) {
                                int i3 = inputStream.read(bArr);
                                if (i3 != -1) {
                                    i2++;
                                    randomAccessFile.write(bArr, 0, i3);
                                    d.c(dVar, i3);
                                    if (i2 % 64 == 0) {
                                        if (dVar.f34549b) {
                                            dVar.f34548a = false;
                                            a(1);
                                            try {
                                                randomAccessFile.getFD().sync();
                                            } catch (IOException unused) {
                                            }
                                            try {
                                                randomAccessFile.close();
                                            } catch (IOException unused2) {
                                            }
                                            try {
                                                inputStream.close();
                                            } catch (IOException unused3) {
                                            }
                                            httpURLConnection.disconnect();
                                            return;
                                        }
                                        if (dVar.f34550c) {
                                            dVar.f34548a = false;
                                            a(6);
                                            try {
                                                randomAccessFile.getFD().sync();
                                            } catch (IOException unused4) {
                                            }
                                            try {
                                                randomAccessFile.close();
                                            } catch (IOException unused5) {
                                            }
                                            try {
                                                inputStream.close();
                                            } catch (IOException unused6) {
                                            }
                                            httpURLConnection.disconnect();
                                            return;
                                        }
                                        if (i2 % 16 == 0) {
                                            a(dVar.f34555h, dVar.f34554g);
                                        }
                                    }
                                } else {
                                    randomAccessFile.getFD().sync();
                                    if (a(file2)) {
                                        dVar.f34548a = false;
                                        b(file2);
                                    } else {
                                        dVar.f34548a = false;
                                        a(4);
                                    }
                                    randomAccessFile2 = randomAccessFile;
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            randomAccessFile2 = randomAccessFile;
                            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e);
                            dVar.f34548a = false;
                            a(5);
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.getFD().sync();
                                } catch (IOException unused7) {
                                }
                            }
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException unused8) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused9) {
                                }
                            }
                            if (httpURLConnection == null) {
                                return;
                            }
                            httpURLConnection.disconnect();
                        } catch (Throwable th2) {
                            th = th2;
                            randomAccessFile2 = randomAccessFile;
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.getFD().sync();
                                } catch (IOException unused10) {
                                }
                            }
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException unused11) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused12) {
                                }
                            }
                            if (httpURLConnection == null) {
                                throw th;
                            }
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } else {
                        dVar.f34548a = false;
                        a(2);
                        inputStream = null;
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.getFD().sync();
                        } catch (IOException unused13) {
                        }
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException unused14) {
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused15) {
                        }
                    }
                } catch (Exception e4) {
                    e = e4;
                    inputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            } catch (Exception e5) {
                e = e5;
                httpURLConnection = null;
                inputStream = null;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
                inputStream = null;
            }
            httpURLConnection.disconnect();
        }

        @Override // com.octopus.ad.internal.c.c.a
        public void a(b bVar) {
            this.f34537b = bVar;
        }

        @Override // com.octopus.ad.internal.c.c.a
        public void a(d dVar) {
            if (!dVar.f34548a) {
                d dVar2 = this.f34540e;
                if (dVar2 != null && !dVar.equals(dVar2)) {
                    this.f34540e.f34549b = true;
                }
                this.f34540e = dVar;
                dVar.a();
                Handler handler = this.f34538c;
                if (handler != null) {
                    handler.post(this);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Invalid request,it's downloading");
        }

        @Override // com.octopus.ad.internal.c.c.a
        public void a() {
            HandlerThread handlerThread = this.f34536a;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.f34538c = null;
            this.f34536a = null;
            this.f34537b = null;
        }

        private void a(final long j2, final long j3) {
            this.f34539d.post(new Runnable() { // from class: com.octopus.ad.internal.c.c.c.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RunnableC0751c.this.f34537b != null) {
                        RunnableC0751c.this.f34537b.a(j2, j3);
                    }
                }
            });
        }

        private boolean a(File file) {
            b bVar = this.f34537b;
            return bVar != null && bVar.a(file);
        }

        private void a(final int i2) {
            this.f34539d.post(new Runnable() { // from class: com.octopus.ad.internal.c.c.c.3
                @Override // java.lang.Runnable
                public void run() {
                    if (RunnableC0751c.this.f34537b != null) {
                        RunnableC0751c.this.f34537b.a(i2);
                    }
                }
            });
        }
    }

    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public volatile boolean f34548a;

        /* renamed from: b, reason: collision with root package name */
        public volatile boolean f34549b;

        /* renamed from: c, reason: collision with root package name */
        public volatile boolean f34550c;

        /* renamed from: d, reason: collision with root package name */
        private String f34551d;

        /* renamed from: e, reason: collision with root package name */
        private String f34552e;

        /* renamed from: f, reason: collision with root package name */
        private String f34553f;

        /* renamed from: g, reason: collision with root package name */
        private volatile long f34554g;

        /* renamed from: h, reason: collision with root package name */
        private volatile long f34555h;

        public d(String str, String str2, String str3) {
            this.f34551d = str;
            this.f34552e = str2;
            this.f34553f = str3;
            a();
        }

        public static /* synthetic */ long c(d dVar, long j2) {
            long j3 = dVar.f34555h + j2;
            dVar.f34555h = j3;
            return j3;
        }

        public void a() {
            this.f34554g = 0L;
            this.f34555h = 0L;
            this.f34549b = false;
            this.f34550c = false;
            this.f34548a = false;
        }
    }

    public static a a() {
        return new RunnableC0751c();
    }
}
