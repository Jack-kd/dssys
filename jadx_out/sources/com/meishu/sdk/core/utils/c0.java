package com.meishu.sdk.core.utils;

import android.graphics.Bitmap;
import com.meishu.sdk.core.domain.HttpResponse;
import java.io.IOException;

/* loaded from: classes4.dex */
public class c0 implements com.meishu.sdk.core.cache.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f31840a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f31841b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f31842c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f31843d;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f31844a;

        public a(int i2) {
            this.f31844a = i2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            x xVar = c0.this.f31840a;
            StringBuilder sbA = com.meishu.sdk.activity.a.a("download error1:");
            sbA.append(this.f31844a);
            xVar.onFailure(new IOException(sbA.toString()));
        }
    }

    public class b extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ byte[] f31846a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Bitmap f31847b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Bitmap f31848c;

        public b(byte[] bArr, Bitmap bitmap, Bitmap bitmap2) {
            this.f31846a = bArr;
            this.f31847b = bitmap;
            this.f31848c = bitmap2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                HttpResponse<byte[]> httpResponse = new HttpResponse<>();
                httpResponse.setSuccessful(true);
                httpResponse.setResponseBody(this.f31846a);
                c0.this.f31840a.a(httpResponse, this.f31847b, this.f31848c);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public c0(x xVar, int i2, int i3, int i4) {
        this.f31840a = xVar;
        this.f31841b = i2;
        this.f31842c = i3;
        this.f31843d = i4;
    }

    @Override // com.meishu.sdk.core.cache.d
    public void a() {
    }

    @Override // com.meishu.sdk.core.cache.d
    public void a(int i2) {
        SdkHandler.runOnMainThread(new a(i2));
    }

    @Override // com.meishu.sdk.core.cache.d
    public void a(Bitmap bitmap, byte[] bArr, boolean z2) {
        Bitmap bitmap2 = null;
        if (bArr != null) {
            try {
                if (!f0.a(bArr)) {
                    Bitmap[] bitmapArrA = com.meishu.sdk.meishu_ad.v.a(this.f31841b, bitmap, this.f31842c, this.f31843d);
                    if (bitmapArrA.length == 2) {
                        bitmap = bitmapArrA[0];
                        bitmap2 = bitmapArrA[1];
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        SdkHandler.runOnMainThread(new b(bArr, bitmap, bitmap2));
    }
}
