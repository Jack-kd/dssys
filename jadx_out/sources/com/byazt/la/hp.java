package com.byazt.la;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.anythink.core.common.f.g;
import com.byazt.ay.eb;
import com.byazt.gg.a;
import com.byazt.jz.ud;
import com.byazt.pg.r;
import com.byazt.ql.k;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 31, 28})
/* loaded from: classes3.dex */
public class hp implements vv, r.hp, l {
    public com.byazt.dy.eb eb;
    public com.byazt.xs.jx<View> hp;

    /* renamed from: j, reason: collision with root package name */
    public ud f22391j;
    public eb.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f22392l;

    /* renamed from: w, reason: collision with root package name */
    public mp f22394w;

    /* renamed from: s, reason: collision with root package name */
    public AtomicBoolean f22393s = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.ymw.ud f22390a = new com.byazt.ymw.ud(Looper.getMainLooper(), this);

    public hp(Context context, mp mpVar) {
        this.f22392l = context;
        this.f22394w = mpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject, JSONObject jSONObject2, com.byazt.dy.eb ebVar) throws JSONException {
        this.eb = ebVar;
        v vVar = new v(this.f22392l);
        k kVar = new k();
        kVar.hp(this.f22392l);
        HashMap map = new HashMap();
        ud udVar = new ud(this.f22392l);
        this.f22391j = udVar;
        udVar.hp(this.jx);
        this.f22391j.hp(this);
        this.f22391j.l(hp(jSONObject2));
        String strL = ky.l(this.f22394w);
        this.f22391j.jx(ky.j(strL));
        this.f22391j.hp(strL);
        map.put("key_js_object", this.f22391j);
        map.put("key_material", this.f22394w);
        kVar.l(jSONObject2);
        kVar.hp(map);
        vVar.hp("easy_dl_dialog", kVar);
        com.byazt.xs.jx<View> jxVarHp = vVar.hp(jSONObject);
        this.hp = jxVarHp;
        if (jxVarHp == null) {
            com.byazt.dy.eb ebVar2 = this.eb;
            if (ebVar2 != null) {
                ebVar2.hp(-1, "UGenWidget is null");
                return;
            }
            return;
        }
        vVar.hp(this);
        vVar.l(jSONObject2);
        com.byazt.ymw.ud udVar2 = this.f22390a;
        if (udVar2 != null) {
            udVar2.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message == null || message.what != 1 || this.f22393s.get()) {
            return;
        }
        if (this.eb != null) {
            this.f22393s.set(true);
            this.eb.hp(10, "load time out");
        }
        l();
    }

    @Override // com.byazt.ql.vv
    public void hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
    }

    public void hp(eb.hp hpVar) {
        this.jx = hpVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    @Override // com.byazt.ql.vv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.ql.u r2, com.byazt.ql.vv.l r3, com.byazt.ql.vv.hp r4) {
        /*
            r1 = this;
            if (r2 == 0) goto L80
            com.byazt.ay.eb$hp r3 = r1.jx
            if (r3 != 0) goto L8
            goto L80
        L8:
            int r3 = r2.l()
            r4 = 1
            if (r3 != r4) goto L80
            org.json.JSONObject r2 = r2.jx()
            if (r2 != 0) goto L17
            goto L80
        L17:
            java.lang.String r3 = "type"
            java.lang.String r2 = r2.optString(r3)
            r2.getClass()
            int r3 = r2.hashCode()
            r0 = -1
            switch(r3) {
                case -1822902106: goto L54;
                case -459025504: goto L4b;
                case -267096736: goto L40;
                case 7917298: goto L35;
                case 1237425033: goto L2a;
                default: goto L28;
            }
        L28:
            r4 = r0
            goto L5e
        L2a:
            java.lang.String r3 = "openAppPolicy"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L33
            goto L28
        L33:
            r4 = 4
            goto L5e
        L35:
            java.lang.String r3 = "downloadEvent"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L3e
            goto L28
        L3e:
            r4 = 3
            goto L5e
        L40:
            java.lang.String r3 = "closeDialog"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L49
            goto L28
        L49:
            r4 = 2
            goto L5e
        L4b:
            java.lang.String r3 = "openAppFunctionDesc"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L5e
            goto L28
        L54:
            java.lang.String r3 = "openAppPermission"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L5d
            goto L28
        L5d:
            r4 = 0
        L5e:
            r2 = 0
            switch(r4) {
                case 0: goto L7b;
                case 1: goto L75;
                case 2: goto L6f;
                case 3: goto L69;
                case 4: goto L63;
                default: goto L62;
            }
        L62:
            goto L80
        L63:
            com.byazt.ay.eb$hp r3 = r1.jx
            r3.j(r2)
            return
        L69:
            com.byazt.ay.eb$hp r3 = r1.jx
            r3.hp(r2)
            return
        L6f:
            com.byazt.ay.eb$hp r3 = r1.jx
            r3.jx(r2)
            return
        L75:
            com.byazt.ay.eb$hp r2 = r1.jx
            r2.hp()
            return
        L7b:
            com.byazt.ay.eb$hp r3 = r1.jx
            r3.l(r2)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.la.hp.hp(com.byazt.ql.u, com.byazt.ql.vv$l, com.byazt.ql.vv$hp):void");
    }

    public void hp(final JSONObject jSONObject, final JSONObject jSONObject2, final com.byazt.dy.eb ebVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(jSONObject, jSONObject2, ebVar);
        } else {
            com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.la.hp.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    hp.this.l(jSONObject, jSONObject2, ebVar);
                }
            });
        }
    }

    private JSONObject hp(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("easy_dl_dialog")) == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put("app_name", jSONObjectOptJSONObject.opt("app_name"));
            jSONObject2.put("app_version", jSONObjectOptJSONObject.opt("app_version"));
            jSONObject2.put("developer_name", jSONObjectOptJSONObject.opt("developer_name"));
            jSONObject2.put("package_name", jSONObjectOptJSONObject.opt("package_name"));
            jSONObject2.put("score", jSONObjectOptJSONObject.opt("score"));
            jSONObject2.put(g.a.f3279p, jSONObjectOptJSONObject.opt(g.a.f3279p));
            jSONObject2.put("description", jSONObjectOptJSONObject.opt("description"));
            jSONObject2.put("creative_tags", jSONObjectOptJSONObject.opt("creative_tags"));
            jSONObject2.put("easy_pl_material", jSONObjectOptJSONObject.opt("easy_pl_material"));
            jSONObject3.put("ugen_download_dialog", jSONObject2);
            return jSONObject3;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    private void l() {
        com.byazt.ymw.ud udVar = this.f22390a;
        if (udVar == null) {
            return;
        }
        udVar.removeMessages(1);
    }

    @Override // com.byazt.la.l
    public void hp() {
        l();
        if (this.f22393s.get() || this.eb == null) {
            return;
        }
        this.f22393s.set(true);
        this.eb.hp(this.hp);
    }

    @Override // com.byazt.la.l
    public void hp(int i2, String str) {
        l();
        if (this.f22393s.get() || this.eb == null) {
            return;
        }
        this.f22393s.set(true);
        this.eb.hp(i2, str);
    }
}
