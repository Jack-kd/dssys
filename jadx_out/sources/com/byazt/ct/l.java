package com.byazt.ct;

import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.gg.a;
import com.byazt.jdb.eb;
import com.byazt.ql.sz;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 27, 34})
/* loaded from: classes2.dex */
public class l implements sz, vv {

    /* renamed from: a, reason: collision with root package name */
    public String f18997a;
    public int eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f18998j;
    public com.byazt.xs.jx<View> jx;

    /* renamed from: l, reason: collision with root package name */
    public eb f18999l;

    /* renamed from: w, reason: collision with root package name */
    public sz f19000w;

    public interface hp {
        void hp(u uVar);
    }

    public l(Context context, eb ebVar, String str, int i2) {
        this.hp = context;
        this.f18999l = ebVar;
        this.f18997a = str;
        this.eb = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject, JSONObject jSONObject2, com.byazt.dy.eb ebVar) throws JSONException {
        v vVar = new v(this.hp);
        com.byazt.xs.jx<View> jxVarHp = vVar.hp(jSONObject);
        this.jx = jxVarHp;
        if (jxVarHp == null) {
            eb ebVar2 = this.f18999l;
            if (ebVar2 != null) {
                ebVar2.hp(-1, "ugeno render fail");
            }
            if (ebVar != null) {
                ebVar.hp(-1, "");
                return;
            }
            return;
        }
        vVar.hp((sz) this);
        vVar.hp((vv) this);
        vVar.l(jSONObject2);
        this.f18999l.hp(0L);
        if (ebVar != null) {
            ebVar.hp(this.jx);
        }
    }

    @Override // com.byazt.ql.vv
    public void hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
    }

    public void hp(hp hpVar) {
        this.f18998j = hpVar;
    }

    public void hp(sz szVar) {
        this.f19000w = szVar;
    }

    public void hp(final JSONObject jSONObject, final JSONObject jSONObject2, final com.byazt.dy.eb ebVar) throws JSONException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(jSONObject, jSONObject2, ebVar);
        } else {
            com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.ct.l.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    l.this.l(jSONObject, jSONObject2, ebVar);
                }
            });
        }
    }

    @Override // com.byazt.ql.vv
    public void hp(u uVar, vv.l lVar, vv.hp hpVar) {
        hp hpVar2;
        if (uVar == null || uVar.l() != 1 || (hpVar2 = this.f18998j) == null) {
            return;
        }
        hpVar2.hp(uVar);
    }

    @Override // com.byazt.ql.sz
    public void hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent) {
        sz szVar = this.f19000w;
        if (szVar != null) {
            szVar.hp(jxVar, motionEvent);
        }
    }
}
