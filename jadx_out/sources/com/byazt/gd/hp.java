package com.byazt.gd;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.jz.gu;
import com.byazt.zn.w;

@com.byazt.kj.hp(hp = {0, 1, 14, 28})
/* loaded from: classes2.dex */
public class hp extends gu.hp {
    public Handler hp = new Handler(Looper.getMainLooper());

    /* renamed from: l, reason: collision with root package name */
    public w.hp f20402l;

    public hp(w.hp hpVar) {
        this.f20402l = hpVar;
    }

    @Override // com.byazt.jz.gu
    public void jx() throws RemoteException {
        hp(new Runnable() { // from class: com.byazt.gd.hp.3
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f20402l != null) {
                    hp.this.f20402l.jx();
                }
            }
        });
    }

    @Override // com.byazt.jz.gu
    public void l() throws RemoteException {
        hp(new Runnable() { // from class: com.byazt.gd.hp.2
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f20402l != null) {
                    hp.this.f20402l.l();
                }
            }
        });
    }

    @Override // com.byazt.jz.gu
    public void hp() throws RemoteException {
        hp(new Runnable() { // from class: com.byazt.gd.hp.1
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f20402l != null) {
                    hp.this.f20402l.hp();
                }
            }
        });
    }

    private void hp(Runnable runnable) {
        this.hp.post(runnable);
    }
}
