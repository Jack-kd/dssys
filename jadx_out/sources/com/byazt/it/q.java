package com.byazt.it;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import com.byazt.gg.gu;
import com.byazt.xa.q;

@com.byazt.kj.hp(hp = {0, 1, 836, 150})
/* loaded from: classes.dex */
public class q extends l implements q.hp {
    public int gu;
    public boolean jl;
    public Handler zy;

    public q(Context context) {
        super(context);
        this.gu = 500;
        this.zy = new com.byazt.xa.q(Looper.getMainLooper(), this);
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
        gu guVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.zy.sendEmptyMessageDelayed(1102, this.gu);
        } else {
            if (action == 1) {
                if (this.jl && (guVar = this.hp) != null) {
                    guVar.hp(this.f21223l, this.f21220a, this.jx.l(), this.jx);
                    this.jl = false;
                    Handler handler = this.zy;
                    if (handler != null) {
                        handler.removeMessages(1102);
                    }
                    return true;
                }
                Handler handler2 = this.zy;
                if (handler2 != null) {
                    handler2.removeMessages(1102);
                }
                this.jl = false;
                return false;
            }
            if (action == 3) {
                Handler handler3 = this.zy;
                if (handler3 != null) {
                    handler3.removeMessages(1102);
                }
                this.jl = false;
            }
        }
        return true;
    }

    @Override // com.byazt.xa.q.hp
    public void hp(Message message) {
        if (message.what != 1102) {
            return;
        }
        this.jl = true;
        Handler handler = this.zy;
        if (handler != null) {
            handler.removeMessages(1102);
        }
    }
}
