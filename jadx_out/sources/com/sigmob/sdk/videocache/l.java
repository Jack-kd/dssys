package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* loaded from: classes4.dex */
public class l implements t {

    /* renamed from: c, reason: collision with root package name */
    private static final int f38929c = 5;

    /* renamed from: d, reason: collision with root package name */
    private static OkHttpClient f38930d;

    /* renamed from: a, reason: collision with root package name */
    protected volatile long f38931a;

    /* renamed from: b, reason: collision with root package name */
    protected volatile String f38932b;

    /* renamed from: e, reason: collision with root package name */
    private InputStream f38933e;

    /* renamed from: f, reason: collision with root package name */
    private u f38934f;

    /* renamed from: g, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.sourcestorage.c f38935g;

    /* renamed from: h, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.headers.b f38936h;

    /* renamed from: i, reason: collision with root package name */
    private Response f38937i;

    public l(t tVar) {
        this.f38931a = -2147483648L;
        this.f38932b = DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4;
        this.f38934f = tVar.d();
        this.f38935g = tVar.e();
        this.f38936h = tVar.f();
    }

    private void h() throws p {
        try {
            SigmobLog.d("Read content info from " + this.f38934f.f38968a);
            Response responseA = a(0L, 10000);
            if (responseA == null || !responseA.isSuccessful()) {
                throw new p("Fail to fetchContentInfo: " + this.f38934f.f38968a);
            }
            ResponseBody responseBodyBody = responseA.body();
            if (responseBodyBody != null) {
                this.f38931a = (int) responseBodyBody.getContentLength();
                if (responseBodyBody.get$contentType() != null) {
                    this.f38932b = responseBodyBody.get$contentType().getMediaType();
                }
            }
            u uVar = new u(this.f38934f.f38968a, this.f38931a, this.f38932b);
            this.f38934f = uVar;
            this.f38935g.a(uVar.f38968a, uVar);
        } catch (IOException e2) {
            SigmobLog.e("Error fetching info from " + this.f38934f.f38968a, e2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public int a(byte[] bArr) throws p {
        InputStream inputStream = this.f38933e;
        if (inputStream == null) {
            throw new p("Error reading data from " + this.f38934f.f38968a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e2) {
            throw new k("Reading source " + this.f38934f.f38968a + " is interrupted", e2);
        } catch (IOException e3) {
            throw new p("Error reading data from " + this.f38934f.f38968a, e3);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public void b() throws p, IOException {
        try {
            q.a(this.f38933e);
        } catch (ArrayIndexOutOfBoundsException e2) {
            SigmobLog.e("Error closing connection correctly. Should happen only on SigmobAndroid L. Until good solution is not know, just ignore this issue :(", e2);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw new RuntimeException("Wait... but why? WTF!? If you read it on your device log, please", e);
        } catch (NullPointerException e4) {
            e = e4;
            throw new RuntimeException("Wait... but why? WTF!? If you read it on your device log, please", e);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public synchronized String c() throws p {
        try {
            if (TextUtils.isEmpty(this.f38934f.f38970c)) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f38934f.f38970c;
    }

    @Override // com.sigmob.sdk.videocache.t
    public u d() {
        return this.f38934f;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.sourcestorage.c e() {
        return this.f38935g;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.headers.b f() {
        return this.f38936h;
    }

    @Override // com.sigmob.sdk.videocache.t
    public String g() {
        return this.f38934f.f38968a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f38934f + "}";
    }

    public l(String str) {
        this(str, com.sigmob.sdk.videocache.sourcestorage.d.a());
    }

    @Override // com.sigmob.sdk.videocache.t
    public long a() throws p {
        if (this.f38931a == -2147483648L) {
            h();
        }
        return this.f38931a;
    }

    public l(String str, com.sigmob.sdk.videocache.sourcestorage.c cVar) {
        this(str, cVar, new com.sigmob.sdk.videocache.headers.a());
    }

    private long a(Response response, long j2) throws IOException {
        int iCode = response.code();
        int iContentLength = (int) response.body().getContentLength();
        return iCode == 200 ? iContentLength : iCode == 206 ? iContentLength + j2 : this.f38931a;
    }

    public l(String str, com.sigmob.sdk.videocache.sourcestorage.c cVar, com.sigmob.sdk.videocache.headers.b bVar) {
        this.f38931a = -2147483648L;
        this.f38932b = DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4;
        this.f38935g = (com.sigmob.sdk.videocache.sourcestorage.c) n.a(cVar);
        this.f38936h = (com.sigmob.sdk.videocache.headers.b) n.a(bVar);
        u uVarA = cVar.a(str);
        this.f38934f = uVarA == null ? new u(str, -2147483648L, q.a(str)) : uVarA;
    }

    private Response a(long j2, int i2) throws p, IOException {
        if (f38930d == null) {
            OkHttpClient.Builder builderConnectionPool = new OkHttpClient().newBuilder().connectionPool(new ConnectionPool());
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f38930d = builderConnectionPool.connectTimeout(10000L, timeUnit).readTimeout(10000L, timeUnit).writeTimeout(10000L, timeUnit).build();
        }
        String strHeader = this.f38934f.f38968a;
        Response response = this.f38937i;
        if (response != null && j2 > 0) {
            try {
                response.close();
            } catch (Throwable unused) {
            }
            this.f38937i = null;
            q.a(this.f38933e);
        }
        if (this.f38937i == null) {
            int i3 = 0;
            boolean zIsRedirect = false;
            do {
                Request.Builder builder = new Request.Builder();
                builder.get();
                builder.url(strHeader);
                a(builder, strHeader);
                if (j2 > 0) {
                    builder.addHeader(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
                }
                Response responseExecute = f38930d.newCall(builder.build()).execute();
                this.f38937i = responseExecute;
                if (responseExecute.isRedirect()) {
                    strHeader = this.f38937i.header("Location");
                    zIsRedirect = this.f38937i.isRedirect();
                    i3++;
                }
                if (i3 > 5) {
                    throw new p("Too many redirects: " + i3);
                }
            } while (zIsRedirect);
        }
        return this.f38937i;
    }

    @Override // com.sigmob.sdk.videocache.t
    public void a(long j2) throws p {
        try {
            Response responseA = a(j2, -1);
            this.f38937i = responseA;
            ResponseBody responseBodyBody = responseA.body();
            if (responseBodyBody != null && responseBodyBody.get$contentType() != null) {
                this.f38932b = responseBodyBody.get$contentType().getMediaType();
            }
            this.f38931a = a(this.f38937i, j2);
            this.f38933e = new BufferedInputStream(responseBodyBody.byteStream(), 8192);
            u uVar = new u(this.f38934f.f38968a, this.f38931a, this.f38932b);
            this.f38934f = uVar;
            this.f38935g.a(uVar.f38968a, uVar);
        } catch (IOException e2) {
            throw new p("Error opening connection for " + this.f38934f.f38968a + " with offset " + j2, e2);
        }
    }

    private void a(Request.Builder builder, String str) {
        for (Map.Entry<String, String> entry : this.f38936h.a(str).entrySet()) {
            builder.addHeader(entry.getKey(), entry.getValue());
        }
    }
}
