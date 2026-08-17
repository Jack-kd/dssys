package com.byazt.sm;

import android.util.Pair;
import com.anythink.core.common.f.f;
import com.byazt.ym.gu;
import com.byazt.ym.q;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1728, 30})
/* loaded from: classes3.dex */
public class jx {
    public q hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ym.hp f25482l;

    public jx(com.byazt.ym.hp hpVar) {
        this.f25482l = hpVar;
    }

    public void hp(q qVar) {
        this.hp = qVar;
    }

    public Object l(gu guVar, com.byazt.pg.hp hpVar, Object obj, Function function, boolean z2) {
        return hp(guVar, hpVar, obj, function, z2, true);
    }

    public Object hp(gu guVar, com.byazt.pg.hp hpVar, Object obj, Function function, boolean z2) {
        return hp(guVar, hpVar, obj, function, z2, false);
    }

    private Object hp(gu guVar, com.byazt.pg.hp hpVar, Object obj, Function function, boolean z2, boolean z3) throws JSONException {
        if (obj.getClass().getClassLoader() == com.byazt.ym.hp.class.getClassLoader() && !guVar.hp.isAssignableFrom(obj.getClass())) {
            Object objHp = guVar.hp(hpVar);
            if (this.hp != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt(f.a.f3242b, guVar.f28046a);
                    jSONObject.putOpt(LiveConfigKey.ORIGIN, obj.getClass().getName());
                    jSONObject.putOpt("memoryProxyService", objHp);
                    jSONObject.putOpt("apiClazz", guVar.hp.getName());
                    Map<String, Object> mapHp = this.f25482l.w().hp();
                    if (mapHp != null) {
                        for (String str : mapHp.keySet()) {
                            Object obj2 = mapHp.get(str);
                            if (obj2 instanceof Pair) {
                                Pair pair = (Pair) obj2;
                                jSONObject.putOpt(str + "_create", pair.first);
                                jSONObject.putOpt(str, pair.second);
                            } else {
                                jSONObject.putOpt(str, obj2);
                            }
                        }
                    }
                    jSONObject.putOpt("allServices", mapHp);
                } catch (JSONException unused) {
                }
                this.hp.hp(5, jSONObject.toString(), new RuntimeException("service not match"));
            }
            if (objHp != null) {
                return objHp;
            }
            return null;
        }
        Object objHp2 = hp(guVar, hpVar, obj, z3);
        if (z2) {
            guVar.hp(objHp2, hpVar);
            if (function != null) {
                guVar.hp(function);
                guVar.hp(com.byazt.glv.hp.hp(function, guVar.f28046a));
                return objHp2;
            }
            guVar.hp(guVar.jx);
        }
        return objHp2;
    }

    private Object hp(gu guVar, com.byazt.pg.hp hpVar, Object obj, boolean z2) {
        try {
            if (!guVar.f28050l.isInstance(obj)) {
                if (guVar.hp.isInstance(obj)) {
                    return guVar.f28050l.getDeclaredConstructor(guVar.hp).newInstance(obj);
                }
                if (obj instanceof Function) {
                    if (guVar.f28051q && z2) {
                        return guVar.f28050l.getDeclaredConstructor(Function.class, guVar.hp).newInstance(obj, this.f25482l.jx().hp(guVar, hpVar, false).second);
                    }
                    return guVar.f28050l.getDeclaredConstructor(Function.class).newInstance(obj);
                }
                q qVar = this.hp;
                if (qVar != null) {
                    qVar.hp(guVar, 0, "service not instanceof Function:".concat(String.valueOf(obj)), null);
                }
            }
            return obj;
        } catch (Throwable th) {
            q qVar2 = this.hp;
            if (qVar2 != null) {
                qVar2.hp(guVar, 0, "reuse failed", th);
            }
            return obj;
        }
    }
}
