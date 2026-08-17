package com.byazt.ms;

import android.content.Context;
import com.byazt.aj.s;
import com.byazt.bb.eb;
import com.byazt.kw.q;

@com.byazt.kj.hp(hp = {0, 1, 679, 38})
/* loaded from: classes3.dex */
public final class j implements Runnable {
    public Context hp;

    private j(Context context) {
        this.hp = context;
    }

    public static void hp(Context context, int i2) {
        try {
            if (!s.hp().j().equals(context.getPackageName())) {
                return;
            }
        } catch (Exception unused) {
        }
        eb.l().postDelayed(new j(context), i2);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            new com.byazt.bb.jx(this.hp).hp(q.l(this.hp));
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void hp(Context context) {
        hp(context, 0);
    }
}
