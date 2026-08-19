package com.byazt.xa;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 1328, 150})
/* loaded from: classes3.dex */
public class q extends Handler {
    public final WeakReference<hp> hp;

    public interface hp {
        void hp(Message message);
    }

    public q(Looper looper, hp hpVar) {
        super(looper);
        this.hp = new WeakReference<>(hpVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        hp hpVar = this.hp.get();
        if (hpVar == null || message == null) {
            return;
        }
        hpVar.hp(message);
    }
}
