package com.byazt.ny;

import android.os.Message;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.ymw.di;
import com.byazt.ymw.e;
import com.byazt.ymw.ud;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1653, 34})
/* loaded from: classes3.dex */
public class l extends hp implements r.hp {
    public final ud hp = new ud(e.hp().getLooper(), this);

    /* renamed from: l, reason: collision with root package name */
    public di f23866l;

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        int i2 = message.what;
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            di diVar = this.f23866l;
            if (diVar != null) {
                diVar.l(0);
            }
            hp(3, 0L, System.currentTimeMillis());
            return;
        }
        di diVar2 = this.f23866l;
        if (diVar2 == null) {
            return;
        }
        diVar2.hp(new di.jx() { // from class: com.byazt.ny.l.1
            @Override // com.byazt.ymw.di.jx
            public void hp() {
                l.this.hp(1, System.currentTimeMillis(), 0L);
                if (l.this.hp != null) {
                    l.this.hp.removeCallbacksAndMessages(null);
                }
                if (l.this.f23866l != null) {
                    l.this.f23866l.l(0);
                }
            }
        });
        this.hp.sendEmptyMessageDelayed(2, hp(sz.l().h()));
    }

    public void hp(JSONObject jSONObject, int i2) {
        int iHp = hp(i2);
        if (l(i2)) {
            hp(jSONObject, com.byazt.cqt.hp.hp().l(), iHp);
        } else if (jx(i2)) {
            hp(jSONObject, com.byazt.cqt.hp.hp().jx(), iHp);
        }
    }

    private void hp(JSONObject jSONObject, long j2, long j3) {
        if (System.currentTimeMillis() - j2 > j3) {
            this.f23866l = hp();
            this.hp.removeCallbacksAndMessages(null);
            this.hp.sendEmptyMessage(1);
        }
    }

    private di hp() {
        di diVar = new di(sz.getContext(), 1, s.u().j());
        if (diVar.hp(0)) {
            return diVar;
        }
        hp(0, System.currentTimeMillis(), 0L);
        diVar.l(0);
        return null;
    }
}
