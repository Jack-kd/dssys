package com.meishu.sdk.meishu_ad;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.gson.Gson;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.l1;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;
import com.meishu.sdk.meishu_ad.view.MeishuVideoCahceTextureView;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public class a0 implements com.meishu.sdk.core.bquery.h<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32168a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32169b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MeishuSplashRootView f32170c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32171d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f32172e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f32173f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f32174g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f32175h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f32176i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ImageView f32177j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.core.bquery.i f32178k;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ v f32179l;

    public class a implements com.meishu.sdk.meishu_ad.nativ.a {
        public a(a0 a0Var) {
        }

        @Override // com.meishu.sdk.meishu_ad.m0
        public void onADExposure() {
        }

        @Override // com.meishu.sdk.meishu_ad.m0
        public /* bridge */ /* synthetic */ void onADLoaded(List<com.meishu.sdk.meishu_ad.nativ.b> list) {
        }

        @Override // com.meishu.sdk.meishu_ad.m0
        public void onAdRenderFail(String str, int i2) {
        }
    }

    public class b implements RecyclerAdMediaListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ NormalMediaView f32180a;

        public class a extends com.meishu.sdk.core.safe.l {
            public a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                b.this.f32180a.d();
                View adView = a0.this.f32168a.getAdView();
                if (adView != null) {
                    ViewParent parent = adView.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(adView);
                    }
                }
            }
        }

        public b(NormalMediaView normalMediaView) {
            this.f32180a = normalMediaView;
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onProgressUpdate(long j2, long j3) {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoCompleted() {
            a0 a0Var = a0.this;
            com.meishu.sdk.meishu_ad.splash.c cVar = a0Var.f32168a;
            cVar.f32520g = true;
            if (a0Var.f32169b.f32527H == 1 && cVar.f32521h) {
                new Handler(Looper.getMainLooper()).postDelayed(new a(), 4000L);
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoError() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoLoaded() {
            a0.this.f32176i.get();
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

    public class c extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f32183a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f32184b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ CountDownLatch f32185c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ NormalMediaView f32186d;

        public c(Object obj, String str, CountDownLatch countDownLatch, NormalMediaView normalMediaView) {
            this.f32183a = obj;
            this.f32184b = str;
            this.f32185c = countDownLatch;
            this.f32186d = normalMediaView;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            Bitmap videoThumb = null;
            if (this.f32183a instanceof MediaPlayer) {
                String str = this.f32184b;
                if (!TextUtils.isEmpty(str)) {
                    try {
                        File fileA = com.meishu.sdk.core.bquery.g.a(str, (String) null);
                        File fileA2 = com.meishu.sdk.core.bquery.g.a(str, "temp");
                        File fileA3 = com.meishu.sdk.core.bquery.g.a(str, "last_meta_temp");
                        if (fileA.exists()) {
                            videoThumb = com.meishu.sdk.core.utils.f0.b(fileA.getAbsolutePath());
                            StringBuilder sb = new StringBuilder();
                            sb.append("getFirstFramePicture :");
                            sb.append(videoThumb != null);
                            LogUtil.d("CacheMediaPlayerHelper", sb.toString());
                        }
                        if (videoThumb == null && com.meishu.sdk.meishu_ad.view.player.c.a(fileA2) > 0 && com.meishu.sdk.meishu_ad.view.player.c.a(fileA3) == 0) {
                            videoThumb = com.meishu.sdk.core.utils.f0.b(fileA2.getAbsolutePath());
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("getFirstFramePicture temp :");
                            sb2.append(videoThumb != null);
                            LogUtil.d("CacheMediaPlayerHelper", sb2.toString());
                        }
                        if (videoThumb == null && com.meishu.sdk.meishu_ad.view.player.c.a(fileA2) > 0 && com.meishu.sdk.meishu_ad.view.player.c.a(fileA3) > 0) {
                            videoThumb = com.meishu.sdk.core.utils.f0.b(str);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("getFirstFramePicture temp2 :");
                            sb3.append(videoThumb != null);
                            LogUtil.d("CacheMediaPlayerHelper", sb3.toString());
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                if (videoThumb == null && !TextUtils.isEmpty(a0.this.f32169b.getVideo_cover())) {
                    a0.this.f32178k.b(R.id.ms_splash_image_bg).a(a0.this.f32169b.getVideo_cover(), true);
                    this.f32185c.countDown();
                    return;
                }
            }
            if (videoThumb == null) {
                videoThumb = this.f32186d.getVideoThumb();
            }
            a0 a0Var = a0.this;
            CountDownLatch countDownLatch = this.f32185c;
            a0Var.getClass();
            if (videoThumb != null) {
                SdkHandler.getInstance().runOnUiThread(new b0(a0Var, videoThumb, countDownLatch));
            } else {
                countDownLatch.countDown();
            }
        }
    }

    public a0(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, MeishuSplashRootView meishuSplashRootView, com.meishu.sdk.meishu_ad.splash.a aVar, View view, int i2, int i3, boolean z2, AtomicBoolean atomicBoolean, ImageView imageView, com.meishu.sdk.core.bquery.i iVar) {
        this.f32179l = vVar;
        this.f32168a = cVar;
        this.f32169b = dVar;
        this.f32170c = meishuSplashRootView;
        this.f32171d = aVar;
        this.f32172e = view;
        this.f32173f = i2;
        this.f32174g = i3;
        this.f32175h = z2;
        this.f32176i = atomicBoolean;
        this.f32177j = imageView;
        this.f32178k = iVar;
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void a(String str, Object obj, boolean z2) {
        boolean z3 = obj instanceof MediaPlayer;
        if (!z3 && !(obj instanceof File)) {
            try {
                p1.b(this.f32168a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "加载失败");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                p1.c(this.f32168a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "加载失败 cid:" + this.f32169b.getCid());
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                return;
            }
        }
        File file = obj instanceof File ? (File) obj : null;
        if (file != null && file.length() >= com.meishu.sdk.core.utils.j0.a()) {
            try {
                p1.b(this.f32168a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "加载失败");
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                p1.c(this.f32168a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "加载失败 cid:" + this.f32169b.getCid());
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            this.f32179l.f32589u = 2;
            return;
        }
        try {
            p1.c(this.f32168a.f32515b.getEventUrl(), 200, "加载成功");
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        if (this.f32179l.f32579k) {
            return;
        }
        this.f32179l.f32584p = System.currentTimeMillis();
        this.f32179l.f32589u = 1;
        SplashSkipView splashSkipViewA = this.f32179l.a(this.f32168a, this.f32170c, this.f32171d, this.f32172e, true);
        NormalMediaView normalMediaView = new NormalMediaView(this.f32179l.f32569a, z3);
        if (z3) {
            if (!(normalMediaView.getMeishuVideoView() instanceof MeishuVideoCahceTextureView)) {
                LogUtil.e("AdNative", "update MediaPlayer error.");
                this.f32179l.a(this.f32171d, "splash video load error", ErrorCodeUtil.RES_LOAD_ERROR);
                return;
            } else {
                normalMediaView.setVideoPath(str);
                ((MeishuVideoCahceTextureView) normalMediaView.getMeishuVideoView()).setMediaPlayer((MediaPlayer) obj);
            }
        }
        l1.a(this.f32169b, 1, z2);
        normalMediaView.setConfigWidth(this.f32169b.f32389a);
        normalMediaView.setConfigHeight(this.f32169b.f32390b);
        normalMediaView.setContainerWidth(this.f32173f);
        normalMediaView.setContainerHeight(this.f32174g);
        normalMediaView.setPlayOnce(true);
        normalMediaView.g();
        if (!this.f32175h) {
            normalMediaView.j();
        }
        normalMediaView.setIsEyes(this.f32169b.f32527H);
        normalMediaView.setUseTransform(false);
        if (AdSdk.adConfig().showLogo()) {
            normalMediaView.setFromLogo(this.f32169b.getFromLogo());
            normalMediaView.setFromLogoVisibility(0);
        } else {
            normalMediaView.setFromLogoVisibility(8);
            normalMediaView.setFromLogo(null);
        }
        normalMediaView.setAdListener(new a(this));
        RelativeLayout relativeLayout = (RelativeLayout) this.f32170c.findViewById(R.id.ms_splash_video);
        relativeLayout.setVisibility(0);
        int scale_type = this.f32169b.getScale_type();
        if (scale_type == -1) {
            scale_type = 2;
        }
        if (scale_type == 9) {
            normalMediaView.setDisplayMode(2);
            relativeLayout.addView(normalMediaView, -1, -1);
        } else {
            normalMediaView.setDisplayMode(1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(13, -1);
            relativeLayout.addView(normalMediaView, layoutParams);
        }
        this.f32168a.f32517d = normalMediaView;
        long jMin = Math.min(normalMediaView.getDuration(), AdSdk.adConfig().getSplashShowTime());
        if (this.f32169b.f32527H != 1) {
            splashSkipViewA.setTotalTime((int) jMin);
        }
        Context context = this.f32179l.f32569a;
        normalMediaView.setNativeAdMediaListener(new com.meishu.sdk.platform.ms.recycler.b(this.f32169b, new b(normalMediaView)));
        if ((file != null && file.getAbsolutePath().endsWith("m3u8")) || str.contains("m3u8")) {
            normalMediaView.setVideoPath(str);
        } else if (file != null) {
            normalMediaView.setVideoPath(file.getAbsolutePath());
        }
        try {
            Gson gson = new Gson();
            HashMap map = new HashMap();
            map.put("stepNum", 3);
            map.put("msg", "video succ");
            map.put("creativeType", Integer.valueOf(this.f32169b.getAdPatternType()));
            p1.a(this.f32168a.f32515b.getErrorUrl(), gson.toJson(map));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f32177j.setVisibility(0);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ExecutorService executorService = com.meishu.sdk.core.utils.h0.f31906a;
        h0.b.f31910a.a(new c(obj, str, countDownLatch, normalMediaView));
        if (z3) {
            try {
                countDownLatch.await(400L, TimeUnit.MILLISECONDS);
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
        }
        v.a(this.f32179l.f32567A != 1, this.f32171d, this.f32168a);
        this.f32179l.f32576h = true;
        v.a(this.f32169b);
        v vVar = this.f32179l;
        if (vVar.f32574f != 1 || vVar.f32575g) {
            normalMediaView.start();
            this.f32179l.a(this.f32168a, this.f32171d);
        }
    }

    @Override // com.meishu.sdk.core.bquery.h
    public void onFail(int i2, String str) {
        this.f32179l.f32589u = 2;
        LogUtil.d("AdNative", "loadVideo onFail. errCode:" + i2 + ",errMsg:" + str);
        try {
            p1.b(this.f32168a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "video 加载失败");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            p1.c(this.f32168a.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "video 加载失败 cid:" + this.f32169b.getCid());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (this.f32179l.f32590v == 2 && this.f32179l.f32591w == 2) {
            this.f32179l.a(this.f32171d, "video error", ErrorCodeUtil.RES_LOAD_ERROR);
        } else {
            if (this.f32179l.f32579k) {
                return;
            }
            v.a(this.f32179l, this.f32168a, this.f32169b, this.f32173f, this.f32174g, this.f32171d, this.f32172e);
        }
    }
}
