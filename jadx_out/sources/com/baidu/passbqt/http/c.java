package com.baidu.passbqt.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public String f11867a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11868b;

    public c(Looper looper, boolean z2) {
        super(looper);
        this.f11868b = z2;
        this.f11867a = "UTF-8";
    }

    public abstract void a();

    public abstract void b(int i2, String str, HashMap map);

    public void c(int i2, HashMap map, byte[] bArr) {
        if (this.f11868b) {
            b(i2, bArr == null ? null : new String(bArr), map);
        } else {
            sendMessage(obtainMessage(0, new Object[]{Integer.valueOf(i2), map, bArr}));
        }
    }

    public abstract void d(Throwable th, String str);

    public abstract void e();

    public void f(int i2, HashMap map, byte[] bArr) {
        b(i2, bArr == null ? null : new String(bArr), map);
    }

    public void g(Throwable th, String str) {
        if (this.f11868b) {
            d(th, str);
        } else {
            sendMessage(obtainMessage(1, new Object[]{th, str}));
        }
    }

    public void h() {
        if (this.f11868b) {
            a();
        } else {
            sendMessage(obtainMessage(2));
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            Object[] objArr = (Object[]) message.obj;
            f(((Integer) objArr[0]).intValue(), (HashMap) objArr[1], (byte[]) objArr[2]);
        } else if (i2 == 1) {
            Object[] objArr2 = (Object[]) message.obj;
            j((Throwable) objArr2[0], (String) objArr2[1]);
        } else if (i2 == 2) {
            a();
        } else {
            if (i2 != 3) {
                return;
            }
            e();
        }
    }

    public void i(int i2, HashMap map, byte[] bArr) {
        if (i2 == 200) {
            c(i2, map, bArr);
        } else {
            String str = bArr == null ? null : new String(bArr);
            g(new HttpErrorException(i2, str), str);
        }
    }

    public void j(Throwable th, String str) {
        d(th, str);
    }

    public void k() {
        if (this.f11868b) {
            e();
        } else {
            sendMessage(obtainMessage(3));
        }
    }
}
