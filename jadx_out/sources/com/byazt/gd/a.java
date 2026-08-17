package com.byazt.gd;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.jz.xs;

@com.byazt.kj.hp(hp = {0, 1, 14, 54})
/* loaded from: classes2.dex */
public class a extends xs.hp {
    public volatile com.byazt.gog.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Handler f20389l = new Handler(Looper.getMainLooper());

    public a(com.byazt.gog.hp hpVar) {
        this.hp = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(com.byazt.gog.hp hpVar) {
        return hpVar != null;
    }

    private Handler j() {
        Handler handler = this.f20389l;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f20389l = handler2;
        return handler2;
    }

    @Override // com.byazt.jz.xs
    public void jx(final long j2, final long j3, final String str, final String str2) throws RemoteException {
        if (this.hp != null) {
            j().post(new Runnable() { // from class: com.byazt.gd.a.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.gog.hp hpVar = a.this.hp;
                    if (a.this.hp(hpVar)) {
                        hpVar.jx(j2, j3, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.jz.xs
    public void l(final long j2, final long j3, final String str, final String str2) throws RemoteException {
        if (this.hp != null) {
            j().post(new Runnable() { // from class: com.byazt.gd.a.3
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.gog.hp hpVar = a.this.hp;
                    if (a.this.hp(hpVar)) {
                        hpVar.l(j2, j3, str, str2);
                    }
                }
            });
        }
    }

    public void jx() {
        this.hp = null;
        this.f20389l = null;
    }

    @Override // com.byazt.jz.xs
    public void hp() throws RemoteException {
        if (this.hp != null) {
            j().post(new Runnable() { // from class: com.byazt.gd.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.gog.hp hpVar = a.this.hp;
                    if (a.this.hp(hpVar)) {
                        hpVar.hp();
                    }
                }
            });
        }
    }

    @Override // com.byazt.jz.xs
    public void hp(final long j2, final long j3, final String str, final String str2) throws RemoteException {
        if (this.hp != null) {
            j().post(new Runnable() { // from class: com.byazt.gd.a.2
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.gog.hp hpVar = a.this.hp;
                    if (a.this.hp(hpVar)) {
                        hpVar.hp(j2, j3, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.jz.xs
    public void hp(final long j2, final String str, final String str2) throws RemoteException {
        if (this.hp != null) {
            j().post(new Runnable() { // from class: com.byazt.gd.a.5
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.gog.hp hpVar = a.this.hp;
                    if (a.this.hp(hpVar)) {
                        hpVar.hp(j2, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.jz.xs
    public void hp(final String str, final String str2) throws RemoteException {
        if (this.hp != null) {
            j().post(new Runnable() { // from class: com.byazt.gd.a.6
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.gog.hp hpVar = a.this.hp;
                    if (a.this.hp(hpVar)) {
                        String str3 = str;
                        if (str3 == null) {
                            str3 = "";
                        }
                        String str4 = str2;
                        hpVar.hp(str3, str4 != null ? str4 : "");
                    }
                }
            });
        }
    }
}
