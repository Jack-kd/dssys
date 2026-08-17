package com.meishu.sdk.meishu_ad;

import android.animation.Animator;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.renderscript.RenderScript;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.gson.Gson;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.e1;
import com.meishu.sdk.core.utils.i1;
import com.meishu.sdk.core.utils.j1;
import com.meishu.sdk.core.utils.k1;
import com.meishu.sdk.core.utils.l1;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.view.DownloadView;
import com.meishu.sdk.core.view.SwipeView;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.n0;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.reward.i;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import com.meishu.sdk.meishu_ad.splash.SplashSkipView;
import com.meishu.sdk.meishu_ad.splash.c;
import com.meishu.sdk.meishu_ad.splash.l;
import com.qq.e.comm.pi.IReward;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import okhttp3.OkHttpClient;

/* loaded from: classes4.dex */
public class v {

    /* renamed from: C, reason: collision with root package name */
    public static Handler f32566C = new Handler();

    /* renamed from: a, reason: collision with root package name */
    public Context f32569a;

    /* renamed from: b, reason: collision with root package name */
    public int f32570b;

    /* renamed from: d, reason: collision with root package name */
    public String[] f32572d;

    /* renamed from: f, reason: collision with root package name */
    public int f32574f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32575g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f32576h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f32578j;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f32579k;

    /* renamed from: l, reason: collision with root package name */
    public long f32580l;

    /* renamed from: m, reason: collision with root package name */
    public int f32581m;

    /* renamed from: n, reason: collision with root package name */
    public long f32582n;

    /* renamed from: o, reason: collision with root package name */
    public long f32583o;

    /* renamed from: p, reason: collision with root package name */
    public long f32584p;

    /* renamed from: q, reason: collision with root package name */
    public MeishuSplashRootView f32585q;

    /* renamed from: r, reason: collision with root package name */
    public GifImageView f32586r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f32587s;

    /* renamed from: t, reason: collision with root package name */
    public byte[] f32588t;

    /* renamed from: x, reason: collision with root package name */
    public byte[] f32592x;

    /* renamed from: c, reason: collision with root package name */
    public int f32571c = 1;

    /* renamed from: e, reason: collision with root package name */
    public List<Animator> f32573e = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public boolean f32577i = false;

    /* renamed from: u, reason: collision with root package name */
    public volatile int f32589u = 0;

    /* renamed from: v, reason: collision with root package name */
    public volatile int f32590v = 0;

    /* renamed from: w, reason: collision with root package name */
    public volatile int f32591w = 0;

    /* renamed from: y, reason: collision with root package name */
    public volatile boolean f32593y = false;

    /* renamed from: z, reason: collision with root package name */
    public volatile boolean f32594z = false;

    /* renamed from: A, reason: collision with root package name */
    public int f32567A = 1;

    /* renamed from: B, reason: collision with root package name */
    public final com.meishu.sdk.meishu_ad.splash.l f32568B = new com.meishu.sdk.meishu_ad.splash.l();

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ SplashSkipView f32595a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32596b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32597c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ View f32598d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ boolean f32599e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MeishuSplashRootView f32600f;

        /* renamed from: com.meishu.sdk.meishu_ad.v$a$a, reason: collision with other inner class name */
        public class C0684a implements SplashSkipView.b {
            public C0684a() {
            }

            @Override // com.meishu.sdk.meishu_ad.splash.SplashSkipView.b
            public void onSkip() {
                LogUtil.d("AdNative", "onSkip: ");
                Handler handler = v.f32566C;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                try {
                    a.this.f32596b.f32515b.getAppendInfo().setHasClickedSkip(true);
                } catch (Exception unused) {
                }
                v.a(v.this);
                com.meishu.sdk.meishu_ad.splash.a aVar = a.this.f32597c;
                if (aVar != null) {
                    SdkHandler.getInstance().runOnUiThread(new com.meishu.sdk.platform.ms.splash.h((com.meishu.sdk.platform.ms.splash.g) aVar));
                    ((com.meishu.sdk.platform.ms.splash.g) a.this.f32597c).b();
                }
            }

            @Override // com.meishu.sdk.meishu_ad.splash.SplashSkipView.b
            public void onTick(long j2) {
                View view;
                com.meishu.sdk.meishu_ad.splash.a aVar = a.this.f32597c;
                if (aVar != null) {
                    SdkHandler.getInstance().runOnUiThread(new com.meishu.sdk.platform.ms.splash.j((com.meishu.sdk.platform.ms.splash.g) aVar, j2));
                }
                if (a.this.f32595a.getTotalTime() - j2 <= a.this.f32595a.getShowTime() || (view = a.this.f32598d) == null) {
                    return;
                }
                view.setVisibility(0);
            }

            @Override // com.meishu.sdk.meishu_ad.splash.SplashSkipView.b
            public void onTimeOver() {
                LogUtil.d("AdNative", "onTimeOver: ");
                Handler handler = v.f32566C;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                try {
                    a.this.f32596b.f32515b.getAppendInfo().setHasTimeOver(true);
                } catch (Exception unused) {
                }
                v.a(v.this);
                com.meishu.sdk.meishu_ad.splash.a aVar = a.this.f32597c;
                if (aVar != null) {
                    SdkHandler.getInstance().runOnUiThread(new com.meishu.sdk.platform.ms.splash.i((com.meishu.sdk.platform.ms.splash.g) aVar));
                    ((com.meishu.sdk.platform.ms.splash.g) a.this.f32597c).b();
                }
            }
        }

        public class b extends com.meishu.sdk.core.safe.o {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ SplashSkipView.b f32603a;

            public b(a aVar, SplashSkipView.b bVar) {
                this.f32603a = bVar;
            }

            @Override // com.meishu.sdk.core.safe.o
            public void safeOnClick(View view) {
                this.f32603a.onSkip();
            }
        }

        public a(SplashSkipView splashSkipView, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar, View view, boolean z2, MeishuSplashRootView meishuSplashRootView) {
            this.f32595a = splashSkipView;
            this.f32596b = cVar;
            this.f32597c = aVar;
            this.f32598d = view;
            this.f32599e = z2;
            this.f32600f = meishuSplashRootView;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                this.f32595a.setTotalTime((int) AdSdk.adConfig().getSplashShowTime());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.f32595a.setShow(!((SplashAdLoader) this.f32596b.f32514a.getAdLoader()).getIsHideSkipBtn());
            C0684a c0684a = new C0684a();
            this.f32595a.setOnSkipListener(c0684a);
            View view = this.f32598d;
            if (view != null) {
                view.setOnClickListener(new b(this, c0684a));
                this.f32595a.setShow(false);
            }
            if (this.f32599e) {
                v.a(v.this, this.f32596b, this.f32600f, this.f32597c, this.f32595a);
            }
        }
    }

    public class b implements c.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32604a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32605b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32606c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.platform.ms.splash.a f32607d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ View f32608e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ boolean f32609f;

        public b(com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.platform.ms.splash.a aVar2, View view, boolean z2) {
            this.f32604a = cVar;
            this.f32605b = dVar;
            this.f32606c = aVar;
            this.f32607d = aVar2;
            this.f32608e = view;
            this.f32609f = z2;
        }

        @Override // com.meishu.sdk.meishu_ad.splash.c.b
        public void a(ViewGroup viewGroup) {
            NormalMediaView normalMediaView;
            PackageBean.AdBean adBean;
            try {
                v.this.f32578j = true;
                v.a(v.this, this.f32604a, this.f32605b, this.f32606c);
                v vVar = v.this;
                com.meishu.sdk.meishu_ad.splash.c cVar = this.f32604a;
                com.meishu.sdk.meishu_ad.splash.a aVar = this.f32606c;
                com.meishu.sdk.meishu_ad.splash.d dVar = this.f32605b;
                vVar.getClass();
                if (cVar.f32515b.getAdPatternType() != 2) {
                    new Timer().schedule(new h0(vVar, aVar, dVar), 5000L);
                }
                v vVar2 = v.this;
                if (vVar2.f32574f != 1) {
                    vVar2.a(this.f32604a, this.f32605b, this.f32606c, this.f32607d, this.f32608e, this.f32609f, viewGroup);
                } else {
                    vVar2.f32575g = true;
                    v vVar3 = v.this;
                    if (vVar3.f32576h) {
                        vVar3.a(this.f32604a, this.f32606c);
                        if (this.f32605b.getAdPatternType() == 2 && (normalMediaView = this.f32604a.f32517d) != null) {
                            normalMediaView.start();
                        }
                    }
                }
                try {
                    adBean = r0.f31982m;
                } catch (Exception unused) {
                }
                int ic = (adBean == null || adBean.getSplash() == null) ? 0 : r0.f31982m.getSplash().getIc();
                if (ic == 1) {
                    v.this.a(this.f32604a, this.f32606c);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                v.this.a(this.f32606c, "show渲染错误", Integer.valueOf(ErrorCodeUtil.RENDER_AD_EXCEPTION));
            }
        }
    }

    public class c implements i.c {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.d f32611a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.core.webview.s[] f32612b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.a f32613c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f32614d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ArrayList f32615e;

        public c(com.meishu.sdk.meishu_ad.nativ.d dVar, com.meishu.sdk.core.webview.s[] sVarArr, com.meishu.sdk.meishu_ad.nativ.a aVar, int i2, ArrayList arrayList) {
            this.f32611a = dVar;
            this.f32612b = sVarArr;
            this.f32613c = aVar;
            this.f32614d = i2;
            this.f32615e = arrayList;
        }
    }

    public class d extends com.meishu.sdk.core.webview.i {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.reward.i f32617a;

        public d(v vVar, com.meishu.sdk.meishu_ad.reward.i iVar) {
            this.f32617a = iVar;
        }

        @Override // com.meishu.sdk.core.webview.listener.c
        public void a(boolean z2) {
        }

        @Override // com.meishu.sdk.core.webview.listener.g
        public boolean onPageFinished(String str, boolean z2, boolean z3, int i2) {
            LogUtil.dev("AdNative", "final h5 res:" + z3);
            this.f32617a.d(z3);
            return false;
        }
    }

    public class e extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.reward.i f32618a;

        public e(v vVar, com.meishu.sdk.meishu_ad.reward.i iVar) {
            this.f32618a = iVar;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            this.f32618a.b(false);
        }
    }

    public class f implements a0.i {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ NormalMediaView f32619a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.f f32620b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.core.ad.b f32621c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.reward.i f32622d;

        public class a implements NormalMediaView.d {
            public a() {
            }
        }

        public f(NormalMediaView normalMediaView, com.meishu.sdk.meishu_ad.nativ.f fVar, com.meishu.sdk.core.ad.b bVar, com.meishu.sdk.meishu_ad.reward.i iVar) {
            this.f32619a = normalMediaView;
            this.f32620b = fVar;
            this.f32621c = bVar;
            this.f32622d = iVar;
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void a() {
            this.f32622d.b(false);
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void success() {
            this.f32619a.setVideoPath(this.f32620b.f32395g);
            this.f32619a.setPlayOnce(true);
            this.f32619a.setFromLogoVisibility(8);
            this.f32619a.setUseTransform(false);
            if (this.f32621c.getVideoIsMute()) {
                this.f32619a.g();
            }
            this.f32619a.setOnPreparedListener(new a());
        }
    }

    public class g implements a0.i {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ NormalMediaView f32625a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.a f32626b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f32627c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.f f32628d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ boolean f32629e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ float f32630f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ float f32631g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f32632h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ List f32633i;

        public class a implements a0.i {
            public a() {
            }

            @Override // com.meishu.sdk.core.utils.a0.i
            public void a() {
                g gVar = g.this;
                v vVar = v.this;
                com.meishu.sdk.meishu_ad.nativ.a aVar = gVar.f32626b;
                Integer num = ErrorCodeUtil.RES_LOAD_ERROR;
                Handler handler = v.f32566C;
                vVar.a(aVar, "视频资源错误", num);
            }

            @Override // com.meishu.sdk.core.utils.a0.i
            public void success() {
                v.this.f32584p = System.currentTimeMillis();
                g gVar = g.this;
                if (gVar.f32627c) {
                    com.meishu.sdk.meishu_ad.nativ.f fVar = gVar.f32628d;
                    fVar.setMonitorUrl(com.meishu.sdk.core.utils.i0.b(fVar.getMonitorUrl(), v.this.a()));
                }
                com.meishu.sdk.meishu_ad.nativ.f fVar2 = g.this.f32628d;
                fVar2.adPatternType = 1;
                fVar2.getImageUrls()[0] = g.this.f32628d.getVideo_cover();
                com.meishu.sdk.core.utils.i0.b(g.this.f32628d.getMonitorUrl());
                g gVar2 = g.this;
                v.a(gVar2.f32628d, gVar2.f32626b, gVar2.f32632h, gVar2.f32625a, gVar2.f32633i);
            }
        }

        public g(NormalMediaView normalMediaView, com.meishu.sdk.meishu_ad.nativ.a aVar, boolean z2, com.meishu.sdk.meishu_ad.nativ.f fVar, boolean z3, float f2, float f3, boolean z4, List list) {
            this.f32625a = normalMediaView;
            this.f32626b = aVar;
            this.f32627c = z2;
            this.f32628d = fVar;
            this.f32629e = z3;
            this.f32630f = f2;
            this.f32631g = f3;
            this.f32632h = z4;
            this.f32633i = list;
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void a() {
            v.this.f32583o = System.currentTimeMillis();
            if (TextUtils.isEmpty(this.f32628d.getVideo_cover()) || !this.f32627c) {
                v.this.a(this.f32626b, "视频资源错误", ErrorCodeUtil.RES_LOAD_ERROR);
            } else {
                com.meishu.sdk.core.utils.a0.a(this.f32628d.getVideo_cover(), new a());
            }
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void success() {
            NormalMediaView normalMediaView = this.f32625a;
            com.meishu.sdk.meishu_ad.nativ.a aVar = this.f32626b;
            boolean z2 = this.f32627c;
            normalMediaView.f32319E = aVar;
            normalMediaView.f32320F = z2;
            normalMediaView.setRecycler(z2);
            if (this.f32627c) {
                this.f32625a.setConfigWidth(this.f32628d.f32389a);
                this.f32625a.setConfigHeight(this.f32628d.f32390b);
                this.f32625a.setVideoEndCover(this.f32628d.f32396h);
                this.f32625a.setInitMute(true);
                this.f32625a.setVideoCover(this.f32628d.getVideo_cover());
                this.f32625a.setVideoEndCover(this.f32628d.f32396h);
                this.f32625a.setFromLogoVisibility(8);
                this.f32625a.setUseTransform(false);
                this.f32625a.setAutoStart(this.f32629e);
                this.f32625a.setContainerWidth(this.f32630f);
                this.f32625a.setContainerHeight(this.f32631g);
            } else {
                this.f32625a.setVideoPath(this.f32628d.f32395g);
                this.f32625a.setVideoCover(this.f32628d.getVideo_cover());
                this.f32625a.setVideoEndCover(this.f32628d.f32396h);
                this.f32625a.setPlayOnce(true);
                this.f32625a.setUseTransform(false);
                this.f32625a.setContainerWidth(this.f32630f);
                this.f32625a.setContainerHeight(this.f32631g);
                if (AdSdk.adConfig().showLogo()) {
                    this.f32625a.setFromLogo(this.f32628d.getFromLogo());
                } else {
                    this.f32625a.setFromLogo(null);
                    this.f32625a.setFromLogoVisibility(8);
                }
            }
            v.a(this.f32628d, this.f32626b, this.f32632h, this.f32625a, this.f32633i);
        }
    }

    public class h implements a0.i {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.f f32636a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.a f32637b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f32638c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ NormalMediaView f32639d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ List f32640e;

        public h(com.meishu.sdk.meishu_ad.nativ.f fVar, com.meishu.sdk.meishu_ad.nativ.a aVar, boolean z2, NormalMediaView normalMediaView, List list) {
            this.f32636a = fVar;
            this.f32637b = aVar;
            this.f32638c = z2;
            this.f32639d = normalMediaView;
            this.f32640e = list;
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void a() {
            v.this.a(this.f32637b, "视频资源错误", ErrorCodeUtil.RES_LOAD_ERROR);
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void success() {
            v.a(this.f32636a, this.f32637b, this.f32638c, this.f32639d, this.f32640e);
        }
    }

    public class i extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.core.bquery.i f32642a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32643b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32644c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32645d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ View f32646e;

        public i(com.meishu.sdk.core.bquery.i iVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar, View view) {
            this.f32642a = iVar;
            this.f32643b = dVar;
            this.f32644c = cVar;
            this.f32645d = aVar;
            this.f32646e = view;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            SwipeView swipeView;
            SplashSkipView splashSkipView;
            RelativeLayout relativeLayout;
            com.meishu.sdk.meishu_ad.splash.d dVar;
            com.meishu.sdk.meishu_ad.splash.a aVar;
            NormalMediaView normalMediaView;
            char c2;
            this.f32642a.b(R.id.ms_shakeRoot).d(8);
            this.f32642a.b(R.id.ms_img_meishu_ad_tag).d(8);
            com.meishu.sdk.meishu_ad.splash.l lVar = v.this.f32568B;
            final com.meishu.sdk.meishu_ad.splash.d dVar2 = this.f32643b;
            final com.meishu.sdk.core.bquery.i iVar = this.f32642a;
            lVar.a(new l.a() { // from class: Q0.a
                @Override // com.meishu.sdk.meishu_ad.splash.l.a
                public final void a(boolean z2) {
                    this.f486a.a(dVar2, iVar, z2);
                }
            });
            AdType adType = AdType.SPLASH;
            adType.value();
            com.meishu.sdk.core.utils.h.a();
            this.f32644c.f32515b.setAct_type(com.meishu.sdk.core.utils.h.a(this.f32644c.f32515b.getAct_type(), adType.value()));
            v vVar = v.this;
            com.meishu.sdk.core.bquery.i iVar2 = this.f32642a;
            MeishuSplashRootView meishuSplashRootView = vVar.f32585q;
            com.meishu.sdk.meishu_ad.splash.d dVar3 = this.f32643b;
            com.meishu.sdk.meishu_ad.splash.c cVar = this.f32644c;
            com.meishu.sdk.meishu_ad.splash.a aVar2 = this.f32645d;
            dVar3.getAct_type();
            SplashSkipView splashSkipView2 = (SplashSkipView) meishuSplashRootView.findViewById(R.id.ms_skipView);
            RelativeLayout relativeLayout2 = (RelativeLayout) meishuSplashRootView.findViewById(R.id.ms_shake_img_container);
            ImageView imageView = (ImageView) meishuSplashRootView.findViewById(R.id.ms_shake_img);
            TextView textView = (TextView) meishuSplashRootView.findViewById(R.id.ms_shake_text);
            TextView textView2 = (TextView) meishuSplashRootView.findViewById(R.id.ms_shake_text_bottom);
            LinearLayout linearLayout = (LinearLayout) meishuSplashRootView.findViewById(R.id.ms_shakeRoot);
            TextView textView3 = (TextView) meishuSplashRootView.findViewById(R.id.ms_jump_btn);
            SwipeView swipeView2 = (SwipeView) meishuSplashRootView.findViewById(R.id.ms_SwipeViewParent);
            RelativeLayout relativeLayout3 = (RelativeLayout) meishuSplashRootView.findViewById(R.id.ms_up_move_container);
            ImageView imageView2 = (ImageView) meishuSplashRootView.findViewById(R.id.ms_up_move_iv);
            ImageView imageView3 = (ImageView) meishuSplashRootView.findViewById(R.id.ms_any_move_iv);
            com.meishu.sdk.meishu_ad.splash.d dVar4 = dVar3;
            meishuSplashRootView.post(new n(vVar, cVar, relativeLayout2, imageView3, imageView, relativeLayout3, imageView2, textView, textView2, textView3, (ImageView) meishuSplashRootView.findViewById(R.id.ms_img_meishu_ad_tag)));
            String strA = ((dVar4.getAct_type() & 4) == 4 || (dVar4.getAct_type() & 64) == 64) ? com.meishu.sdk.core.utils.o.a("", "摇动手机") : "";
            if (com.meishu.sdk.core.utils.h.e(dVar4.getAct_type())) {
                strA = TextUtils.isEmpty(strA) ? com.meishu.sdk.core.utils.o.a(strA, "转动手机") : com.meishu.sdk.core.utils.o.a(strA, "或转动手机");
            }
            if ((dVar4.getAct_type() & 128) == 128) {
                strA = TextUtils.isEmpty(strA) ? com.meishu.sdk.core.utils.o.a(strA, "滑动屏幕") : com.meishu.sdk.core.utils.o.a(strA, "或滑动屏幕");
            } else if ((dVar4.getAct_type() & 32) == 32) {
                strA = TextUtils.isEmpty(strA) ? com.meishu.sdk.core.utils.o.a(strA, "上滑屏幕") : com.meishu.sdk.core.utils.o.a(strA, "或上滑屏幕");
            }
            if ((dVar4.getAct_type() & 2) == 2) {
                strA = TextUtils.isEmpty(strA) ? com.meishu.sdk.core.utils.o.a(strA, "点击图标") : com.meishu.sdk.core.utils.o.a(strA, "或点击图标");
            }
            textView.setText(strA);
            textView2.setText("跳转详情页或第三方应用");
            int iA = com.meishu.sdk.core.utils.m.a(vVar.f32569a);
            DisplayMetrics displayMetrics = vVar.f32569a.getResources().getDisplayMetrics();
            double d2 = iA;
            textView.setTextSize(((float) (d2 * 0.02d)) / displayMetrics.scaledDensity);
            textView2.setTextSize(((float) (0.018d * d2)) / displayMetrics.scaledDensity);
            textView3.setTextSize(((float) (d2 * 0.019d)) / displayMetrics.scaledDensity);
            iVar2.b(R.id.ms_jump_btn).d(8);
            if (swipeView2.getVisibility() != 8) {
                swipeView = swipeView2;
                swipeView.setVisibility(8);
            } else {
                swipeView = swipeView2;
            }
            imageView.addOnAttachStateChangeListener(new com.meishu.sdk.meishu_ad.f(vVar));
            if (com.meishu.sdk.core.utils.h.d(dVar4.getAct_type()) || com.meishu.sdk.core.utils.h.e(dVar4.getAct_type())) {
                textView.setVisibility(0);
                textView2.setVisibility(0);
                linearLayout.post(new com.meishu.sdk.meishu_ad.g(vVar, meishuSplashRootView, linearLayout));
                if ((dVar4.getAct_type() & 32) != 32 || (dVar4.getAct_type() & 128) == 128) {
                    splashSkipView = splashSkipView2;
                    relativeLayout = relativeLayout2;
                    dVar = dVar4;
                    aVar = aVar2;
                } else {
                    dVar = dVar4;
                    relativeLayout = relativeLayout2;
                    v.f32566C.postDelayed(new q(vVar, imageView2, relativeLayout3, relativeLayout2, imageView), 100L);
                    swipeView.setVisibility(0);
                    swipeView.setMoveDistance(dVar.getAct_type(), dVar.f32525F);
                    cVar = cVar;
                    aVar = aVar2;
                    splashSkipView = splashSkipView2;
                    swipeView.setOnSwipeListener(new com.meishu.sdk.meishu_ad.h(vVar, aVar, cVar, splashSkipView));
                    if ((dVar.getAct_type() & 2) == 2) {
                        relativeLayout3.setOnClickListener(new com.meishu.sdk.meishu_ad.i(vVar, aVar, cVar, splashSkipView));
                    }
                }
                if ((dVar.getAct_type() & 128) == 128) {
                    v.f32566C.postDelayed(new p(vVar, imageView3, imageView, relativeLayout), 100L);
                    swipeView.setVisibility(0);
                    swipeView.setMoveDistance(dVar.getAct_type(), dVar.f32525F);
                    swipeView.setOnSwipeListener(new com.meishu.sdk.meishu_ad.j(vVar, aVar, cVar, splashSkipView));
                    if ((dVar.getAct_type() & 2) == 2) {
                        imageView3.setOnClickListener(new k(vVar, aVar, cVar, splashSkipView));
                    }
                } else {
                    relativeLayout.setVisibility(0);
                    imageView.setVisibility(0);
                    imageView.post(new r(vVar, imageView, -1));
                }
                if ((dVar.getAct_type() & 2) == 2) {
                    relativeLayout.setOnClickListener(new l(vVar, aVar, cVar, splashSkipView));
                }
            } else {
                if ((dVar4.getAct_type() & 32) == 32 || (dVar4.getAct_type() & 128) == 128) {
                    textView.setVisibility(0);
                    textView2.setVisibility(0);
                    if ((dVar4.getAct_type() & 32) == 32) {
                        if ((dVar4.getAct_type() & 128) != 128) {
                            relativeLayout3.setVisibility(0);
                            imageView2.setVisibility(0);
                            imageView2.post(new t(vVar, relativeLayout3, imageView2, -1));
                        }
                        if ((dVar4.getAct_type() & 2) == 2) {
                            relativeLayout3.setOnClickListener(new o(vVar, aVar2, cVar, splashSkipView2));
                        }
                    }
                    if ((dVar4.getAct_type() & 128) == 128) {
                        imageView3.setVisibility(0);
                        imageView3.post(new s(vVar, imageView3, -1));
                        c2 = 2;
                        if ((dVar4.getAct_type() & 2) == 2) {
                            imageView3.setOnClickListener(new o(vVar, aVar2, cVar, splashSkipView2));
                        }
                    } else {
                        c2 = 2;
                    }
                    dVar4.getAct_type();
                    if ((dVar4.getAct_type() & 32) == 32 || (dVar4.getAct_type() & 128) == 128) {
                        swipeView.setVisibility(0);
                        swipeView.setMoveDistance(dVar4.getAct_type(), dVar4.f32525F);
                        m mVar = new m(vVar, aVar2, cVar, dVar4, splashSkipView2);
                        dVar4 = dVar4;
                        swipeView.setOnSwipeListener(mVar);
                    }
                } else if ((dVar4.getAct_type() & 2) == 2) {
                    iVar2.b(R.id.ms_jump_btn).d(0);
                    if (!TextUtils.isEmpty(dVar4.getClk_area())) {
                        iVar2.b(R.id.ms_jump_btn).a(dVar4.getClk_area());
                    } else if (dVar4.getInteractionType() == 1) {
                        View view = iVar2.b(R.id.ms_jump_btn).f31521d;
                        if (view instanceof TextView) {
                            ((TextView) view).setText("点击按钮下载或跳转第三方应用");
                        }
                    } else {
                        View view2 = iVar2.b(R.id.ms_jump_btn).f31521d;
                        if (view2 instanceof TextView) {
                            ((TextView) view2).setText("点击按钮查看详情或跳转第三方应用");
                        }
                    }
                }
                dVar = dVar4;
            }
            if (!TextUtils.isEmpty(dVar.getClk_area())) {
                textView.setText(dVar.getClk_area());
            }
            if (!TextUtils.isEmpty(dVar.getAction_desc())) {
                textView2.setText(dVar.getAction_desc());
            }
            if (!AdSdk.adConfig().showLogo()) {
                iVar2.b(R.id.ms_img_meishu_ad_tag).d(8);
            } else if (!TextUtils.isEmpty(dVar.getFromLogo())) {
                iVar2.b(R.id.ms_img_meishu_ad_tag).a(dVar.getFromLogo(), false);
            }
            try {
                v vVar2 = v.this;
                com.meishu.sdk.meishu_ad.splash.c cVar2 = this.f32644c;
                vVar2.a(cVar2, cVar2.f32518e, this.f32645d, this.f32646e, true);
                if (this.f32643b.getAdPatternType() != 2 || (normalMediaView = this.f32644c.f32517d) == null) {
                    return;
                }
                normalMediaView.start();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.core.bquery.i iVar, boolean z2) {
            if (z2) {
                return;
            }
            new DownloadView().handleDownloadView(v.this.f32585q, dVar);
            iVar.b(R.id.ms_shakeRoot).d(0);
            if (AdSdk.adConfig().showLogo()) {
                iVar.b(R.id.ms_img_meishu_ad_tag).d(0);
            }
        }
    }

    public class j implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.d f32648a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f32649b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.a f32650c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ View f32651d;

        public j(com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar, View view) {
            this.f32648a = dVar;
            this.f32649b = cVar;
            this.f32650c = aVar;
            this.f32651d = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            NormalMediaView normalMediaView;
            try {
                new DownloadView().handleDownloadView(v.this.f32585q, this.f32648a);
                v vVar = v.this;
                com.meishu.sdk.meishu_ad.splash.c cVar = this.f32649b;
                vVar.a(cVar, cVar.f32518e, this.f32650c, this.f32651d, false);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                if (this.f32648a.getAdPatternType() == 2 && (normalMediaView = this.f32649b.f32517d) != null) {
                    normalMediaView.start();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            v vVar2 = v.this;
            com.meishu.sdk.meishu_ad.splash.d dVar = this.f32648a;
            MeishuSplashRootView meishuSplashRootView = vVar2.f32585q;
            try {
                com.meishu.sdk.core.bquery.i iVar = new com.meishu.sdk.core.bquery.i(meishuSplashRootView);
                LinearLayout linearLayout = (LinearLayout) meishuSplashRootView.findViewById(R.id.ms_layout_native_splash_logo_ll);
                ImageView imageView = (ImageView) meishuSplashRootView.findViewById(R.id.ms_layout_native_splash_logo);
                TextView textView = (TextView) meishuSplashRootView.findViewById(R.id.ms_layout_native_splash_cid);
                linearLayout.setBackground(vVar2.f32569a.getResources().getDrawable(R.drawable.ms_black_oval_gray));
                if (!TextUtils.isEmpty(dVar.getCid())) {
                    textView.setText(dVar.getCid());
                }
                if (TextUtils.isEmpty(dVar.getFromLogo())) {
                    return;
                }
                iVar.f31521d = imageView;
                iVar.a(dVar.getFromLogo(), false);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public v(Context context) {
        this.f32569a = context;
    }

    public final void a(com.meishu.sdk.meishu_ad.splash.c cVar) {
        try {
            com.meishu.sdk.meishu_ad.splash.d dVar = cVar.f32515b;
            if (dVar != null && this.f32585q != null) {
                int skipBtnLocation = dVar.getSkipBtnLocation();
                View viewFindViewById = this.f32585q.findViewById(R.id.ms_skipView_container);
                if (viewFindViewById == null) {
                    return;
                }
                int iB = com.meishu.sdk.meishu_ad.splash.e.b(this.f32569a);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (skipBtnLocation == 0) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    layoutParams.topMargin = com.meishu.sdk.meishu_ad.splash.e.c(this.f32569a);
                    layoutParams.rightMargin = iB;
                } else if (skipBtnLocation == 1) {
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    layoutParams.rightMargin = iB;
                    layoutParams.bottomMargin = com.meishu.sdk.meishu_ad.splash.e.a(this.f32569a);
                    if (Boolean.TRUE.equals(com.meishu.sdk.platform.ms.splash.k.a(this.f32569a))) {
                        layoutParams.bottomMargin += (int) com.meishu.sdk.core.utils.m.a(this.f32569a, 30.0f);
                    } else {
                        layoutParams.bottomMargin += (int) com.meishu.sdk.core.utils.m.a(this.f32569a, 18.0f);
                    }
                    viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight(), layoutParams.bottomMargin);
                } else if (skipBtnLocation == 2) {
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    layoutParams.bottomMargin = com.meishu.sdk.meishu_ad.splash.e.a(this.f32569a);
                    layoutParams.leftMargin = iB;
                    viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight(), layoutParams.bottomMargin);
                    View viewFindViewById2 = this.f32585q.findViewById(R.id.ms_download_layer_textview);
                    if (viewFindViewById2 != null) {
                        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams2.bottomMargin = layoutParams.bottomMargin;
                        MeishuSplashRootView meishuSplashRootView = this.f32585q;
                        int iA = com.meishu.sdk.meishu_ad.splash.e.a(meishuSplashRootView);
                        if (meishuSplashRootView != null) {
                            try {
                                iA = (int) com.meishu.sdk.core.utils.m.a(meishuSplashRootView.getContext(), iA);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                        layoutParams2.leftMargin = (int) (((iB / 4.0d) * 3.0d) + iA);
                        viewFindViewById2.setLayoutParams(layoutParams2);
                    }
                } else if (skipBtnLocation == 3) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    layoutParams.topMargin = com.meishu.sdk.meishu_ad.splash.e.c(this.f32569a);
                    layoutParams.leftMargin = iB;
                }
                viewFindViewById.setLayoutParams(layoutParams);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static Bitmap[] b(Bitmap bitmap, int i2, int i3, int i4) {
        Bitmap[] bitmapArr = new Bitmap[2];
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = (i2 * 1.0f) / width;
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        int height2 = bitmapCreateBitmap.getHeight();
        bitmapCreateBitmap.getWidth();
        if (height2 < i3) {
            try {
                AdSdk.getContext();
                bitmapArr[1] = com.meishu.sdk.core.utils.f0.a(bitmapCreateBitmap, 10);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, (i4 == 3 || i4 == 2 || i4 == 1) ? (height2 - i3) / 2 : (i4 != 4 && i4 == 5) ? height2 - i3 : 0, i2, i3, (Matrix) null, false);
        }
        bitmapArr[0] = bitmapCreateBitmap;
        return bitmapArr;
    }

    public static void a(v vVar, SplashSkipView splashSkipView) {
        vVar.getClass();
        if (!AdSdk.adConfig().isSplashClickToClosed() || splashSkipView == null) {
            return;
        }
        splashSkipView.a(true);
    }

    public static void a(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, com.meishu.sdk.meishu_ad.splash.a aVar, SplashSkipView splashSkipView) {
        TextView textView;
        vVar.getClass();
        try {
            if ((cVar.f32515b.getAct_type() & 1) == 1) {
                meishuSplashRootView.setOnClickListener(new w(vVar, cVar, aVar, splashSkipView));
            }
            if ((cVar.f32515b.getAct_type() & 2) == 2 && (textView = (TextView) meishuSplashRootView.findViewById(R.id.ms_jump_btn)) != null) {
                textView.setOnClickListener(new x(vVar, aVar, cVar, splashSkipView));
            }
            if (aVar instanceof com.meishu.sdk.platform.ms.splash.g) {
                ((com.meishu.sdk.platform.ms.splash.g) aVar).f33174k = new y(vVar, new boolean[]{false}, cVar, aVar, splashSkipView);
                if (!((com.meishu.sdk.platform.ms.splash.g) aVar).f33168e || ((com.meishu.sdk.platform.ms.splash.g) aVar).f33174k == null) {
                    return;
                }
                ((y) ((com.meishu.sdk.platform.ms.splash.g) aVar).f33174k).a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(v vVar) {
        vVar.getClass();
        try {
            List<Animator> list = vVar.f32573e;
            if (list == null || list.isEmpty()) {
                return;
            }
            for (int i2 = 0; i2 < vVar.f32573e.size(); i2++) {
                Animator animator = vVar.f32573e.get(i2);
                if (animator != null) {
                    animator.cancel();
                }
            }
            vVar.f32573e.clear();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar) {
        vVar.getClass();
        if (((dVar == null || dVar.getAd_type() == 0) ? AdType.SPLASH.value() : dVar.getAd_type()) != AdType.SPLASH.value()) {
            return;
        }
        com.meishu.sdk.meishu_ad.splash.l lVar = vVar.f32568B;
        Context context = vVar.f32569a;
        MeishuSplashRootView meishuSplashRootView = vVar.f32585q;
        g0 g0Var = new g0(vVar, aVar, cVar);
        lVar.getClass();
        try {
            if (dVar.getWebTempId() <= 0 || TextUtils.isEmpty(dVar.getWebTempUrl())) {
                return;
            }
            lVar.f32547c = meishuSplashRootView;
            com.meishu.sdk.core.webview.n nVar = new com.meishu.sdk.core.webview.n();
            nVar.f32136a = 0;
            String webTempUrl = dVar.getWebTempUrl();
            lVar.f32546b = com.meishu.sdk.core.webview.o.a(webTempUrl) ? com.meishu.sdk.core.webview.o.a(context, webTempUrl, cVar, nVar, null, new com.meishu.sdk.meishu_ad.splash.h(lVar, context, dVar, meishuSplashRootView, cVar, g0Var)) : null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final SplashSkipView a(com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, com.meishu.sdk.meishu_ad.splash.a aVar, View view, boolean z2) {
        SplashSkipView splashSkipView = cVar.f32516c;
        if (splashSkipView != null) {
            return splashSkipView;
        }
        SplashSkipView splashSkipView2 = (SplashSkipView) meishuSplashRootView.findViewById(R.id.ms_skipView);
        meishuSplashRootView.post(new a(splashSkipView2, cVar, aVar, view, z2, meishuSplashRootView));
        cVar.f32516c = splashSkipView2;
        return splashSkipView2;
    }

    public final void a(m0 m0Var, String str, Integer num) {
        if (this.f32594z) {
            return;
        }
        this.f32594z = true;
        if (this.f32583o == 0) {
            this.f32583o = System.currentTimeMillis();
        }
        if (m0Var != null) {
            m0Var.onAdRenderFail(str, num.intValue());
        }
        if (r0.f31978i > 0) {
            p1.b(this.f32572d, num.intValue(), str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.platform.ms.splash.a aVar2, View view, boolean z2) {
        long t12;
        int fetchDelay;
        try {
            this.f32572d = dVar.getEventUrl();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.meishu.sdk.meishu_ad.splash.c cVar = new com.meishu.sdk.meishu_ad.splash.c(dVar, aVar2, z2);
        if (dVar.getImageUrls() != null && dVar.getImageUrls().length != 0) {
            this.f32574f = 0;
            PackageBean.AdBean adBean = r0.f31982m;
            PackageBean.SplashConfigBean splash = (adBean == null || adBean.getSplash() == null) ? null : r0.f31982m.getSplash();
            if (dVar.getRs() != null) {
                this.f32567A = dVar.getRs().intValue();
            } else if (splash != null) {
                this.f32567A = splash.getRs();
            }
            if (this.f32567A != 1) {
                this.f32574f = 1;
            } else if (splash != null) {
                this.f32574f = splash.getAr();
            }
            try {
                t12 = ((SplashAdLoader) aVar2.getAdLoader()).getT1();
            } catch (Exception unused) {
                t12 = 0;
            }
            this.f32580l = t12;
            try {
                fetchDelay = ((SplashAdLoader) aVar2.getAdLoader()).getFetchDelay();
            } catch (Exception unused2) {
                fetchDelay = 0;
            }
            this.f32581m = fetchDelay;
            cVar.f32522i.add(new b(cVar, dVar, aVar, aVar2, view, z2));
            if (this.f32574f == 1) {
                a(cVar, dVar, aVar, aVar2, view, z2, (ViewGroup) null);
            }
            a(this.f32567A == 1, aVar, cVar);
            return;
        }
        LogUtil.i("AdNative", "empty srcUrls");
        a(aVar, "图片url为空", ErrorCodeUtil.EMPTY_SRC_URL);
    }

    public final void a(com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.a aVar) {
        LogUtil.d("AdNative", "adListener=" + aVar + ",nativeAd.getAdView()=" + cVar.getAdView() + ",isSplashStartRender=" + this.f32577i);
        if (aVar == null || cVar.getAdView() == null || this.f32577i) {
            return;
        }
        this.f32577i = true;
        com.meishu.sdk.platform.ms.splash.g gVar = (com.meishu.sdk.platform.ms.splash.g) aVar;
        try {
            if (gVar.f33173j) {
                return;
            }
            gVar.f33173j = true;
            gVar.f33172i = cVar.getAdView();
            int nie = 0;
            try {
                Gson gson = new Gson();
                HashMap map = new HashMap();
                map.put("stepNum", 4);
                map.put("msg", "onAdReady add View");
                Integer numA = gVar.a();
                if (numA != null) {
                    map.put("creativeType", numA);
                }
                if (gVar.f33172i != null) {
                    map.put(IReward.AD_VIEW, 1);
                } else {
                    map.put(IReward.AD_VIEW, 0);
                }
                p1.a(gVar.f33164a, gson.toJson(map));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            gVar.onADExposure();
            View view = gVar.f33172i;
            if (view != null) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(gVar.f33172i);
                }
                TouchAdContainer touchAdContainer = new TouchAdContainer(gVar.f33172i.getContext());
                try {
                    PackageBean.AdBean adBean = r0.f31982m;
                    if (adBean != null && adBean.getSplash() != null) {
                        nie = r0.f31982m.getSplash().getNie();
                    }
                } catch (Exception unused) {
                }
                if (nie != 1) {
                    touchAdContainer.setInterceptDownEvent();
                }
                touchAdContainer.setTouchPositionListener(new TouchPositionListener(cVar));
                touchAdContainer.addView(gVar.f33172i);
                if (viewGroup != null) {
                    viewGroup.addView(touchAdContainer);
                }
                gVar.f33172i = touchAdContainer;
                cVar.adView = touchAdContainer;
                com.meishu.sdk.platform.ms.splash.b bVar = gVar.f33167d;
                if (bVar != null) {
                    bVar.setAdView(touchAdContainer);
                }
            } else {
                try {
                    p1.b(cVar.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_INTERRUPTED, "adView 为null");
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            cVar.c();
        } catch (Throwable th) {
            try {
                p1.b(cVar.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_INTERRUPTED, "广告加载成功，加载到容器时发生异常");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            th.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.platform.ms.splash.a aVar2, View view, boolean z2, ViewGroup viewGroup) {
        try {
            Gson gson = new Gson();
            HashMap map = new HashMap();
            map.put("stepNum", 2);
            map.put("msg", "start create layout");
            map.put("creativeType", Integer.valueOf(dVar.getAdPatternType()));
            p1.a(cVar.f32515b.getErrorUrl(), gson.toJson(map));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (viewGroup != null) {
            try {
                this.f32569a = viewGroup.getContext();
            } catch (Throwable th) {
                try {
                    p1.b(cVar.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_EXCEPTION, th.getMessage());
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                th.printStackTrace();
                return;
            }
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f32569a);
        int iValue = (dVar == null || dVar.getAd_type() == 0) ? AdType.SPLASH.value() : dVar.getAd_type();
        if (iValue == AdType.SPLASH.value()) {
            MeishuSplashRootView meishuSplashRootView = (MeishuSplashRootView) layoutInflaterFrom.inflate(R.layout.ms_splash_ad_layout, (ViewGroup) null);
            this.f32585q = meishuSplashRootView;
            cVar.f32518e = meishuSplashRootView;
            cVar.adView = meishuSplashRootView;
            this.f32568B.f32547c = meishuSplashRootView;
            com.meishu.sdk.core.bquery.i iVar = new com.meishu.sdk.core.bquery.i(this.f32585q);
            a(cVar);
            this.f32585q.post(new i(iVar, dVar, cVar, aVar, view));
            int iIntValue = ((SplashAdLoader) aVar2.getAdLoader()).getAccept_ad_width().intValue();
            int iIntValue2 = ((SplashAdLoader) aVar2.getAdLoader()).getAccept_ad_height().intValue();
            if (viewGroup != null) {
                if (iIntValue <= 0) {
                    iIntValue = viewGroup.getWidth();
                }
                if (iIntValue2 <= 0) {
                    iIntValue2 = viewGroup.getHeight();
                }
            }
            DisplayMetrics displayMetrics = this.f32569a.getResources().getDisplayMetrics();
            if (iIntValue <= 0 || iIntValue > displayMetrics.widthPixels) {
                iIntValue = displayMetrics.widthPixels;
            }
            int i2 = iIntValue;
            if (iIntValue2 <= 0 || iIntValue2 > displayMetrics.heightPixels) {
                iIntValue2 = displayMetrics.heightPixels;
            }
            int i3 = iIntValue2;
            if (dVar.getAdPatternType() == 2) {
                a(aVar, dVar, cVar, this.f32585q, iVar, view, ((SplashAdLoader) aVar2.getAdLoader()).getVideoIsMute(), i2, i3);
                return;
            } else {
                a(aVar, dVar, cVar, this.f32585q, view, i2, i3);
                return;
            }
        }
        if (iValue == AdType.FEED.value()) {
            MeishuSplashRootView meishuSplashRootView2 = (MeishuSplashRootView) layoutInflaterFrom.inflate(R.layout.ms_layout_native_splash, (ViewGroup) null);
            this.f32585q = meishuSplashRootView2;
            cVar.f32518e = meishuSplashRootView2;
            cVar.adView = meishuSplashRootView2;
            meishuSplashRootView2.post(new j(dVar, cVar, aVar, view));
            a(aVar, dVar, cVar, this.f32585q, view);
            return;
        }
        a(aVar, "unsupported type", ErrorCodeUtil.UNSUPPORTED_TYPE);
    }

    public final void a(com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, View view) {
        new DownloadView().handleDownloadView(meishuSplashRootView, dVar);
        if (dVar.getAdPatternType() == 2) {
            new com.meishu.sdk.core.bquery.i(meishuSplashRootView).a(dVar.f32395g, BaseConstants.Time.DAY, true, new com.meishu.sdk.meishu_ad.e(this, aVar, dVar, cVar, meishuSplashRootView, view));
        } else {
            com.meishu.sdk.core.cache.a.a(dVar.getImageUrls()[0], new j0(this, aVar, dVar, cVar, meishuSplashRootView, view), true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.meishu.sdk.meishu_ad.v r25, byte[] r26, com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView r27, boolean r28, com.meishu.sdk.core.ad.BaseAdSlot r29, com.meishu.sdk.meishu_ad.splash.c r30, com.meishu.sdk.meishu_ad.splash.a r31, com.meishu.sdk.meishu_ad.nativ.NormalMediaView r32) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.meishu_ad.v.a(com.meishu.sdk.meishu_ad.v, byte[], com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView, boolean, com.meishu.sdk.core.ad.BaseAdSlot, com.meishu.sdk.meishu_ad.splash.c, com.meishu.sdk.meishu_ad.splash.a, com.meishu.sdk.meishu_ad.nativ.NormalMediaView):void");
    }

    public final void a(com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.c cVar, MeishuSplashRootView meishuSplashRootView, View view, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        ImageView imageView = (ImageView) meishuSplashRootView.findViewById(R.id.ms_splash_image_bg);
        this.f32586r = (GifImageView) meishuSplashRootView.findViewById(R.id.ms_splash_image);
        int scale_type = dVar.getScale_type();
        if (scale_type == -1) {
            scale_type = 2;
        }
        int i8 = scale_type;
        try {
            DisplayMetrics displayMetrics = this.f32569a.getResources().getDisplayMetrics();
            i6 = i2 <= 0 ? displayMetrics.widthPixels : i2;
            if (i3 <= 0) {
                try {
                    i7 = displayMetrics.heightPixels;
                } catch (Exception e2) {
                    e = e2;
                    i4 = i6;
                    i5 = i3;
                    GifImageView gifImageView = this.f32586r;
                    ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                    a(cVar, gifImageView, imageView, i8, dVar, aVar, i4, i5);
                    e.printStackTrace();
                }
            } else {
                i7 = i3;
            }
        } catch (Exception e3) {
            e = e3;
            i4 = i2;
        }
        try {
            this.f32586r.setVisibility(0);
            meishuSplashRootView.findViewById(R.id.ms_splash_video).setVisibility(8);
            if (this.f32582n == 0) {
                this.f32582n = System.currentTimeMillis();
            }
            k1 k1Var = new k1();
            String str = dVar.getImageUrls()[0];
            int iA = a(dVar.getMaterialTimeout(2000));
            try {
                u uVar = new u(this, cVar, meishuSplashRootView, aVar, view, imageView, i8, dVar, i6, i7);
                imageView = imageView;
                i8 = i8;
                k1Var.f31921a = uVar;
                try {
                    new Timer().schedule(new i1(k1Var), iA > 0 ? iA : 2000L);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                j1 j1Var = new j1(k1Var);
                OkHttpClient okHttpClient = com.meishu.sdk.core.utils.a0.f31806a;
                com.meishu.sdk.core.cache.c.a(str, new com.meishu.sdk.core.utils.c0(j1Var, i8, i6, i7));
            } catch (Exception e4) {
                e = e4;
                imageView = imageView;
                i8 = i8;
                i4 = i6;
                i5 = i7;
                GifImageView gifImageView2 = this.f32586r;
                ErrorCodeUtil.RES_LOAD_ERROR.getClass();
                a(cVar, gifImageView2, imageView, i8, dVar, aVar, i4, i5);
                e.printStackTrace();
            }
        } catch (Exception e5) {
            e = e5;
            i4 = i6;
            i5 = i7;
            GifImageView gifImageView22 = this.f32586r;
            ErrorCodeUtil.RES_LOAD_ERROR.getClass();
            a(cVar, gifImageView22, imageView, i8, dVar, aVar, i4, i5);
            e.printStackTrace();
        }
    }

    public static void a(boolean z2, com.meishu.sdk.meishu_ad.splash.a aVar, com.meishu.sdk.meishu_ad.splash.c cVar) {
        if (!z2 || aVar == null) {
            return;
        }
        ((com.meishu.sdk.platform.ms.splash.g) aVar).onADLoaded(cVar);
    }

    public final void a(com.meishu.sdk.meishu_ad.splash.c cVar, ImageView imageView, ImageView imageView2, int i2, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, int i3, int i4) {
        com.meishu.sdk.meishu_ad.splash.a aVar2;
        byte[] bArrA;
        this.f32587s = true;
        if (cVar.f32515b.getAdPatternType() != 2) {
            try {
                p1.c(cVar.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_RESULT, "加载失败 cid:" + dVar.getCid());
            } catch (Throwable th) {
                th.printStackTrace();
            }
            p1.b(dVar.getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "加载失败,cid=" + dVar.getCid());
        }
        try {
            bArrA = com.meishu.sdk.core.utils.f0.a(dVar.getDefImage());
        } catch (Throwable th2) {
            th = th2;
            aVar2 = aVar;
        }
        try {
            if (bArrA != null) {
                aVar2 = aVar;
                a(cVar, imageView, imageView2, i2, dVar, aVar2, i3, i4, bArrA, true);
            } else {
                aVar2 = aVar;
                String[] eventUrl = dVar.getEventUrl();
                Integer num = ErrorCodeUtil.RES_LOAD_ERROR;
                p1.b(eventUrl, num.intValue(), "load res error defImage is null,cid=" + dVar.getCid());
                a(aVar2, "load res error defImage is null,cid=" + dVar.getCid(), num);
            }
        } catch (Throwable th3) {
            th = th3;
            Throwable th4 = th;
            String[] eventUrl2 = dVar.getEventUrl();
            Integer num2 = ErrorCodeUtil.RES_LOAD_ERROR;
            int iIntValue = num2.intValue();
            StringBuilder sbA = com.meishu.sdk.activity.a.a("load res error ,cid=");
            sbA.append(dVar.getCid());
            sbA.append(",throwable=");
            sbA.append(th4.getMessage());
            p1.b(eventUrl2, iIntValue, sbA.toString());
            StringBuilder sbA2 = com.meishu.sdk.activity.a.a("load res error ,cid=");
            sbA2.append(dVar.getCid());
            sbA2.append(",throwable=");
            sbA2.append(th4.getMessage());
            a(aVar2, sbA2.toString(), num2);
            th4.printStackTrace();
        }
    }

    public final void a(com.meishu.sdk.meishu_ad.splash.c cVar, ImageView imageView, ImageView imageView2, int i2, com.meishu.sdk.meishu_ad.splash.d dVar, com.meishu.sdk.meishu_ad.splash.a aVar, int i3, int i4, byte[] bArr, boolean z2) {
        try {
            imageView.setVisibility(0);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            if (bitmapDecodeByteArray != null) {
                Bitmap[] bitmapArrA = a(i2, bitmapDecodeByteArray, i3, i4);
                if (bitmapArrA.length == 2) {
                    Bitmap bitmap = bitmapArrA[0];
                    a(i2, bitmap, imageView, imageView2, bitmapArrA[1]);
                    bitmapDecodeByteArray = bitmap;
                }
                l1.a(dVar, z2 ? 3 : 2, z2);
                cVar.setWidth(Integer.valueOf(bitmapDecodeByteArray.getWidth()));
                cVar.setHeight(Integer.valueOf(bitmapDecodeByteArray.getHeight()));
                this.f32584p = System.currentTimeMillis();
                a(this.f32567A != 1, aVar, cVar);
                this.f32576h = true;
                try {
                    dVar.getAppendInfo().getResLoadSuccess().a(true);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (this.f32574f != 1 || this.f32575g) {
                    dVar.setMonitorUrl(com.meishu.sdk.core.utils.i0.b(dVar.getMonitorUrl(), a()));
                    if (dVar.getAdPatternType() == 2) {
                        com.meishu.sdk.core.utils.i0.b(dVar.getMonitorUrl());
                    }
                    a(cVar, aVar);
                    return;
                }
                return;
            }
            String[] eventUrl = dVar.getEventUrl();
            Integer num = ErrorCodeUtil.RES_LOAD_ERROR;
            p1.b(eventUrl, num.intValue(), "load res error defImage bitmap is null,cid=" + dVar.getCid());
            a(aVar, "load res error defImage bitmap is null,cid=" + dVar.getCid(), num);
            if (z2) {
                String defImage = dVar.getDefImage();
                RenderScript renderScript = com.meishu.sdk.core.utils.f0.f31893a;
                try {
                    if (TextUtils.isEmpty(defImage)) {
                        return;
                    }
                    String strA = com.meishu.sdk.core.utils.f0.a(defImage, ".jpg");
                    File file = new File(com.meishu.sdk.core.utils.f0.b(), strA);
                    if (file.exists()) {
                        file.delete();
                    }
                    AdSdk.getSharedPreferences().edit().remove(strA).apply();
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            return;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        e4.printStackTrace();
    }

    public static Bitmap[] a(int i2, Bitmap bitmap, int i3, int i4) {
        try {
            switch (i2) {
                case 1:
                    if ((bitmap.getHeight() * 1.0f) / i4 > (bitmap.getWidth() * 1.0f) / i3) {
                        return b(bitmap, i3, i4, i2);
                    }
                    return a(bitmap, i3, i4, i2);
                case 2:
                default:
                    if ((bitmap.getWidth() * 1.0f) / i3 > (bitmap.getHeight() * 1.0f) / i4) {
                        return b(bitmap, i3, i4, i2);
                    }
                    return a(bitmap, i3, i4, i2);
                case 3:
                case 4:
                case 5:
                    return b(bitmap, i3, i4, i2);
                case 6:
                case 7:
                case 8:
                    return a(bitmap, i3, i4, i2);
                case 9:
                    return new Bitmap[]{bitmap, null};
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return new Bitmap[]{bitmap, null};
        }
    }

    public final void a(int i2, Bitmap bitmap, ImageView imageView, ImageView imageView2, Bitmap bitmap2) {
        try {
            if (bitmap2 != null) {
                imageView.setScaleType(ImageView.ScaleType.CENTER);
            } else {
                imageView.setScaleType(ImageView.ScaleType.MATRIX);
            }
            if (i2 == 9) {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            imageView.setImageBitmap(bitmap);
        } catch (Throwable th) {
            th.printStackTrace();
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if (bitmap2 != null) {
            try {
                imageView2.setVisibility(0);
                imageView2.setImageBitmap(bitmap2);
                imageView2.setImageAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public static Bitmap[] a(Bitmap bitmap, int i2, int i3, int i4) {
        int i5;
        Bitmap[] bitmapArr = new Bitmap[2];
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f2 = (i3 * 1.0f) / height;
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        bitmapCreateBitmap.getHeight();
        int width2 = bitmapCreateBitmap.getWidth();
        if (width2 < i2) {
            try {
                AdSdk.getContext();
                bitmapArr[1] = com.meishu.sdk.core.utils.f0.a(bitmapCreateBitmap, 25);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else {
            if (i4 == 6 || i4 == 2 || i4 == 1) {
                i5 = (width2 - i2) / 2;
            } else {
                i5 = (i4 != 7 && i4 == 8) ? width2 - i2 : 0;
            }
            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, i5, 0, i2, i3, (Matrix) null, false);
        }
        bitmapArr[0] = bitmapCreateBitmap;
        return bitmapArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e4 A[Catch: Exception -> 0x00f3, TryCatch #3 {Exception -> 0x00f3, blocks: (B:38:0x00d8, B:40:0x00e4, B:42:0x00ea, B:45:0x00f5, B:47:0x00fb, B:49:0x00ff, B:50:0x0105), top: B:96:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0105 A[Catch: Exception -> 0x00f3, TRY_LEAVE, TryCatch #3 {Exception -> 0x00f3, blocks: (B:38:0x00d8, B:40:0x00e4, B:42:0x00ea, B:45:0x00f5, B:47:0x00fb, B:49:0x00ff, B:50:0x0105), top: B:96:0x00d8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.meishu.sdk.meishu_ad.splash.a r20, com.meishu.sdk.meishu_ad.splash.d r21, com.meishu.sdk.meishu_ad.splash.c r22, com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView r23, com.meishu.sdk.core.bquery.i r24, android.view.View r25, boolean r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.meishu_ad.v.a(com.meishu.sdk.meishu_ad.splash.a, com.meishu.sdk.meishu_ad.splash.d, com.meishu.sdk.meishu_ad.splash.c, com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView, com.meishu.sdk.core.bquery.i, android.view.View, boolean, int, int):void");
    }

    public static void a(com.meishu.sdk.meishu_ad.splash.d dVar) {
        try {
            dVar.getAppendInfo().getResLoadSuccess().a(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(v vVar, com.meishu.sdk.meishu_ad.splash.c cVar, com.meishu.sdk.meishu_ad.splash.d dVar, int i2, int i3, com.meishu.sdk.meishu_ad.splash.a aVar, View view) {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        if (vVar.f32593y) {
            return;
        }
        vVar.f32593y = true;
        if (vVar.f32589u == 2 && vVar.f32590v == 2 && vVar.f32591w == 2) {
            StringBuilder sbA = com.meishu.sdk.activity.a.a("load res all error,cid=");
            sbA.append(dVar.getCid());
            vVar.a(aVar, sbA.toString(), ErrorCodeUtil.RES_LOAD_ERROR);
            return;
        }
        vVar.f32583o = System.currentTimeMillis();
        int scale_type = dVar.getScale_type();
        if (scale_type == -1) {
            scale_type = 2;
        }
        DisplayMetrics displayMetrics = vVar.f32569a.getResources().getDisplayMetrics();
        if (i2 <= 0) {
            i2 = displayMetrics.widthPixels;
        }
        if (i3 <= 0) {
            i3 = displayMetrics.heightPixels;
        }
        GifImageView gifImageView = (GifImageView) vVar.f32585q.findViewById(R.id.ms_splash_image);
        vVar.f32586r = gifImageView;
        gifImageView.setVisibility(0);
        vVar.f32585q.findViewById(R.id.ms_splash_video).setVisibility(8);
        vVar.f32584p = System.currentTimeMillis();
        vVar.a(cVar, vVar.f32585q, aVar, view, true);
        ImageView imageView = (ImageView) vVar.f32585q.findViewById(R.id.ms_splash_image_bg);
        if (vVar.f32590v == 1 && (bArr3 = vVar.f32588t) != null) {
            vVar.a(cVar, vVar.f32586r, imageView, scale_type, dVar, aVar, i2, i3, bArr3, false);
            return;
        }
        int i4 = i2;
        int i5 = i3;
        int i6 = scale_type;
        if (vVar.f32579k) {
            if (vVar.f32591w != 1 || (bArr2 = vVar.f32592x) == null) {
                return;
            }
            vVar.a(cVar, vVar.f32586r, imageView, i6, dVar, aVar, i4, i5, bArr2, true);
            return;
        }
        if (vVar.f32590v == 2 && vVar.f32591w == 1 && (bArr = vVar.f32592x) != null) {
            vVar.a(cVar, vVar.f32586r, imageView, i6, dVar, aVar, i4, i5, bArr, true);
        }
    }

    public void a(com.meishu.sdk.meishu_ad.nativ.f fVar, com.meishu.sdk.meishu_ad.nativ.a aVar, com.meishu.sdk.core.ad.b bVar) {
        int i2;
        PackageBean.AdBean adBean;
        try {
            this.f32572d = fVar.getEventUrl();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        boolean z2 = bVar instanceof RewardVideoLoader;
        NormalMediaView normalMediaView = new NormalMediaView(new ContextWrapper(this.f32569a));
        normalMediaView.setAdListener(aVar);
        ArrayList arrayList = new ArrayList();
        com.meishu.sdk.meishu_ad.nativ.d dVar = new com.meishu.sdk.meishu_ad.nativ.d(fVar);
        dVar.f32375e = fVar.title;
        dVar.f32376f = fVar.desc;
        dVar.f32372b = fVar.getAdPatternType();
        dVar.f32373c = fVar.iconUrl;
        dVar.f32374d = fVar.getImageUrls();
        dVar.f32378h = normalMediaView;
        dVar.f32381k = bVar.getVideoIsMute();
        fVar.getCid();
        dVar.f32371a = z2 ? AdType.REWARD.value() : 0;
        arrayList.add(dVar);
        boolean z3 = bVar instanceof RewardVideoLoader;
        if (z3) {
            try {
                adBean = r0.f31982m;
            } catch (Exception unused) {
            }
            int ar = (adBean == null || adBean.getReward() == null) ? 0 : r0.f31982m.getReward().getAr();
            if (ar != 1 && e1.a(this.f32569a, fVar) && fVar.getRewardTmpId() == 1) {
                LogUtil.dev("AdNative", "rewardAr change 1. because rewardTmp 1");
                i2 = 1;
            } else {
                i2 = ar;
            }
        } else {
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("rewardAr: ");
        sb.append(i2);
        sb.append(" mainThread:");
        sb.append(Looper.myLooper() == Looper.getMainLooper());
        LogUtil.dev("AdNative", sb.toString());
        if (i2 == 1 && aVar != null) {
            aVar.onADLoaded(arrayList);
        }
        this.f32582n = System.currentTimeMillis();
        com.meishu.sdk.core.webview.s[] sVarArr = new com.meishu.sdk.core.webview.s[1];
        com.meishu.sdk.meishu_ad.reward.i iVar = new com.meishu.sdk.meishu_ad.reward.i(new c(dVar, sVarArr, aVar, i2, arrayList));
        String h5Url = fVar.getH5Url();
        if (!TextUtils.isEmpty(h5Url) && z3) {
            sVarArr[0] = com.meishu.sdk.core.webview.o.a(this.f32569a, h5Url, dVar, null, new d(this, iVar), null);
        } else {
            iVar.d(false);
        }
        if (fVar.getAdPatternType() == 2) {
            SdkHandler.getInstance().postDelay(new e(this, iVar), 3000L);
            com.meishu.sdk.core.utils.a0.a(fVar.f32395g, new f(normalMediaView, fVar, bVar, iVar));
        } else {
            iVar.b(true);
        }
    }

    public final void a(com.meishu.sdk.meishu_ad.nativ.f fVar, com.meishu.sdk.meishu_ad.nativ.a aVar, boolean z2, boolean z3, boolean z4, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        NormalMediaView normalMediaView = new NormalMediaView(this.f32569a);
        if (fVar.getAdPatternType() == 2) {
            this.f32582n = System.currentTimeMillis();
            com.meishu.sdk.core.utils.a0.a(fVar.f32395g, new g(normalMediaView, aVar, z2, fVar, z4, f2, f3, z3, arrayList));
        } else {
            if (fVar.getAdPatternType() != 11 && fVar.getAdPatternType() != 12 && fVar.getAdPatternType() != 13 && fVar.getAdPatternType() != 1) {
                StringBuilder sbA = com.meishu.sdk.activity.a.a("unsupported type: ");
                sbA.append(fVar.getAdPatternType());
                LogUtil.i("AdNative", sbA.toString());
                a(aVar, "不支持的广告类型", ErrorCodeUtil.UNSUPPORTED_TYPE);
                return;
            }
            com.meishu.sdk.core.utils.a0.a(fVar.getImageUrls()[0], new h(fVar, aVar, z3, normalMediaView, arrayList));
        }
    }

    public static void a(com.meishu.sdk.meishu_ad.nativ.f fVar, com.meishu.sdk.meishu_ad.nativ.a aVar, boolean z2, NormalMediaView normalMediaView, List list) {
        normalMediaView.setOnVideoLoadedListener(new i0(fVar, z2, list, aVar));
        n0.c cVar = normalMediaView.f32315A;
        if (cVar != null) {
            cVar.onLoaded(normalMediaView);
        }
    }

    public String a() {
        return this.f32582n + com.anythink.core.common.d.i.f2495E + this.f32583o + com.anythink.core.common.d.i.f2495E + this.f32584p;
    }

    public final int a(int i2) {
        try {
            if (this.f32581m > 0 && this.f32580l > 0) {
                return Math.max(Math.min(this.f32581m - ((int) (System.currentTimeMillis() - this.f32580l)), Math.max(i2, 0)), 0);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return Math.max(i2, 0);
    }
}
