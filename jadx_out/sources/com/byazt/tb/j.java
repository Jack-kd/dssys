package com.byazt.tb;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 38})
/* loaded from: classes3.dex */
public class j implements com.byazt.gj.jx {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.kf.jx f25693a;
    public int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f25695l = 0;
    public int jx = 0;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25694j = false;

    /* renamed from: w, reason: collision with root package name */
    public hp.l f25696w = new hp.l() { // from class: com.byazt.tb.j.1
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            if (com.byazt.jz.s.u().nu()) {
                return;
            }
            j jVar = j.this;
            if (jVar.f25694j || jVar.f25693a == null || j.this.f25693a.f20629q == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("ad_load_id", j.this.f25693a.hp);
                jSONObject.putOpt("ad_show_id", j.this.f25693a.hp());
                jSONObject.putOpt("node_line_name", "ad_node_line");
                j jVar2 = j.this;
                jVar2.hp(jVar2.f25693a.hp(), jSONObject);
                com.byazt.hwo.j.hp(jSONObject, j.this.f25693a, j.this.f25693a.f22020a, "ad_show");
            } catch (Throwable unused) {
            }
        }

        @Override // com.byazt.zn.hp.l
        public void onAppExit() {
        }

        @Override // com.byazt.zn.hp.l
        public void onAppForeground() {
        }

        @Override // com.byazt.zn.hp.l
        public void onAppStart() {
        }
    };

    @Override // com.byazt.gj.jx
    public void a(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (hp() && !this.f25694j) {
            this.f25693a = jxVar;
            com.byazt.jz.s.u().jx().hp(this.f25696w);
        }
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "clicked", sVar != null ? sVar.hp() : System.currentTimeMillis());
        jxVar.f22020a.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
        this.jx++;
        if (this.f25695l == 0) {
            jxVar.f20628e = 2;
        }
    }

    @Override // com.byazt.gj.jx
    public void eb(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        if (this.f25694j) {
            return;
        }
        this.f25694j = true;
        com.byazt.jz.s.u().jx().l(this.f25696w);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "end", sVar != null ? sVar.hp() : System.currentTimeMillis(), jxVar.f22022l);
        jxVar.f22020a.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
        hp(jxVar);
    }

    @Override // com.byazt.gj.jx
    public void j(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "visibled", sVar != null ? sVar.hp() : System.currentTimeMillis(), jxVar.jx);
        jxVar.f22020a.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
    }

    @Override // com.byazt.gj.jx
    public void jx(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (hp() && !this.f25694j) {
            this.f25693a = jxVar;
            com.byazt.jz.s.u().jx().hp(this.f25696w);
        }
        boolean zQk = sz.l().qk();
        if (!jxVar.f22021j || zQk) {
            com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "showed", sVar != null ? sVar.hp() : System.currentTimeMillis());
            lVar.hp(jxVar.f22023w);
            this.f25695l++;
            jxVar.f22020a.add(lVar);
            com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
            if (this.f25695l > 1) {
                jxVar.f20628e = 1;
            }
        }
    }

    @Override // com.byazt.gj.jx
    public void l(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (hp() && !this.f25694j) {
            this.f25693a = jxVar;
            com.byazt.jz.s.u().jx().hp(this.f25696w);
        }
        this.hp++;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "started", sVar != null ? sVar.hp() : System.currentTimeMillis());
        jxVar.f22020a.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
    }

    @Override // com.byazt.gj.jx
    public void w(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "invisibled", sVar != null ? sVar.hp() : System.currentTimeMillis(), jxVar.jx);
        jxVar.f22020a.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
    }

    @Override // com.byazt.gj.jx
    public void hp(com.byazt.kf.jx jxVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("ad_show", "created", sVar != null ? sVar.hp() : System.currentTimeMillis());
        jxVar.f22020a.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jxVar.f20629q, jxVar);
    }

    private void hp(com.byazt.kf.jx jxVar) {
        if (jxVar == null || jxVar.f20629q == null) {
            return;
        }
        com.byazt.hwo.j.hp(jxVar.f22020a);
        Iterator<com.byazt.hwo.l> it = jxVar.f22020a.iterator();
        while (it.hasNext()) {
            it.next();
        }
        if (!(this.f25695l == 0 && this.jx == 0 && this.hp == 0) && hp()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("ad_load_id", jxVar.hp);
                jSONObject.putOpt("ad_show_id", jxVar.hp());
                hp(jxVar.hp(), jSONObject);
                com.byazt.hwo.j.hp(jxVar.f22020a, jxVar, "ad_node_line", jSONObject);
                com.byazt.hwo.j.hp(com.byazt.hwo.hp.hp("ad_show") + jxVar.hp(), jxVar.gu);
                com.byazt.rk.l.j(jxVar.hp());
            } catch (Throwable unused) {
            }
        }
    }

    private boolean hp() {
        return sz.l().qd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, JSONObject jSONObject) throws JSONException {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        Object objJ = com.byazt.rk.l.j(str, 0);
        Object objJ2 = com.byazt.rk.l.j(str, 1);
        Object objJ3 = com.byazt.rk.l.j(str, 2);
        try {
            if (objJ instanceof JSONObject) {
                jSONObject.putOpt("key_element_info", objJ);
            }
            if (objJ2 instanceof JSONArray) {
                jSONObject.putOpt("no_action_array", objJ2);
            }
            if (objJ3 instanceof JSONObject) {
                jSONObject.putOpt("motion_info", objJ3);
            }
        } catch (JSONException unused) {
        }
    }
}
