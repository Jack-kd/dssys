package com.byazt.oi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.ql.u;
import com.byazt.ql.vv;
import com.byazt.xa.q;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1547, 54})
/* loaded from: classes3.dex */
public class a implements q.hp {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.xs.jx f24096a;
    public Handler eb = new q(Looper.getMainLooper(), this);
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public Context f24097j;
    public vv jx;

    /* renamed from: l, reason: collision with root package name */
    public int f24098l;

    /* renamed from: w, reason: collision with root package name */
    public u f24099w;

    public a(Context context, u uVar, com.byazt.xs.jx jxVar) {
        this.f24097j = context;
        this.f24099w = uVar;
        this.f24096a = jxVar;
    }

    public void hp(vv vvVar) {
        this.jx = vvVar;
    }

    public void hp() {
        u uVar = this.f24099w;
        if (uVar == null) {
            return;
        }
        JSONObject jSONObjectJx = uVar.jx();
        try {
            this.f24098l = Integer.parseInt(com.byazt.ss.l.hp(jSONObjectJx.optString("interval", "8000"), this.f24096a.e()));
            this.hp = jSONObjectJx.optBoolean("repeat");
            this.eb.sendEmptyMessageDelayed(1001, this.f24098l);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.byazt.xa.q.hp
    public void hp(Message message) {
        if (message.what != 1001) {
            return;
        }
        vv vvVar = this.jx;
        if (vvVar != null) {
            u uVar = this.f24099w;
            com.byazt.xs.jx jxVar = this.f24096a;
            vvVar.hp(uVar, jxVar, jxVar);
        }
        if (this.hp) {
            this.eb.sendEmptyMessageDelayed(1001, this.f24098l);
        } else {
            this.eb.removeMessages(1001);
        }
    }
}
