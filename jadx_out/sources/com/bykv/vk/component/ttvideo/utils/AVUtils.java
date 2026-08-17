package com.bykv.vk.component.ttvideo.utils;

/* loaded from: classes3.dex */
public class AVUtils {

    public static class ScaleInfo {

        /* renamed from: h, reason: collision with root package name */
        public int f28821h;

        /* renamed from: w, reason: collision with root package name */
        public int f28822w;

        /* renamed from: x, reason: collision with root package name */
        public int f28823x;

        /* renamed from: y, reason: collision with root package name */
        public int f28824y;
    }

    public static final ScaleInfo getScaleInfoFromSize(float f2, float f3, float f4, float f5) {
        ScaleInfo scaleInfo = new ScaleInfo();
        float f6 = f2 / f3;
        scaleInfo.f28822w = (int) f4;
        int i2 = (int) (f4 / f6);
        scaleInfo.f28821h = i2;
        if (i2 < f5) {
            scaleInfo.f28821h = (int) f5;
            scaleInfo.f28822w = (int) (f6 * f5);
        }
        int i3 = scaleInfo.f28821h;
        int i4 = ((int) (i3 - f5)) >> 1;
        scaleInfo.f28824y = i4;
        int i5 = scaleInfo.f28822w;
        int i6 = ((int) (i5 - f4)) >> 1;
        scaleInfo.f28823x = i6;
        if (i3 > f5) {
            scaleInfo.f28824y = 0 - i4;
        }
        if (i5 > f4) {
            scaleInfo.f28823x = 0 - i6;
        }
        return scaleInfo;
    }
}
