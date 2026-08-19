package com.meishu.sdk.core.utils;

import android.os.Looper;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class e0 implements Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f31878a;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ IOException f31879a;

        public a(IOException iOException) {
            this.f31879a = iOException;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            e0.this.f31878a.getClass();
            String[] strArr = ErrorCodeUtil.ERROR_REPORT_URL;
            if (strArr == null || strArr.length <= 0) {
                return;
            }
            a0.a(strArr[0], ErrorCodeUtil.NETWORK_ERROR, this.f31879a.toString());
        }
    }

    public class b extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ HttpResponse f31881a;

        public b(HttpResponse httpResponse) {
            this.f31881a = httpResponse;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                i iVar = e0.this.f31878a;
                HttpResponse httpResponse = this.f31881a;
                iVar.getClass();
                LogUtil.d("DefaultHttpGetWithNoHandlerCallback", "onResponse: " + httpResponse.getErrorCode());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public e0(i iVar) {
        this.f31878a = iVar;
    }

    @Override // okhttp3.Callback
    public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            a0.f31808c.post(new a(iOException));
        }
    }

    @Override // okhttp3.Callback
    public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
        HttpResponse httpResponse = new HttpResponse();
        if (response.isSuccessful()) {
            httpResponse.setSuccessful(true);
            response.body();
        } else {
            httpResponse.setSuccessful(false);
            httpResponse.setErrorCode(response.code());
            httpResponse.setErrorDescription(response.message());
        }
        response.close();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            a0.f31808c.post(new b(httpResponse));
            return;
        }
        try {
            this.f31878a.getClass();
            LogUtil.d("DefaultHttpGetWithNoHandlerCallback", "onResponse: " + httpResponse.getErrorCode());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
