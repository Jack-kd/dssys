package com.byazt.gg;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.byazt.gg.a;
import com.byazt.it.l;
import com.byazt.ov.hp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 748, 150})
/* loaded from: classes2.dex */
public class q implements gu {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.ql.a f20422a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f20423e;
    public k eb;
    public boolean gu;
    public Handler hp = new Handler(Looper.getMainLooper());

    /* renamed from: j, reason: collision with root package name */
    public Map<String, List<com.byazt.it.l>> f20424j;
    public boolean jl;
    public Map<String, List<com.byazt.it.l>> jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f20425l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.oi.hp f20426q;

    /* renamed from: s, reason: collision with root package name */
    public zy f20427s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.xs.jx f20428w;

    @com.byazt.kj.hp(hp = {0, 1, 748, 3})
    public static class hp {
        public Map<String, List<com.byazt.it.l>> hp;
        public Map<String, com.byazt.it.l> jx;

        /* renamed from: l, reason: collision with root package name */
        public Map<String, List<com.byazt.it.l>> f20432l;

        public hp(Map<String, List<com.byazt.it.l>> map, Map<String, com.byazt.it.l> map2, Map<String, List<com.byazt.it.l>> map3) {
            this.hp = map;
            this.jx = map2;
            this.f20432l = map3;
        }
    }

    public q(com.byazt.xs.jx jxVar, hp hpVar) {
        this.f20428w = jxVar;
        this.f20425l = hpVar;
        if (hpVar != null) {
            this.jx = hpVar.hp;
            this.f20424j = hpVar.f20432l;
        }
        if (jxVar != null && jxVar.zx() && this.f20426q == null) {
            this.f20426q = new com.byazt.oi.hp();
        }
    }

    public void a() {
        List<com.byazt.it.l> listL = l("timerState");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar != null) {
                lVar.hp(this);
                lVar.hp(new Object[0]);
            }
        }
    }

    public void eb() {
        List<com.byazt.it.l> listL = l("timer");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar != null) {
                lVar.hp(this);
                lVar.hp(new Object[0]);
            }
        }
    }

    public void j() {
        List<com.byazt.it.l> value;
        hp hpVar = this.f20425l;
        if (hpVar == null) {
            return;
        }
        for (Map.Entry<String, List<com.byazt.it.l>> entry : hpVar.hp.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !value.isEmpty()) {
                for (com.byazt.it.l lVar : value) {
                    if (lVar instanceof com.byazt.it.jx) {
                        lVar.hp(this);
                        lVar.hp(new Object[0]);
                    }
                }
            }
        }
    }

    public void jx() {
        List<com.byazt.it.l> listL = l("twist");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar != null) {
                lVar.hp(this);
                lVar.hp(new Object[0]);
            }
        }
    }

    public void l() {
        List<com.byazt.it.l> listL = l("shake");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar != null) {
                lVar.hp(this);
                lVar.hp(new Object[0]);
            }
        }
    }

    public Map<String, List<com.byazt.it.l>> s() {
        return this.jx;
    }

    public void w() {
        List<com.byazt.it.l> listL = l("animateState");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar != null) {
                lVar.hp(this);
                lVar.hp(new Object[0]);
            }
        }
    }

    public void hp(com.byazt.ql.a aVar) {
        this.f20422a = aVar;
    }

    public void hp(k kVar) {
        this.eb = kVar;
    }

    public void hp(zy zyVar) {
        this.f20427s = zyVar;
    }

    public zy hp() {
        return this.f20427s;
    }

    public List<com.byazt.it.l> jx(String str) {
        Map<String, List<com.byazt.it.l>> map;
        Map<String, List<com.byazt.it.l>> map2 = this.f20424j;
        if (map2 == null || map2.isEmpty() || TextUtils.isEmpty(str) || (map = this.f20424j) == null || !map.containsKey(str)) {
            return null;
        }
        return this.f20424j.get(str);
    }

    public List<com.byazt.it.l> l(String str) {
        Map<String, List<com.byazt.it.l>> map;
        Map<String, List<com.byazt.it.l>> map2 = this.jx;
        if (((map2 == null || map2.isEmpty()) && ((map = this.f20424j) == null || map.isEmpty())) || TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, List<com.byazt.it.l>> map3 = this.jx;
        if (map3 != null && map3.containsKey(str)) {
            return this.jx.get(str);
        }
        Map<String, List<com.byazt.it.l>> map4 = this.f20424j;
        if (map4 != null && map4.containsKey(str)) {
            return this.f20424j.get(str);
        }
        return null;
    }

    public void hp(int i2) {
        List<com.byazt.it.l> listL = l("timer");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar instanceof com.byazt.it.a) {
                ((com.byazt.it.a) lVar).hp(i2);
            }
        }
    }

    public void hp(boolean z2) {
        List<com.byazt.it.l> listL = l("timer");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar instanceof com.byazt.it.a) {
                ((com.byazt.it.a) lVar).hp(z2);
            }
        }
    }

    public void hp(String str) {
        List<com.byazt.it.l> listL = l("timer");
        if (listL == null || listL.isEmpty()) {
            return;
        }
        if (str == null) {
            str = "";
        }
        for (com.byazt.it.l lVar : listL) {
            if (lVar instanceof com.byazt.it.a) {
                com.byazt.it.a aVar = (com.byazt.it.a) lVar;
                if (TextUtils.equals(str, aVar.l())) {
                    aVar.hp();
                }
            }
        }
    }

    public boolean hp(MotionEvent motionEvent) {
        List<com.byazt.it.l> listL = l("touchStart");
        if (listL != null && !listL.isEmpty()) {
            for (com.byazt.it.l lVar : listL) {
                if (lVar instanceof com.byazt.it.e) {
                    lVar.hp(this);
                    lVar.hp(motionEvent);
                }
            }
        }
        List<com.byazt.it.l> listL2 = l("touchEnd");
        List<com.byazt.it.l> listL3 = l("tap");
        List<com.byazt.it.l> listL4 = l("slide");
        if (listL2 != null && !listL2.isEmpty()) {
            for (com.byazt.it.l lVar2 : listL2) {
                if (lVar2 instanceof com.byazt.it.q) {
                    lVar2.hp(this);
                    this.jl = lVar2.hp(motionEvent);
                }
            }
        }
        if ((listL3 != null && !listL3.isEmpty()) || (listL4 != null && !listL4.isEmpty())) {
            if (this.jl && motionEvent.getAction() == 1) {
                return true;
            }
            com.byazt.oi.hp hpVar = this.f20426q;
            if (hpVar != null) {
                if (hpVar.hp(motionEvent)) {
                    return false;
                }
                this.f20426q.hp(this.f20428w, motionEvent);
            }
            if (listL3 != null && !listL3.isEmpty()) {
                for (com.byazt.it.l lVar3 : listL3) {
                    if (lVar3 instanceof com.byazt.it.w) {
                        ((com.byazt.it.w) lVar3).hp(this.eb);
                        lVar3.hp(this);
                        this.f20423e = lVar3.hp(motionEvent);
                    }
                }
            }
            int action = motionEvent.getAction();
            if ((action == 1 || action == 3) && this.f20423e) {
                com.byazt.oi.hp hpVar2 = this.f20426q;
                if (hpVar2 != null) {
                    hpVar2.hp();
                }
                return true;
            }
            if (listL4 != null && !listL4.isEmpty()) {
                for (com.byazt.it.l lVar4 : listL4) {
                    if (lVar4 instanceof com.byazt.it.j) {
                        ((com.byazt.it.j) lVar4).hp(this.f20427s);
                        lVar4.hp(this);
                        this.gu = lVar4.hp(motionEvent);
                    }
                }
            }
            if (action == 1 || action == 3) {
                if (this.gu) {
                    com.byazt.oi.hp hpVar3 = this.f20426q;
                    if (hpVar3 != null) {
                        hpVar3.hp();
                    }
                    return true;
                }
                com.byazt.oi.hp hpVar4 = this.f20426q;
                if (hpVar4 != null) {
                    hpVar4.hp(this.f20428w);
                }
            }
            return this.f20423e || this.gu;
        }
        return this.jl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, List<a.hp> list) {
        com.byazt.ov.hp hpVarHp;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (a.hp hpVar : list) {
            if (hpVar != null && (hpVarHp = hp.C0332hp.hp(this.f20428w, str, hpVar)) != null) {
                hpVarHp.hp();
                hpVarHp.l();
            }
        }
    }

    public void hp(String str, Object... objArr) {
        List<com.byazt.it.l> listJx = jx(str);
        if (listJx == null || listJx.isEmpty()) {
            return;
        }
        for (com.byazt.it.l lVar : listJx) {
            lVar.hp(this);
            lVar.hp(objArr);
        }
    }

    @Override // com.byazt.gg.gu
    public void hp(final com.byazt.xs.jx jxVar, final String str, final List<a.hp> list, a aVar) {
        if (aVar.jx()) {
            return;
        }
        final int iJ = aVar.j();
        if (iJ > 0) {
            this.hp.postDelayed(new com.byazt.xa.e(new Runnable() { // from class: com.byazt.gg.q.1
                @Override // java.lang.Runnable
                public void run() {
                    if (q.this.f20422a != null) {
                        q.this.f20422a.hp(jxVar, str, list);
                    }
                    q.this.hp(str, (List<a.hp>) list);
                }
            }), iJ);
            return;
        }
        com.byazt.ql.a aVar2 = this.f20422a;
        if (aVar2 != null) {
            aVar2.hp(jxVar, str, list);
        }
        hp(str, list);
    }

    public static q hp(com.byazt.xs.jx jxVar, String str) {
        com.byazt.it.l lVarHp;
        if (jxVar != null && !TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() <= 0) {
                    return null;
                }
                hp hpVar = new hp(new HashMap(), new HashMap(), new HashMap());
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null && (lVarHp = l.hp.hp(jxVar.q().getContext(), jxVar, jSONObjectOptJSONObject, jxVar.e())) != null) {
                        if (hpVar.hp.containsKey(lVarHp.eb())) {
                            List<com.byazt.it.l> list = hpVar.hp.get(lVarHp.eb());
                            if (list == null) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(lVarHp);
                                hpVar.hp.put(lVarHp.eb(), arrayList);
                                hpVar.f20432l.put(lVarHp.q(), arrayList);
                            } else {
                                list.add(lVarHp);
                            }
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(lVarHp);
                            hpVar.hp.put(lVarHp.eb(), arrayList2);
                            hpVar.f20432l.put(lVarHp.q(), arrayList2);
                        }
                        hpVar.jx.put(lVarHp.s(), lVarHp);
                    }
                }
                return new q(jxVar, hpVar);
            } catch (JSONException unused) {
            }
        }
        return null;
    }
}
