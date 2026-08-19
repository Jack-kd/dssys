package com.smartdigimkt.sdk.basead.ui.guidetoclickv2.picverify;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.o0;
import com.smartdigimkt.i2.a;
import com.smartdigimkt.i2.b;
import com.smartdigimkt.i2.c;
import com.smartdigimkt.i2.d;
import com.smartdigimkt.k2.e;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public class PictureVerifyView extends RoundImageView {

    /* renamed from: c, reason: collision with root package name */
    public int f43948c;

    /* renamed from: d, reason: collision with root package name */
    public d f43949d;

    /* renamed from: e, reason: collision with root package name */
    public d f43950e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap f43951f;

    /* renamed from: g, reason: collision with root package name */
    public Path f43952g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f43953h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f43954i;

    /* renamed from: j, reason: collision with root package name */
    public final Paint f43955j;

    /* renamed from: k, reason: collision with root package name */
    public int f43956k;

    /* renamed from: l, reason: collision with root package name */
    public c f43957l;

    /* renamed from: m, reason: collision with root package name */
    public a f43958m;

    /* renamed from: n, reason: collision with root package name */
    public int f43959n;

    public PictureVerifyView(Context context) {
        this(context, null);
    }

    public void callback(c cVar) {
        this.f43957l = cVar;
    }

    public void down(int i2) {
        if (this.f43950e != null) {
            System.currentTimeMillis();
            this.f43948c = 1;
            d dVar = this.f43950e;
            int width = getWidth() - this.f43956k;
            dVar.f40723a = (int) (((i2 / 100.0f) * (width - (r2 * 2))) + this.f43950e.f40725c);
            postInvalidate();
        }
    }

    public void loose() {
        d dVar;
        e eVar;
        this.f43948c = 3;
        System.currentTimeMillis();
        d dVar2 = this.f43950e;
        if (dVar2 == null || (dVar = this.f43949d) == null || Math.abs(dVar2.f40723a - dVar.f40723a) >= 20 || Math.abs(this.f43950e.f40724b - this.f43949d.f40724b) >= 20) {
            this.f43948c = 6;
            postInvalidate();
        } else {
            this.f43948c = 5;
            postInvalidate();
            c cVar = this.f43957l;
            if (cVar != null && (eVar = ((o0) cVar).f40521a.f43840e) != null) {
                eVar.a(11, 16);
            }
        }
        postInvalidate();
    }

    public void move(int i2) {
        d dVar;
        if (this.f43959n == i2 || (dVar = this.f43950e) == null) {
            return;
        }
        this.f43959n = i2;
        this.f43948c = 2;
        int width = getWidth() - this.f43956k;
        dVar.f40723a = (int) (((i2 / 100.0f) * (width - (r2 * 2))) + this.f43950e.f40725c);
        postInvalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x012b  */
    @Override // com.smartdigimkt.sdk.basead.ui.component.RoundImageView, com.smartdigimkt.sdk.core.common.res.image.RecycleImageView, android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r14) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.guidetoclickv2.picverify.PictureVerifyView.onDraw(android.graphics.Canvas):void");
    }

    public void setBitmap(Bitmap bitmap) {
        this.f43952g = null;
        this.f43950e = null;
        this.f43949d = null;
        this.f43951f.recycle();
        this.f43951f = null;
        setImageBitmap(bitmap);
    }

    public void setBlockSize(int i2) {
        this.f43956k = i2;
        this.f43952g = null;
        this.f43950e = null;
        this.f43949d = null;
        this.f43951f = null;
        postInvalidate();
    }

    public void setCaptchaStrategy(a aVar) {
        this.f43958m = aVar;
    }

    public void setTouchEnable(boolean z2) {
    }

    public PictureVerifyView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PictureVerifyView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43948c = 4;
        this.f43956k = 50;
        this.f43959n = -1;
        this.f43958m = new b();
        Paint paint = new Paint();
        paint.setColor(Color.parseColor("#000000"));
        paint.setAlpha(127);
        this.f43954i = paint;
        Paint paint2 = new Paint();
        this.f43955j = paint2;
        paint2.setColor(Color.parseColor("#B5B5B5"));
        paint2.setStrokeWidth(k.a(getContext(), 1.0f));
        paint2.setStyle(Paint.Style.STROKE);
        ((b) this.f43958m).getClass();
        this.f43953h = new Paint();
    }
}
