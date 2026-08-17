package com.byazt.dj;

import android.content.Context;
import androidx.annotation.NonNull;

@com.byazt.kj.hp(hp = {0, 1, 1136, 54})
/* loaded from: classes2.dex */
public class a {
    public static volatile a hp;

    /* renamed from: l, reason: collision with root package name */
    public final jx f19149l;

    private a(@NonNull Context context) {
        this.f19149l = new jx(context);
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

    public void hp() {
        this.f19149l.hp();
    }
}
