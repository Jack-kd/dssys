package com.byazt.pjz;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.byazt.jz.e;
import com.byazt.pl.a;
import com.byazt.pl.eb;
import com.byazt.pl.j;
import com.byazt.pl.jx;
import com.byazt.pl.l;
import com.byazt.pl.w;
import com.byazt.ymw.u;
import java.util.concurrent.CountDownLatch;

@com.byazt.kj.hp(hp = {0, 1, 1800, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp jx;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public CountDownLatch f24429j;

    /* renamed from: l, reason: collision with root package name */
    public e f24430l;

    /* renamed from: w, reason: collision with root package name */
    public final Object f24432w = new Object();

    /* renamed from: a, reason: collision with root package name */
    public long f24428a = 0;
    public ServiceConnection eb = new ServiceConnection() { // from class: com.byazt.pjz.hp.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
            hp.this.f24430l = e.hp.hp(iBinder);
            try {
                hp.this.f24430l.asBinder().linkToDeath(hp.this.f24431s, 0);
            } catch (RemoteException e2) {
                u.hp("MultiProcess", "onServiceConnected throws :", e2);
            }
            hp.this.f24429j.countDown();
            System.currentTimeMillis();
            long unused = hp.this.f24428a;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: s, reason: collision with root package name */
    public IBinder.DeathRecipient f24431s = new IBinder.DeathRecipient() { // from class: com.byazt.pjz.hp.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            hp.this.f24430l.asBinder().unlinkToDeath(hp.this.f24431s, 0);
            hp.this.f24430l = null;
            hp.this.hp();
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 1800, 170})
    /* renamed from: com.byazt.pjz.hp$hp, reason: collision with other inner class name */
    public static class BinderC0342hp extends e.hp {
        @Override // com.byazt.jz.e
        public IBinder hp(int i2) throws RemoteException {
            if (i2 == 0) {
                return eb.l();
            }
            if (i2 == 1) {
                return w.l();
            }
            if (i2 == 2) {
                return jx.l();
            }
            if (i2 == 3) {
                return l.l();
            }
            if (i2 == 4) {
                return j.l();
            }
            if (i2 != 5) {
                return null;
            }
            return a.l();
        }
    }

    private hp(Context context) {
        this.hp = context.getApplicationContext();
        hp();
    }

    public static hp hp(Context context) {
        if (jx == null) {
            synchronized (hp.class) {
                try {
                    if (jx == null) {
                        jx = new hp(context);
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public IBinder hp(int i2) {
        try {
            e eVar = this.f24430l;
            if (eVar != null) {
                return eVar.hp(i2);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp() {
        this.f24429j = new CountDownLatch(1);
        try {
            this.hp.bindService(new Intent(this.hp, (Class<?>) BinderPoolService.class), this.eb, 1);
            this.f24428a = System.currentTimeMillis();
            this.f24429j.await();
        } catch (Exception e2) {
            u.hp("MultiProcess", "connectBinderPoolService throws: ", e2);
        }
    }
}
