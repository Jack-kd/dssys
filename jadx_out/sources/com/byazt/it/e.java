package com.byazt.it;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import com.byazt.gg.gu;
import com.byazt.xa.q;

@com.byazt.kj.hp(hp = {0, 1, 836, 45})
/* loaded from: classes.dex */
public class e extends l implements q.hp {
    public int gu;
    public Handler jl;

    public e(Context context) {
        super(context);
        this.gu = 500;
        this.jl = new com.byazt.xa.q(Looper.getMainLooper(), this);
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        Object obj = this.f21226w.get("delay");
        if (obj == null) {
            this.gu = 500;
        } else {
            this.gu = com.byazt.xa.jx.hp(String.valueOf(obj), 500);
        }
        return hp(this.f21223l, motionEvent);
    }

    private boolean hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.jl.sendEmptyMessageDelayed(1101, this.gu);
            return false;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        this.jl.removeMessages(1101);
        return false;
    }

    @Override // com.byazt.xa.q.hp
    public void hp(Message message) {
        if (message.what != 1101) {
            return;
        }
        gu guVar = this.hp;
        if (guVar != null) {
            guVar.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
        }
        Handler handler = this.jl;
        if (handler != null) {
            handler.removeMessages(1101);
        }
    }
}
