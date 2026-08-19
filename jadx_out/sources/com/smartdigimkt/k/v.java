package com.smartdigimkt.k;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.RandomAccessFile;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import org.apache.http.conn.ConnectTimeoutException;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes5.dex */
public final class v extends t {

    /* renamed from: a, reason: collision with root package name */
    public final int f41206a;

    /* renamed from: b, reason: collision with root package name */
    public final String f41207b;

    /* renamed from: c, reason: collision with root package name */
    public final String f41208c;

    /* renamed from: d, reason: collision with root package name */
    public final String f41209d;

    /* renamed from: e, reason: collision with root package name */
    public long f41210e;

    /* renamed from: f, reason: collision with root package name */
    public final int f41211f;

    /* renamed from: g, reason: collision with root package name */
    public final int f41212g;

    /* renamed from: h, reason: collision with root package name */
    public final int f41213h;

    /* renamed from: i, reason: collision with root package name */
    public final w f41214i;

    /* renamed from: j, reason: collision with root package name */
    public final z f41215j;

    public v(int i2, String str, String str2, String str3, long j2, int i3, int i4, int i5, y yVar, z zVar) {
        this.f41206a = i2;
        this.f41207b = str;
        this.f41208c = str2;
        this.f41209d = str3;
        this.f41210e = j2;
        this.f41211f = i3;
        this.f41212g = i4;
        this.f41213h = i5;
        this.f41214i = yVar;
        this.f41215j = zVar;
    }

    public final boolean b() {
        int i2 = this.f41215j.f41237i;
        if (i2 == 5) {
            y yVar = (y) this.f41214i;
            yVar.getClass();
            if (yVar.f41218b.incrementAndGet() == 1) {
                c0 c0Var = yVar.f41227k.f41238j;
                if (c0Var != null) {
                    c0Var.a(5);
                }
                yVar.b();
            }
            return true;
        }
        if (i2 != 4) {
            return false;
        }
        y yVar2 = (y) this.f41214i;
        yVar2.getClass();
        if (yVar2.f41217a.incrementAndGet() == 1) {
            c0 c0Var2 = yVar2.f41227k.f41238j;
            if (c0Var2 != null) {
                c0Var2.a(4);
            }
            yVar2.b();
        }
        return true;
    }

    @Override // com.smartdigimkt.k.t, java.lang.Runnable
    public final void run() {
        w wVar;
        int i2;
        super.run();
        if (this.f41215j == null || (wVar = this.f41214i) == null) {
            return;
        }
        int i3 = this.f41212g;
        if ((i3 > 0 && this.f41211f == i3) || ((i2 = this.f41213h) > 0 && i3 == i2)) {
            ((y) wVar).a(this.f41213h);
            ((y) this.f41214i).a();
            return;
        }
        ((y) wVar).a(i2);
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                try {
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.f41207b).openConnection();
                    try {
                        httpURLConnection2.setInstanceFollowRedirects(false);
                        if (TextUtils.isEmpty(this.f41209d)) {
                            httpURLConnection2.addRequestProperty("User-Agent", this.f41209d);
                        }
                        String str = BytesRange.PREFIX + this.f41211f + "-";
                        if (this.f41212g > 0) {
                            str = BytesRange.PREFIX + this.f41211f + "-" + this.f41212g;
                        }
                        httpURLConnection2.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, str);
                        if (b()) {
                            try {
                                httpURLConnection2.disconnect();
                                return;
                            } catch (Throwable th) {
                                th.getMessage();
                                return;
                            }
                        }
                        long j2 = 0;
                        if (this.f41210e <= 0) {
                            this.f41210e = 60000L;
                        }
                        httpURLConnection2.setConnectTimeout((int) this.f41210e);
                        httpURLConnection2.connect();
                        int responseCode = httpURLConnection2.getResponseCode();
                        if (responseCode != 200 && responseCode != 206) {
                            ((y) this.f41214i).a(1, "statusCode=" + responseCode + " " + httpURLConnection2.getResponseMessage());
                            try {
                                httpURLConnection2.disconnect();
                                return;
                            } catch (Throwable th2) {
                                th2.getMessage();
                                return;
                            }
                        }
                        if (b()) {
                            try {
                                httpURLConnection2.disconnect();
                                return;
                            } catch (Throwable th3) {
                                th3.getMessage();
                                return;
                            }
                        }
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection2.getInputStream());
                        RandomAccessFile randomAccessFile = new RandomAccessFile(this.f41208c, "rws");
                        randomAccessFile.seek(this.f41213h);
                        byte[] bArr = new byte[1048576];
                        while (true) {
                            int i4 = bufferedInputStream.read(bArr, 0, 1048576);
                            if (i4 == -1) {
                                randomAccessFile.close();
                                bufferedInputStream.close();
                                ((y) this.f41214i).a();
                                httpURLConnection2.disconnect();
                                return;
                            }
                            if (b()) {
                                try {
                                    httpURLConnection2.disconnect();
                                    return;
                                } catch (Throwable th4) {
                                    th4.getMessage();
                                    return;
                                }
                            }
                            randomAccessFile.write(bArr, 0, i4);
                            j2 += i4;
                            ((y) this.f41214i).a(this.f41206a, this.f41213h, j2);
                        }
                    } catch (OutOfMemoryError e2) {
                        e = e2;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(3, "OutOfMemoryError: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (StackOverflowError e3) {
                        e = e3;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(3, "StackOverflowError: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Error e4) {
                        e = e4;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(3, "Error: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (ConnectException e5) {
                        e = e5;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(4, "ConnectException: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (SocketTimeoutException e6) {
                        e = e6;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(2, "SocketTimeoutException: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (ConnectTimeoutException e7) {
                        e = e7;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(2, "ConnectTimeoutException: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Exception e8) {
                        e = e8;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(3, "Exception: " + e.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        httpURLConnection = httpURLConnection2;
                        ((y) this.f41214i).a(3, "Throwable: " + th.getMessage());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                } catch (Throwable th6) {
                    if (httpURLConnection != null) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Throwable th7) {
                            th7.getMessage();
                        }
                    }
                    throw th6;
                }
            } catch (Error e9) {
                e = e9;
            } catch (ConnectException e10) {
                e = e10;
            } catch (Exception e11) {
                e = e11;
            } catch (OutOfMemoryError e12) {
                e = e12;
            } catch (StackOverflowError e13) {
                e = e13;
            } catch (SocketTimeoutException e14) {
                e = e14;
            } catch (ConnectTimeoutException e15) {
                e = e15;
            } catch (Throwable th8) {
                th = th8;
            }
        } catch (Throwable th9) {
            th9.getMessage();
        }
    }
}
