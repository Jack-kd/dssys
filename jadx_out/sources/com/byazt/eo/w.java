package com.byazt.eo;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.fjm.RecyclerView;
import com.byazt.ql.e;
import com.byazt.ql.q;
import com.byazt.ql.sz;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xs.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1298, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends RecyclerView.hp<RecyclerView.cx> {

    /* renamed from: a, reason: collision with root package name */
    public Object f19435a;

    /* renamed from: e, reason: collision with root package name */
    public vv f19436e;
    public j eb;
    public sz gu;
    public List<com.byazt.eo.jx> hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.eo.j f19437j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public Map<Integer, q.hp> f19438l;

    /* renamed from: q, reason: collision with root package name */
    public e f19439q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19440s = true;

    /* renamed from: w, reason: collision with root package name */
    public jx f19441w;

    public interface hp {
        void P_();

        void Q_();

        View jx();
    }

    public interface j {
        void hp(RecyclerView.cx cxVar, int i2);
    }

    public interface jx {
    }

    @com.byazt.kj.hp(hp = {0, 1, 1298, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public class l extends RecyclerView.cx {
        public l(View view) {
            super(view);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1298, 1627})
    /* renamed from: com.byazt.eo.w$w, reason: collision with other inner class name */
    public class C0219w extends RecyclerView.cx implements hp {
        public v vv;
        public com.byazt.xs.jx xs;

        public C0219w(View view) {
            super(view);
        }

        @Override // com.byazt.eo.w.hp
        public void P_() {
            if (w.this.f19437j != null) {
                w.this.f19437j.l(this.xs);
            }
        }

        @Override // com.byazt.eo.w.hp
        public void Q_() {
            if (w.this.f19437j != null) {
                w.this.f19437j.hp(this.xs);
            }
        }

        public com.byazt.xs.jx d() {
            return this.xs;
        }

        public void hp(com.byazt.xs.jx jxVar) {
            this.xs = jxVar;
        }

        @Override // com.byazt.eo.w.hp
        public View jx() {
            return this.xs.q();
        }

        public void hp(v vVar) {
            this.vv = vVar;
        }
    }

    public w(Context context) {
        this.jx = context;
    }

    public void hp(Map<Integer, q.hp> map) {
        this.f19438l = map;
    }

    public void hp(List<com.byazt.eo.jx> list) {
        if (this.hp == null) {
            this.hp = new ArrayList();
        }
        this.hp.addAll(list);
    }

    public void hp(com.byazt.eo.j jVar) {
        this.f19437j = jVar;
    }

    public void hp(e eVar) {
        this.f19439q = eVar;
    }

    public void hp(vv vvVar) {
        this.f19436e = vvVar;
    }

    public void hp(sz szVar) {
        this.gu = szVar;
    }

    public void hp(jx jxVar) {
        this.f19441w = jxVar;
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public RecyclerView.cx hp(ViewGroup viewGroup, int i2) {
        q.hp hpVar = this.f19438l.get(Integer.valueOf(i2));
        v vVar = new v(this.jx);
        com.byazt.xs.jx<View> jxVarHp = vVar.hp(hpVar);
        vVar.hp(jxVarHp);
        if (jxVarHp != null) {
            jxVarHp.hp(new ViewGroup.LayoutParams(jxVarHp.lv(), jxVarHp.r()));
            C0219w c0219w = new C0219w(jxVarHp.q());
            c0219w.hp((com.byazt.xs.jx) jxVarHp);
            c0219w.hp(vVar);
            return c0219w;
        }
        return new l(new View(this.jx));
    }

    public void hp(j jVar) {
        this.eb = jVar;
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public int hp(int i2) {
        return this.hp.get(i2).l();
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public void hp(RecyclerView.cx cxVar, int i2, List<Object> list) throws JSONException {
        j jVar;
        if (list != null && !list.isEmpty()) {
            for (Object obj : list) {
                if (obj != null && this.f19435a != null && TextUtils.equals(obj.toString(), this.f19435a.toString()) && (jVar = this.eb) != null) {
                    jVar.hp(cxVar, i2);
                }
            }
            return;
        }
        hp(cxVar, i2);
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public void hp(RecyclerView.cx cxVar, int i2) throws JSONException {
        com.byazt.eo.jx jxVar;
        com.byazt.eo.j jVar;
        if (cxVar == null || (jxVar = this.hp.get(i2)) == null || !(cxVar instanceof C0219w)) {
            return;
        }
        JSONObject jSONObjectHp = jxVar.hp();
        C0219w c0219w = (C0219w) cxVar;
        c0219w.xs.hp(new ViewGroup.LayoutParams(c0219w.xs.lv(), c0219w.xs.r()));
        hp(jSONObjectHp, c0219w.d());
        hp(this.jx, jSONObjectHp, c0219w.d());
        if (i2 == 0 && (jVar = this.f19437j) != null && this.f19440s) {
            this.f19440s = false;
            jVar.hp(c0219w.xs);
        }
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public int hp() {
        return this.hp.size();
    }

    public void hp(Object obj) {
        this.f19435a = obj;
    }

    public void hp(JSONObject jSONObject, com.byazt.xs.jx jxVar) throws JSONException {
        if (jxVar == null) {
            return;
        }
        if (jxVar instanceof com.byazt.xs.hp) {
            jxVar.hp(jSONObject);
            List<com.byazt.xs.jx<View>> listEb = ((com.byazt.xs.hp) jxVar).eb();
            if (listEb == null || listEb.size() <= 0) {
                return;
            }
            Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
            while (it.hasNext()) {
                hp(jSONObject, it.next());
            }
            return;
        }
        jxVar.hp(jSONObject);
    }

    public void hp(Context context, JSONObject jSONObject, com.byazt.xs.jx jxVar) throws JSONException {
        if (jxVar == null) {
            return;
        }
        if (jxVar instanceof com.byazt.xs.hp) {
            jxVar.hp(this.f19439q);
            jxVar.hp(this.f19436e);
            jxVar.l(true);
            jxVar.l();
            List<com.byazt.xs.jx<View>> listEb = ((com.byazt.xs.hp) jxVar).eb();
            if (listEb == null || listEb.size() <= 0) {
                return;
            }
            Iterator<com.byazt.xs.jx<View>> it = listEb.iterator();
            while (it.hasNext()) {
                hp(context, jSONObject, it.next());
            }
            return;
        }
        JSONObject jSONObjectB = jxVar.b();
        Iterator<String> itKeys = jSONObjectB.keys();
        com.byazt.xs.hp hpVarUd = jxVar.ud();
        hp.C0411hp c0411hpS = hpVarUd != null ? hpVarUd.s() : null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strHp = com.byazt.ss.l.hp(jSONObjectB.optString(next), jSONObject);
            jxVar.hp(next, strHp);
            jxVar.hp(this.f19439q);
            jxVar.hp(this.f19436e);
            if (c0411hpS != null) {
                c0411hpS.hp(context, next, strHp);
            }
        }
        jxVar.l(true);
        jxVar.l();
    }
}
