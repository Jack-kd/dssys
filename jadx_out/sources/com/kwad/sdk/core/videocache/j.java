package com.kwad.sdk.core.videocache;

import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.kwad.sdk.utils.az;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionSpec;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public final class j extends p {
    private final com.kwad.sdk.core.videocache.d.c aZN;
    private final com.kwad.sdk.core.videocache.b.b aZO;
    private n bal;
    private InputStream ban;
    private OkHttpClient bas = new OkHttpClient();

    public j(String str, com.kwad.sdk.core.videocache.d.c cVar, com.kwad.sdk.core.videocache.b.b bVar) {
        this.aZN = (com.kwad.sdk.core.videocache.d.c) az.checkNotNull(cVar);
        this.aZO = (com.kwad.sdk.core.videocache.b.b) az.checkNotNull(bVar);
        n nVarFG = cVar.fG(str);
        this.bal = nVarFG == null ? new n(str, -2147483648L, l.fE(str)) : nVarFG;
    }

    private void Pe() {
        Response responseEP = null;
        try {
            try {
                responseEP = eP(10000);
            } catch (IOException unused) {
                com.kwad.sdk.core.d.c.e("HttpUrlSource", "Error fetching info from " + this.bal.url);
                if (0 == 0 || responseEP.body() == null) {
                    return;
                }
            }
            if (responseEP == null || !responseEP.isSuccessful()) {
                throw new ProxyCacheException("Fail to fetchContentInfo: " + getUrl());
            }
            n nVar = new n(this.bal.url, c(responseEP), responseEP.header(AbstractC1114b.f5589g));
            this.bal = nVar;
            this.aZN.a(nVar.url, nVar);
            com.kwad.sdk.core.d.c.d("HttpUrlSource", "Source info fetched: " + this.bal);
            if (responseEP.body() == null) {
                return;
            }
            com.kwad.sdk.crash.utils.b.closeQuietly(responseEP.body());
        } catch (Throwable th) {
            if (0 != 0 && responseEP.body() != null) {
                com.kwad.sdk.crash.utils.b.closeQuietly(responseEP.body());
            }
            throw th;
        }
    }

    private void Pg() {
        n nVarFG;
        com.kwad.sdk.core.videocache.d.c cVar = this.aZN;
        if (cVar == null || !(cVar instanceof com.kwad.sdk.core.videocache.d.b) || (nVarFG = cVar.fG(getUrl())) == null || TextUtils.isEmpty(nVarFG.baC) || nVarFG.baB == -2147483648L) {
            return;
        }
        this.bal = nVarFG;
    }

    private long a(Response response, long j2) {
        int iCode = response.code();
        long jContentLength = response.body().contentLength();
        return iCode == 200 ? jContentLength : iCode == 206 ? jContentLength + j2 : this.bal.baB;
    }

    private static long c(Response response) {
        String strHeader = response.header(com.sigmob.sdk.downloader.core.c.f37366e);
        if (strHeader == null) {
            return -1L;
        }
        return Long.parseLong(strHeader);
    }

    private Response eP(int i2) throws IOException, ProxyCacheException {
        Response responseExecute;
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builderNewBuilder.connectTimeout(10000L, timeUnit);
        builderNewBuilder.readTimeout(10000L, timeUnit);
        builderNewBuilder.writeTimeout(10000L, timeUnit);
        builderNewBuilder.connectionSpecs(Arrays.asList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT));
        try {
            builderNewBuilder.dns(new com.kwad.sdk.core.network.a.d());
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
        this.bas = builderNewBuilder.build();
        String url = getUrl();
        int i3 = 0;
        boolean zIsRedirect = false;
        do {
            Request.Builder builder = new Request.Builder();
            builder.head();
            builder.url(url);
            responseExecute = this.bas.newCall(builder.build()).execute();
            if (responseExecute.isRedirect()) {
                url = responseExecute.header("Location");
                zIsRedirect = responseExecute.isRedirect();
                i3++;
            }
            if (i3 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i3);
            }
        } while (zIsRedirect);
        return responseExecute;
    }

    private Response f(long j2, int i2) throws IOException, ProxyCacheException {
        Response responseExecute;
        OkHttpClient.Builder builderNewBuilder = this.bas.newBuilder();
        builderNewBuilder.connectionSpecs(Arrays.asList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT));
        try {
            builderNewBuilder.dns(new com.kwad.sdk.core.network.a.d());
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
        this.bas = builderNewBuilder.build();
        String url = getUrl();
        int i3 = 0;
        boolean zIsRedirect = false;
        do {
            Request.Builder builder = new Request.Builder();
            builder.get();
            builder.url(url);
            if (j2 > 0) {
                builder.addHeader(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
            }
            responseExecute = this.bas.newCall(builder.build()).execute();
            if (responseExecute.isRedirect()) {
                url = responseExecute.header("Location");
                zIsRedirect = responseExecute.isRedirect();
                i3++;
            }
            if (i3 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i3);
            }
        } while (zIsRedirect);
        return responseExecute;
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final synchronized String Pf() {
        try {
            if (TextUtils.isEmpty(this.bal.baC)) {
                Pg();
            }
            if (TextUtils.isEmpty(this.bal.baC)) {
                Pe();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.bal.baC;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final void aP(long j2) throws ProxyCacheException {
        try {
            Response responseF = f(j2, -1);
            String mediaType = responseF.body().contentType().getMediaType();
            long jA = a(responseF, j2);
            this.ban = new BufferedInputStream(responseF.body().byteStream(), 1024);
            n nVar = new n(this.bal.url, jA, mediaType);
            this.bal = nVar;
            this.aZN.a(nVar.url, nVar);
        } catch (IOException e2) {
            throw new ProxyCacheException("Error opening connection for " + getUrl() + " with offset " + j2, e2);
        }
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final void close() {
        com.kwad.sdk.crash.utils.b.closeQuietly(this.ban);
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final String getUrl() {
        return this.bal.url;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final synchronized long length() {
        try {
            if (this.bal.baB == -2147483648L) {
                Pg();
            }
            if (this.bal.baB == -2147483648L) {
                Pe();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.bal.baB;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.ban;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.bal.url + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, 1024);
        } catch (InterruptedIOException e2) {
            throw new InterruptedProxyCacheException("Reading source " + this.bal.url + " is interrupted", e2);
        } catch (IOException e3) {
            throw new ProxyCacheException("Error reading data from " + this.bal.url, e3);
        }
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final String toString() {
        return "HttpUrlSource{sourceInfo='" + this.bal + "}";
    }

    public j(j jVar) {
        this.bal = jVar.bal;
        this.aZN = jVar.aZN;
        this.aZO = jVar.aZO;
    }
}
