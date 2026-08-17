package com.meishu.sdk.meishu_ad;

import android.graphics.Bitmap;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes4.dex */
public class b0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bitmap f32192a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f32193b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a0 f32194c;

    public b0(a0 a0Var, Bitmap bitmap, CountDownLatch countDownLatch) {
        this.f32194c = a0Var;
        this.f32192a = bitmap;
        this.f32193b = countDownLatch;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        try {
            Bitmap bitmap = this.f32192a;
            if (bitmap != null) {
                Bitmap.Config config = bitmap.getConfig();
                Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                Bitmap bitmapCopy = config == config2 ? this.f32192a : this.f32192a.copy(config2, true);
                if (bitmapCopy != null) {
                    this.f32194c.f32179l.f32569a.getApplicationContext();
                    Bitmap bitmapA = com.meishu.sdk.core.utils.f0.a(bitmapCopy, 25);
                    if (bitmapA != null) {
                        this.f32194c.f32177j.setImageBitmap(bitmapA);
                    }
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
            } finally {
                this.f32193b.countDown();
            }
        }
    }
}
