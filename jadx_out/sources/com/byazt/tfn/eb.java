package com.byazt.tfn;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.tfn.hp;
import com.byazt.zg.d;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 842, 94})
/* loaded from: classes3.dex */
public class eb implements hp.InterfaceC0371hp {
    public List<hp> hp;

    /* renamed from: j, reason: collision with root package name */
    public int f25769j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ktq.l f25770l;

    public eb(List<hp> list) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.hp = copyOnWriteArrayList;
        this.jx = 0;
        this.f25769j = 0;
        if (list != null) {
            copyOnWriteArrayList.addAll(list);
        }
    }

    public static /* synthetic */ int a(eb ebVar) {
        int i2 = ebVar.f25769j;
        ebVar.f25769j = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int j(eb ebVar) {
        int i2 = ebVar.jx;
        ebVar.jx = i2 + 1;
        return i2;
    }

    @Override // com.byazt.tfn.hp.InterfaceC0371hp
    public void hp(com.byazt.ktq.l lVar) {
        if (this.f25770l != lVar && lVar != null) {
            this.f25770l = lVar;
        }
        if (d.hp(this.hp)) {
            return;
        }
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.tfn.eb.1
            @Override // java.lang.Runnable
            public void run() {
                if (eb.this.jx == 0 && eb.this.f25770l != null) {
                    eb.this.f25770l.l(SystemClock.elapsedRealtime());
                }
                if (eb.this.hp.size() > eb.this.jx) {
                    ((hp) eb.this.hp.get(eb.j(eb.this))).hp(eb.this);
                }
            }
        });
    }

    @Override // com.byazt.tfn.hp.InterfaceC0371hp
    public com.byazt.ktq.l hp() {
        return this.f25770l;
    }

    @Override // com.byazt.tfn.hp.InterfaceC0371hp
    public void hp(String str) {
        com.byazt.ktq.l lVar;
        if (!TextUtils.isEmpty(str) && (lVar = this.f25770l) != null) {
            lVar.l(str);
        }
        com.byazt.aw.w.hp(new Runnable() { // from class: com.byazt.tfn.eb.2
            @Override // java.lang.Runnable
            public void run() {
                if (eb.this.hp.size() > eb.this.f25769j) {
                    ((hp) eb.this.hp.get(eb.a(eb.this))).l(eb.this);
                }
            }
        });
    }
}
