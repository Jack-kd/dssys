package com.byazt.dy;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.byazt.eo.a;
import com.byazt.fjm.RecyclerView;
import com.byazt.gg.a;
import com.byazt.jz.ud;
import com.byazt.qk.gu;
import com.byazt.ql.e;
import com.byazt.ql.k;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, 54})
/* loaded from: classes2.dex */
public class a implements vv {

    /* renamed from: a, reason: collision with root package name */
    public mp f19345a;

    /* renamed from: e, reason: collision with root package name */
    public gu f19346e;
    public com.byazt.xs.jx eb;
    public ud gu;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public j f19347j;
    public String jl;
    public com.byazt.xs.jx<View> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jdb.eb f19348l;

    /* renamed from: q, reason: collision with root package name */
    public s f19349q;

    /* renamed from: s, reason: collision with root package name */
    public l f19350s;

    /* renamed from: w, reason: collision with root package name */
    public jx f19351w;
    public int zy;

    public a(Context context, com.byazt.jdb.eb ebVar, mp mpVar, String str, int i2) {
        this.hp = context;
        this.f19348l = ebVar;
        this.f19345a = mpVar;
        this.jl = str;
        this.zy = i2;
    }

    @Override // com.byazt.ql.vv
    public void hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject, List<com.byazt.eo.jx> list, eb ebVar) throws JSONException {
        v vVar = new v(this.hp);
        k kVar = new k();
        kVar.hp(this.hp);
        HashMap map = new HashMap();
        map.put("key_material", this.f19345a);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size() && i2 <= 2; i2++) {
            arrayList.add(list.get(i2).hp());
        }
        ud udVar = new ud(this.hp);
        this.gu = udVar;
        udVar.hp(this.f19346e);
        this.gu.hp(this.f19350s);
        this.gu.hp(this.jl);
        this.gu.jx(this.zy);
        map.put("key_data_list", arrayList);
        map.put("key_js_object", this.gu);
        kVar.hp(map);
        vVar.hp("aggPage", kVar);
        com.byazt.xs.jx<View> jxVarHp = vVar.hp(jSONObject);
        this.jx = jxVarHp;
        if (jxVarHp == null || list.size() <= 0) {
            com.byazt.jdb.eb ebVar2 = this.f19348l;
            if (ebVar2 != null) {
                ebVar2.hp(-1, "ugeno render fail");
            }
            if (ebVar != null) {
                ebVar.hp(-1, "");
                return;
            }
            return;
        }
        com.byazt.xs.jx<T> jxVarJ = this.jx.j("recycler_layout");
        this.eb = jxVarJ;
        if (jxVarJ instanceof com.byazt.eo.a) {
            ((com.byazt.eo.a) jxVarJ).hp(list);
            ((com.byazt.eo.a) this.eb).hp(new a.l() { // from class: com.byazt.dy.a.2
                @Override // com.byazt.eo.a.l
                public void hp() {
                    if (a.this.f19347j != null) {
                        a.this.f19347j.j(a.this.eb);
                    }
                }

                @Override // com.byazt.eo.a.l
                public void hp(int i3, int i4) {
                    if (a.this.f19347j != null) {
                        a.this.f19347j.hp(i3, i4);
                    }
                }

                @Override // com.byazt.eo.a.l
                public void hp(RecyclerView recyclerView, int i3) {
                    if (a.this.f19347j != null) {
                        a.this.f19347j.hp(recyclerView, i3);
                    }
                }

                @Override // com.byazt.eo.a.l
                public void hp(int i3, View view, com.byazt.eo.jx jxVar) {
                    if (a.this.f19347j != null) {
                        a.this.f19347j.hp(a.this.eb, i3, view, jxVar);
                    }
                }
            });
            ((com.byazt.eo.a) this.eb).hp(new com.byazt.eo.j() { // from class: com.byazt.dy.a.3
                @Override // com.byazt.eo.j
                public void hp(com.byazt.xs.jx<View> jxVar) {
                    if (a.this.f19347j != null) {
                        a.this.f19347j.w(jxVar);
                    }
                }

                @Override // com.byazt.eo.j
                public void l(com.byazt.xs.jx<View> jxVar) {
                    if (a.this.f19347j != null) {
                        a.this.f19347j.a(jxVar);
                    }
                }
            });
        }
        vVar.hp(new e() { // from class: com.byazt.dy.a.4
            @Override // com.byazt.ql.e
            public void hp(com.byazt.xs.jx jxVar) {
                if (a.this.f19351w != null) {
                    a.this.f19351w.jx(jxVar);
                }
            }
        });
        vVar.hp(this);
        JSONObject jSONObjectIj = this.f19345a.ij();
        if (list.size() > 0) {
            try {
                jSONObjectIj.put("ugen_sub_meta", list.get(0).hp());
            } catch (JSONException unused) {
            }
        }
        vVar.l(jSONObjectIj);
        this.f19348l.hp(0L);
        if (ebVar != null) {
            ebVar.hp(this.jx);
        }
    }

    public void hp(j jVar) {
        this.f19347j = jVar;
    }

    public void hp(s sVar) {
        this.f19349q = sVar;
    }

    public void hp(jx jxVar) {
        this.f19351w = jxVar;
    }

    public void hp(final JSONObject jSONObject, final List<com.byazt.eo.jx> list, final eb ebVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l(jSONObject, list, ebVar);
        } else {
            com.byazt.jz.vv.a().post(new Runnable() { // from class: com.byazt.dy.a.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    a.this.l(jSONObject, (List<com.byazt.eo.jx>) list, ebVar);
                }
            });
        }
    }

    public void hp(gu guVar) {
        this.f19346e = guVar;
    }

    public void hp(l lVar) {
        this.f19350s = lVar;
    }

    public com.byazt.xs.jx hp() {
        return this.eb;
    }

    @Override // com.byazt.ql.vv
    public void hp(u uVar, vv.l lVar, vv.hp hpVar) throws JSONException {
        s sVar;
        if (uVar == null) {
            return;
        }
        if (uVar.l() == 1) {
            l(uVar, (vv.l) null, (vv.hp) null);
            return;
        }
        if (uVar.l() != 10 || (sVar = this.f19349q) == null) {
            return;
        }
        sVar.l(uVar.hp());
        ud udVar = this.gu;
        if (udVar != null) {
            udVar.l("webviewVisible", (JSONObject) null);
        }
    }

    private void l(u uVar, vv.l lVar, vv.hp hpVar) {
        if (uVar == null || uVar.hp() == null) {
            return;
        }
        JSONObject jSONObjectJx = uVar.jx();
        String strOptString = jSONObjectJx.optString("type");
        String strOptString2 = jSONObjectJx.optString("nodeId");
        strOptString.getClass();
        if (strOptString.equals("onDismiss")) {
            com.byazt.xs.jx<T> jxVarJ = this.jx.j(strOptString2);
            if (jxVarJ != 0) {
                jxVarJ.l(8);
            }
        } else if (!strOptString.equals("onShow")) {
            jx jxVar = this.f19351w;
            if (jxVar != null) {
                jxVar.jx(uVar.hp());
            }
        } else {
            com.byazt.xs.jx<T> jxVarJ2 = this.jx.j(strOptString2);
            if (jxVarJ2 != 0) {
                jxVarJ2.l(0);
            }
        }
        final String strOptString3 = jSONObjectJx.optString("reportType");
        if (!TextUtils.isEmpty(strOptString3)) {
            com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.dy.a.5
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("type", strOptString3);
                    return com.byazt.jlb.l.l().hp("agg_click").l(jSONObject.toString());
                }
            }, "agg_click");
        }
        if (lVar == null || uVar.j() == null) {
            return;
        }
        lVar.hp(uVar.j());
    }
}
