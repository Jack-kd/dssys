package com.kwad.sdk;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.anythink.core.common.m.AbstractC1114b;
import com.kwad.framework.filedownloader.f.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.y;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;

/* loaded from: classes4.dex */
public final class l implements com.kwad.framework.filedownloader.a.b {
    private final OkHttpClient aGi;
    private final Request.Builder aGj;
    private Request aGk;
    private Response aGl;

    public static class a implements c.b {
        private volatile OkHttpClient aGi;
        private OkHttpClient.Builder aGm;

        public a() {
        }

        @Override // com.kwad.framework.filedownloader.f.c.b
        public final com.kwad.framework.filedownloader.a.b bX(String str) {
            if (this.aGi == null) {
                synchronized (a.class) {
                    try {
                        if (this.aGi == null) {
                            OkHttpClient.Builder builder = this.aGm;
                            this.aGi = builder != null ? builder.build() : new OkHttpClient();
                            this.aGm = null;
                        }
                    } finally {
                    }
                }
            }
            return new l(str, this.aGi, (byte) 0);
        }

        public a(boolean z2) {
            if (z2) {
                this.aGm = l.Go();
            } else {
                this.aGm = l.Gn();
            }
        }
    }

    public /* synthetic */ l(String str, OkHttpClient okHttpClient, byte b3) {
        this(str, okHttpClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OkHttpClient.Builder Gn() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return builder.connectTimeout(10000L, timeUnit).addInterceptor(new com.kwad.sdk.j.a()).readTimeout(0L, timeUnit).connectionPool(new ConnectionPool(6, 60000L, timeUnit)).retryOnConnectionFailure(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OkHttpClient.Builder Go() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return builder.connectTimeout(10000L, timeUnit).addInterceptor(new com.kwad.sdk.j.a()).protocols(Util.immutableList(new Protocol[]{Protocol.HTTP_1_1})).readTimeout(0L, timeUnit).connectionPool(new ConnectionPool(6, 60000L, timeUnit)).retryOnConnectionFailure(true);
    }

    private String cS(String str) {
        String strBW = bW(AbstractC1114b.f5589g);
        String extension = y.getExtension(str);
        String str2 = ".apk";
        if (TextUtils.isEmpty(strBW) || !TextUtils.isEmpty(extension)) {
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            return System.currentTimeMillis() + ".apk";
        }
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(strBW);
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis());
        if (!TextUtils.isEmpty(extensionFromMimeType)) {
            str2 = com.anythink.core.common.d.i.f2495E + extensionFromMimeType;
        }
        sb.append(str2);
        return sb.toString();
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final Map<String, List<String>> BO() {
        if (this.aGk == null) {
            this.aGk = this.aGj.build();
        }
        return this.aGk.headers().toMultimap();
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final Map<String, List<String>> BP() {
        Response response = this.aGl;
        if (response == null) {
            return null;
        }
        return response.headers().toMultimap();
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final void BQ() {
        this.aGk = null;
        Response response = this.aGl;
        if (response != null && response.body() != null) {
            com.kwad.sdk.crash.utils.b.closeQuietly(this.aGl.body());
        }
        this.aGl = null;
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final void addHeader(String str, String str2) {
        this.aGj.addHeader(str, str2);
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final String bW(String str) {
        String str2;
        if (!com.sigmob.sdk.downloader.core.c.f37371j.equals(str)) {
            Response response = this.aGl;
            if (response == null) {
                return null;
            }
            return response.header(str);
        }
        try {
        } catch (Exception unused) {
            str2 = "";
        }
        if (!TextUtils.isEmpty(com.kwad.framework.filedownloader.f.f.cn(this.aGl.header(str)))) {
            return this.aGl.header(str);
        }
        str2 = this.aGl.request().url().pathSegments().get(r3.size() - 1);
        return "attachment; filename=\"" + cS(str2) + "\"";
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final void execute() {
        if (this.aGk == null) {
            this.aGk = this.aGj.build();
        }
        this.aGl = this.aGi.newCall(this.aGk).execute();
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final InputStream getInputStream() {
        Response response = this.aGl;
        if (response == null) {
            throw new IllegalStateException("Please invoke #execute first!");
        }
        return ((com.kwad.sdk.service.a.j) ServiceProvider.get(com.kwad.sdk.service.a.j.class)).wrapInputStream(response.body().byteStream());
    }

    @Override // com.kwad.framework.filedownloader.a.b
    public final int getResponseCode() {
        Response response = this.aGl;
        if (response != null) {
            return response.code();
        }
        throw new IllegalStateException("Please invoke #execute first!");
    }

    private l(Request.Builder builder, OkHttpClient okHttpClient) {
        this.aGj = builder;
        this.aGi = okHttpClient;
    }

    private l(String str, OkHttpClient okHttpClient) {
        this(new Request.Builder().url(str), okHttpClient);
    }
}
