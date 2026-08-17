package com.meishu.sdk.core.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.domain.HttpResponse;
import java.io.IOException;
import java.lang.ref.SoftReference;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class d0 implements y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SoftReference f31871a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f31872b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f31873c;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ImageView f31874a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Bitmap f31875b;

        public a(d0 d0Var, ImageView imageView, Bitmap bitmap) {
            this.f31874a = imageView;
            this.f31875b = bitmap;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            this.f31874a.setImageBitmap(this.f31875b);
        }
    }

    public d0(SoftReference softReference, String str, boolean z2) {
        this.f31871a = softReference;
        this.f31872b = str;
        this.f31873c = z2;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        byte[] responseBody;
        Bitmap bitmapDecodeByteArray;
        ImageView imageView;
        try {
            if (!httpResponse.isSuccessful() || (responseBody = httpResponse.getResponseBody()) == null || responseBody.length <= 0 || (bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length)) == null || (imageView = (ImageView) this.f31871a.get()) == null || imageView.getTag() == null || !imageView.getTag().equals(this.f31872b)) {
                return;
            }
            if (this.f31873c) {
                AdSdk.getContext();
                bitmapDecodeByteArray = f0.a(bitmapDecodeByteArray, 25);
            }
            a0.f31808c.post(new a(this, imageView, bitmapDecodeByteArray));
        } catch (Throwable unused) {
        }
    }
}
