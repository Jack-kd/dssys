package com.meishu.sdk.meishu_ad;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;

/* loaded from: classes4.dex */
public class l0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32287a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView f32288b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f32289c;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Bitmap f32290a;

        public a(Bitmap bitmap) {
            this.f32290a = bitmap;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                if (this.f32290a != null) {
                    l0.this.f32289c.f32569a.getApplicationContext();
                    l0.this.f32288b.setImageBitmap(com.meishu.sdk.core.utils.f0.a(this.f32290a, 25));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public l0(v vVar, NormalMediaView normalMediaView, ImageView imageView) {
        this.f32289c = vVar;
        this.f32287a = normalMediaView;
        this.f32288b = imageView;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            Bitmap videoThumb = this.f32287a.getVideoThumb();
            if (videoThumb != null) {
                SdkHandler.getInstance().runOnUiThread(new a(videoThumb));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
