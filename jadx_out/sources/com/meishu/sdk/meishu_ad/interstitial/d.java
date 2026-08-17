package com.meishu.sdk.meishu_ad.interstitial;

import android.app.Activity;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.SdkHandler;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class d extends l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f32258a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f32259b;

    public class a extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Bitmap f32260a;

        public a(Bitmap bitmap) {
            this.f32260a = bitmap;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                d.this.f32259b.f32251e = this.f32260a.getHeight();
                d.this.f32259b.f32252f = this.f32260a.getWidth();
                d dVar = d.this;
                c cVar = dVar.f32259b;
                if (cVar.f32251e > cVar.f32252f) {
                    cVar.f32250d = 2;
                }
                c.a(cVar, dVar.f32258a, cVar.a().getAct_type());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public d(c cVar, Activity activity) {
        this.f32259b = cVar;
        this.f32258a = activity;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(this.f32259b.a().getImageUrls()[0], new HashMap());
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (frameAtTime != null && jCurrentTimeMillis2 < 1000) {
                SdkHandler.getInstance().runOnUiThread(new a(frameAtTime));
            } else {
                c cVar = this.f32259b;
                c.a(cVar, this.f32258a, cVar.a().getAct_type());
            }
        } catch (Throwable th) {
            com.meishu.sdk.meishu_ad.interstitial.a aVar = this.f32259b.f32248b;
            if (aVar != null) {
                ((com.meishu.sdk.platform.ms.interstitial.a) aVar).onAdRenderFail("插屏视频渲染失败", ErrorCodeUtil.RES_LOAD_ERROR.intValue());
            }
            th.printStackTrace();
        }
    }
}
