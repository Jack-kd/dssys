package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 45})
/* loaded from: classes3.dex */
public class e implements com.byazt.ii.hp {
    public com.byazt.ii.hp[] hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f26139j;
    public com.byazt.xj.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public String f26140l;

    public e(String str) {
        this.f26140l = str;
    }

    public void hp(com.byazt.ii.hp[] hpVarArr) {
        this.hp = hpVarArr;
    }

    public boolean jx() {
        return this.f26139j;
    }

    @Override // com.byazt.ii.hp
    public String l() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f26140l);
        sb.append("(");
        com.byazt.ii.hp[] hpVarArr = this.hp;
        if (hpVarArr != null && hpVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                com.byazt.ii.hp[] hpVarArr2 = this.hp;
                if (i2 >= hpVarArr2.length) {
                    break;
                }
                sb.append(hpVarArr2[i2].l());
                sb.append(",");
                i2++;
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void hp(boolean z2) {
        this.f26139j = z2;
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        com.byazt.xj.hp hpVar = new com.byazt.xj.hp();
        this.jx = hpVar;
        hpVar.hp(this.f26140l);
        Object[] objArr = new Object[this.hp.length];
        int i2 = 0;
        while (true) {
            com.byazt.ii.hp[] hpVarArr = this.hp;
            if (i2 < hpVarArr.length) {
                com.byazt.ii.hp hpVar2 = hpVarArr[i2];
                if (hpVar2 != null) {
                    objArr[i2] = hpVar2.hp(map);
                }
                i2++;
            } else {
                this.jx.hp(objArr);
                return com.byazt.hz.vv.hp(this.f26140l).hp(map.get("default_key"), objArr);
            }
        }
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.l.METHOD;
    }
}
