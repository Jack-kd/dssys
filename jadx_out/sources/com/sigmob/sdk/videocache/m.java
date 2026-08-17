package com.sigmob.sdk.videocache;

import com.czhj.sdk.logger.SigmobLog;
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
    private static final String f38938a = "ping";

    /* renamed from: b, reason: collision with root package name */
    private static final String f38939b = "ping ok";

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f38940c = Executors.newSingleThreadExecutor();

    /* renamed from: d, reason: collision with root package name */
    private final String f38941d;

    /* renamed from: e, reason: collision with root package name */
    private final int f38942e;

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
        this.f38941d = (String) n.a(str);
        this.f38942e = i2;
    }

    private List<Proxy> a() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() throws p {
        t tVarA = s.a(c());
        try {
            try {
                byte[] bytes = f38939b.getBytes();
                tVarA.a(0L);
                byte[] bArr = new byte[bytes.length];
                tVarA.a(bArr);
                boolean zEquals = Arrays.equals(bytes, bArr);
                SigmobLog.i("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
                return zEquals;
            } catch (p e2) {
                SigmobLog.e("Error reading ping response", e2);
                tVarA.b();
                return false;
            }
        } finally {
            tVarA.b();
        }
    }

    private String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f38941d, Integer.valueOf(this.f38942e), f38938a);
    }

    public void a(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write(f38939b.getBytes());
    }

    public boolean a(int i2, int i3) {
        int i4 = 0;
        while (i4 < i2) {
            try {
            } catch (InterruptedException e2) {
                e = e2;
                SigmobLog.w("Error pinging server due to unexpected error", e);
            } catch (ExecutionException e3) {
                e = e3;
                SigmobLog.w("Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                SigmobLog.w("Error pinging server (attempt: " + i4 + ", timeout: " + i3 + "). ");
            }
            if (((Boolean) this.f38940c.submit(new a()).get(i3, TimeUnit.MILLISECONDS)).booleanValue()) {
                return true;
            }
            i4++;
            i3 *= 2;
        }
        SigmobLog.e(String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). Default proxies are: %s", Integer.valueOf(i4), Integer.valueOf(i3 / 2), a()));
        return false;
    }

    public boolean a(String str) {
        return f38938a.equals(str);
    }
}
