package com.byazt.bth;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import com.byazt.cm.l;
import com.byazt.gg.a;
import com.byazt.go.l;
import com.byazt.la.eb;
import com.byazt.lb.PageWebView;
import com.byazt.ql.k;
import com.byazt.ql.sz;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.xs.jx;
import com.byazt.zn.b;
import com.byazt.zn.w;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 445, 28})
/* loaded from: classes2.dex */
public class hp implements sz, vv {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.tk.hp f18667a;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, Object> f18668e;
    public l eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public mp f18669j;
    public com.byazt.nqo.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public ViewGroup f18670l;

    /* renamed from: q, reason: collision with root package name */
    public JSONObject f18671q;

    /* renamed from: s, reason: collision with root package name */
    public e f18672s;

    /* renamed from: w, reason: collision with root package name */
    public jx f18673w;

    public hp(Context context, ViewGroup viewGroup, com.byazt.nqo.hp hpVar, mp mpVar) {
        this.hp = context;
        this.f18670l = viewGroup;
        this.jx = hpVar;
        this.f18669j = mpVar;
    }

    @Override // com.byazt.ql.vv
    public void hp(jx jxVar, String str, a.hp hpVar) {
    }

    public void l() {
        PageWebView.hp(this.f18671q);
    }

    public void hp(com.byazt.tk.hp hpVar) {
        this.f18667a = hpVar;
    }

    public void hp(DownloadListener downloadListener) {
        PageWebView.hp(this.f18671q, downloadListener);
    }

    public void hp() throws JSONException {
        com.byazt.nqo.hp hpVar = this.jx;
        if (hpVar == null) {
            com.byazt.tk.hp hpVar2 = this.f18667a;
            if (hpVar2 != null) {
                hpVar2.hp(-1);
                return;
            }
            return;
        }
        JSONObject jSONObjectHp = eb.hp().hp(hpVar.hp(), this.jx.l());
        if (jSONObjectHp == null) {
            com.byazt.cm.l.hp(this.jx, new l.InterfaceC0203l() { // from class: com.byazt.bth.hp.1
                @Override // com.byazt.cm.l.InterfaceC0203l
                public void hp(JSONObject jSONObject) throws JSONException {
                    hp.this.hp(jSONObject);
                }

                @Override // com.byazt.cm.l.InterfaceC0203l
                public void hp() {
                    if (hp.this.f18667a != null) {
                        hp.this.f18667a.hp(-1);
                    }
                }
            });
        } else {
            hp(jSONObjectHp);
        }
    }

    public void hp(final JSONObject jSONObject) throws JSONException {
        final v vVar = new v(this.hp);
        final JSONObject jSONObjectIj = this.f18669j.ij();
        this.f18671q = jSONObjectIj;
        k kVar = new k();
        kVar.hp(this.hp);
        HashMap map = new HashMap();
        map.put("key_reward_page", this.f18668e);
        kVar.hp(map);
        vVar.hp("reward_page", kVar);
        vVar.hp((vv) this);
        com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.bth.hp.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                hp.this.f18673w = vVar.hp(jSONObject);
                if (hp.this.f18673w == null) {
                    if (hp.this.f18667a != null) {
                        hp.this.f18667a.hp(-1);
                    }
                } else {
                    vVar.l(jSONObjectIj);
                    hp.this.f18670l.addView(hp.this.f18673w.q(), new FrameLayout.LayoutParams(hp.this.f18673w.lv(), hp.this.f18673w.r()));
                    if (hp.this.f18667a != null) {
                        hp.this.f18667a.hp(hp.this.f18673w.q());
                    }
                }
            }
        });
    }

    @Override // com.byazt.ql.vv
    public void hp(u uVar, vv.l lVar, vv.hp hpVar) {
        if (uVar != null && uVar.l() == 1) {
            hp(uVar, uVar.jx());
        }
    }

    private void hp(u uVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("type");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        strOptString.getClass();
        if (!strOptString.equals("clickEvent")) {
            if (strOptString.equals("openPolicy")) {
                w.hp(this.hp, this.f18669j);
            }
        } else {
            com.byazt.go.l lVar = this.eb;
            if (lVar != null) {
                lVar.hp(uVar.hp().q(), this.f18672s);
            }
        }
    }

    public void hp(com.byazt.go.l lVar) {
        this.eb = lVar;
    }

    @Override // com.byazt.ql.sz
    public void hp(jx jxVar, MotionEvent motionEvent) {
        this.f18672s.jx(motionEvent.getDeviceId());
        this.f18672s.l(motionEvent.getToolType(0));
        this.f18672s.j(motionEvent.getSource());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.f18672s.jx(motionEvent.getRawX());
                this.f18672s.j(motionEvent.getRawY());
                this.f18672s.l(System.currentTimeMillis());
                return;
            } else {
                if (actionMasked != 2) {
                    return;
                }
                this.f18672s.jx(motionEvent.getRawX());
                this.f18672s.j(motionEvent.getRawY());
                return;
            }
        }
        this.f18672s.w((int) motionEvent.getRawX());
        this.f18672s.a((int) motionEvent.getRawY());
        this.f18672s.hp(motionEvent.getRawX());
        this.f18672s.l(motionEvent.getRawY());
        this.f18672s.hp(System.currentTimeMillis());
        this.f18672s.l(motionEvent.getToolType(0));
        this.f18672s.jx(motionEvent.getDeviceId());
        this.f18672s.j(motionEvent.getSource());
        this.f18672s.l(true);
        b.hp(motionEvent);
    }

    public void hp(Map<String, Object> map) {
        this.f18668e = map;
    }
}
