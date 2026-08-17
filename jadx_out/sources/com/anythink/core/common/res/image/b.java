package com.anythink.core.common.res.image;

import android.os.SystemClock;
import com.byazt.rx.BaseConstants;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Map;
import org.apache.http.conn.ConnectTimeoutException;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private final String f7470a = getClass().getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    protected String f7471d;

    /* renamed from: e, reason: collision with root package name */
    protected boolean f7472e;

    /* renamed from: f, reason: collision with root package name */
    protected long f7473f;

    /* renamed from: g, reason: collision with root package name */
    protected long f7474g;

    /* renamed from: h, reason: collision with root package name */
    protected long f7475h;

    /* renamed from: i, reason: collision with root package name */
    protected long f7476i;

    /* renamed from: j, reason: collision with root package name */
    protected long f7477j;

    /* renamed from: com.anythink.core.common.res.image.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        private void a(String str) throws Throwable {
            HttpURLConnection httpURLConnection;
            b.this.f7473f = System.currentTimeMillis();
            b.this.f7474g = SystemClock.elapsedRealtime();
            HttpURLConnection httpURLConnection2 = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                } catch (Throwable th) {
                    th = th;
                }
            } catch (OutOfMemoryError e2) {
                e = e2;
            } catch (StackOverflowError e3) {
                e = e3;
            } catch (Error e4) {
                e = e4;
            } catch (SocketTimeoutException e5) {
                e = e5;
            } catch (ConnectTimeoutException e6) {
                e = e6;
            } catch (Exception e7) {
                e = e7;
            }
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                Map<String, String> mapA = b.this.a();
                if (mapA != null && mapA.size() > 0) {
                    for (String str2 : mapA.keySet()) {
                        httpURLConnection.addRequestProperty(str2, mapA.get(str2));
                    }
                }
                b bVar = b.this;
                if (bVar.f7472e) {
                    bVar.a("Task had been canceled.");
                    httpURLConnection.disconnect();
                    return;
                }
                httpURLConnection.setConnectTimeout(BaseConstants.Time.MINUTE);
                httpURLConnection.setReadTimeout(BaseConstants.Time.MINUTE);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    b bVar2 = b.this;
                    if (bVar2.f7472e) {
                        bVar2.a("Task had been canceled.");
                        httpURLConnection.disconnect();
                        return;
                    }
                    bVar2.f7477j = httpURLConnection.getContentLength();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    boolean zA = b.this.a(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    b.this.f7475h = System.currentTimeMillis();
                    b.this.f7476i = SystemClock.elapsedRealtime();
                    if (zA) {
                        b.this.c();
                    } else {
                        b.this.a("Save fail!");
                    }
                    httpURLConnection.disconnect();
                    return;
                }
                if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                    b.this.a("Resource download fail, status code: " + responseCode + ", " + httpURLConnection.getResponseMessage() + ", url: " + str);
                    httpURLConnection.disconnect();
                    return;
                }
                b bVar3 = b.this;
                if (bVar3.f7472e) {
                    bVar3.a("Task had been canceled.");
                } else {
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField != null) {
                        if (!headerField.toLowerCase().startsWith("http")) {
                            b.this.a("Final url is wrong:".concat(headerField));
                            httpURLConnection.disconnect();
                            return;
                        }
                        a(headerField);
                    }
                }
                httpURLConnection.disconnect();
            } catch (Error e8) {
                e = e8;
                httpURLConnection2 = httpURLConnection;
                System.gc();
                b.this.a(e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (SocketTimeoutException e9) {
                e = e9;
                httpURLConnection2 = httpURLConnection;
                b.this.a(e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Exception e10) {
                e = e10;
                httpURLConnection2 = httpURLConnection;
                b.this.a(e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (OutOfMemoryError e11) {
                e = e11;
                httpURLConnection2 = httpURLConnection;
                System.gc();
                b.this.a(e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (StackOverflowError e12) {
                e = e12;
                httpURLConnection2 = httpURLConnection;
                System.gc();
                b.this.a(e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (ConnectTimeoutException e13) {
                e = e13;
                httpURLConnection2 = httpURLConnection;
                b.this.a(e.getMessage());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            try {
                a(b.this.f7471d);
            } catch (Exception e2) {
                b.this.a(e2.getMessage());
            } catch (OutOfMemoryError e3) {
                e = e3;
                System.gc();
                b.this.a(e.getMessage());
            } catch (StackOverflowError e4) {
                e = e4;
                System.gc();
                b.this.a(e.getMessage());
            }
        }
    }

    public b(String str) {
        this.f7471d = str;
    }

    private void e() {
        this.f7472e = true;
    }

    private void f() {
        a(new AnonymousClass1());
    }

    private static int g() {
        return BaseConstants.Time.MINUTE;
    }

    private static int h() {
        return BaseConstants.Time.MINUTE;
    }

    public abstract Map<String, String> a();

    public abstract void a(Runnable runnable);

    public abstract void a(String str);

    public abstract boolean a(InputStream inputStream);

    public abstract void b();

    public abstract void c();

    public final void d() {
        this.f7472e = false;
        a(new AnonymousClass1());
    }
}
