package com.meishu.sdk.platform.ms.recycler;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.domain.LayoutBean;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.f0;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import java.util.Hashtable;

/* loaded from: classes4.dex */
public class g extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f32925a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f32926b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImageView f32927c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ LayoutBean.StyleBean f32928d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f32929e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ i f32930f;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Bitmap f32931a;

        public a(Bitmap bitmap) {
            this.f32931a = bitmap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            if (this.f32931a != null) {
                ((RecyclerMixAdLoader) g.this.f32930f.f32940b.getAdLoader()).getAccept_ad_width();
                Integer accept_ad_height = ((RecyclerMixAdLoader) g.this.f32930f.f32940b.getAdLoader()).getAccept_ad_height();
                Bitmap.Config config = this.f32931a.getConfig();
                Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                Bitmap bitmapCopy = config == config2 ? this.f32931a : this.f32931a.copy(config2, true);
                if (bitmapCopy != null) {
                    g.this.f32926b.getApplicationContext();
                    Bitmap bitmapA = f0.a(bitmapCopy, 25);
                    if (bitmapA != null) {
                        int width = this.f32931a.getWidth();
                        int height = this.f32931a.getHeight();
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) g.this.f32927c.getLayoutParams();
                        if (accept_ad_height != null && accept_ad_height.intValue() > 0) {
                            height = accept_ad_height.intValue();
                        }
                        LayoutBean.StyleBean styleBean = g.this.f32928d;
                        if (styleBean != null && (styleBean.getType() == 201 || g.this.f32928d.getType() == 101 || g.this.f32928d.getType() == 601)) {
                            if ((width * 1.0f) / height >= 1.77d || accept_ad_height == null || accept_ad_height.intValue() != -1) {
                                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) g.this.f32929e.getLayoutParams();
                                layoutParams2.width = -1;
                                layoutParams2.height = -2;
                                g.this.f32929e.setLayoutParams(layoutParams2);
                            } else {
                                height = (int) Math.round(g.this.f32926b.getResources().getDisplayMetrics().widthPixels / 1.77d);
                                int iRound = (int) Math.round(height * 1.77d);
                                layoutParams.width = -1;
                                layoutParams.height = height;
                                layoutParams.addRule(14);
                                g.this.f32927c.setLayoutParams(layoutParams);
                                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) g.this.f32929e.getLayoutParams();
                                layoutParams3.width = -1;
                                layoutParams3.height = height;
                                g.this.f32929e.setLayoutParams(layoutParams3);
                                ((NormalMediaView) g.this.f32930f.f32939a.getMediaView()).setContainerWidth(iRound);
                                ((NormalMediaView) g.this.f32930f.f32939a.getMediaView()).setContainerHeight(height);
                                ((NormalMediaView) g.this.f32930f.f32939a.getMediaView()).f32333S = true;
                            }
                        }
                        LayoutBean.StyleBean styleBean2 = g.this.f32928d;
                        if (styleBean2 != null && ((styleBean2.getType() == 301 || g.this.f32928d.getType() == 401) && (width * 1.0f) / height < 1.77d && accept_ad_height != null && accept_ad_height.intValue() == -1)) {
                            ((NormalMediaView) g.this.f32930f.f32939a.getMediaView()).f32333S = true;
                        }
                        g.this.f32927c.setImageBitmap(bitmapA);
                    }
                }
            }
            g.this.f32929e.setVisibility(0);
        }
    }

    public g(i iVar, String str, Context context, ImageView imageView, LayoutBean.StyleBean styleBean, RelativeLayout relativeLayout) {
        this.f32930f = iVar;
        this.f32925a = str;
        this.f32926b = context;
        this.f32927c = imageView;
        this.f32928d = styleBean;
        this.f32929e = relativeLayout;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        Bitmap frameAtTime;
        try {
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(this.f32925a, new Hashtable());
                frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                frameAtTime = null;
            }
            SdkHandler.getInstance().runOnUiThread(new a(frameAtTime));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
