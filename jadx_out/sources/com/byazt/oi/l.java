package com.byazt.oi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.ql.u;
import com.byazt.ql.vv;
import com.byazt.ql.zy;
import com.byazt.xa.q;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1547, 34})
/* loaded from: classes3.dex */
public class l implements q.hp {

    /* renamed from: a, reason: collision with root package name */
    public Handler f24106a = new q(Looper.getMainLooper(), this);
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public u f24107j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public vv f24108l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.xs.jx f24109w;

    public l(Context context, u uVar, com.byazt.xs.jx jxVar) {
        this.jx = context;
        this.f24107j = uVar;
        this.f24109w = jxVar;
    }

    public void hp(vv vvVar) {
        this.f24108l = vvVar;
    }

    public void hp() {
        u uVar = this.f24107j;
        if (uVar == null) {
            return;
        }
        try {
            int i2 = Integer.parseInt(com.byazt.ss.l.hp(uVar.jx().optString("delay"), this.f24109w.e()));
            this.hp = i2;
            this.f24106a.sendEmptyMessageDelayed(1001, i2);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.byazt.xa.q.hp
    public void hp(Message message) {
        if (message.what != 1001) {
            return;
        }
        JSONObject jSONObjectJx = this.f24107j.jx();
        if (TextUtils.equals(jSONObjectJx.optString("type"), "onAnimation")) {
            String strOptString = jSONObjectJx.optString("nodeId");
            com.byazt.xs.jx jxVar = this.f24109w;
            com.byazt.xs.jx jxVarJ = jxVar.l(jxVar).j(strOptString);
            new zy(jxVarJ.q(), com.byazt.ql.hp.hp(jSONObjectJx.optJSONObject("animatorSet"), jxVarJ)).hp();
        } else {
            vv vvVar = this.f24108l;
            if (vvVar != null) {
                u uVar = this.f24107j;
                com.byazt.xs.jx jxVar2 = this.f24109w;
                vvVar.hp(uVar, jxVar2, jxVar2);
            }
        }
        this.f24106a.removeMessages(1001);
    }
}
