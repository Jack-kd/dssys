package com.byazt.toc;

import android.content.Context;
import android.os.SystemClock;
import com.byazt.gp.j;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 225, 30})
/* loaded from: classes3.dex */
public class jx extends l implements com.byazt.gp.l {
    public jx(Context context) {
        super(context);
    }

    @Override // com.byazt.gp.l
    public ConcurrentHashMap<String, com.byazt.dq.l> e_() {
        com.byazt.ktq.l lVar = this.jx;
        if (lVar != null) {
            return lVar.d();
        }
        return null;
    }

    @Override // com.byazt.gp.l
    public void hp(Context context, com.byazt.iqm.l lVar, j.jx jxVar) {
        hp(lVar);
        this.jx.jx(true);
        long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        this.jx.hp(jCurrentThreadTimeMillis);
        this.jx.hp(jxVar);
        com.byazt.gp.j.hp().hp(this.f25956w, jCurrentThreadTimeMillis);
        q();
    }

    @Override // com.byazt.gp.l
    public com.byazt.ktq.l j() {
        return this.jx;
    }

    @Override // com.byazt.gp.l
    public int hp() {
        com.byazt.ktq.l lVar = this.jx;
        if (lVar != null) {
            return lVar.hq();
        }
        return 0;
    }
}
