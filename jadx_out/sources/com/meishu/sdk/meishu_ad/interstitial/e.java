package com.meishu.sdk.meishu_ad.interstitial;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.meishu.sdk.activity.SdkInterstitialActivity;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.y;
import com.meishu.sdk.core.view.gif.GifImageView;
import java.io.IOException;
import java.math.BigInteger;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class e implements y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f32262a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f32263b;

    public e(c cVar, Activity activity) {
        this.f32263b = cVar;
        this.f32262a = activity;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        a aVar = this.f32263b.f32248b;
        if (aVar != null) {
            ((com.meishu.sdk.platform.ms.interstitial.a) aVar).onAdRenderFail("load image error", -1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        try {
            if (!httpResponse.isSuccessful()) {
                a aVar = this.f32263b.f32248b;
                if (aVar != null) {
                    ((com.meishu.sdk.platform.ms.interstitial.a) aVar).onAdRenderFail("load image error", httpResponse.getErrorCode());
                    return;
                }
                return;
            }
            try {
                byte[] responseBody = httpResponse.getResponseBody();
                if (responseBody == null || responseBody.length <= 0) {
                    a aVar2 = this.f32263b.f32248b;
                    if (aVar2 != null) {
                        ((com.meishu.sdk.platform.ms.interstitial.a) aVar2).onAdRenderFail("load image error", httpResponse.getErrorCode());
                        return;
                    }
                    return;
                }
                this.f32263b.getClass();
                byte[] bArr = new byte[4];
                System.arraycopy(responseBody, 0, bArr, 0, 4);
                if (new BigInteger(1, bArr).toString(16).startsWith("47494638")) {
                    GifImageView gifImageView = new GifImageView(this.f32262a);
                    gifImageView.setBytes(responseBody);
                    this.f32263b.f32251e = gifImageView.getGifHeight();
                    this.f32263b.f32252f = gifImageView.getGifWidth();
                    gifImageView.clear();
                } else {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                    this.f32263b.f32252f = bitmapDecodeByteArray.getWidth();
                    this.f32263b.f32251e = bitmapDecodeByteArray.getHeight();
                }
                c cVar = this.f32263b;
                if (cVar.f32251e > cVar.f32252f) {
                    cVar.f32250d = 2;
                }
                LogUtil.d("NativeInterstitialAd", "create_type=" + this.f32263b.a().getAdPatternType());
                LogUtil.d("NativeInterstitialAd", "actType=" + this.f32263b.a().getAct_type());
                SdkInterstitialActivity.setSdkAd(this.f32263b);
                SdkInterstitialActivity.setAdWrapper(this.f32263b.f32247a);
                SdkInterstitialActivity.setMsAd(this.f32263b);
                SdkInterstitialActivity.setAdListener(this.f32263b.f32248b);
                Intent intent = new Intent(this.f32262a, (Class<?>) SdkInterstitialActivity.class);
                intent.putExtra("isVideoAutoPlay", ((InterstitialAdLoader) this.f32263b.f32247a.getAdLoader()).getIsVideoAutoPlay());
                intent.putExtra("isClickToClose", ((InterstitialAdLoader) this.f32263b.f32247a.getAdLoader()).getIsClickToClose());
                intent.putExtra("act_type", this.f32263b.a().getAct_type());
                intent.putExtra("layout_type", this.f32263b.f32250d);
                intent.putExtra("layout_width", this.f32263b.f32252f);
                intent.putExtra("layout_height", this.f32263b.f32251e);
                this.f32262a.startActivity(intent);
            } catch (Throwable th) {
                a aVar3 = this.f32263b.f32248b;
                if (aVar3 != null) {
                    ((com.meishu.sdk.platform.ms.interstitial.a) aVar3).onAdRenderFail("load image error", httpResponse.getErrorCode());
                }
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            a aVar4 = this.f32263b.f32248b;
            if (aVar4 != null) {
                ((com.meishu.sdk.platform.ms.interstitial.a) aVar4).onAdRenderFail("load image error", httpResponse.getErrorCode());
            }
            th2.printStackTrace();
        }
    }
}
