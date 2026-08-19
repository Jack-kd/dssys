package com.sigmob.sdk.downloader.core.connection;

import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.j;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.List;
import java.util.Map;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes4.dex */
public class b implements com.sigmob.sdk.downloader.core.connection.a, a.InterfaceC0769a {

    /* renamed from: b, reason: collision with root package name */
    final OkHttpClient f37395b;

    /* renamed from: c, reason: collision with root package name */
    Response f37396c;

    /* renamed from: d, reason: collision with root package name */
    private final Request.Builder f37397d;

    /* renamed from: e, reason: collision with root package name */
    private Request f37398e;

    public static class a implements a.b {

        /* renamed from: a, reason: collision with root package name */
        private OkHttpClient.Builder f37399a;

        /* renamed from: b, reason: collision with root package name */
        private volatile OkHttpClient f37400b;

        @Override // com.sigmob.sdk.downloader.core.connection.a.b
        public com.sigmob.sdk.downloader.core.connection.a a(String str) throws IOException {
            if (this.f37400b == null) {
                synchronized (a.class) {
                    try {
                        if (this.f37400b == null) {
                            OkHttpClient.Builder builder = this.f37399a;
                            this.f37400b = builder != null ? builder.build() : new OkHttpClient();
                            this.f37399a = null;
                        }
                    } finally {
                    }
                }
            }
            return new b(this.f37400b, str);
        }

        public a a(OkHttpClient.Builder builder) {
            this.f37399a = builder;
            return this;
        }

        public OkHttpClient.Builder a() {
            if (this.f37399a == null) {
                this.f37399a = new OkHttpClient.Builder();
            }
            return this.f37399a;
        }
    }

    public b(OkHttpClient okHttpClient, String str) {
        this(okHttpClient, new Request.Builder().url(str));
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public a.InterfaceC0769a a() throws IOException {
        Request requestBuild = this.f37397d.build();
        this.f37398e = requestBuild;
        this.f37396c = this.f37395b.newCall(requestBuild).execute();
        return this;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public String b(String str) {
        Request request = this.f37398e;
        return request != null ? request.header(str) : this.f37397d.build().header(str);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public String c(String str) {
        Response response = this.f37396c;
        if (response == null) {
            return null;
        }
        return response.header(str);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public int d() throws IOException {
        Response response = this.f37396c;
        if (response != null) {
            return response.code();
        }
        throw new IOException("Please invoke execute first!");
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public InputStream e() throws IOException {
        Response response = this.f37396c;
        if (response == null) {
            throw new IOException("Please invoke execute first!");
        }
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            return responseBodyBody.byteStream();
        }
        throw new IOException("no body found on response!");
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public Map<String, List<String>> f() {
        Response response = this.f37396c;
        if (response == null) {
            return null;
        }
        return response.headers().toMultimap();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public String g() {
        Response responsePriorResponse = this.f37396c.priorResponse();
        if (responsePriorResponse != null && this.f37396c.isSuccessful() && j.a(responsePriorResponse.code())) {
            return this.f37396c.request().url().getUrl();
        }
        return null;
    }

    public b(OkHttpClient okHttpClient, Request.Builder builder) {
        this.f37395b = okHttpClient;
        this.f37397d = builder;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void a(String str, String str2) {
        this.f37397d.addHeader(str, str2);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void b() {
        this.f37398e = null;
        Response response = this.f37396c;
        if (response != null) {
            response.close();
        }
        this.f37396c = null;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public Map<String, List<String>> c() {
        Request requestBuild = this.f37398e;
        if (requestBuild == null) {
            requestBuild = this.f37397d.build();
        }
        return requestBuild.headers().toMultimap();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public boolean a(String str) throws ProtocolException {
        this.f37397d.method(str, null);
        return true;
    }
}
