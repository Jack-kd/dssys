package com.beizi.fusion;

import java.util.Random;

/* loaded from: classes2.dex */
public abstract class ql {

    /* renamed from: a, reason: collision with root package name */
    private static final Random f15824a = new Random();

    public static float a(float f2) {
        float f3 = 1.05f * f2;
        float fNextFloat = ((1.0f - f15824a.nextFloat()) * (f3 - f2)) + f2;
        return fNextFloat <= f2 ? f2 + Float.MIN_NORMAL : fNextFloat > f3 ? f3 : fNextFloat;
    }
}
