package com.byazt.hk;

import android.content.Context;
import android.os.Build;

@com.byazt.kj.hp(hp = {0, 1, 227, 65})
/* loaded from: classes2.dex */
public final class vv {
    public static xs hp(Context context) {
        if (com.byazt.zq.hp.vv()) {
            return new ns(new o());
        }
        if (com.byazt.zq.hp.ec() && o.hp()) {
            return new o();
        }
        if (n.hp()) {
            return new n(context);
        }
        if (com.byazt.zq.hp.jl() && com.byazt.zq.hp.zy()) {
            return new q();
        }
        if (com.byazt.zq.hp.jl() && !com.byazt.zq.hp.zy()) {
            return new jl();
        }
        if (com.byazt.zq.hp.hp(context) || com.byazt.zq.hp.jl()) {
            return new q();
        }
        if (com.byazt.zq.hp.ns()) {
            return new ns();
        }
        if (com.byazt.zq.hp.n()) {
            return new k();
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (com.byazt.zq.hp.k() || !q.hp(context)) {
                return null;
            }
            return new q();
        }
        if (com.byazt.zq.hp.cx()) {
            return new b();
        }
        if (com.byazt.zq.hp.di()) {
            return new v();
        }
        if (com.byazt.zq.hp.b()) {
            return new zy();
        }
        if (com.byazt.zq.hp.o()) {
            return new hp();
        }
        a aVar = new a(context);
        return aVar.l(context) ? aVar : new w();
    }
}
