package com.meishu.sdk.core.utils;

import android.text.TextUtils;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.utils.C1243b;
import com.meishu.sdk.core.utils.h0;
import com.umeng.analytics.pro.bv;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f32001a = 0;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String[] f32002a;

        /* renamed from: com.meishu.sdk.core.utils.t$a$a, reason: collision with other inner class name */
        public class C0676a implements y {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ CountDownLatch f32003a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ File f32004b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ File f32005c;

            public C0676a(a aVar, CountDownLatch countDownLatch, File file, File file2) {
                this.f32003a = countDownLatch;
                this.f32004b = file;
                this.f32005c = file2;
            }

            @Override // com.meishu.sdk.core.utils.y
            public void onFailure(@NotNull IOException iOException) {
                this.f32003a.countDown();
            }

            @Override // com.meishu.sdk.core.utils.y
            public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
                File file;
                try {
                    if (httpResponse.isSuccessful() && (file = this.f32004b) != null && file.exists() && !this.f32005c.exists()) {
                        this.f32004b.renameTo(this.f32005c);
                    }
                    File file2 = this.f32004b;
                    if (file2 != null && file2.exists()) {
                        this.f32004b.delete();
                    }
                } catch (Throwable unused) {
                }
                this.f32003a.countDown();
            }
        }

        public a(String[] strArr) {
            this.f32002a = strArr;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            for (String str : this.f32002a) {
                if (TextUtils.isEmpty(str)) {
                    LogUtil.dev(bv.aI, "url is null");
                } else {
                    File fileA = com.meishu.sdk.core.bquery.g.a(str, (String) null);
                    if (fileA == null || !fileA.exists()) {
                        File fileA2 = com.meishu.sdk.core.bquery.g.a(str, "fTemp");
                        CountDownLatch countDownLatch = new CountDownLatch(1);
                        C0676a c0676a = new C0676a(this, countDownLatch, fileA2, fileA);
                        OkHttpClient okHttpClient = a0.f31806a;
                        try {
                            Request requestBuild = new Request.Builder().url(str).build();
                            if (a0.f31807b == null) {
                                a0.b();
                            }
                            a0.f31807b.newCall(requestBuild).enqueue(new b0(c0676a, fileA2));
                        } catch (Throwable th) {
                            try {
                                c0676a.onFailure(new IOException("get file error"));
                            } catch (Throwable th2) {
                                th2.printStackTrace();
                            }
                            th.printStackTrace();
                        }
                        try {
                            if (countDownLatch.getCount() > 0) {
                                countDownLatch.await(50L, TimeUnit.SECONDS);
                            }
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    public static void a(final String[] strArr, com.meishu.sdk.core.loader.d dVar) {
        if (!(dVar instanceof com.meishu.sdk.platform.ms.splash.a)) {
            a(strArr);
            return;
        }
        try {
            C1243b resLoadSuccess = ((com.meishu.sdk.meishu_ad.splash.d) ((com.meishu.sdk.platform.ms.splash.a) dVar).f32888a).getAppendInfo().getResLoadSuccess();
            if (resLoadSuccess.f31835b) {
                a(strArr);
            } else {
                resLoadSuccess.a(new C1243b.a() { // from class: com.meishu.sdk.core.utils.B
                    @Override // com.meishu.sdk.core.utils.C1243b.a
                    public final void a(Object obj, Object obj2) {
                        t.a(strArr, (Boolean) obj, (Boolean) obj2);
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static /* synthetic */ void a(String[] strArr, Boolean bool, Boolean bool2) {
        if (Boolean.TRUE.equals(bool2)) {
            a(strArr);
        }
    }

    public static void a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        ExecutorService executorService = h0.f31906a;
        h0.b.f31910a.a(new a(strArr));
    }
}
