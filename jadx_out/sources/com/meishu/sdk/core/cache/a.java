package com.meishu.sdk.core.cache;

import android.graphics.Bitmap;
import android.os.Looper;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.y;
import java.io.IOException;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: com.meishu.sdk.core.cache.a$a, reason: collision with other inner class name */
    public class C0649a implements d {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f31526a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ y f31527b;

        /* renamed from: com.meishu.sdk.core.cache.a$a$a, reason: collision with other inner class name */
        public class C0650a extends l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ byte[] f31528a;

            public C0650a(byte[] bArr) {
                this.f31528a = bArr;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                C0649a.this.a(this.f31528a);
            }
        }

        /* renamed from: com.meishu.sdk.core.cache.a$a$b */
        public class b extends l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f31530a;

            public b(int i2) {
                this.f31530a = i2;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                y yVar = C0649a.this.f31527b;
                if (yVar != null) {
                    StringBuilder sbA = com.meishu.sdk.activity.a.a("download image error2:");
                    sbA.append(this.f31530a);
                    yVar.onFailure(new IOException(sbA.toString()));
                }
            }
        }

        public C0649a(boolean z2, y yVar) {
            this.f31526a = z2;
            this.f31527b = yVar;
        }

        @Override // com.meishu.sdk.core.cache.d
        public void a() {
        }

        @Override // com.meishu.sdk.core.cache.d
        public void a(Bitmap bitmap, byte[] bArr, boolean z2) {
            if (Looper.getMainLooper() == Looper.myLooper() || !this.f31526a) {
                a(bArr);
            } else {
                SdkHandler.runOnMainThread(new C0650a(bArr));
            }
        }

        @Override // com.meishu.sdk.core.cache.d
        public void a(int i2) {
            try {
                if (Looper.getMainLooper() != Looper.myLooper() && this.f31526a) {
                    SdkHandler.runOnMainThread(new b(i2));
                    return;
                }
                y yVar = this.f31527b;
                if (yVar != null) {
                    yVar.onFailure(new IOException("download image error2:" + i2));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        public final void a(byte[] bArr) {
            try {
                if (this.f31527b != null) {
                    HttpResponse<byte[]> httpResponse = new HttpResponse<>();
                    httpResponse.setSuccessful(true);
                    httpResponse.setResponseBody(bArr);
                    this.f31527b.onResponse(httpResponse);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String str, y yVar, boolean z2) {
        c.a(str, new C0649a(z2, yVar));
    }
}
