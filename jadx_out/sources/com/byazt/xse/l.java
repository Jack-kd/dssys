package com.byazt.xse;

import android.os.Looper;
import android.os.Message;
import com.byazt.pg.r;
import com.byazt.ymw.ud;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 718, 34})
/* loaded from: classes3.dex */
public class l implements r.hp {

    /* renamed from: l, reason: collision with root package name */
    public hp f27815l;
    public AtomicBoolean jx = new AtomicBoolean(true);
    public final ud hp = new ud(Looper.getMainLooper(), this);

    /* renamed from: j, reason: collision with root package name */
    public int f27814j = 5;

    /* renamed from: w, reason: collision with root package name */
    public int f27816w = 1;

    public interface hp {
        void hp();

        void hp(int i2);
    }

    private void a() {
        try {
            int i2 = this.f27816w;
            if (i2 >= this.f27814j + 1) {
                hp hpVar = this.f27815l;
                if (hpVar != null) {
                    hpVar.hp();
                    return;
                }
                return;
            }
            int i3 = i2 + 1;
            this.f27816w = i3;
            hp hpVar2 = this.f27815l;
            if (hpVar2 != null) {
                hpVar2.hp(i3);
            }
            this.hp.sendEmptyMessageDelayed(1, 1000L);
        } catch (Exception unused) {
        }
    }

    private void j() {
        try {
            this.hp.removeMessages(1);
        } catch (Throwable unused) {
        }
    }

    private void jx() {
        this.hp.removeMessages(1);
        this.f27816w = 1;
    }

    private void w() {
        try {
            this.hp.sendEmptyMessage(1);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what == 1) {
            a();
        }
    }

    public void hp() {
        jx();
    }

    public void l() {
        jx();
        this.hp.sendEmptyMessage(1);
    }

    public void hp(boolean z2) {
        this.jx.set(z2);
        if (this.jx.get()) {
            w();
        } else {
            j();
        }
    }

    public void hp(hp hpVar) {
        this.f27815l = hpVar;
    }

    public void hp(int i2) {
        this.f27814j = i2;
        jx();
    }
}
