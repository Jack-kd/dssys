package com.ubix.ssp.ad.e.b0.h;

import android.text.TextUtils;
import com.ubix.ssp.ad.e.a0.u;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
class k {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f46732a;

    /* renamed from: b, reason: collision with root package name */
    private final String f46733b;

    /* renamed from: c, reason: collision with root package name */
    private final int f46734c;

    /* renamed from: d, reason: collision with root package name */
    private final String f46735d;

    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.PingThread");
        }
    }

    public class b implements Callable<Boolean> {
        private b() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            return Boolean.valueOf(k.this.c());
        }

        public /* synthetic */ b(k kVar, a aVar) {
            this();
        }
    }

    public k(String str) {
        this.f46732a = Executors.newSingleThreadExecutor(new a());
        this.f46735d = str;
        this.f46733b = null;
        this.f46734c = 0;
    }

    private List<Proxy> a() {
        try {
            return ProxySelector.getDefault().select(new URI(b()));
        } catch (URISyntaxException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private String b() {
        return !TextUtils.isEmpty(this.f46733b) ? String.format(Locale.US, new String(com.ubix.ssp.ad.e.a0.n.a().a("aHR0cDovLyVzOiVkLyVz")), this.f46733b, Integer.valueOf(this.f46734c), "ping") : this.f46735d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        h hVar = new h(b());
        try {
            byte[] bytes = "ping ok".getBytes();
            hVar.a(0L);
            if (!TextUtils.isEmpty(this.f46733b) && this.f46734c != 0) {
                byte[] bArr = new byte[bytes.length];
                hVar.a(bArr);
                boolean zEquals = Arrays.equals(bytes, bArr);
                u.b("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
                return zEquals;
            }
            if (hVar.a() == -2147483648L || hVar.a() <= 0) {
                return false;
            }
            hVar.close();
            return true;
        } catch (n e2) {
            u.d("Error reading ping response", e2.getMessage());
            return false;
        } finally {
            hVar.close();
        }
    }

    public k(String str, int i2) {
        this.f46732a = Executors.newSingleThreadExecutor(new a());
        this.f46733b = (String) l.a(str);
        this.f46734c = i2;
        this.f46735d = null;
    }

    public void a(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }

    public boolean a(int i2, int i3) {
        l.a(i2 >= 1);
        l.a(i3 > 0);
        int i4 = 0;
        while (i4 < i2) {
            try {
            } catch (InterruptedException e2) {
                e = e2;
                u.d("Error pinging server due to unexpected error", e.getMessage());
            } catch (ExecutionException e3) {
                e = e3;
                u.d("Error pinging server due to unexpected error", e.getMessage());
            } catch (TimeoutException unused) {
                u.d("Error pinging server (attempt: " + i4 + ", timeout: " + i3 + "). ");
            }
            if (((Boolean) this.f46732a.submit(new b(this, null)).get(i3, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i4++;
            i3 *= 2;
        }
        String str = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). ", Integer.valueOf(i4), Integer.valueOf(i3 / 2), a());
        u.b(str, new n(str).getMessage());
        return false;
    }

    public boolean a(String str) {
        return "ping".equals(str);
    }
}
