package com.meishu.sdk.platform.ms.draw;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.draw.DrawAdLoader;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.m;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.core.view.DownloadView;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.meishu_ad.draw.MeishuDrawRootView;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import java.util.List;

/* loaded from: classes4.dex */
public class f implements a0.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f32868a;

    public class a implements com.meishu.sdk.meishu_ad.nativ.a {
        public a() {
        }

        @Override // com.meishu.sdk.meishu_ad.m0
        public void onADExposure() {
            g gVar = f.this.f32868a;
            if (gVar.f32871c) {
                return;
            }
            v0.a(((com.meishu.sdk.meishu_ad.nativ.f) gVar.f32888a).getPosId(), 3);
            String[] strArrB = i0.b(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getMonitorUrl(), f.this.f32868a.b());
            i0.a(strArrB, f.this.f32868a.f32873e.getAdView(), (View) null);
            if (strArrB != null) {
                LogUtil.d("MeishuDrawAdWrapper", "send onADExposure");
                for (String str : strArrB) {
                    if (!TextUtils.isEmpty(str)) {
                        com.meishu.sdk.core.loader.a.a(f.this.f32868a.getContext(), i0.a(i0.a(str, ((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getAct_type(), AdType.DRAW)));
                    }
                }
            }
            com.meishu.sdk.platform.ms.draw.a aVar = f.this.f32868a.f32873e;
            if (aVar != null && aVar.getInteractionListener() != null) {
                f.this.f32868a.f32873e.getInteractionListener().onAdExposure();
            }
            if (f.this.f32868a.getLoaderListener() != 0) {
                ((com.meishu.sdk.core.ad.draw.a) f.this.f32868a.getLoaderListener()).onAdExposure();
            }
            f.this.f32868a.f32871c = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.meishu_ad.m0
        public void onADLoaded(List<com.meishu.sdk.meishu_ad.nativ.b> list) {
            List<com.meishu.sdk.meishu_ad.nativ.b> list2 = list;
            if ((list2 == null || list2.isEmpty()) && ((DrawAdLoader) f.this.f32868a.getAdLoader()).getLoaderListener() != null) {
                ((DrawAdLoader) f.this.f32868a.getAdLoader()).getLoaderListener().onAdError();
            }
            com.meishu.sdk.meishu_ad.nativ.b bVar = list2.get(0);
            if (!(bVar.getMediaView() instanceof NormalMediaView) && ((DrawAdLoader) f.this.f32868a.getAdLoader()).getLoaderListener() != null) {
                ((DrawAdLoader) f.this.f32868a.getAdLoader()).getLoaderListener().onAdError();
            }
            f.this.f32868a.f32875g = System.currentTimeMillis();
            View adView = bVar.getAdView();
            MeishuDrawRootView meishuDrawRootView = (MeishuDrawRootView) LayoutInflater.from(f.this.f32868a.context).inflate(R.layout.ms_draw_ad_layout, (ViewGroup) null).findViewById(R.id.ms_draw_rootView);
            new DownloadView().handleDownloadView(meishuDrawRootView, (BaseAdSlot) f.this.f32868a.f32888a);
            FrameLayout frameLayout = (FrameLayout) meishuDrawRootView.findViewById(R.id.ms_draw_ad_video);
            i iVar = new i(meishuDrawRootView);
            TextView textView = (TextView) meishuDrawRootView.findViewById(R.id.draw_ad_detail_title);
            TextView textView2 = (TextView) meishuDrawRootView.findViewById(R.id.ms_draw_ad_detail_desc);
            TextView textView3 = (TextView) meishuDrawRootView.findViewById(R.id.ms_draw_ad_detail_btn);
            ImageView imageView = (ImageView) meishuDrawRootView.findViewById(R.id.ms_draw_close_button);
            if (!TextUtils.isEmpty(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getVideo_cover())) {
                iVar.b(R.id.ms_draw_ad_detail_logo).a(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).iconUrl, false);
            }
            if (AdSdk.adConfig() != null && !AdSdk.adConfig().showLogo()) {
                iVar.b(R.id.ms_img_meishu_ad_tag).d(8);
            } else if (!TextUtils.isEmpty(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getFromLogo())) {
                iVar.b(R.id.ms_img_meishu_ad_tag).a(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getFromLogo(), false);
            }
            textView.setText(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).title);
            textView2.setText(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).f32391c);
            g gVar = f.this.f32868a;
            gVar.f32873e = new com.meishu.sdk.platform.ms.draw.a(gVar.f32888a, adView);
            TouchAdContainer touchAdContainer = new TouchAdContainer(f.this.f32868a.context);
            touchAdContainer.setTouchPositionListener(new TouchPositionListener(bVar));
            touchAdContainer.addView(meishuDrawRootView);
            if (adView != null) {
                f.this.f32868a.getContext();
                g gVar2 = f.this.f32868a;
                bVar.a(frameLayout, null, new com.meishu.sdk.platform.ms.recycler.b((com.meishu.sdk.meishu_ad.nativ.f) gVar2.f32888a, gVar2.f32876h));
                if (adView instanceof NormalMediaView) {
                    f.this.f32868a.getContext().getResources().getDisplayMetrics();
                    ((NormalMediaView) adView).setRecycler(true);
                }
                meishuDrawRootView.setOnVisibilityChangeListener(new b(this, adView));
                f.this.f32868a.f32873e.setAdView(touchAdContainer);
                imageView.setOnClickListener(new c(this));
                boolean z2 = (((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getAct_type() & 1) == 1;
                if (!z2 && (((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getAct_type() & 2) == 2) {
                    textView3.setOnClickListener(new d(this, bVar));
                }
                if (z2) {
                    meishuDrawRootView.setOnClickListener(new e(this, bVar));
                }
            }
            if (f.this.f32868a.getLoaderListener() != 0) {
                ((com.meishu.sdk.core.ad.draw.a) f.this.f32868a.getLoaderListener()).onAdLoaded(f.this.f32868a.f32873e);
                ((com.meishu.sdk.core.ad.draw.a) f.this.f32868a.getLoaderListener()).onAdReady(f.this.f32868a.f32873e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.meishu_ad.m0
        public void onAdRenderFail(String str, int i2) {
            if (((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getErrorUrl() != null) {
                a0.a(((com.meishu.sdk.meishu_ad.nativ.f) f.this.f32868a.f32888a).getErrorUrl()[0], Integer.valueOf(i2), str);
            }
            new com.meishu.sdk.platform.ms.d(str, Integer.valueOf(i2)).post(((DrawAdLoader) f.this.f32868a.getAdLoader()).getLoaderListener());
        }
    }

    public f(g gVar) {
        this.f32868a = gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.meishu.sdk.core.utils.a0.i
    public void a() {
        if (((com.meishu.sdk.meishu_ad.nativ.f) this.f32868a.f32888a).getErrorUrl() != null) {
            a0.a(((com.meishu.sdk.meishu_ad.nativ.f) this.f32868a.f32888a).getErrorUrl()[0], (Integer) (-1), "图片加载失败");
        }
        new com.meishu.sdk.platform.ms.d("图片加载失败", -1).post(((DrawAdLoader) this.f32868a.getAdLoader()).getLoaderListener());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.meishu.sdk.core.utils.a0.i
    public void success() {
        g gVar = this.f32868a;
        gVar.f32870b.a((com.meishu.sdk.meishu_ad.nativ.f) gVar.f32888a, (com.meishu.sdk.meishu_ad.nativ.a) new a(), false, false, false, m.b(gVar.getContext(), ((DrawAdLoader) this.f32868a.getAdLoader()).getAccept_ad_width().intValue()), m.b(this.f32868a.getContext(), ((DrawAdLoader) this.f32868a.getAdLoader()).getAccept_ad_height().intValue()));
    }
}
