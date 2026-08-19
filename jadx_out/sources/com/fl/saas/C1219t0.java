package com.fl.saas;

import com.fl.saas.adx.util.LogcatUtil;
import java.io.IOException;
import java.io.OutputStream;
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
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.fl.saas.t0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
class C1219t0 {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f30652a = Executors.newSingleThreadExecutor();

    /* renamed from: b, reason: collision with root package name */
    private final String f30653b;

    /* renamed from: c, reason: collision with root package name */
    private final int f30654c;

    /* renamed from: com.fl.saas.t0$b */
    public class b implements Callable {
        private b() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            return Boolean.valueOf(C1219t0.this.c());
        }
    }

    public C1219t0(String str, int i2) {
        this.f30653b = (String) AbstractC1228w0.a(str);
        this.f30654c = i2;
    }

    private String b() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f30653b, Integer.valueOf(this.f30654c), "ping");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        X x2 = new X(b());
        try {
            try {
                byte[] bytes = "ping ok".getBytes();
                x2.a(0L);
                byte[] bArr = new byte[bytes.length];
                x2.a(bArr);
                boolean zEquals = Arrays.equals(bytes, bArr);
                LogcatUtil.d("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
                return zEquals;
            } catch (C1237z0 e2) {
                LogcatUtil.d("Error reading ping response" + e2.getMessage());
                x2.close();
                return false;
            }
        } finally {
            x2.close();
        }
    }

    private List a() {
        try {
            return ProxySelector.getDefault().select(new URI(b()));
        } catch (URISyntaxException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public boolean a(String str) {
        return "ping".equals(str);
    }

    public boolean a(int i2, int i3) {
        String str;
        AbstractC1228w0.a(i2 >= 1);
        AbstractC1228w0.a(i3 > 0);
        int i4 = 0;
        while (i4 < i2) {
            try {
            } catch (InterruptedException e2) {
                e = e2;
                str = "Error pinging server due to unexpected error" + e.getMessage();
                LogcatUtil.d(str);
                i4++;
                i3 *= 2;
            } catch (ExecutionException e3) {
                e = e3;
                str = "Error pinging server due to unexpected error" + e.getMessage();
                LogcatUtil.d(str);
                i4++;
                i3 *= 2;
            } catch (TimeoutException unused) {
                str = "Error pinging server (attempt: " + i4 + ", timeout: " + i3 + "). ";
                LogcatUtil.d(str);
                i4++;
                i3 *= 2;
            }
            if (((Boolean) this.f30652a.submit(new b()).get(i3, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i4++;
            i3 *= 2;
        }
        LogcatUtil.d(String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i4), Integer.valueOf(i3 / 2), a()));
        return false;
    }

    public void a(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }
}
