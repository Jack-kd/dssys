package com.byazt.ymw;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.pg.r;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 68, 591})
/* loaded from: classes3.dex */
public class ud extends Handler {
    public WeakReference<r.hp> hp;

    public ud(r.hp hpVar) {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        if (hpVar != null) {
            this.hp = new WeakReference<>(hpVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        r.hp hpVar;
        WeakReference<r.hp> weakReference = this.hp;
        if (weakReference == null || (hpVar = weakReference.get()) == null || message == null) {
            return;
        }
        hpVar.handleMsg(message);
    }

    public ud(Looper looper, r.hp hpVar) {
        super(looper);
        if (hpVar != null) {
            this.hp = new WeakReference<>(hpVar);
        }
    }
}
