package com.byazt.qvz;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.byazt.ymw.e;

@com.byazt.kj.hp(hp = {0, 1, 236, 30})
/* loaded from: classes3.dex */
public class jx implements Handler.Callback {
    public Handler hp;

    @com.byazt.kj.hp(hp = {0, 1, 236, 219})
    public static class hp {
        public static final jx hp = new jx();
    }

    public static jx hp() {
        return hp.hp;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        ((Runnable) message.obj).run();
        return false;
    }

    private jx() {
        this.hp = new Handler(e.hp().getLooper(), this);
    }

    public void hp(Runnable runnable) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = runnable;
        this.hp.sendMessage(messageObtain);
    }

    public void hp(Runnable runnable, long j2) {
        this.hp.postDelayed(runnable, j2);
    }
}
