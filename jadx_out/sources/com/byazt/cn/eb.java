package com.byazt.cn;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

@com.byazt.kj.hp(hp = {0, 1, 473, 94})
/* loaded from: classes2.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public Handler f18922a;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public Object f18923j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f18924l;

    /* renamed from: w, reason: collision with root package name */
    public long f18925w;

    private eb(int i2, int i3, int i4, Object obj, long j2, Handler handler) {
        this.hp = i2;
        this.f18924l = i3;
        this.jx = i4;
        this.f18923j = obj;
        this.f18925w = j2;
        this.f18922a = handler;
    }

    public static eb hp(Message message) {
        return new eb(message.what, message.arg1, message.arg2, message.obj, l(message), message.getTarget());
    }

    private static long l(Message message) {
        if (message == null) {
            return 0L;
        }
        return Math.max(message.getWhen() - SystemClock.uptimeMillis(), 0L);
    }

    public static Message hp(Handler handler, eb ebVar) {
        Handler handler2 = ebVar.f18922a;
        return handler2 != null ? handler2.obtainMessage(ebVar.hp, ebVar.f18924l, ebVar.jx, ebVar.f18923j) : handler.obtainMessage(ebVar.hp, ebVar.f18924l, ebVar.jx, ebVar.f18923j);
    }

    public static long hp(eb ebVar) {
        return ebVar.f18925w;
    }
}
