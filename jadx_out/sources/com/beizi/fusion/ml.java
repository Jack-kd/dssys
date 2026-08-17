package com.beizi.fusion;

import java.util.Random;

/* loaded from: classes2.dex */
public abstract class ml {
    public static boolean a(int i2) {
        float fNextInt = new Random().nextInt(100);
        nh.c("BeiZisAd", "ratio = " + fNextInt + ",ratioCheckNum = " + i2);
        return fNextInt < ((float) i2);
    }
}
