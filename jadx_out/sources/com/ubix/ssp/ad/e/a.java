package com.ubix.ssp.ad.e;

import android.graphics.Paint;
import android.widget.LinearLayout;
import android.widget.TextView;

/* loaded from: classes5.dex */
public class a extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private LinearLayout f46087a;

    /* renamed from: b, reason: collision with root package name */
    private int f46088b;

    /* renamed from: c, reason: collision with root package name */
    private int f46089c;

    /* renamed from: d, reason: collision with root package name */
    private String f46090d;

    /* renamed from: e, reason: collision with root package name */
    private String f46091e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(android.content.Context r9, int r10, int r11, boolean r12, boolean r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a.<init>(android.content.Context, int, int, boolean, boolean, java.lang.String, java.lang.String):void");
    }

    public int[] a(int i2, int i3) {
        double d2 = i3;
        int i4 = (int) (0.6d * d2);
        int i5 = this.f46089c;
        if (i5 == 0) {
            i4 = i3;
        } else if (i5 == 1) {
            i4 = (int) (d2 * 0.8d);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i4);
        int i6 = this.f46088b;
        if (i6 == 0) {
            findViewById(910101).setLayoutParams(layoutParams);
        } else if (i6 == 1 || i6 == 2) {
            findViewById(910101).setLayoutParams(new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height));
        }
        this.f46087a.setLayoutParams(layoutParams);
        TextView textView = (TextView) findViewById(910102);
        TextView textView2 = (TextView) findViewById(910103);
        textView.getPaint().setFakeBoldText(false);
        float fA = com.ubix.ssp.ad.e.a0.r.a().a(getContext());
        float f2 = i3;
        int i7 = f2 <= 20.0f * fA ? 7 : f2 <= 40.0f * fA ? 9 : f2 <= 60.0f * fA ? 11 : f2 <= 80.0f * fA ? 12 : f2 <= 100.0f * fA ? 14 : f2 <= 120.0f * fA ? 16 : f2 <= 150.0f * fA ? 20 : f2 <= fA * 200.0f ? 24 : 28;
        float f3 = i7;
        textView.setTextSize(f3);
        textView2.setTextSize(f3);
        int i8 = (int) (i4 * 0.15d);
        findViewById(910101).setPadding(i8, i8, i8, i8);
        Paint.FontMetrics fontMetrics = textView.getPaint().getFontMetrics();
        float f4 = fontMetrics.bottom - fontMetrics.top;
        if (this.f46089c > 0) {
            int i9 = i3 - i4;
            if (f4 > i9 / r2 && i3 > 0) {
                int i10 = 5;
                while (f4 > i9 / this.f46089c && i10 > 0) {
                    i10--;
                    i7--;
                    float f5 = i7;
                    textView.setTextSize(f5);
                    textView2.setTextSize(f5);
                    Paint.FontMetrics fontMetrics2 = textView.getPaint().getFontMetrics();
                    f4 = fontMetrics2.bottom - fontMetrics2.top;
                }
            }
        }
        int iMax = (int) Math.max(textView.getPaint().measureText(((Object) textView.getText()) + ""), textView2.getPaint().measureText(((Object) textView2.getText()) + ""));
        textView.setLayoutParams(new LinearLayout.LayoutParams(iMax, -2));
        int i11 = this.f46089c;
        textView2.setLayoutParams(new LinearLayout.LayoutParams(i11 == 1 ? -2 : iMax, i11 != 1 ? -2 : 0));
        return new int[]{Math.max(i4, iMax), i3};
    }
}
