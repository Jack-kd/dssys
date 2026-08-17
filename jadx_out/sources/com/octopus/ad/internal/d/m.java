package com.octopus.ad.internal.d;

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
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes4.dex */
class m {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f34703a = Executors.newSingleThreadExecutor();

    /* renamed from: b, reason: collision with root package name */
    private final String f34704b;

    /* renamed from: c, reason: collision with root package name */
    private final int f34705c;

    public class a implements Callable<Boolean> {
        private a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(m.this.b());
        }
    }

    public m(String str, int i2) {
        this.f34704b = (String) n.a(str);
        this.f34705c = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() throws p {
        j jVar = new j(c());
        try {
            try {
                byte[] bytes = "ping ok".getBytes();
                jVar.a(0L);
                byte[] bArr = new byte[bytes.length];
                jVar.a(bArr);
                boolean zEquals = Arrays.equals(bytes, bArr);
                com.octopus.ad.internal.c.f.c(com.octopus.ad.internal.c.f.f34579o, "Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
                return zEquals;
            } catch (p e2) {
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34579o, "Error reading ping response", e2);
                jVar.b();
                return false;
            }
        } finally {
            jVar.b();
        }
    }

    private String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f34704b, Integer.valueOf(this.f34705c), "ping");
    }

    public boolean a(int i2, int i3) {
        n.a(i2 >= 1);
        n.a(i3 > 0);
        int i4 = 0;
        while (i4 < i2) {
            try {
            } catch (InterruptedException e2) {
                e = e2;
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34579o, "Error pinging server due to unexpected error", e);
            } catch (ExecutionException e3) {
                e = e3;
                com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34579o, "Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34579o, "Error pinging server (attempt: " + i4 + ", timeout: " + i3 + "). ");
            }
            if (((Boolean) this.f34703a.submit(new a()).get(i3, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i4++;
            i3 *= 2;
        }
        String str = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i4), Integer.valueOf(i3 / 2), a());
        com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34579o, str + new p(str));
        return false;
    }

    private List<Proxy> a() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public boolean a(String str) {
        return "ping".equals(str);
    }

    public void a(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }
}
