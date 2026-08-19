package com.meishu.sdk.core.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static OkHttpClient f31806a;

    /* renamed from: b, reason: collision with root package name */
    public static OkHttpClient f31807b;

    /* renamed from: c, reason: collision with root package name */
    public static Handler f31808c;

    /* renamed from: d, reason: collision with root package name */
    public static long f31809d;

    /* renamed from: e, reason: collision with root package name */
    public static long f31810e;

    public class a implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ z f31811a;

        /* renamed from: com.meishu.sdk.core.utils.a0$a$a, reason: collision with other inner class name */
        public class C0674a extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ IOException f31812a;

            public C0674a(IOException iOException) {
                this.f31812a = iOException;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    a.this.f31811a.onFailure(this.f31812a);
                    String[] strArr = ErrorCodeUtil.ERROR_REPORT_URL;
                    if (strArr == null || strArr.length <= 0) {
                        return;
                    }
                    a0.a(strArr[0], ErrorCodeUtil.NETWORK_ERROR, this.f31812a.toString());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public a(z zVar) {
            this.f31811a = zVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
            a0.f31808c.post(new C0674a(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
            ResponseBody responseBodyBody = response.body();
            q0 q0Var = new q0(response.code(), response.isSuccessful());
            response.headers();
            if (responseBodyBody != null) {
                try {
                    q0Var.f31959c = responseBodyBody.string();
                } catch (Throwable th) {
                    q0Var.f31959c = "";
                    th.printStackTrace();
                }
            }
            try {
                try {
                    this.f31811a.a(q0Var);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } finally {
                response.close();
            }
        }
    }

    public class b implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i f31814a;

        public class a extends com.meishu.sdk.core.safe.l {
            public a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    i iVar = b.this.f31814a;
                    if (iVar != null) {
                        iVar.a();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        /* renamed from: com.meishu.sdk.core.utils.a0$b$b, reason: collision with other inner class name */
        public class C0675b extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Response f31816a;

            public C0675b(Response response) {
                this.f31816a = response;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    if (this.f31816a.isSuccessful()) {
                        i iVar = b.this.f31814a;
                        if (iVar != null) {
                            iVar.success();
                            return;
                        }
                        return;
                    }
                    i iVar2 = b.this.f31814a;
                    if (iVar2 != null) {
                        iVar2.a();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    try {
                        i iVar3 = b.this.f31814a;
                        if (iVar3 != null) {
                            iVar3.a();
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public b(i iVar) {
            this.f31814a = iVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            SdkHandler.runOnMainThread(new a());
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            SdkHandler.runOnMainThread(new C0675b(response));
        }
    }

    public class c extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i f31818a;

        public c(i iVar) {
            this.f31818a = iVar;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                i iVar = this.f31818a;
                if (iVar != null) {
                    iVar.a();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ y f31819a;

        public class a extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ IOException f31820a;

            public a(IOException iOException) {
                this.f31820a = iOException;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                d.this.f31819a.onFailure(this.f31820a);
                String[] strArr = ErrorCodeUtil.ERROR_REPORT_URL;
                if (strArr == null || strArr.length <= 0) {
                    return;
                }
                a0.a(strArr[0], ErrorCodeUtil.NETWORK_ERROR, this.f31820a.toString());
            }
        }

        public d(y yVar) {
            this.f31819a = yVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("e=");
            sbA.append(iOException.getMessage());
            LogUtil.e("HttpUtil", sbA.toString());
            a0.f31808c.post(new a(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
            HttpResponse<byte[]> httpResponse = new HttpResponse<>();
            if (response.isSuccessful()) {
                ResponseBody responseBodyBody = response.body();
                if (responseBodyBody != null) {
                    byte[] bArrBytes = responseBodyBody.bytes();
                    httpResponse.setSuccessful(true);
                    httpResponse.setErrorCode(response.code());
                    httpResponse.setHeader(response.headers());
                    httpResponse.setResponseBody(bArrBytes);
                } else {
                    httpResponse.setSuccessful(false);
                    httpResponse.setErrorCode(response.code());
                    httpResponse.setErrorDescription("bad file");
                }
            } else {
                httpResponse.setSuccessful(false);
                httpResponse.setErrorCode(response.code());
                httpResponse.setErrorDescription(response.message());
            }
            try {
                this.f31819a.onResponse(httpResponse);
            } catch (Exception e2) {
                e2.printStackTrace();
            } finally {
                response.close();
            }
        }
    }

    public class e implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ z f31822a;

        public class a extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ IOException f31823a;

            public a(IOException iOException) {
                this.f31823a = iOException;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                e.this.f31822a.onFailure(this.f31823a);
            }
        }

        public class b extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ q0 f31825a;

            public b(q0 q0Var) {
                this.f31825a = q0Var;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    e.this.f31822a.a(this.f31825a);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public e(z zVar) {
            this.f31822a = zVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                a0.f31808c.post(new a(iOException));
            }
        }

        @Override // okhttp3.Callback
        public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
            ResponseBody responseBodyBody = response.body();
            q0 q0Var = new q0(response.code(), response.isSuccessful());
            response.headers();
            if (responseBodyBody != null) {
                try {
                    q0Var.f31959c = responseBodyBody.string();
                } catch (Throwable th) {
                    q0Var.f31959c = "";
                    th.printStackTrace();
                }
            }
            response.close();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                a0.f31808c.post(new b(q0Var));
                return;
            }
            try {
                this.f31822a.a(q0Var);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements z<q0> {
        @Override // com.meishu.sdk.core.utils.z
        public /* bridge */ /* synthetic */ void a(q0 q0Var) throws IOException {
        }

        @Override // com.meishu.sdk.core.utils.z
        public void onFailure(@NotNull IOException iOException) {
        }
    }

    public class g implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f31827a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ y f31828b;

        public class a extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ IOException f31829a;

            public a(IOException iOException) {
                this.f31829a = iOException;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    g.this.f31828b.onFailure(this.f31829a);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public class b extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ HttpResponse f31831a;

            public b(HttpResponse httpResponse) {
                this.f31831a = httpResponse;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    g.this.f31828b.onResponse(this.f31831a);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public g(boolean z2, y yVar) {
            this.f31827a = z2;
            this.f31828b = yVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(@NotNull Call call, IOException iOException) {
            if (Looper.myLooper() != Looper.getMainLooper() && this.f31827a) {
                a0.f31808c.post(new a(iOException));
                return;
            }
            try {
                this.f31828b.onFailure(iOException);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
            HttpResponse<byte[]> httpResponse = new HttpResponse<>();
            if (response.isSuccessful()) {
                ResponseBody responseBodyBody = response.body();
                if (responseBodyBody != null) {
                    try {
                        byte[] bArrBytes = responseBodyBody.bytes();
                        httpResponse.setSuccessful(true);
                        httpResponse.setResponseBody(bArrBytes);
                    } catch (Throwable unused) {
                        httpResponse.setSuccessful(false);
                        httpResponse.setErrorCode(ErrorCodeUtil.RES_READ_RESPONSE_ERROR.intValue());
                        httpResponse.setErrorDescription("read response error");
                    }
                } else {
                    httpResponse.setSuccessful(false);
                    httpResponse.setErrorCode(response.code());
                    httpResponse.setErrorDescription("bad file");
                }
            } else {
                httpResponse.setSuccessful(false);
                httpResponse.setErrorCode(response.code());
                httpResponse.setErrorDescription(response.message());
            }
            response.close();
            if (Looper.myLooper() != Looper.getMainLooper() && this.f31827a) {
                a0.f31808c.post(new b(httpResponse));
                return;
            }
            try {
                this.f31828b.onResponse(httpResponse);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class h extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ y f31833a;

        public h(y yVar) {
            this.f31833a = yVar;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            this.f31833a.onFailure(new IOException("get file error"));
        }
    }

    public interface i {
        void a();

        void success();
    }

    static {
        MediaType.parse("text/x-markdown; charset=utf-8");
        MediaType.parse(DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG);
        MediaType.parse("audio/mp3");
        MediaType.parse(DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4);
        MediaType.parse("application/octet-stream");
        MediaType.parse("application/json; charset=utf-8");
        f31808c = new Handler(Looper.getMainLooper());
        f31809d = System.currentTimeMillis();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f31806a = builder.connectTimeout(5L, timeUnit).readTimeout(5L, timeUnit).dns(new u("sdk.1rtb.net")).build();
        f31810e = System.currentTimeMillis();
    }

    public static OkHttpClient a() {
        b();
        return f31807b;
    }

    public static void b() {
        if (f31807b != null) {
            return;
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f31807b = builder.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).build();
    }

    public static void a(@NotNull String str, Map<String, String> map, Map<String, String> map2, Map<String, String> map3, @NotNull z<q0> zVar) {
        try {
            HttpUrl httpUrl = HttpUrl.parse(str);
            if (httpUrl == null) {
                return;
            }
            Request.Builder builderUrl = new Request.Builder().url(httpUrl.newBuilder().build());
            FormBody.Builder builder = new FormBody.Builder();
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                builder.add(entry.getKey(), entry.getValue());
            }
            builderUrl.post(builder.build());
            Request requestBuild = builderUrl.build();
            LogUtil.d("HttpUtil", "url[" + requestBuild.url().url().toString() + "]");
            f31806a.newCall(requestBuild).enqueue(new a(zVar));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(Context context, String[] strArr, Map<String, Object> map) {
        if (strArr == null) {
            return;
        }
        try {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                String strReplace = strArr[i2];
                if (map != null) {
                    if (map.containsKey("expectCostPrice")) {
                        Object obj = map.get("expectCostPrice");
                        if (a(obj)) {
                            strReplace = strReplace.replace("__MS_WIN_PRICE__", i0.b(obj + ""));
                        }
                    }
                    if (map.containsKey("highestLossPrice") && a(map.get("highestLossPrice"))) {
                        strReplace = strReplace.replace("__MS_LOSS_PRICE__", i0.b(map.get("highestLossPrice") + ""));
                    }
                }
                a(context, strReplace, new com.meishu.sdk.core.utils.i());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Request request, @NotNull y yVar) {
        if (request == null) {
            return;
        }
        try {
            LogUtil.d("HttpUtil", "url[" + request.url().url().toString() + "]");
            f31806a.newCall(request).enqueue(new d(yVar));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(@NotNull String str, Map<String, String> map, @NotNull z<q0> zVar) {
        try {
            HttpUrl httpUrl = HttpUrl.parse(str);
            if (httpUrl == null) {
                return;
            }
            Request requestBuild = new Request.Builder().url(httpUrl.newBuilder().build()).get().build();
            LogUtil.d("HttpUtil", "url[" + requestBuild.url().url().toString() + "]");
            f31806a.newCall(requestBuild).enqueue(new e(zVar));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(String str, Map<String, String> map, com.meishu.sdk.core.utils.i iVar) {
        try {
            Headers.Builder builder = new Headers.Builder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                builder.add(entry.getKey(), entry.getValue());
            }
            HttpUrl httpUrl = HttpUrl.parse(str);
            if (httpUrl == null) {
                return;
            }
            Request requestBuild = new Request.Builder().headers(builder.build()).url(httpUrl.newBuilder().build()).get().build();
            if (f31807b == null) {
                b();
            }
            LogUtil.d("HttpUtil", "url[" + requestBuild.url().url().toString() + "]");
            f31807b.newCall(requestBuild).enqueue(new e0(iVar));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, String str, com.meishu.sdk.core.utils.i iVar) {
        try {
            HashMap map = new HashMap();
            String strN = y0.n(context);
            map.put("X-Requested-With", "");
            map.put("User-Agent", strN != null ? strN : "");
            a(str, map, iVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(String str, Integer num, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (num == null) {
            num = -1;
        }
        int iIntValue = num.intValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String[] strArr = {"__ERROR_CODE__", "__ERROR_MESSAGE__", "__MS_EVENT_SEC__", "__MS_EVENT_MSEC__"};
        String strValueOf = iIntValue != 0 ? String.valueOf(iIntValue) : "__ERROR_CODE__";
        if (TextUtils.isEmpty(str2)) {
            str2 = "__ERROR_MESSAGE__";
        }
        String string = TextUtils.replace(str, strArr, new String[]{strValueOf, str2, String.valueOf(jCurrentTimeMillis / 1000), String.valueOf(jCurrentTimeMillis)}).toString();
        LogUtil.d("HttpUtil", "错误上报： " + string);
        a(string, (Map<String, String>) null, new f());
    }

    public static void a(String str, @NotNull y yVar, boolean z2) {
        try {
            Request requestBuild = new Request.Builder().url(str).build();
            if (f31807b == null) {
                b();
            }
            f31807b.newCall(requestBuild).enqueue(new g(z2, yVar));
        } catch (Throwable th) {
            if (Looper.myLooper() != Looper.getMainLooper() && z2) {
                f31808c.post(new h(yVar));
            } else {
                try {
                    yVar.onFailure(new IOException("get file error"));
                } catch (Exception unused) {
                    th.printStackTrace();
                }
            }
            th.printStackTrace();
        }
    }

    public static void a(Context context, String[] strArr, Map<String, Object> map) {
        if (strArr == null) {
            return;
        }
        try {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                String strReplace = strArr[i2];
                if (map != null) {
                    if (map.containsKey("winPrice") && a(map.get("winPrice"))) {
                        strReplace = strReplace.replace("__MS_WIN_PRICE__", i0.b(map.get("winPrice") + ""));
                    }
                    if (map.containsKey("lossReason")) {
                        String str = map.get("lossReason") + "";
                        if ("1".equals(str) || "101".equals(str) || "10001".equals(str)) {
                            strReplace = strReplace.replace("__MS_LOSS_REASON__", i0.b(str));
                        }
                    }
                    if (map.containsKey("adnId")) {
                        String str2 = map.get("adnId") + "";
                        if ("1".equals(str2) || "2".equals(str2) || "3".equals(str2) || "4".equals(str2)) {
                            strReplace = strReplace.replace("__MS_ADN_ID__", str2);
                        }
                    }
                }
                a(context, strReplace, new com.meishu.sdk.core.utils.i());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean a(Object obj) {
        if ((obj instanceof Double) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float)) {
            return true;
        }
        if (obj instanceof String) {
            try {
                Double.parseDouble((String) obj);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static void a(String str, i iVar) {
        try {
            f31807b.newCall(new Request.Builder().url(str).head().build()).enqueue(new b(iVar));
        } catch (Exception e2) {
            e2.printStackTrace();
            SdkHandler.runOnMainThread(new c(iVar));
        }
    }
}
