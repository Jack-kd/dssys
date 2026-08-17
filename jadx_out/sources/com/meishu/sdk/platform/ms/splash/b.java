package com.meishu.sdk.platform.ms.splash;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.google.gson.Gson;
import com.meishu.sdk.R;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.view.gif.GifImageView;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.meishu_ad.splash.MeishuSplashRootView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class b extends com.meishu.sdk.core.ad.splash.c {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.splash.a f33128a;

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.splash.b f33129b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f33130c;

    public class a extends o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f33131a;

        public a(com.meishu.sdk.meishu_ad.splash.c cVar) {
            this.f33131a = cVar;
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            b.a(b.this, this.f33131a, true);
        }
    }

    /* renamed from: com.meishu.sdk.platform.ms.splash.b$b, reason: collision with other inner class name */
    public class C0707b extends o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f33133a;

        public C0707b(com.meishu.sdk.meishu_ad.splash.c cVar) {
            this.f33133a = cVar;
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            b.a(b.this, this.f33133a, true);
            if (this.f33133a.getInteractionListener() != null && this.f33133a.f32515b.getCbc() == 0) {
                this.f33133a.getInteractionListener().onAdClicked();
            }
            this.f33133a.f32515b.setClkActType(1);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f33133a, false);
        }
    }

    public class c extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.meishu.sdk.meishu_ad.splash.c f33135a;

        public c(com.meishu.sdk.meishu_ad.splash.c cVar) {
            this.f33135a = cVar;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            b.a(b.this, this.f33135a, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(com.meishu.sdk.meishu_ad.splash.b bVar, com.meishu.sdk.platform.ms.splash.a aVar, g gVar, boolean z2) {
        super(null, "MS");
        this.f33129b = bVar;
        this.f33128a = aVar;
        if (bVar instanceof com.meishu.sdk.core.ad.splash.c) {
            com.meishu.sdk.core.ad.splash.c cVar = (com.meishu.sdk.core.ad.splash.c) bVar;
            setWidth(cVar.getWidth());
            setHeight(cVar.getHeight());
        }
    }

    public static void a(b bVar, com.meishu.sdk.meishu_ad.splash.c cVar, boolean z2) {
        bVar.getClass();
        try {
            if (cVar.f32515b.getAdPatternType() != 1 && cVar.f32515b.getAdPatternType() != 12) {
                if (cVar.f32515b.getAdPatternType() == 2) {
                    if (cVar.f32520g || z2) {
                        NormalMediaView normalMediaView = cVar.f32517d;
                        if (normalMediaView != null) {
                            normalMediaView.d();
                        }
                        bVar.c();
                        return;
                    }
                    return;
                }
                return;
            }
            bVar.c();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c() {
        try {
            View view = this.adView;
            if (view != null) {
                try {
                    if (view instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) view;
                        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                            View childAt = viewGroup.getChildAt(i2);
                            if (childAt instanceof MeishuSplashRootView) {
                                int i3 = 0;
                                while (true) {
                                    if (i3 < ((MeishuSplashRootView) childAt).getChildCount()) {
                                        View childAt2 = ((MeishuSplashRootView) childAt).getChildAt(i2);
                                        if (childAt2 instanceof GifImageView) {
                                            ((GifImageView) childAt2).clear();
                                            break;
                                        }
                                        i3++;
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                ViewParent parent = this.adView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.adView);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        try {
            resultBean.setCid(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getCid());
            resultBean.setCat(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getCat());
            resultBean.setAderId(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getAder_id());
            resultBean.setFromId(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getFromId());
            resultBean.setDrawing(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getDrawing());
            resultBean.setPid(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getPosId());
            resultBean.setInteractionType(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getInteractionType());
            resultBean.setReqId(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getReq_id());
            resultBean.setPrice(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getEcpm());
            resultBean.setEcpm(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getEcpm() + "");
            resultBean.setS_ext(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getS_ext());
            resultBean.setS_code(((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getS_code());
            resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f33128a.f32888a));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        resultBean.setSdkName("MS");
        return resultBean;
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public boolean isAdValid() {
        try {
            int expire_timestamp = ((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getExpire_timestamp();
            return SystemClock.uptimeMillis() - ((com.meishu.sdk.meishu_ad.splash.d) this.f33128a.f32888a).getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendLossNotification(Map map) {
        a0.a(this.f33128a.getContext(), ((com.meishu.sdk.meishu_ad.splash.d) this.f33129b.a()).getLossUrl(), (Map<String, Object>) map);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.s2s.ISBidding
    public void sendWinNotification(Map map) {
        a0.b(this.f33128a.getContext(), ((com.meishu.sdk.meishu_ad.splash.d) this.f33129b.a()).getWinUrl(), map);
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
        this.f33129b.setInteractionListener(interactionListener);
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void setSplashFinishingTouchListener(com.meishu.sdk.core.ad.splash.b bVar) {
        super.setSplashFinishingTouchListener(bVar);
        View view = this.adView;
        if (view != null) {
            try {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (childAt instanceof MeishuSplashRootView) {
                            int i3 = 0;
                            while (true) {
                                if (i3 < ((MeishuSplashRootView) childAt).getChildCount()) {
                                    View childAt2 = ((MeishuSplashRootView) childAt).getChildAt(i2);
                                    if (childAt2 instanceof GifImageView) {
                                        ((GifImageView) childAt2).setCanClear(false);
                                        break;
                                    }
                                    i3++;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
        try {
            if (viewGroup == null) {
                try {
                    p1.b(((BaseAdSlot) this.f33129b.a()).getEventUrl(), ErrorCodeUtil.RENDER_AD_INTERRUPTED, "adContainer 为空");
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            try {
                Gson gson = new Gson();
                HashMap map = new HashMap();
                map.put("stepNum", 1);
                map.put("msg", "showAd invoke");
                if (this.f33129b.a() instanceof com.meishu.sdk.meishu_ad.splash.d) {
                    map.put("creativeType", Integer.valueOf(((com.meishu.sdk.meishu_ad.splash.d) this.f33129b.a()).getAdPatternType()));
                }
                p1.a(((BaseAdSlot) this.f33129b.a()).getEventUrl(), gson.toJson(map));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            if (this.f33130c) {
                try {
                    p1.b(((BaseAdSlot) this.f33129b.a()).getEventUrl(), ErrorCodeUtil.RENDER_AD_INTERRUPTED, "重复调用showAd");
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            com.meishu.sdk.meishu_ad.splash.b bVar = this.f33129b;
            if (!(bVar instanceof com.meishu.sdk.meishu_ad.splash.c)) {
                try {
                    p1.b(((BaseAdSlot) bVar.a()).getEventUrl(), ErrorCodeUtil.RENDER_AD_INTERRUPTED, "nativeAd 不是SplashAdImpl实例");
                    return;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
            }
            viewGroup.removeAllViews();
            ((com.meishu.sdk.meishu_ad.splash.c) this.f33129b).showAd(viewGroup);
            p1.b(((com.meishu.sdk.meishu_ad.splash.c) this.f33129b).f32515b.getEventUrl());
            p1.a(viewGroup, ((com.meishu.sdk.meishu_ad.splash.c) this.f33129b).f32515b.getPosId(), ((com.meishu.sdk.meishu_ad.splash.c) this.f33129b).f32515b.getLoadedTime());
            this.f33130c = true;
            return;
        } catch (Throwable th) {
            p1.b(((BaseAdSlot) this.f33129b.a()).getEventUrl(), ErrorCodeUtil.RENDER_AD_EXCEPTION, th.getMessage());
            th.printStackTrace();
        }
        try {
            p1.b(((BaseAdSlot) this.f33129b.a()).getEventUrl(), ErrorCodeUtil.RENDER_AD_EXCEPTION, th.getMessage());
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        th.printStackTrace();
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void splashAnimationFinish() {
        try {
            com.meishu.sdk.meishu_ad.splash.b bVar = this.f33129b;
            if (bVar == null || !(bVar instanceof com.meishu.sdk.meishu_ad.splash.c)) {
                return;
            }
            com.meishu.sdk.meishu_ad.splash.c cVar = (com.meishu.sdk.meishu_ad.splash.c) bVar;
            cVar.f32521h = true;
            MeishuSplashRootView meishuSplashRootView = cVar.f32518e;
            ImageView imageView = (ImageView) meishuSplashRootView.findViewById(R.id.ms_click_eye_close);
            meishuSplashRootView.findViewById(R.id.ms_skipView).setVisibility(8);
            imageView.setVisibility(0);
            imageView.setOnClickListener(new a(cVar));
            meishuSplashRootView.setOnClickListener(new C0707b(cVar));
            new Handler(Looper.getMainLooper()).postDelayed(new c(cVar), 5000L);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
