package com.ubix.ssp.ad.e.w;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ubix.ssp.ad.e.a0.u;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<Context, c> f47285a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Context f47287c;

    /* renamed from: e, reason: collision with root package name */
    private n f47289e;

    /* renamed from: g, reason: collision with root package name */
    private int f47291g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f47292h;

    /* renamed from: f, reason: collision with root package name */
    private final int[] f47290f = {5, 8, 13, 21, 34, 55, 89, MediaPlayer.MEDIA_PLAYER_OPTION_SPADE, 233};

    /* renamed from: d, reason: collision with root package name */
    private final com.ubix.ssp.ad.core.monitor.data.c.b f47288d = com.ubix.ssp.ad.core.monitor.data.c.b.b();

    /* renamed from: b, reason: collision with root package name */
    private final a f47286b = new a();

    public class a {

        /* renamed from: a, reason: collision with root package name */
        private final Object f47293a = new Object();

        /* renamed from: b, reason: collision with root package name */
        private Handler f47294b;

        /* renamed from: com.ubix.ssp.ad.e.w.c$a$a, reason: collision with other inner class name */
        public class HandlerC0829a extends Handler {
            public HandlerC0829a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) throws Throwable {
                try {
                    int i2 = message.what;
                    if (i2 == 3 || i2 == 6 || i2 == 7) {
                        c.this.a(message);
                        return;
                    }
                    if (i2 == 4) {
                        try {
                            c.this.f47288d.a();
                            return;
                        } catch (Exception e2) {
                            h.a(e2);
                            return;
                        }
                    }
                    if (i2 != 5) {
                        h.b("----埋点", "Unexpected message received by SensorsData worker: " + message);
                        return;
                    }
                    if (c.this.f47291g != 8 && c.this.f47292h) {
                        c.this.a(message);
                        if (c.this.f47292h) {
                            c.this.a(c.this.f47290f[c.c(c.this)] * 1000);
                        }
                    }
                } catch (RuntimeException e3) {
                    h.a("----埋点", "Worker threw an unhandled exception", e3);
                }
            }
        }

        public a() {
            HandlerThread handlerThread = new HandlerThread("AnalyticsMessages.Worker", 1);
            handlerThread.start();
            this.f47294b = new HandlerC0829a(handlerThread.getLooper());
        }

        public void a(Message message) {
            synchronized (this.f47293a) {
                try {
                    Handler handler = this.f47294b;
                    if (handler == null) {
                        h.b("----埋点", "Dead worker dropping a message: " + message.what);
                    } else {
                        handler.sendMessage(message);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void a(Message message, long j2) {
            synchronized (this.f47293a) {
                try {
                    Handler handler = this.f47294b;
                    if (handler == null) {
                        h.b("----埋点", "Dead worker dropping a message: " + message.what);
                    } else if (!handler.hasMessages(message.what)) {
                        h.b("----埋点", "delay 执行时间：" + j2);
                        this.f47294b.sendMessageDelayed(message, j2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private c(Context context, n nVar) {
        this.f47287c = context;
        this.f47289e = nVar;
    }

    public static /* synthetic */ int c(c cVar) {
        int i2 = cVar.f47291g + 1;
        cVar.f47291g = i2;
        return i2;
    }

    public static c a(Context context, n nVar) {
        c cVar;
        Map<Context, c> map = f47285a;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (map.containsKey(applicationContext)) {
                    cVar = map.get(applicationContext);
                } else {
                    cVar = new c(applicationContext, nVar);
                    map.put(applicationContext, cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    private void c() {
        try {
            if (this.f47292h) {
                return;
            }
            this.f47292h = true;
            int i2 = this.f47290f[this.f47291g] * 1000;
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            messageObtain.arg1 = i2;
            this.f47286b.a(messageObtain, i2);
        } catch (Exception e2) {
            h.b("----埋点", e2.getMessage());
        }
    }

    public void b() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            this.f47286b.a(messageObtain);
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public void a() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 7;
            this.f47286b.a(messageObtain);
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    public void a(long j2) {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            if (j2 > 0) {
                this.f47286b.a(messageObtain, j2);
            } else {
                this.f47286b.a(messageObtain, this.f47289e.h());
            }
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015a A[PHI: r8
      0x015a: PHI (r8v24 java.lang.String) = (r8v23 java.lang.String), (r8v25 java.lang.String) binds: [B:62:0x0158, B:41:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.Message r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.w.c.a(android.os.Message):void");
    }

    private void a(BufferedOutputStream bufferedOutputStream, OutputStream outputStream, InputStream inputStream, HttpURLConnection httpURLConnection) throws IOException {
        if (bufferedOutputStream != null) {
            try {
                bufferedOutputStream.close();
            } catch (Exception e2) {
                h.b("----埋点", e2.getMessage());
            }
        }
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception e3) {
                h.b("----埋点", e3.getMessage());
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e4) {
                h.b("----埋点", e4.getMessage());
            }
        }
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e5) {
                h.b("----埋点", e5.getMessage());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.ubix.ssp.ad.e.w.c] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r6v7 */
    private void a(String str, String str2, boolean z2) throws Throwable {
        InputStream inputStream;
        BufferedOutputStream bufferedOutputStream;
        InputStream errorStream;
        try {
            try {
                HashMap map = new HashMap();
                map.put(AbstractC1114b.f5589g, "application/x-protobuf");
                str = com.ubix.ssp.ad.e.x.c.a(str, "POST", 10000, map, false);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e = e2;
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            str = 0;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                if (u.a()) {
                    u.f(str2);
                }
                bufferedOutputStream = new BufferedOutputStream(str.getOutputStream());
                try {
                    bufferedOutputStream.write(str2.getBytes());
                    bufferedOutputStream.flush();
                } catch (IOException e4) {
                    e = e4;
                    throw new com.ubix.ssp.ad.e.w.r.a(e);
                } catch (Exception e5) {
                    e = e5;
                    throw new com.ubix.ssp.ad.e.w.r.a(e);
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                    a(bufferedOutputStream, null, inputStream, str);
                    throw th;
                }
            } else {
                bufferedOutputStream = null;
            }
            try {
                errorStream = str.getInputStream();
            } catch (FileNotFoundException unused) {
                errorStream = str.getErrorStream();
            }
        } catch (IOException e6) {
            e = e6;
            throw new com.ubix.ssp.ad.e.w.r.a(e);
        } catch (Exception e7) {
            e = e7;
            throw new com.ubix.ssp.ad.e.w.r.a(e);
        } catch (Throwable th4) {
            th = th4;
            str = str;
            inputStream = null;
            bufferedOutputStream = null;
            a(bufferedOutputStream, null, inputStream, str);
            throw th;
        }
        try {
            byte[] bArrA = a(errorStream);
            errorStream.close();
            int responseCode = str.getResponseCode();
            u.b("埋点response=" + new String(bArrA, "UTF-8"));
            if (h.a()) {
                if (responseCode < 200 || responseCode >= 300) {
                    throw new com.ubix.ssp.ad.e.w.r.a(responseCode + "");
                }
                u.b("埋点汇报成功=" + responseCode + "；" + str2);
            }
            a(bufferedOutputStream, null, null, str);
        } catch (IOException e8) {
            e = e8;
            throw new com.ubix.ssp.ad.e.w.r.a(e);
        } catch (Exception e9) {
            e = e9;
            throw new com.ubix.ssp.ad.e.w.r.a(e);
        }
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            synchronized (this.f47288d) {
                try {
                    int iA = this.f47288d.a(jSONObject);
                    u.b("total count=" + iA);
                    if (iA < 0) {
                        h.b("----埋点", "Failed to enqueue the event: " + jSONObject);
                    }
                    Message messageObtain = Message.obtain();
                    if (iA >= this.f47289e.g()) {
                        messageObtain.what = 3;
                        this.f47286b.a(messageObtain);
                    } else {
                        messageObtain.what = 6;
                        this.f47286b.a(messageObtain, this.f47289e.h());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            h.b("----埋点", "enqueueEventMessage error:" + e2);
        }
    }

    private boolean a(int i2) {
        if (i2 == 404 || i2 == 403) {
            return false;
        }
        return i2 < 500 || i2 >= 600;
    }

    private static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i2 = inputStream.read(bArr, 0, 8192);
            if (i2 == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }
}
