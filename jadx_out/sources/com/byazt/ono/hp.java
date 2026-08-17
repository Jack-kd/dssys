package com.byazt.ono;

import android.os.Looper;
import android.os.Message;
import com.byazt.fb.l;
import com.byazt.fub.eb;
import com.byazt.fub.s;
import com.byazt.la.e;
import com.byazt.la.jx;
import com.byazt.lv.l;
import com.byazt.pg.r;
import com.byazt.qk.sz;
import com.byazt.ql.ns;
import com.byazt.xci.mp;
import com.byazt.ymw.ud;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 52, 28})
/* loaded from: classes3.dex */
public class hp implements r.hp {

    /* renamed from: a, reason: collision with root package name */
    public l f24131a;
    public ud hp = new ud(Looper.getMainLooper(), this);

    /* renamed from: j, reason: collision with root package name */
    public eb f24132j;
    public final mp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.fb.eb f24133l;

    /* renamed from: w, reason: collision with root package name */
    public s f24134w;

    public hp(mp mpVar) {
        this.jx = mpVar;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        eb ebVar;
        if (message.what == 1 && (ebVar = this.f24132j) != null) {
            ebVar.hp(-2, "render timeout");
        }
    }

    public void hp(s sVar) {
        this.f24134w = sVar;
    }

    public void hp(eb ebVar) {
        this.f24132j = ebVar;
    }

    public void hp(l lVar) {
        this.f24131a = lVar;
    }

    public void hp(String str, String str2, final int i2, final int i3, int i4) {
        if (i4 > 0) {
            this.hp.sendEmptyMessageDelayed(1, i4);
        }
        e.hp(str, str2, new jx() { // from class: com.byazt.ono.hp.1
            @Override // com.byazt.la.jx
            public void hp(String str3) {
                try {
                    hp hpVar = hp.this;
                    hpVar.hp(hpVar.jx, new JSONObject(str3), i2, i3);
                } catch (Throwable unused) {
                    if (hp.this.f24132j != null) {
                        hp.this.f24132j.hp(-1, "render fail");
                    }
                }
            }

            @Override // com.byazt.la.jx
            public void hp() {
                if (hp.this.f24132j != null) {
                    hp.this.f24132j.hp(-1, "request fail");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(mp mpVar, JSONObject jSONObject, int i2, int i3) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("width", i2);
            jSONObject2.put("height", i3);
        } catch (Throwable unused) {
        }
        l.hp hpVar = new l.hp();
        hpVar.hp(com.byazt.yp.l.hp(mpVar, jSONObject2, jSONObject, false, null, false));
        hpVar.hp((ns) new sz());
        hpVar.hp(i2);
        hpVar.l(0.0f);
        com.byazt.fb.eb ebVar = new com.byazt.fb.eb(com.byazt.jz.sz.getContext(), null, hpVar.hp(), null);
        this.f24133l = ebVar;
        eb ebVar2 = this.f24132j;
        if (ebVar2 != null) {
            ebVar.hp(ebVar2);
        }
        s sVar = this.f24134w;
        if (sVar != null) {
            this.f24133l.hp(sVar);
        }
        com.byazt.lv.l lVar = this.f24131a;
        if (lVar != null) {
            this.f24133l.hp(lVar);
        }
    }
}
