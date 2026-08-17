package com.meishu.sdk.meishu_ad;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.R;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.banner.MeishuBannerRootView;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class a implements com.meishu.sdk.core.utils.y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.banner.b f32158a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.banner.a f32159b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MeishuBannerRootView f32160c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GifImageView f32161d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.core.bquery.i f32162e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ v f32163f;

    /* renamed from: com.meishu.sdk.meishu_ad.a$a, reason: collision with other inner class name */
    public class C0681a extends com.meishu.sdk.core.safe.o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.platform.ms.banner.c f32164a;

        public C0681a(com.meishu.sdk.platform.ms.banner.c cVar) {
            this.f32164a = cVar;
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            if (a.this.f32160c.getParent() != null) {
                ((ViewGroup) a.this.f32160c.getParent()).removeView(a.this.f32160c);
            }
            com.meishu.sdk.meishu_ad.banner.b bVar = a.this.f32158a;
            if (bVar != null) {
                ((com.meishu.sdk.platform.ms.banner.a) bVar).f32850a.onAdClosed();
            }
            if (this.f32164a.getInteractionListener() != null) {
                this.f32164a.getInteractionListener().onAdClosed();
            }
        }
    }

    public class b extends com.meishu.sdk.core.safe.o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.platform.ms.banner.c f32166a;

        public b(com.meishu.sdk.platform.ms.banner.c cVar) {
            this.f32166a = cVar;
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            if (this.f32166a.getInteractionListener() != null && a.this.f32159b.getCbc() == 0) {
                this.f32166a.getInteractionListener().onAdClicked();
            }
            a.this.f32159b.setClkActType(1);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32166a, true);
        }
    }

    public a(v vVar, com.meishu.sdk.meishu_ad.banner.b bVar, com.meishu.sdk.meishu_ad.banner.a aVar, MeishuBannerRootView meishuBannerRootView, GifImageView gifImageView, com.meishu.sdk.core.bquery.i iVar) {
        this.f32163f = vVar;
        this.f32158a = bVar;
        this.f32159b = aVar;
        this.f32160c = meishuBannerRootView;
        this.f32161d = gifImageView;
        this.f32162e = iVar;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        this.f32163f.a(this.f32158a, "图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR);
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        try {
            if (!httpResponse.isSuccessful()) {
                this.f32163f.a(this.f32158a, "图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR);
                return;
            }
            byte[] responseBody = httpResponse.getResponseBody();
            if (responseBody == null || responseBody.length <= 0) {
                this.f32163f.a(this.f32158a, "图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR);
                return;
            }
            if (responseBody.length >= com.meishu.sdk.core.utils.j0.a()) {
                this.f32163f.a(this.f32158a, "图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR);
                return;
            }
            this.f32163f.f32584p = System.currentTimeMillis();
            com.meishu.sdk.meishu_ad.banner.a aVar = this.f32159b;
            aVar.setMonitorUrl(com.meishu.sdk.core.utils.i0.b(aVar.getMonitorUrl(), this.f32163f.a()));
            com.meishu.sdk.platform.ms.banner.c cVar = new com.meishu.sdk.platform.ms.banner.c(this.f32159b);
            this.f32160c.setBannerAd(cVar);
            if (this.f32158a != null) {
                cVar.setAdView(this.f32160c);
                ((com.meishu.sdk.platform.ms.banner.a) this.f32158a).onADLoaded(cVar);
            }
            if (com.meishu.sdk.core.utils.f0.a(responseBody)) {
                GifImageView gifImageView = this.f32161d;
                if (gifImageView != null) {
                    gifImageView.setBytes(responseBody);
                    this.f32161d.startAnimation();
                }
            } else {
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                if (bitmapDecodeByteArray == null) {
                    this.f32163f.a(this.f32158a, "图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR);
                    return;
                }
                this.f32161d.setImageBitmap(bitmapDecodeByteArray);
            }
            com.meishu.sdk.core.bquery.i iVarB = this.f32162e.b(R.id.ms_banner_close_button);
            C0681a c0681a = new C0681a(cVar);
            View view = iVarB.f31521d;
            if (view != null) {
                view.setOnClickListener(c0681a);
            }
            com.meishu.sdk.core.bquery.i iVarB2 = this.f32162e.b(R.id.ms_banner_image);
            b bVar = new b(cVar);
            View view2 = iVarB2.f31521d;
            if (view2 != null) {
                view2.setOnClickListener(bVar);
            }
        } catch (Throwable unused) {
            this.f32163f.a(this.f32158a, "图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR);
        }
    }
}
