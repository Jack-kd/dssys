package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
public class d3 {

    /* renamed from: a, reason: collision with root package name */
    private final int f13275a = 50;

    /* renamed from: b, reason: collision with root package name */
    private final Context f13276b;

    /* renamed from: c, reason: collision with root package name */
    private final int f13277c;

    /* renamed from: d, reason: collision with root package name */
    private fd f13278d;

    /* renamed from: e, reason: collision with root package name */
    private final Handler f13279e;

    /* renamed from: f, reason: collision with root package name */
    private zc f13280f;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 50 && (d3.this.f13280f instanceof eg)) {
                ((eg) d3.this.f13280f).b(fd.a.INVOKE_INTERACTIVE_TRIGGER);
            }
        }
    }

    public d3(Context context, int i2) {
        this.f13276b = context;
        this.f13277c = i2;
        this.f13279e = new a(context.getMainLooper());
        this.f13280f = ag.a(context, "invoke", false);
    }

    public void b() {
        int i2 = this.f13277c;
        if (i2 > 0) {
            this.f13279e.sendEmptyMessageDelayed(50, i2);
        }
    }

    public void a(fd fdVar) {
        this.f13278d = fdVar;
    }

    public void a(fc fcVar, Object obj) {
        zc zcVar;
        if (!(fcVar instanceof ja) || (zcVar = this.f13280f) == null) {
            return;
        }
        zcVar.a((Object) null);
        this.f13280f.a(obj, null);
        this.f13280f.a();
        this.f13280f.a(fcVar);
        zc zcVar2 = this.f13280f;
        if (zcVar2 instanceof ya) {
            ((ya) zcVar2).d().a(this.f13278d);
        }
    }

    public void a() {
        zc zcVar = this.f13280f;
        if (zcVar instanceof eg) {
            ((eg) zcVar).f();
        }
    }
}
