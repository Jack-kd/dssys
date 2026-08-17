package com.czhj.volley.toolbox;

import android.text.TextUtils;
import com.czhj.volley.AuthFailureError;
import com.czhj.volley.Header;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.ConnectionPool;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes3.dex */
public class OkHttp3Stack extends BaseHttpStack {
    public static final String NETWORK_TIMEOUT = "NETWORK_TIMEOUT";

    /* renamed from: a, reason: collision with root package name */
    Interceptor f29693a = new Interceptor() { // from class: com.czhj.volley.toolbox.OkHttp3Stack.1
        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            int iConnectTimeoutMillis = chain.connectTimeoutMillis();
            int timeoutMillis = chain.readTimeoutMillis();
            int iWriteTimeoutMillis = chain.writeTimeoutMillis();
            try {
                String strHeader = request.header(OkHttp3Stack.NETWORK_TIMEOUT);
                if (!TextUtils.isEmpty(strHeader)) {
                    iConnectTimeoutMillis = Integer.valueOf(strHeader).intValue();
                    timeoutMillis = iConnectTimeoutMillis;
                    iWriteTimeoutMillis = timeoutMillis;
                }
            } catch (Throwable unused) {
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            return chain.withConnectTimeout(iConnectTimeoutMillis, timeUnit).withReadTimeout(timeoutMillis, timeUnit).withWriteTimeout(iWriteTimeoutMillis, timeUnit).proceed(request);
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private final SSLSocketFactory f29694b;

    /* renamed from: c, reason: collision with root package name */
    private final OkHttpClient.Builder f29695c;

    /* renamed from: d, reason: collision with root package name */
    private final OkHttpClient f29696d;

    public OkHttp3Stack() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        this.f29695c = builder;
        builder.connectionPool(new ConnectionPool());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(5000L, timeUnit);
        builder.readTimeout(5000L, timeUnit);
        builder.writeTimeout(5000L, timeUnit);
        builder.addInterceptor(this.f29693a);
        this.f29694b = null;
        this.f29696d = builder.build();
    }

    private List<Header> a(Headers headers) {
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strName = headers.name(i2);
            String strValue = headers.value(i2);
            if (strName != null) {
                arrayList.add(new Header(strName, strValue));
            }
        }
        return arrayList;
    }

    @Override // com.czhj.volley.toolbox.BaseHttpStack
    public HttpResponse executeRequest(com.czhj.volley.Request<?> request, Map<String, String> map) throws AuthFailureError, IOException {
        Request.Builder builder = new Request.Builder();
        builder.url(request.getUrl());
        Map<String, String> headers = request.getHeaders();
        builder.addHeader(NETWORK_TIMEOUT, request.getRetryPolicy().getCurrentTimeout() + "");
        for (String str : headers.keySet()) {
            String str2 = headers.get(str);
            if (TextUtils.isEmpty(str2)) {
                builder.removeHeader(str);
            } else {
                builder.addHeader(str, str2);
            }
        }
        for (String str3 : map.keySet()) {
            String str4 = map.get(str3);
            if (TextUtils.isEmpty(str4)) {
                builder.removeHeader(str3);
            } else {
                builder.addHeader(str3, str4);
            }
        }
        a(builder, request);
        Response responseExecute = this.f29696d.newCall(builder.build()).execute();
        int iCode = responseExecute.code();
        ResponseBody responseBodyBody = responseExecute.body();
        return new HttpResponse(iCode, a(responseExecute.headers()), responseBodyBody == null ? 0 : (int) responseBodyBody.getContentLength(), responseBodyBody == null ? null : responseBodyBody.byteStream());
    }

    public OkHttp3Stack(SSLSocketFactory sSLSocketFactory) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        this.f29695c = builder;
        builder.connectionPool(new ConnectionPool());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(5000L, timeUnit);
        builder.readTimeout(5000L, timeUnit);
        builder.writeTimeout(5000L, timeUnit);
        builder.addInterceptor(this.f29693a);
        this.f29694b = sSLSocketFactory;
        this.f29696d = builder.build();
    }

    private static RequestBody a(com.czhj.volley.Request request) throws AuthFailureError {
        byte[] body = request.getBody();
        if (body == null) {
            return null;
        }
        return RequestBody.create(MediaType.parse(request.getBodyContentType()), body);
    }

    private static void a(Request.Builder builder, com.czhj.volley.Request<?> request) throws AuthFailureError {
        switch (request.getMethod()) {
            case -1:
                byte[] body = request.getBody();
                if (body != null) {
                    builder.post(RequestBody.create(MediaType.parse(request.getBodyContentType()), body));
                    return;
                }
                return;
            case 0:
                builder.get();
                return;
            case 1:
                builder.post(a(request));
                return;
            case 2:
                builder.put(a(request));
                return;
            case 3:
                builder.delete(a(request));
                return;
            case 4:
                builder.head();
                return;
            case 5:
                builder.method("OPTIONS", null);
                return;
            case 6:
                builder.method("TRACE", null);
                return;
            case 7:
                builder.patch(a(request));
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }
}
