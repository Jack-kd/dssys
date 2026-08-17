package com.ubix.ssp.ad.e;

import android.content.Context;
import android.widget.LinearLayout;

/* loaded from: classes5.dex */
public class k extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private LinearLayout f46959a;

    /* renamed from: b, reason: collision with root package name */
    private int f46960b;

    /* renamed from: c, reason: collision with root package name */
    private String f46961c;

    /* renamed from: d, reason: collision with root package name */
    private String f46962d;

    public k(Context context, int i2, int i3, boolean z2, boolean z3) {
        this(context, i2, i3, z2, z3, false, "", "");
    }

    public void a(boolean z2) {
        LinearLayout.LayoutParams layoutParams;
        int iA = (int) (com.ubix.ssp.ad.e.a0.r.a().a(getContext()) * 20.0f * 4.0f);
        if (z2) {
            int i2 = (int) (iA * 0.8d);
            layoutParams = new LinearLayout.LayoutParams(i2, i2);
        } else {
            int i3 = (int) (iA * 1.1d);
            layoutParams = new LinearLayout.LayoutParams(i3, i3);
        }
        int i4 = this.f46960b;
        if (i4 == 0) {
            findViewById(910101).setLayoutParams(layoutParams);
        } else if (i4 == 1 || i4 == 2) {
            findViewById(910101).setLayoutParams(new LinearLayout.LayoutParams(layoutParams.width - 60, layoutParams.height - 60));
        }
        this.f46959a.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k(android.content.Context r8, int r9, int r10, boolean r11, boolean r12, boolean r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.k.<init>(android.content.Context, int, int, boolean, boolean, boolean, java.lang.String, java.lang.String):void");
    }
}
