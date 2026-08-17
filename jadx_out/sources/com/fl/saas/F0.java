package com.fl.saas;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes3.dex */
public class F0 {

    /* renamed from: b, reason: collision with root package name */
    private static Context f29908b;

    /* renamed from: a, reason: collision with root package name */
    Handler f29909a;

    public class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ S f29910a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Looper looper, S s2) {
            super(looper);
            this.f29910a = s2;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 0) {
                this.f29910a.onSuccess((byte[]) message.obj);
            } else if (i2 == 1) {
                this.f29910a.onError((Exception) message.obj);
            }
        }
    }

    public class b extends Handler {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ T f29912a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Looper looper, T t2) {
            super(looper);
            this.f29912a = t2;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 0) {
                this.f29912a.a(message.obj.toString());
            } else if (i2 == 1) {
                this.f29912a.onError((Exception) message.obj);
            } else if (i2 == 302) {
                this.f29912a.b(message.obj.toString());
            }
        }
    }

    public F0(S s2) {
        Context context = f29908b;
        if (context == null || s2 == null) {
            return;
        }
        this.f29909a = new a(context.getMainLooper(), s2);
    }

    public void a(Exception exc) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = exc;
        messageObtain.what = 1;
        Handler handler = this.f29909a;
        if (handler != null) {
            handler.sendMessage(messageObtain);
        }
    }

    public void b(Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = obj;
        messageObtain.what = 0;
        Handler handler = this.f29909a;
        if (handler != null) {
            handler.sendMessage(messageObtain);
        }
    }

    public F0(T t2) {
        Context context = f29908b;
        if (context == null || t2 == null) {
            return;
        }
        this.f29909a = new b(context.getMainLooper(), t2);
    }

    public void a(Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = obj;
        messageObtain.what = 302;
        Handler handler = this.f29909a;
        if (handler != null) {
            handler.sendMessage(messageObtain);
        }
    }

    public static void a(Context context) {
        f29908b = context;
    }
}
