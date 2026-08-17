package com.byazt.jwq;

import android.app.Activity;
import com.byazt.jwq.l;
import com.byazt.xci.bu;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 740, 302})
/* loaded from: classes.dex */
public class zy extends hp {
    public hp xs;

    public zy(Activity activity, mp mpVar) {
        super(activity, mpVar);
    }

    @Override // com.byazt.jwq.l
    public String hp() throws JSONException {
        hp hpVar = this.xs;
        if (hpVar == null) {
            return null;
        }
        String strHp = hpVar.hp();
        try {
            JSONObject jSONObject = new JSONObject(strHp);
            jSONObject.put("is_need_click", this.f21731w);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return strHp;
        }
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(e eVar) {
        ArrayList<bu> arrayListSz = ea.sz(this.eb);
        if (arrayListSz == null) {
            return new l.hp(false, 0, "");
        }
        int size = arrayListSz.size();
        int i2 = 0;
        while (i2 < size) {
            bu buVar = arrayListSz.get(i2);
            i2++;
            bu buVar2 = buVar;
            switch (buVar2.jx()) {
                case 1:
                    this.xs = new jl(this.f21736s, this.eb, buVar2);
                    break;
                case 2:
                    this.xs = new gu(this.f21736s, this.eb, buVar2);
                    break;
                case 3:
                    this.xs = new a(this.f21736s, this.eb, buVar2);
                    break;
                case 4:
                    this.xs = new eb(this.f21736s, this.eb, buVar2);
                    break;
                case 5:
                    this.xs = new q(this.f21736s, this.eb, buVar2);
                    break;
                case 6:
                    this.xs = new j(this.f21736s, this.eb, buVar2);
                    break;
            }
            hp hpVar = this.xs;
            if (hpVar != null) {
                hpVar.hp(this.jx);
                this.xs.hp(this.hp);
                this.xs.l(this.f21730l);
                this.xs.l(this.f21729j);
                this.xs.jx(this.jl);
                this.xs.j(this.gu);
                this.xs.jx(this.f21728a);
                this.xs.j(this.f21731w);
                this.xs.hp(this.f21737u);
                this.xs.l(s());
                l.hp hpVarL = this.xs.l(eVar);
                if (hpVarL.jx()) {
                    return hpVarL;
                }
            }
        }
        return new l.hp(false, 0, "");
    }

    @Override // com.byazt.jwq.l
    public void l(String str) {
        super.l(str);
        hp hpVar = this.xs;
        if (hpVar == null) {
            return;
        }
        hpVar.l(str);
    }
}
