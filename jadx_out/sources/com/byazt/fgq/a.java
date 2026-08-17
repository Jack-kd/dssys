package com.byazt.fgq;

import android.annotation.SuppressLint;
import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 819, 54})
/* loaded from: classes2.dex */
public class a extends eb {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile a hp;

    private a(Context context) {
        super(context);
    }

    public static a hp(Context context) {
        if (hp == null) {
            synchronized (a.class) {
                try {
                    if (hp == null) {
                        hp = new a(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
