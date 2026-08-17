package com.byazt.jk;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.byazt.xa.hp;
import com.byazt.xa.s;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1860, 28})
/* loaded from: classes.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public float f21506a;
    public float eb;
    public hp.C0402hp hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21507j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public hp.C0402hp f21508l;

    /* renamed from: q, reason: collision with root package name */
    public l f21509q;

    /* renamed from: s, reason: collision with root package name */
    public int f21510s;

    /* renamed from: w, reason: collision with root package name */
    public hp.C0402hp f21511w;

    public void hp(String str) {
        if (com.byazt.xa.hp.jx(str)) {
            this.hp = com.byazt.xa.hp.l(str);
        }
    }

    public void j() {
        l lVar = this.f21509q;
        if (lVar != null) {
            lVar.l();
        }
    }

    public void jx() {
        l lVar = this.f21509q;
        if (lVar == null || !lVar.jx()) {
            return;
        }
        this.f21509q.hp();
    }

    public void l(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("gradient", null);
            if (strOptString == null || !com.byazt.xa.hp.jx(strOptString)) {
                return;
            }
            this.f21508l = com.byazt.xa.hp.l(strOptString);
            this.jx = jSONObject.optInt("duration", 2200);
            this.f21507j = jSONObject.optInt("playCount", -1);
        } catch (JSONException unused) {
        }
    }

    public void hp(String str, Context context) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("gradient", null);
            if (strOptString == null || !com.byazt.xa.hp.jx(strOptString)) {
                return;
            }
            this.f21511w = com.byazt.xa.hp.l(strOptString);
            this.f21506a = s.hp(context, (float) jSONObject.optDouble("width", 76.0d));
            this.eb = (float) jSONObject.optDouble("opacity", 0.9d);
            this.f21510s = jSONObject.optInt("steps", 24);
        } catch (JSONException unused) {
        }
    }

    public boolean l() {
        return (this.hp == null && this.f21508l == null && this.f21511w == null) ? false : true;
    }

    public boolean hp() {
        return (this.hp == null && this.f21508l == null) ? false : true;
    }

    public void hp(View view, Drawable drawable, float f2, float[] fArr) {
        int[] iArr;
        float[] fArr2;
        int[] iArr2;
        float[] fArr3;
        boolean z2 = hp() && f2 > 0.0f;
        hp.C0402hp c0402hp = this.f21511w;
        boolean z3 = c0402hp != null;
        if (!z2 && !z3) {
            this.f21509q = null;
            view.setBackground(drawable);
            return;
        }
        if (z2) {
            hp.C0402hp c0402hp2 = this.f21508l;
            if (c0402hp2 != null) {
                iArr2 = c0402hp2.f27164l;
                fArr3 = c0402hp2.jx;
            } else {
                hp.C0402hp c0402hp3 = this.hp;
                iArr2 = c0402hp3.f27164l;
                fArr3 = c0402hp3.jx;
            }
            fArr2 = fArr3;
            iArr = iArr2;
        } else {
            iArr = null;
            fArr2 = null;
        }
        l lVar = new l(drawable, iArr, fArr2, f2, fArr, this.f21508l != null, this.jx, this.f21507j, z3, this.f21506a, this.eb, this.f21510s, z3 ? c0402hp.f27164l : null, z3 ? c0402hp.jx : null);
        this.f21509q = lVar;
        view.setBackground(lVar);
    }
}
