package com.byazt.lxu;

import android.os.Bundle;
import com.byazt.cn.s;
import com.byazt.gt.e;
import com.byazt.gt.zy;
import com.byazt.yu.q;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1576, 54})
/* loaded from: classes3.dex */
public class a extends l {

    /* renamed from: l, reason: collision with root package name */
    public static final long[] f22797l = {60000};

    /* renamed from: j, reason: collision with root package name */
    public boolean f22798j;
    public long jx;

    public a(j jVar) {
        super(jVar);
        this.f22798j = true;
    }

    public void hp(boolean z2) {
        this.f22798j = z2;
    }

    @Override // com.byazt.lxu.l
    public String j() {
        return "s";
    }

    @Override // com.byazt.lxu.l
    public boolean jx() throws JSONException {
        Bundle bundleHp;
        long jCurrentTimeMillis = System.currentTimeMillis();
        eb ebVarA = this.hp.a();
        if (ebVarA != null && (bundleHp = ebVarA.hp(jCurrentTimeMillis, 50000L)) != null) {
            com.byazt.ub.hp.hp("play_session", bundleHp, 1);
            com.byazt.ub.hp.l();
        }
        com.byazt.cn.l lVarL = this.hp.l();
        q qVarJ = this.hp.j();
        if (qVarJ.jl() != 0) {
            JSONObject jSONObjectJx = zy.jx(qVarJ.hp());
            if (jSONObjectJx != null) {
                hp(lVarL.hp(jSONObjectJx));
                this.jx = System.currentTimeMillis();
                return true;
            }
            e.l((Throwable) null);
        }
        return false;
    }

    @Override // com.byazt.lxu.l
    public long[] l() {
        return f22797l;
    }

    @Override // com.byazt.lxu.l
    public long hp() {
        long jB = this.hp.jx().b();
        if (jB > 60000 || jB <= 0) {
            jB = 60000;
        }
        f22797l[0] = jB;
        return this.jx + jB;
    }

    private void hp(ArrayList<s> arrayList) {
        int iHp;
        com.byazt.cn.l lVarL = this.hp.l();
        ArrayList<s> arrayList2 = new ArrayList<>();
        ArrayList<s> arrayList3 = new ArrayList<>();
        com.byazt.yu.s sVarJx = this.hp.jx();
        ArrayList arrayList4 = new ArrayList();
        if (!arrayList.isEmpty()) {
            arrayList4.addAll(arrayList);
        }
        ArrayList<s> arrayListHp = lVarL.hp();
        if (!arrayListHp.isEmpty()) {
            arrayList4.addAll(arrayListHp);
        }
        if (arrayList4.size() > 0) {
            int size = arrayList4.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                Object obj = arrayList4.get(i2);
                i2++;
                s sVar = (s) obj;
                byte[] bArr = sVar.jl;
                if (bArr != null && bArr.length > 0) {
                    if (this.f22798j) {
                        j jVar = this.hp;
                        iHp = com.byazt.et.hp.hp(com.byazt.et.l.hp(jVar, jVar.getContext(), this.hp.j().hp()), sVar.jl, sVarJx);
                    } else {
                        iHp = 200;
                    }
                    if (com.byazt.et.hp.hp(iHp)) {
                        if (arrayList.contains(sVar)) {
                            sVar.f18945k = iHp;
                            arrayList3.add(sVar);
                        }
                    } else if (iHp == 200) {
                        arrayList2.add(sVar);
                    } else {
                        sVar.f18945k = iHp;
                        arrayList3.add(sVar);
                    }
                } else {
                    arrayList2.add(sVar);
                }
            }
            if (arrayList2.size() > 0 || arrayList3.size() > 0) {
                lVarL.setResult(arrayList2, arrayList3, arrayList);
            }
            e.j(j() + " " + arrayList2.size() + " " + arrayList4.size(), null);
        }
    }
}
