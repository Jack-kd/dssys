package com.byazt.ymw;

import android.os.Handler;
import com.byazt.pg.r;

@com.byazt.kj.hp(hp = {0, 1, 68, 45})
/* loaded from: classes3.dex */
public class e {
    public static volatile Handler hp;
    public static volatile Handler jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile Handler f28097l;

    public static Handler hp() {
        if (f28097l == null) {
            f28097l = ((r) com.byazt.ym.j.getService("thread_service")).getIOHandler();
        }
        return f28097l;
    }

    public static Handler jx() {
        if (jx == null) {
            jx = ((r) com.byazt.ym.j.getService("thread_service")).getCsjMainHandler();
        }
        return jx;
    }

    public static Handler l() {
        if (hp == null) {
            hp = ((r) com.byazt.ym.j.getService("thread_service")).getMainHandler();
        }
        return hp;
    }
}
