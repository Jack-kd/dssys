package com.meishu.sdk.platform.ms.recycler;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import android.widget.ImageView;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.f0;

/* loaded from: classes4.dex */
public class o extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImageView f33053a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f33054b;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Bitmap f33055a;

        public a(Bitmap bitmap) {
            this.f33055a = bitmap;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                Bitmap bitmap = this.f33055a;
                if (bitmap != null) {
                    Bitmap.Config config = bitmap.getConfig();
                    Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                    Bitmap bitmapCopy = config == config2 ? this.f33055a : this.f33055a.copy(config2, true);
                    if (bitmapCopy != null) {
                        AdSdk.getContext();
                        Bitmap bitmapA = f0.a(bitmapCopy, 25);
                        if (bitmapA != null) {
                            o.this.f33053a.setImageBitmap(bitmapA);
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public o(l lVar, ImageView imageView) {
        this.f33054b = lVar;
        this.f33053a = imageView;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        Bitmap frameAtTime;
        try {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (TextUtils.isEmpty(this.f33054b.getVideoUrl())) {
                frameAtTime = null;
            } else {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(this.f33054b.getVideoUrl());
                frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            }
            if (frameAtTime != null) {
                SdkHandler.getInstance().runOnUiThread(new a(frameAtTime));
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
