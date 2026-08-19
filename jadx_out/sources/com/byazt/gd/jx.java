package com.byazt.gd;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.jz.zy;

@com.byazt.kj.hp(hp = {0, 1, 14, 30})
/* loaded from: classes2.dex */
public class jx extends zy.hp {
    public com.byazt.pk.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Handler f20404l = new Handler(Looper.getMainLooper());

    public jx(com.byazt.pk.hp hpVar) {
        this.hp = hpVar;
    }

    private void eb() {
        this.hp = null;
        this.f20404l = null;
    }

    private Handler s() {
        Handler handler = this.f20404l;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f20404l = handler2;
        return handler2;
    }

    @Override // com.byazt.jz.zy
    public void j() throws RemoteException {
        s().post(new Runnable() { // from class: com.byazt.gd.jx.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pk.hp hpVar = jx.this.hp;
                if (hpVar != null) {
                    hpVar.jx();
                }
            }
        });
    }

    @Override // com.byazt.jz.zy
    public void jx() throws RemoteException {
        s().post(new Runnable() { // from class: com.byazt.gd.jx.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pk.hp hpVar = jx.this.hp;
                if (hpVar != null) {
                    hpVar.l();
                }
            }
        });
    }

    @Override // com.byazt.jz.zy
    public void l() throws RemoteException {
        s().post(new Runnable() { // from class: com.byazt.gd.jx.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pk.hp hpVar = jx.this.hp;
                if (hpVar != null) {
                    hpVar.hp();
                }
            }
        });
    }

    @Override // com.byazt.jz.zy
    public void w() throws RemoteException {
        s().post(new Runnable() { // from class: com.byazt.gd.jx.5
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pk.hp hpVar = jx.this.hp;
                if (hpVar != null) {
                    hpVar.j();
                }
            }
        });
    }

    @Override // com.byazt.jz.zy
    public void hp() throws RemoteException {
        eb();
    }

    @Override // com.byazt.jz.zy
    public void hp(final Bundle bundle) throws RemoteException {
        s().post(new Runnable() { // from class: com.byazt.gd.jx.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.pk.hp hpVar = jx.this.hp;
                if (hpVar != null) {
                    hpVar.hp(bundle);
                }
            }
        });
    }
}
