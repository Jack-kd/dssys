package com.byazt.vsq;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.l;
import com.byazt.lf.k;
import com.byazt.xci.hq;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 45})
/* loaded from: classes3.dex */
public class e extends hp {
    public int nu;
    public final List<com.byazt.cj.hp> ud;

    public e(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.ud = new ArrayList();
        this.nu = 0;
    }

    public static boolean hp(mp mpVar) throws JSONException {
        if (mpVar == null || !hq.hp(mpVar)) {
            return false;
        }
        if (!com.byazt.am.j.hp(String.valueOf(ky.zy(mpVar)))) {
            return true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", mpVar.cx());
        } catch (JSONException unused) {
        }
        k.hp().hp(mpVar, "refresh_max", jSONObject);
        com.byazt.jdb.j.eb(mpVar, ky.l(mpVar), "refresh_max", null);
        return false;
    }

    private com.byazt.yni.e jd() {
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar instanceof com.byazt.yni.e) {
            return (com.byazt.yni.e) lVar;
        }
        return null;
    }

    public static int l(mp mpVar) {
        return 11;
    }

    private int qh() {
        int iW;
        com.byazt.cj.hp hpVar;
        mp mpVarHp;
        hq hqVarWg;
        com.byazt.yni.e eVar = (com.byazt.yni.e) this.f26634q;
        if (eVar == null || (iW = eVar.w()) < 0 || iW >= this.ud.size() || (hpVar = this.ud.get(iW)) == null || (mpVarHp = hpVar.hp()) == null || (hqVarWg = mpVarHp.wg()) == null) {
            return 0;
        }
        return hqVarWg.jx();
    }

    @Override // com.byazt.vsq.hp
    public boolean a() {
        return false;
    }

    @Override // com.byazt.vsq.hp
    public void cx() {
        ((com.byazt.yni.e) this.f26634q).jx();
    }

    @Override // com.byazt.vsq.hp
    public void di() {
        super.di();
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar instanceof com.byazt.yni.e) {
            ((com.byazt.yni.e) lVar).e();
        }
    }

    @Override // com.byazt.vsq.hp
    public int eb(boolean z2) {
        return z2 ? ms() : zx.eb(this.f26631l) - this.nu;
    }

    @Override // com.byazt.vsq.hp, com.byazt.vsq.l
    public void jx() {
        this.f26634q.jx(true);
        if (jd() != null) {
            jd().hp(this.ud);
        }
        this.hp.l(false, true);
    }

    @Override // com.byazt.vsq.hp
    public void k() {
        super.k();
        ((com.byazt.yni.e) this.f26634q).l();
    }

    @Override // com.byazt.vsq.hp
    public int kg() {
        return this.nu;
    }

    @Override // com.byazt.vsq.hp
    public int ms() {
        return zx.jx(this.f26631l) - this.nu;
    }

    @Override // com.byazt.vsq.hp
    public void ns() {
        ((com.byazt.yni.e) this.f26634q).l();
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        FrameLayout frameLayout = new FrameLayout(this.hp);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(0);
        return frameLayout;
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void r() {
        super.r();
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar instanceof com.byazt.yni.e) {
            ((com.byazt.yni.e) lVar).j();
        }
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public void s() {
        super.s();
        com.byazt.cj.hp hpVar = new com.byazt.cj.hp(this.hp, this.f26631l, this.jl, rv(), true);
        hpVar.hp(this.zy);
        this.ud.add(hpVar);
        if (hq.jx(this.f26631l)) {
            try {
                JSONArray jSONArray = new JSONArray(this.f26631l.wi());
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(com.byazt.jz.hp.hp(jSONArray.getJSONObject(i2)));
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(this.f26631l);
                arrayList2.addAll(arrayList);
                if (hq.hp(arrayList2)) {
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        com.byazt.cj.hp hpVar2 = new com.byazt.cj.hp(this.hp, (mp) arrayList.get(i3), this.jl, rv(), false);
                        hpVar2.hp(this.zy);
                        this.ud.add(hpVar2);
                    }
                }
            } catch (JSONException unused) {
            }
        }
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return false;
    }

    public void tw() {
        ((com.byazt.yni.e) this.f26634q).a();
    }

    @Override // com.byazt.vsq.hp
    public void u() {
        super.u();
        this.f26634q.e();
        List<com.byazt.cj.hp> list = this.ud;
        if (list != null) {
            Iterator<com.byazt.cj.hp> it = list.iterator();
            while (it.hasNext()) {
                it.next().s();
            }
        }
    }

    @Override // com.byazt.vsq.hp
    public void w(boolean z2) {
        super.w(z2);
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.vv.hp(false);
        this.vv.l(false);
        this.vv.w(false);
    }

    public void yj() {
        ((com.byazt.yni.e) this.f26634q).j();
    }

    @Override // com.byazt.vsq.hp
    public void l(boolean z2) {
        super.l(z2);
        ((com.byazt.yni.e) this.f26634q).jx();
    }

    @Override // com.byazt.vsq.hp
    public void l(Map<String, Object> map) {
        super.l(map);
        map.put("refresh_num", Integer.valueOf(qh()));
    }

    @Override // com.byazt.vsq.hp
    public com.byazt.yni.l hp(boolean z2) {
        com.byazt.yni.e eVar = new com.byazt.yni.e(this.hp, this.f26631l, z2);
        eVar.hp(new float[]{this.f26638w, this.f26625a});
        this.f26634q = eVar;
        return eVar;
    }

    @Override // com.byazt.vsq.hp
    public l.hp hp(mp mpVar, final com.byazt.jwq.e eVar) {
        this.hp.as();
        com.byazt.jwq.w wVar = new com.byazt.jwq.w(this.hp, mpVar);
        wVar.hp(as());
        return wVar.l(new com.byazt.jwq.e() { // from class: com.byazt.vsq.e.1
            @Override // com.byazt.jwq.e
            public void hp() {
                super.hp();
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
                e.this.hp.kg();
            }

            @Override // com.byazt.jwq.e
            public void jx() {
                super.jx();
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.jx();
                }
                e.this.hp.kg();
                e.this.hp.zx().hp("reward_retain_dialog_next", 0, "");
            }

            @Override // com.byazt.jwq.e
            public void l() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }
        });
    }

    @Override // com.byazt.vsq.hp
    public void hp(Map<String, Object> map) {
        super.hp(map);
        map.put("refresh_num", Integer.valueOf(qh()));
    }

    @Override // com.byazt.vsq.hp
    public void hp(JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
        try {
            jSONObject.put("refresh_num", qh());
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.vsq.hp
    public void hp(View view) {
        super.hp(view);
    }
}
