package com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.z1.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

/* loaded from: classes5.dex */
public class RedPacketView extends View {
    public static final String TAG = "RedPacketView";

    /* renamed from: a, reason: collision with root package name */
    public double f43741a;

    /* renamed from: b, reason: collision with root package name */
    public double f43742b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f43743c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f43744d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f43745e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f43746f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f43747g;

    /* renamed from: h, reason: collision with root package name */
    public int f43748h;

    /* renamed from: i, reason: collision with root package name */
    public int f43749i;

    /* renamed from: j, reason: collision with root package name */
    public int f43750j;

    /* renamed from: k, reason: collision with root package name */
    public int f43751k;

    /* renamed from: l, reason: collision with root package name */
    public int f43752l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f43753m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f43754n;

    /* renamed from: o, reason: collision with root package name */
    public final Random f43755o;

    public RedPacketView(Context context) {
        this(context, null);
    }

    public final void a(c cVar, int i2) {
        int i3;
        Object obj;
        if (cVar.f45433b <= 0 || (i3 = cVar.f45434c) <= 0) {
            return;
        }
        int i4 = i2 % 4;
        if (i4 == 0) {
            i4 = (i2 / 4) * 9;
        } else if (i4 == 1) {
            i4 = ((i2 / 4) * 9) + 2;
        } else if (i4 == 2) {
            i4 = ((i2 / 4) * 9) + 4;
        } else if (i4 == 3) {
            i4 = ((i2 / 4) * 9) + 8;
        }
        int i5 = this.f43749i;
        int i6 = i4 / i5;
        int i7 = i4 % i5;
        int i8 = this.f43751k / i5;
        int i9 = this.f43752l / this.f43750j;
        cVar.f45436e = (i7 * i8) + ((i8 - r0) >> 1);
        int iNextInt = this.f43755o.nextInt(21) - 10;
        int i10 = i3 / 3;
        int iNextInt2 = this.f43755o.nextInt(i10) + i10;
        if (i6 > 0 && (obj = this.f43745e.get(Integer.valueOf(i4 - this.f43749i))) != null) {
            float fFloatValue = ((Float) obj).floatValue() + iNextInt2 + iNextInt;
            cVar.f45437f = fFloatValue;
            if ((this.f43752l - fFloatValue) - k.a(getContext(), 5) < i3) {
                if (this.f43746f == null) {
                    this.f43746f = new ArrayList();
                }
                this.f43746f.add(Integer.valueOf(i2));
            }
        }
        if (cVar.f45437f == 0.0f) {
            cVar.f45437f = (i6 * i9) + iNextInt2 + iNextInt;
        }
        float f2 = i3;
        if (cVar.f45437f + f2 > this.f43752l) {
            cVar.f45437f = (r4 - i3) - k.a(getContext(), 5);
        }
        if (cVar.f45437f < 0.0f) {
            cVar.f45437f = i3 >> 1;
        }
        this.f43745e.put(Integer.valueOf(i4), Float.valueOf(cVar.f45437f + f2));
    }

    public int getRedPacketScaleBaseWidth() {
        return this.f43751k;
    }

    public void initRedPacketList(Bitmap bitmap) {
        Bitmap bitmap2;
        this.f43753m = bitmap;
        if ((bitmap == null || !bitmap.isRecycled()) && !this.f43754n) {
            this.f43754n = true;
            try {
                if (this.f43753m == null) {
                    this.f43753m = BitmapFactory.decodeResource(getResources(), k.a(getContext(), "myoffer_icon_red_packet", "drawable"));
                }
            } catch (Exception e2) {
                Log.e(TAG, "initRedPacketList failed: " + e2.getMessage());
            }
            if (this.f43753m == null) {
                Log.e(TAG, "redPacketBitmap is null, decodeResource failed.");
                return;
            }
            int redPacketScaleBaseWidth = getRedPacketScaleBaseWidth();
            if (redPacketScaleBaseWidth <= 0) {
                redPacketScaleBaseWidth = this.f43751k;
            }
            int height = (int) (this.f43752l / (((redPacketScaleBaseWidth * this.f43742b) * r12.getHeight()) / r12.getWidth()));
            this.f43750j = height;
            this.f43749i = 3;
            int i2 = (height * 12) / 9;
            this.f43748h = i2;
            if (i2 <= 0 || height <= 0) {
                return;
            }
            this.f43744d.clear();
            int i3 = 0;
            for (int i4 = 0; i4 < this.f43748h; i4++) {
                Bitmap bitmap3 = this.f43753m;
                int redPacketScaleBaseWidth2 = getRedPacketScaleBaseWidth();
                if (redPacketScaleBaseWidth2 <= 0) {
                    redPacketScaleBaseWidth2 = this.f43751k;
                }
                c cVar = new c(getContext(), bitmap3, this.f43741a, this.f43742b, redPacketScaleBaseWidth2);
                a(cVar, i4);
                this.f43744d.add(cVar);
            }
            ArrayList arrayList = this.f43746f;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = this.f43746f;
                int size = arrayList2.size();
                while (i3 < size) {
                    Object obj = arrayList2.get(i3);
                    i3++;
                    int iIntValue = ((Integer) obj).intValue();
                    if (iIntValue >= 0 && iIntValue < this.f43744d.size()) {
                        c cVar2 = (c) this.f43744d.get(iIntValue);
                        if (cVar2 != null && (bitmap2 = cVar2.f45432a) != null && !bitmap2.isRecycled()) {
                            cVar2.f45432a.recycle();
                            cVar2.f45432a = null;
                        }
                        this.f43744d.remove(iIntValue);
                    }
                }
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f43744d;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            c cVar = (c) obj;
            Bitmap bitmap = cVar.f45432a;
            if (bitmap == null) {
                return;
            }
            this.f43743c.setTranslate((-cVar.f45433b) >> 1, (-cVar.f45434c) >> 1);
            this.f43743c.postRotate(cVar.f45435d);
            this.f43743c.postTranslate((cVar.f45433b >> 1) + cVar.f45436e, (cVar.f45434c >> 1) + cVar.f45437f);
            canvas.drawBitmap(bitmap, this.f43743c, this.f43747g);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f43751k = getMeasuredWidth();
        this.f43752l = getMeasuredHeight();
    }

    public void release() {
        int i2 = 0;
        this.f43754n = false;
        try {
            Bitmap bitmap = this.f43753m;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.f43753m.recycle();
            }
            ArrayList arrayList = this.f43744d;
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                c cVar = (c) obj;
                Bitmap bitmap2 = cVar.f45432a;
                if (bitmap2 != null && !bitmap2.isRecycled()) {
                    cVar.f45432a.recycle();
                    cVar.f45432a = null;
                }
            }
            this.f43744d.clear();
            HashMap map = this.f43745e;
            if (map != null) {
                map.clear();
            }
            ArrayList arrayList2 = this.f43746f;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
        } catch (Exception e2) {
            Log.e(TAG, "release failed: " + e2.getMessage());
        }
    }

    public RedPacketView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RedPacketView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43741a = 0.15d;
        this.f43742b = 0.2d;
        this.f43743c = new Matrix();
        this.f43744d = new ArrayList();
        this.f43745e = new HashMap();
        Paint paint = new Paint();
        this.f43747g = paint;
        paint.setFilterBitmap(true);
        paint.setDither(true);
        paint.setAntiAlias(true);
        setLayerType(2, null);
        this.f43755o = new Random(System.currentTimeMillis());
    }
}
