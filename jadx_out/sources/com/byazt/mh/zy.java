package com.byazt.mh;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 1216, 302})
/* loaded from: classes3.dex */
public class zy extends s<com.byazt.dk.hp, com.byazt.dk.l> {
    public static final /* synthetic */ boolean hp = true;

    public zy(com.byazt.dk.hp hpVar) {
        super(hpVar);
    }

    @Override // com.byazt.mh.s
    public Bitmap hp(Canvas canvas, Paint paint, int i2, Bitmap bitmap, com.byazt.dk.l lVar) {
        Bitmap bitmapDecodeStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = i2;
        options.inMutable = true;
        options.inBitmap = bitmap;
        Bitmap bitmap2 = null;
        try {
            ((com.byazt.dk.hp) this.eb).d_();
            try {
                bitmapDecodeStream = BitmapFactory.decodeStream(((com.byazt.dk.hp) this.eb).w(), null, options);
            } catch (IllegalArgumentException unused) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inSampleSize = i2;
                options2.inMutable = true;
                bitmapDecodeStream = BitmapFactory.decodeStream(((com.byazt.dk.hp) this.eb).w(), null, options2);
            }
        } catch (IOException unused2) {
            return bitmap2;
        }
        try {
            if (!hp && bitmapDecodeStream == null) {
                throw new AssertionError();
            }
            paint.setXfermode(null);
            canvas.drawBitmap(bitmapDecodeStream, 0.0f, 0.0f, paint);
            return bitmapDecodeStream;
        } catch (IOException unused3) {
            bitmap2 = bitmapDecodeStream;
            return bitmap2;
        }
    }
}
