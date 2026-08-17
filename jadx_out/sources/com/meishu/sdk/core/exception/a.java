package com.meishu.sdk.core.exception;

import android.content.Context;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.y0;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.bv;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.Thread;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList<String> f31572a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f31573b;

    /* renamed from: com.meishu.sdk.core.exception.a$a, reason: collision with other inner class name */
    public class C0652a implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f31574a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ CountDownLatch f31575b;

        public C0652a(boolean z2, CountDownLatch countDownLatch) {
            this.f31574a = z2;
            this.f31575b = countDownLatch;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            LogUtil.dev("UncaughtExceptionProcessor", iOException);
            if (this.f31574a) {
                this.f31575b.countDown();
            }
            LogUtil.e("UncaughtExceptionProcessor", "uploadException error ");
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            if (this.f31574a) {
                this.f31575b.countDown();
            }
        }
    }

    public static class b implements Thread.UncaughtExceptionHandler {

        /* renamed from: a, reason: collision with root package name */
        public Context f31576a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f31577b;

        /* renamed from: c, reason: collision with root package name */
        public Thread.UncaughtExceptionHandler f31578c;

        public b(Context context, boolean z2, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f31576a = context;
            this.f31577b = z2;
            this.f31578c = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                a.a(this.f31576a, this.f31577b, thread, th, true);
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f31578c;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            } catch (Throwable unused) {
            }
        }
    }

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f31572a = arrayList;
        f31573b = true;
        arrayList.add("pid");
        arrayList.add("app_package");
        arrayList.add("device_os");
        arrayList.add("app_id");
        arrayList.add("app_name");
        arrayList.add("app_ver");
        arrayList.add("device_ppi");
        arrayList.add("device_width");
        arrayList.add("device_height");
        arrayList.add("device_density");
        arrayList.add("device_type_os");
        arrayList.add("device_api_level");
        arrayList.add(bv.f48881H);
        arrayList.add(bv.f48879F);
        arrayList.add("device_model");
        arrayList.add("device_network");
        arrayList.add("sdk_version");
        arrayList.add("sdk_version_code");
        arrayList.add("accept_ad_type");
        arrayList.add("device_rom_version");
        arrayList.add("device_performance");
        arrayList.add("device_disk_total");
        arrayList.add("device_disk_free");
        arrayList.add("device_font_size");
        arrayList.add("device_cpu_model");
        arrayList.add("accept_act_type");
    }

    public static void a(Throwable th) {
        try {
            a(AdSdk.getContext(), AdSdk.adConfig() != null ? AdSdk.adConfig().isTest() : false, Thread.currentThread(), th, false);
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, boolean z2, Thread thread, Throwable th, boolean z3) {
        try {
            Map<String, String> mapA = y0.a(context, null, null, 0L, 0L);
            FormBody.Builder builder = new FormBody.Builder();
            for (Map.Entry entry : ((HashMap) mapA).entrySet()) {
                if (f31572a.contains(entry.getKey())) {
                    builder.add((String) entry.getKey(), (String) entry.getValue());
                }
            }
            builder.add("thread", thread.getName());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            th.printStackTrace(new PrintStream(byteArrayOutputStream));
            builder.add("message", new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8")));
            builder.add(be.f48798a, z2 ? "test" : IAdInterListener.AdReqParam.PROD);
            builder.add("func", z3 ? "0" : "1");
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Request requestBuild = new Request.Builder().url("https://sdk-report.1rtb.com/reports").post(builder.build()).build();
            C0652a c0652a = new C0652a(z3, countDownLatch);
            if (a0.f31807b == null) {
                a0.b();
            }
            a0.f31807b.newCall(requestBuild).enqueue(c0652a);
            if (z3) {
                countDownLatch.await(2L, TimeUnit.SECONDS);
            }
        } catch (Throwable unused) {
        }
    }
}
