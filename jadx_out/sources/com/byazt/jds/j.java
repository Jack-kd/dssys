package com.byazt.jds;

import android.os.HandlerThread;

@com.byazt.kj.hp(hp = {0, 1, 1095, 38})
/* loaded from: classes.dex */
public class j extends HandlerThread {
    public w hp;

    public j() {
        super("csj_openlog");
    }

    public void hp(w wVar) {
        this.hp = wVar;
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        super.onLooperPrepared();
        w wVar = this.hp;
        if (wVar != null) {
            wVar.jx();
        }
    }
}
