package com.smartdigimkt.z1;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.Random;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public Bitmap f45432a;

    /* renamed from: b, reason: collision with root package name */
    public final int f45433b;

    /* renamed from: c, reason: collision with root package name */
    public final int f45434c;

    /* renamed from: d, reason: collision with root package name */
    public final float f45435d;

    /* renamed from: e, reason: collision with root package name */
    public float f45436e;

    /* renamed from: f, reason: collision with root package name */
    public float f45437f;

    public c(Context context, Bitmap bitmap, double d2, double d3, int i2) {
        i2 = i2 == 0 ? Math.min(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels) : i2;
        double dNextInt = ((d2 * 100.0d) + new Random().nextInt(6)) / 100.0d;
        if (dNextInt >= d2 && dNextInt <= d3) {
            d3 = dNextInt;
        }
        int i3 = (int) (i2 * d3);
        this.f45433b = i3;
        if (bitmap != null && !bitmap.isRecycled()) {
            int height = (bitmap.getHeight() * i3) / bitmap.getWidth();
            this.f45434c = height;
            try {
                this.f45432a = Bitmap.createScaledBitmap(bitmap, i3, height, true);
            } catch (Throwable th) {
                Log.e("RedPacketBean", "createScaledBitmap failed: " + th.getMessage());
            }
        }
        this.f45435d = (new Random().nextFloat() * 30.0f) - 15.0f;
    }
}
