package com.meishu.sdk.platform.ms.draw;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.draw.DrawAdLoader;
import com.meishu.sdk.core.ad.draw.IDrawAd;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.core.utils.y;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.draw.MeishuDrawRootView;
import com.meishu.sdk.meishu_ad.v;
import java.io.IOException;
import java.math.BigInteger;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class g extends com.meishu.sdk.platform.ms.g<com.meishu.sdk.meishu_ad.nativ.f, DrawAdLoader, com.meishu.sdk.core.ad.draw.a> {

    /* renamed from: b, reason: collision with root package name */
    public v f32870b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f32871c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f32872d;

    /* renamed from: e, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.draw.a f32873e;

    /* renamed from: f, reason: collision with root package name */
    public long f32874f;

    /* renamed from: g, reason: collision with root package name */
    public long f32875g;

    /* renamed from: h, reason: collision with root package name */
    public RecyclerAdMediaListener f32876h;

    public class a implements com.meishu.sdk.core.ad.draw.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MeishuDrawRootView f32877a;

        /* renamed from: com.meishu.sdk.platform.ms.draw.g$a$a, reason: collision with other inner class name */
        public class C0701a extends l {
            public C0701a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                v0.a(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getPosId(), 3);
                String[] strArrB = i0.b(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getMonitorUrl(), g.this.b());
                i0.a(strArrB, g.this.f32873e.getAdView(), (View) null);
                if (strArrB != null) {
                    LogUtil.d("MeishuDrawAdWrapper", "send onAdExposure");
                    for (String str : strArrB) {
                        if (!TextUtils.isEmpty(str)) {
                            com.meishu.sdk.core.loader.a.a(g.this.getContext(), i0.a(i0.a(str, ((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getAct_type(), AdType.DRAW)));
                        }
                    }
                }
                com.meishu.sdk.platform.ms.draw.a aVar = g.this.f32873e;
                if (aVar != null && aVar.getInteractionListener() != null) {
                    g.this.f32873e.getInteractionListener().onAdExposure();
                }
                if (g.this.getLoaderListener() != 0) {
                    ((com.meishu.sdk.core.ad.draw.a) g.this.getLoaderListener()).onAdExposure();
                }
                g.this.f32871c = true;
            }
        }

        public a(MeishuDrawRootView meishuDrawRootView) {
            this.f32877a = meishuDrawRootView;
        }

        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public void onAdClosed() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public void onAdError() {
            if (((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl() != null) {
                a0.a(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl()[0], (Integer) (-1), "图片加载失败");
            }
            new com.meishu.sdk.platform.ms.d("图片加载失败", -1).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
        }

        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public void onAdExposure() {
            MeishuDrawRootView meishuDrawRootView;
            if (g.this.f32871c || (meishuDrawRootView = this.f32877a) == null) {
                return;
            }
            meishuDrawRootView.post(new C0701a());
        }

        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public /* bridge */ /* synthetic */ void onAdLoaded(IDrawAd iDrawAd) {
        }

        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public void onAdPlatformError(AdPlatformError adPlatformError) {
        }

        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public /* bridge */ /* synthetic */ void onAdReady(IDrawAd iDrawAd) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.loader.IAdLoadListener
        public void onAdRenderFail(String str, int i2) {
            if (((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl() != null) {
                a0.a(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl()[0], Integer.valueOf(i2), str);
            }
            new com.meishu.sdk.platform.ms.d(str, Integer.valueOf(i2)).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
        }
    }

    public class b extends o {
        public b() {
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            if (g.this.f32873e.getInteractionListener() != null) {
                g.this.f32873e.getInteractionListener().onAdClosed();
            }
        }
    }

    public class c implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ GifImageView f32881a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ MeishuDrawRootView f32882b;

        public c(GifImageView gifImageView, MeishuDrawRootView meishuDrawRootView) {
            this.f32881a = gifImageView;
            this.f32882b = meishuDrawRootView;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            new com.meishu.sdk.platform.ms.d("图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.utils.y
        public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
            try {
                if (!httpResponse.isSuccessful()) {
                    if (((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl() != null) {
                        p1.b(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片资源加载错误");
                    }
                    new com.meishu.sdk.platform.ms.d("图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
                    return;
                }
                byte[] responseBody = httpResponse.getResponseBody();
                if (responseBody == null || responseBody.length <= 0) {
                    if (((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl() != null) {
                        p1.b(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片资源加载错误");
                    }
                    new com.meishu.sdk.platform.ms.d("图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
                    return;
                }
                g.this.getClass();
                byte[] bArr = new byte[4];
                System.arraycopy(responseBody, 0, bArr, 0, 4);
                if (new BigInteger(1, bArr).toString(16).startsWith("47494638")) {
                    GifImageView gifImageView = this.f32881a;
                    if (gifImageView != null) {
                        gifImageView.setBytes(responseBody);
                        this.f32881a.startAnimation();
                    }
                } else {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                    if (bitmapDecodeByteArray == null) {
                        if (((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl() != null) {
                            p1.b(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片资源加载错误");
                        }
                        new com.meishu.sdk.platform.ms.d("图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
                        return;
                    }
                    this.f32881a.setImageBitmap(bitmapDecodeByteArray);
                }
                g.this.f32875g = System.currentTimeMillis();
                if (g.this.getLoaderListener() != 0) {
                    TouchAdContainer touchAdContainer = new TouchAdContainer(g.this.context);
                    touchAdContainer.setTouchPositionListener(new TouchPositionListener(g.this.f32873e));
                    touchAdContainer.addView(this.f32882b);
                    g.this.f32873e.setAdView(touchAdContainer);
                    ((com.meishu.sdk.core.ad.draw.a) g.this.getLoaderListener()).onAdLoaded(g.this.f32873e);
                    ((com.meishu.sdk.core.ad.draw.a) g.this.getLoaderListener()).onAdReady(g.this.f32873e);
                }
            } catch (Throwable th) {
                if (((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getErrorUrl() != null) {
                    p1.b(((com.meishu.sdk.meishu_ad.nativ.f) g.this.f32888a).getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片资源加载错误");
                }
                new com.meishu.sdk.platform.ms.d("图片资源加载错误", ErrorCodeUtil.RES_LOAD_ERROR).post(((DrawAdLoader) g.this.getAdLoader()).getLoaderListener());
                th.printStackTrace();
            }
        }
    }

    public class d extends o {
        public d() {
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            g gVar = g.this;
            if (gVar.f32871c) {
                T t2 = gVar.f32888a;
                if (t2 != 0 && ((com.meishu.sdk.meishu_ad.nativ.f) t2).getCbc() == 0 && g.this.f32873e.getInteractionListener() != null) {
                    g.this.f32873e.getInteractionListener().onAdClicked();
                }
                AdSlot adSlot = g.this.f32873e.f32859a;
                if (adSlot instanceof BaseAdSlot) {
                    ((BaseAdSlot) adSlot).setClkActType(2);
                }
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) g.this.f32873e, true);
            }
        }
    }

    public class e extends o {
        public e() {
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            g gVar = g.this;
            if (gVar.f32871c) {
                T t2 = gVar.f32888a;
                if (t2 != 0 && ((com.meishu.sdk.meishu_ad.nativ.f) t2).getCbc() == 0 && g.this.f32873e.getInteractionListener() != null) {
                    g.this.f32873e.getInteractionListener().onAdClicked();
                }
                AdSlot adSlot = g.this.f32873e.f32859a;
                if (adSlot instanceof BaseAdSlot) {
                    ((BaseAdSlot) adSlot).setClkActType(1);
                }
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) g.this.f32873e, true);
            }
        }
    }

    public class f implements RecyclerAdMediaListener {
        public f() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onProgressUpdate(long j2, long j3) {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoCompleted() {
            com.meishu.sdk.platform.ms.draw.a aVar = g.this.f32873e;
            if (aVar == null || aVar.getInteractionListener() == null) {
                return;
            }
            g.this.f32873e.getDrawVideoListener().playCompletion();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoError() {
            if (((DrawAdLoader) g.this.getAdLoader()).getLoaderListener() != null) {
                ((DrawAdLoader) g.this.getAdLoader()).getLoaderListener().onAdRenderFail("视频加载失败", -1);
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoLoaded() {
            g gVar = g.this;
            if (gVar.f32872d) {
                return;
            }
            gVar.f32872d = true;
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoPause() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoResume() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoStart() {
        }
    }

    public g(DrawAdLoader drawAdLoader, com.meishu.sdk.meishu_ad.nativ.f fVar) {
        super(drawAdLoader, fVar);
        this.f32871c = false;
        this.f32872d = false;
        this.f32876h = new f();
        this.f32870b = new v(drawAdLoader.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        MeishuDrawRootView meishuDrawRootView = (MeishuDrawRootView) LayoutInflater.from(this.context).inflate(R.layout.ms_draw_ad_layout, (ViewGroup) null).findViewById(R.id.ms_draw_rootView);
        meishuDrawRootView.setAdListener(new a(meishuDrawRootView));
        i iVar = new i(meishuDrawRootView);
        this.f32873e = new com.meishu.sdk.platform.ms.draw.a(this.f32888a, null);
        GifImageView gifImageView = (GifImageView) meishuDrawRootView.findViewById(R.id.ms_draw_ad_image);
        TextView textView = (TextView) meishuDrawRootView.findViewById(R.id.draw_ad_detail_title);
        TextView textView2 = (TextView) meishuDrawRootView.findViewById(R.id.ms_draw_ad_detail_desc);
        ImageView imageView = (ImageView) meishuDrawRootView.findViewById(R.id.ms_draw_close_button);
        textView.setText(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).title);
        textView2.setText(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).f32391c);
        imageView.setOnClickListener(new b());
        if (((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getImageUrls() == null || ((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getImageUrls().length == 0) {
            LogUtil.i("MeishuDrawAdWrapper", "empty srcUrls");
            new com.meishu.sdk.platform.ms.d("empty srcUrls", ErrorCodeUtil.EMPTY_SRC_URL).post(((DrawAdLoader) getAdLoader()).getLoaderListener());
            return;
        }
        if (((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getAdPatternType() != 1 && ((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getAdPatternType() != 12) {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("unsupported type: ");
            sbA.append(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getAdPatternType());
            LogUtil.i("MeishuDrawAdWrapper", sbA.toString());
            if (((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getErrorUrl() != null) {
                p1.b(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片资源加载错误");
            }
            new com.meishu.sdk.platform.ms.d("unsupported type", ErrorCodeUtil.UNSUPPORTED_TYPE).post(((DrawAdLoader) getAdLoader()).getLoaderListener());
            return;
        }
        if (!AdSdk.adConfig().showLogo()) {
            iVar.b(R.id.ms_img_meishu_ad_tag).d(8);
        } else if (!TextUtils.isEmpty(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getFromLogo())) {
            iVar.b(R.id.ms_img_meishu_ad_tag).a(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getFromLogo(), false);
        }
        com.meishu.sdk.core.cache.a.a(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getImageUrls()[0], new c(gifImageView, meishuDrawRootView), true);
        TextView textView3 = (TextView) meishuDrawRootView.findViewById(R.id.ms_draw_ad_detail_btn);
        boolean z2 = (((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getAct_type() & 1) == 1;
        if (!z2 && (((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getAct_type() & 2) == 2) {
            textView3.setOnClickListener(new d());
        }
        if (z2) {
            meishuDrawRootView.setOnClickListener(new e());
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f32874f = jCurrentTimeMillis;
            T t2 = this.f32888a;
            ((com.meishu.sdk.meishu_ad.nativ.f) t2).f32387C = jCurrentTimeMillis;
            int act_type = ((com.meishu.sdk.meishu_ad.nativ.f) t2).getAct_type();
            if ((act_type & 1) != 1 && (act_type & 2) != 2) {
                ((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).setAct_type(act_type | 1);
            }
            if (((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getAdPatternType() == 2) {
                a0.a(((com.meishu.sdk.meishu_ad.nativ.f) this.f32888a).getImageUrls()[0], new com.meishu.sdk.platform.ms.draw.f(this));
            } else {
                c();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String b() {
        return this.f32874f + com.anythink.core.common.d.i.f2495E + 0L + com.anythink.core.common.d.i.f2495E + this.f32875g;
    }
}
