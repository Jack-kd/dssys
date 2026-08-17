package com.byazt.gd;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.jz.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 14, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends u.hp {
    public com.byazt.mv.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Handler f20408l = new Handler(Looper.getMainLooper());

    public w(com.byazt.mv.hp hpVar) {
        this.hp = hpVar;
    }

    private Handler q() {
        Handler handler = this.f20408l;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f20408l = handler2;
        return handler2;
    }

    private void s() {
        this.hp = null;
        this.f20408l = null;
    }

    @Override // com.byazt.jz.u
    public void a() throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.6
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.w();
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void j() throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.jx();
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void jx() throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.l();
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void l() throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.hp();
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void w() throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.5
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.j();
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void hp() throws RemoteException {
        s();
    }

    @Override // com.byazt.jz.u
    public void hp(final Bundle bundle) throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.hp(bundle);
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void hp(final boolean z2, final int i2, final String str, final int i3, final String str2) throws RemoteException {
        q().post(new Runnable() { // from class: com.byazt.gd.w.7
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    hpVar.hp(z2, i2, str, i3, str2);
                }
            }
        });
    }

    @Override // com.byazt.jz.u
    public void hp(final boolean z2, final int i2, final Bundle bundle) {
        q().post(new Runnable() { // from class: com.byazt.gd.w.8
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.mv.hp hpVar = w.this.hp;
                if (hpVar != null) {
                    try {
                        hpVar.hp(z2, i2, bundle);
                    } catch (AbstractMethodError unused) {
                        com.byazt.ymw.u.l("RewardVideoListenerImpl", "onRewardArrived 未实现！");
                    }
                }
            }
        });
    }
}
