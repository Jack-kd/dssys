package com.meishu.sdk.meishu_ad;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.google.gson.Gson;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.l1;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import java.io.IOException;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class u implements com.meishu.sdk.core.utils.x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32554a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32555b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32556c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f32557d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ImageView f32558e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f32559f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32560g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f32561h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f32562i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ v f32563j;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ byte[] f32564a;

        public a(byte[] bArr) {
            this.f32564a = bArr;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            u.this.f32563j.f32586r.setBytes(this.f32564a);
            u uVar = u.this;
            uVar.f32554a.setWidth(Integer.valueOf(uVar.f32563j.f32586r.getGifWidth()));
            u uVar2 = u.this;
            uVar2.f32554a.setHeight(Integer.valueOf(uVar2.f32563j.f32586r.getGifHeight()));
            u.this.f32563j.f32586r.startAnimation();
        }
    }

    public u(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, com.meishu.sdk.meishu_ad.splash.a aVar, View view, ImageView imageView, int i2, com.meishu.sdk.meishu_ad.splash.d dVar, int i3, int i4) {
        this.f32563j = vVar;
        this.f32554a = cVar;
        this.f32555b = meishuSplashRootView;
        this.f32556c = aVar;
        this.f32557d = view;
        this.f32558e = imageView;
        this.f32559f = i2;
        this.f32560g = dVar;
        this.f32561h = i3;
        this.f32562i = i4;
    }

    @Override // com.meishu.sdk.core.utils.x
    public void a(HttpResponse<byte[]> httpResponse, Bitmap bitmap, Bitmap bitmap2) throws IOException {
        this.f32563j.f32584p = System.currentTimeMillis();
        this.f32563j.a(this.f32554a, this.f32555b, this.f32556c, this.f32557d, true);
        try {
            if (!httpResponse.isSuccessful()) {
                v vVar = this.f32563j;
                com.meishu.sdk.meishu_ad.splash.c cVar = this.f32554a;
                GifImageView gifImageView = vVar.f32586r;
                ImageView imageView = this.f32558e;
                int i2 = this.f32559f;
                com.meishu.sdk.meishu_ad.splash.d dVar = this.f32560g;
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32556c;
                ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                vVar.a(cVar, gifImageView, imageView, i2, dVar, aVar, this.f32561h, this.f32562i);
                return;
            }
            try {
                byte[] responseBody = httpResponse.getResponseBody();
                if (responseBody == null || responseBody.length <= 0) {
                    v vVar2 = this.f32563j;
                    com.meishu.sdk.meishu_ad.splash.c cVar2 = this.f32554a;
                    GifImageView gifImageView2 = vVar2.f32586r;
                    ImageView imageView2 = this.f32558e;
                    int i3 = this.f32559f;
                    com.meishu.sdk.meishu_ad.splash.d dVar2 = this.f32560g;
                    com.meishu.sdk.meishu_ad.splash.a aVar2 = this.f32556c;
                    ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                    vVar2.a(cVar2, gifImageView2, imageView2, i3, dVar2, aVar2, this.f32561h, this.f32562i);
                    return;
                }
                if (responseBody.length >= com.meishu.sdk.core.utils.j0.a()) {
                    v vVar3 = this.f32563j;
                    com.meishu.sdk.meishu_ad.splash.c cVar3 = this.f32554a;
                    GifImageView gifImageView3 = vVar3.f32586r;
                    ImageView imageView3 = this.f32558e;
                    int i4 = this.f32559f;
                    com.meishu.sdk.meishu_ad.splash.d dVar3 = this.f32560g;
                    com.meishu.sdk.meishu_ad.splash.a aVar3 = this.f32556c;
                    ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                    vVar3.a(cVar3, gifImageView3, imageView3, i4, dVar3, aVar3, this.f32561h, this.f32562i);
                    return;
                }
                this.f32563j.getClass();
                if (com.meishu.sdk.core.utils.f0.a(responseBody)) {
                    v vVar4 = this.f32563j;
                    GifImageView gifImageView4 = vVar4.f32586r;
                    if (gifImageView4 == null) {
                        com.meishu.sdk.meishu_ad.splash.c cVar4 = this.f32554a;
                        ImageView imageView4 = this.f32558e;
                        int i5 = this.f32559f;
                        com.meishu.sdk.meishu_ad.splash.d dVar4 = this.f32560g;
                        com.meishu.sdk.meishu_ad.splash.a aVar4 = this.f32556c;
                        ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                        vVar4.a(cVar4, gifImageView4, imageView4, i5, dVar4, aVar4, this.f32561h, this.f32562i);
                        return;
                    }
                    gifImageView4.post(new a(responseBody));
                    try {
                        Gson gson = new Gson();
                        HashMap map = new HashMap();
                        map.put("stepNum", 3);
                        map.put("msg", "image succ, gif not null");
                        map.put("creativeType", Integer.valueOf(this.f32560g.getAdPatternType()));
                        p1.a(this.f32554a.f32515b.getErrorUrl(), gson.toJson(map));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    this.f32563j.f32584p = System.currentTimeMillis();
                    l1.a(this.f32560g, 1, false);
                    v.a(this.f32563j.f32567A != 1, this.f32556c, this.f32554a);
                    v vVar5 = this.f32563j;
                    com.meishu.sdk.meishu_ad.splash.c cVar5 = this.f32554a;
                    com.meishu.sdk.meishu_ad.splash.a aVar5 = this.f32556c;
                    vVar5.f32576h = true;
                    if (vVar5.f32574f != 1 || vVar5.f32575g) {
                        vVar5.a(cVar5, aVar5);
                    }
                    try {
                        p1.c(this.f32554a.f32515b.getEventUrl(), 200, "加载成功");
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
                if (bitmap == null) {
                    v vVar6 = this.f32563j;
                    com.meishu.sdk.meishu_ad.splash.c cVar6 = this.f32554a;
                    GifImageView gifImageView5 = vVar6.f32586r;
                    ImageView imageView5 = this.f32558e;
                    int i6 = this.f32559f;
                    com.meishu.sdk.meishu_ad.splash.d dVar5 = this.f32560g;
                    com.meishu.sdk.meishu_ad.splash.a aVar6 = this.f32556c;
                    ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                    vVar6.a(cVar6, gifImageView5, imageView5, i6, dVar5, aVar6, this.f32561h, this.f32562i);
                    return;
                }
                try {
                    Gson gson2 = new Gson();
                    HashMap map2 = new HashMap();
                    map2.put("stepNum", 3);
                    map2.put("msg", "image succ,bitmap not null");
                    map2.put("creativeType", Integer.valueOf(this.f32560g.getAdPatternType()));
                    p1.a(this.f32554a.f32515b.getErrorUrl(), gson2.toJson(map2));
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                l1.a(this.f32560g, 1, false);
                v vVar7 = this.f32563j;
                vVar7.a(this.f32559f, bitmap, vVar7.f32586r, this.f32558e, bitmap2);
                this.f32554a.setWidth(Integer.valueOf(bitmap.getWidth()));
                this.f32554a.setHeight(Integer.valueOf(bitmap.getHeight()));
                this.f32563j.f32584p = System.currentTimeMillis();
                this.f32563j.f32576h = true;
                try {
                    p1.c(this.f32554a.f32515b.getEventUrl(), 200, "加载成功");
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                v.a(this.f32560g);
                v.a(this.f32563j.f32567A != 1, this.f32556c, this.f32554a);
                v vVar8 = this.f32563j;
                if (vVar8.f32574f != 1 || vVar8.f32575g) {
                    com.meishu.sdk.meishu_ad.splash.d dVar6 = this.f32560g;
                    dVar6.setMonitorUrl(com.meishu.sdk.core.utils.i0.b(dVar6.getMonitorUrl(), this.f32563j.a()));
                    this.f32563j.a(this.f32554a, this.f32556c);
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
                v vVar9 = this.f32563j;
                com.meishu.sdk.meishu_ad.splash.c cVar7 = this.f32554a;
                GifImageView gifImageView6 = vVar9.f32586r;
                ImageView imageView6 = this.f32558e;
                int i7 = this.f32559f;
                com.meishu.sdk.meishu_ad.splash.d dVar7 = this.f32560g;
                com.meishu.sdk.meishu_ad.splash.a aVar7 = this.f32556c;
                ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                vVar9.a(cVar7, gifImageView6, imageView6, i7, dVar7, aVar7, this.f32561h, this.f32562i);
            }
        } catch (Throwable th4) {
            v vVar10 = this.f32563j;
            com.meishu.sdk.meishu_ad.splash.c cVar8 = this.f32554a;
            GifImageView gifImageView7 = vVar10.f32586r;
            ImageView imageView7 = this.f32558e;
            int i8 = this.f32559f;
            com.meishu.sdk.meishu_ad.splash.d dVar8 = this.f32560g;
            com.meishu.sdk.meishu_ad.splash.a aVar8 = this.f32556c;
            ErrorCodeUtil.RES_LOAD_ERROR.getClass();
            vVar10.a(cVar8, gifImageView7, imageView7, i8, dVar8, aVar8, this.f32561h, this.f32562i);
            th4.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.utils.x
    public void onFailure(@NotNull IOException iOException) {
        this.f32563j.f32584p = System.currentTimeMillis();
        this.f32563j.a(this.f32554a, this.f32555b, this.f32556c, this.f32557d, true);
        v vVar = this.f32563j;
        com.meishu.sdk.meishu_ad.splash.c cVar = this.f32554a;
        GifImageView gifImageView = vVar.f32586r;
        ImageView imageView = this.f32558e;
        int i2 = this.f32559f;
        com.meishu.sdk.meishu_ad.splash.d dVar = this.f32560g;
        com.meishu.sdk.meishu_ad.splash.a aVar = this.f32556c;
        ErrorCodeUtil.RES_LOAD_ERROR.getClass();
        vVar.a(cVar, gifImageView, imageView, i2, dVar, aVar, this.f32561h, this.f32562i);
    }
}
