package com.byazt.tb;

import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements com.byazt.gj.eb {

    /* renamed from: j, reason: collision with root package name */
    public boolean f25700j;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.kf.s f25702w;
    public List<com.byazt.hwo.l> jx = new CopyOnWriteArrayList();
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public hp.l f25701l = new hp.l() { // from class: com.byazt.tb.s.1
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            if (com.byazt.jz.s.u().nu()) {
                return;
            }
            s sVar = s.this;
            if (sVar.hp || sVar.f25702w == null || s.this.f25702w.f20629q == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", s.this.f25702w.hp());
                if (!TextUtils.isEmpty(s.this.f25702w.f22028l)) {
                    jSONObject.putOpt("style_id", s.this.f25702w.f22028l);
                }
                jSONObject.putOpt("style_category", Integer.valueOf(s.this.f25702w.jx));
                jSONObject.putOpt("component_type", Integer.valueOf(s.this.f25702w.hp));
                jSONObject.putOpt("render_sequence", Integer.valueOf(s.this.f25702w.f22027j));
                jSONObject.putOpt("display_area", Integer.valueOf(s.this.f25702w.f22029w));
                jSONObject.putOpt("node_line_name", "easy_play_node_line");
                com.byazt.hwo.j.hp(jSONObject, s.this.f25702w, (List<com.byazt.hwo.l>) s.this.jx, "easy_play");
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

    @Override // com.byazt.gj.eb
    public void a(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        hp(sVar);
        this.f25700j = true;
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "showed", sVar2 != null ? sVar2.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar2));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }

    @Override // com.byazt.gj.eb
    public void eb(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        hp(sVar);
        this.f25700j = true;
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "clicked", sVar2 != null ? sVar2.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }

    @Override // com.byazt.gj.eb
    public void j(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        hp(sVar);
        this.f25700j = true;
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "render_started", sVar2 != null ? sVar2.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }

    @Override // com.byazt.gj.eb
    public void jx(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        hp(sVar);
        this.f25700j = true;
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "loaded", sVar2 != null ? sVar2.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar2));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }

    @Override // com.byazt.gj.eb
    public void s(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        com.byazt.hwo.j.hp(sVar2);
        if (this.hp) {
            return;
        }
        this.hp = true;
        com.byazt.jz.s.u().jx().l(this.f25701l);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "end", sVar2 != null ? sVar2.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar2));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
        if (this.f25700j) {
            l(sVar);
        }
    }

    @Override // com.byazt.gj.eb
    public void w(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        hp(sVar);
        this.f25700j = true;
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "rendered", sVar2 != null ? sVar2.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar2));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }

    private boolean hp() {
        return sz.l().qd();
    }

    @Override // com.byazt.gj.eb
    public void l(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        hp(sVar);
        this.f25700j = true;
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "started", sVar2 != null ? sVar2.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }

    private void hp(com.byazt.kf.s sVar) {
        if (this.f25702w == null) {
            this.f25702w = sVar;
        }
        if (!hp() || this.hp) {
            return;
        }
        this.f25702w = sVar;
        com.byazt.jz.s.u().jx().hp(this.f25701l);
    }

    private void l(com.byazt.kf.s sVar) {
        if (sVar == null || sVar.f20629q == null) {
            return;
        }
        com.byazt.hwo.j.hp(this.jx);
        Iterator<com.byazt.hwo.l> it = this.jx.iterator();
        while (it.hasNext()) {
            it.next();
        }
        if (hp()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", this.f25702w.hp());
                if (!TextUtils.isEmpty(this.f25702w.f22028l)) {
                    jSONObject.putOpt("style_id", this.f25702w.f22028l);
                }
                jSONObject.putOpt("style_category", Integer.valueOf(this.f25702w.jx));
                jSONObject.putOpt("component_type", Integer.valueOf(this.f25702w.hp));
                jSONObject.putOpt("render_sequence", Integer.valueOf(this.f25702w.f22027j));
                jSONObject.putOpt("display_area", Integer.valueOf(this.f25702w.f22029w));
                com.byazt.hwo.j.hp(this.jx, sVar, "easy_play_node_line", jSONObject);
                com.byazt.hwo.j.hp(com.byazt.hwo.hp.hp("easy_play") + sVar.hp(), sVar.gu);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.gj.eb
    public void hp(com.byazt.kf.s sVar, com.byazt.gy.s sVar2) {
        com.byazt.hwo.j.hp(sVar2);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("easy_play", "created", sVar2 != null ? sVar2.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, sVar.f20629q, sVar);
    }
}
