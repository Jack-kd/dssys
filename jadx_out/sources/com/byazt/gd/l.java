package com.byazt.gd;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.jz.jl;
import com.byazt.zn.a;

@com.byazt.kj.hp(hp = {0, 1, 14, 34})
/* loaded from: classes2.dex */
public class l extends jl.hp {
    public Handler hp = new Handler(Looper.getMainLooper());

    /* renamed from: l, reason: collision with root package name */
    public a.hp f20406l;

    public l(a.hp hpVar) {
        this.f20406l = hpVar;
    }

    @Override // com.byazt.jz.jl
    public void hp() throws RemoteException {
        hp(new Runnable() { // from class: com.byazt.gd.l.1
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f20406l != null) {
                    l.this.f20406l.hp();
                }
            }
        });
    }

    @Override // com.byazt.jz.jl
    public void hp(final String str) throws RemoteException {
        hp(new Runnable() { // from class: com.byazt.gd.l.2
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f20406l != null) {
                    l.this.f20406l.hp(str);
                }
            }
        });
    }

    private void hp(Runnable runnable) {
        if (this.hp == null) {
            this.hp = new Handler(Looper.getMainLooper());
        }
        this.hp.post(runnable);
    }
}
