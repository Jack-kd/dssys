package com.byazt.oa;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.oa.eb;
import com.bytedance.component.sdk.annotation.AnyThread;
import com.bytedance.component.sdk.annotation.MainThread;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 149, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    /* renamed from: a, reason: collision with root package name */
    public eb f23898a;
    public Handler eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public String f23899j;
    public s jx;

    /* renamed from: l, reason: collision with root package name */
    public zy f23900l;

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f23902w = false;

    /* renamed from: s, reason: collision with root package name */
    public final Map<String, eb> f23901s = new HashMap();

    public abstract Context getContext(e eVar);

    public abstract String hp();

    public abstract void hp(e eVar);

    @AnyThread
    public abstract void hp(String str);

    public void invokeMethod(final String str) {
        if (this.f23902w) {
            return;
        }
        l().post(new Runnable() { // from class: com.byazt.oa.hp.1
            @Override // java.lang.Runnable
            public void run() {
                u uVarHp;
                if (hp.this.f23902w) {
                    return;
                }
                try {
                    uVarHp = hp.this.hp(new JSONObject(str));
                } catch (Exception e2) {
                    q.l("Exception thrown while parsing function.", e2);
                    uVarHp = null;
                }
                if (!u.hp(uVarHp)) {
                    hp.this.hp(uVarHp);
                } else if (uVarHp != null) {
                    hp.this.l(b.hp(new vv(uVarHp.hp, "Failed to parse invocation.")), uVarHp);
                }
            }
        });
    }

    public void jx() {
        this.f23898a.hp();
        Iterator<eb> it = this.f23901s.values().iterator();
        while (it.hasNext()) {
            it.next().hp();
        }
        l().removeCallbacksAndMessages(null);
        this.f23902w = true;
    }

    public Handler l() {
        if (this.eb == null) {
            this.eb = new Handler(Looper.getMainLooper());
        }
        return this.eb;
    }

    public void hp(Looper looper) {
        if (looper == null) {
            return;
        }
        this.eb = new Handler(looper);
    }

    public void hp(String str, u uVar) {
        hp(str);
    }

    @MainThread
    public final void hp(u uVar) {
        if (this.f23902w) {
            return;
        }
        String strHp = hp();
        if (strHp == null) {
            strHp = "";
        }
        eb ebVarL = l(uVar.eb);
        if (ebVarL == null) {
            if (this.f23900l != null) {
                hp();
            }
            l(b.hp(new vv(-4, "Namespace " + uVar.eb + " unknown.")), uVar);
            return;
        }
        a aVar = new a();
        aVar.f23871l = strHp;
        aVar.hp = this.hp;
        aVar.jx = ebVarL;
        try {
            eb.hp hpVarHp = ebVarL.hp(uVar, aVar);
            if (hpVarHp == null) {
                l(b.hp(new vv(-2, "Function " + uVar.f23918j + " is not registered.")), uVar);
                return;
            }
            if (hpVarHp.hp) {
                l(hpVarHp.f23895l, uVar);
            }
        } catch (Exception e2) {
            q.hp("call finished with error, ".concat(String.valueOf(uVar)), e2);
            l(b.hp(e2), uVar);
        }
    }

    public final void l(String str, u uVar) {
        JSONObject jSONObject;
        if (this.f23902w || TextUtils.isEmpty(uVar.f23917a)) {
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            q.hp(new IllegalArgumentException("Illegal callback data: ".concat(str)));
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        hp(v.hp().hp("__msg_type", "callback").hp("__callback_id", uVar.f23917a).hp("__params", jSONObject).l(), uVar);
    }

    private eb l(String str) {
        if (!TextUtils.equals(str, this.f23899j) && !TextUtils.isEmpty(str)) {
            return this.f23901s.get(str);
        }
        return this.f23898a;
    }

    public final void hp(e eVar, n nVar) {
        this.hp = getContext(eVar);
        this.jx = eVar.f23878j;
        this.f23900l = eVar.f23881q;
        this.f23898a = new eb(eVar, this, nVar);
        this.f23899j = eVar.gu;
        hp(eVar);
    }

    public final <T> void hp(String str, T t2) {
        if (this.f23902w) {
            return;
        }
        hp("{\"__msg_type\":\"event\",\"__event_id\":\"" + str + "\",\"__params\":" + this.jx.hp((s) t2) + "}");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u hp(JSONObject jSONObject) throws JSONException {
        String strOptString;
        if (this.f23902w) {
            return null;
        }
        String strOptString2 = jSONObject.optString("__callback_id");
        String strOptString3 = jSONObject.optString("func");
        try {
            String string = jSONObject.getString("__msg_type");
            String strValueOf = "";
            try {
                Object objOpt = jSONObject.opt("params");
                if (objOpt == null) {
                    strOptString = strValueOf;
                } else if (objOpt instanceof JSONObject) {
                    strOptString = String.valueOf((JSONObject) objOpt);
                } else {
                    if (objOpt instanceof String) {
                        strValueOf = (String) objOpt;
                    } else {
                        strValueOf = String.valueOf(objOpt);
                    }
                    strOptString = strValueOf;
                }
            } catch (Throwable unused) {
                strOptString = jSONObject.optString("params");
            }
            String string2 = jSONObject.getString("JSSDK");
            String strOptString4 = jSONObject.optString("namespace");
            return u.hp().hp(string2).l(string).jx(strOptString3).j(strOptString).w(strOptString2).a(strOptString4).eb(jSONObject.optString("__iframe_url")).hp();
        } catch (JSONException e2) {
            q.l("Failed to create call.", e2);
            return u.hp(strOptString2, -1);
        }
    }
}
