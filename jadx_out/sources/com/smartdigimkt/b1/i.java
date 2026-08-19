package com.smartdigimkt.b1;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* loaded from: classes5.dex */
public final class i implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: e, reason: collision with root package name */
    public static final i f39531e = new i();

    /* renamed from: a, reason: collision with root package name */
    public volatile long f39532a = -9223372036854775807L;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f39533b;

    /* renamed from: c, reason: collision with root package name */
    public Choreographer f39534c;

    /* renamed from: d, reason: collision with root package name */
    public int f39535d;

    public i() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f39533b = handler;
        handler.sendEmptyMessage(0);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        if (this.f39534c != null) {
            this.f39532a = j2;
            this.f39534c.postFrameCallbackDelayed(this, 500L);
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            try {
                this.f39534c = Choreographer.getInstance();
            } catch (Throwable unused) {
            }
            return true;
        }
        if (i2 == 1) {
            Choreographer choreographer = this.f39534c;
            if (choreographer != null) {
                int i3 = this.f39535d + 1;
                this.f39535d = i3;
                if (i3 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        Choreographer choreographer2 = this.f39534c;
        if (choreographer2 != null) {
            int i4 = this.f39535d - 1;
            this.f39535d = i4;
            if (i4 == 0) {
                choreographer2.removeFrameCallback(this);
                this.f39532a = -9223372036854775807L;
            }
        }
        return true;
    }
}
