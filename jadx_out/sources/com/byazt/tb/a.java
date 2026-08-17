package com.byazt.tb;

import com.byazt.jz.sz;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 54})
/* loaded from: classes3.dex */
public class a implements com.byazt.gj.w {

    /* renamed from: j, reason: collision with root package name */
    public boolean f25688j;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.kf.w f25690w;
    public List<com.byazt.hwo.l> jx = new CopyOnWriteArrayList();
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public hp.l f25689l = new hp.l() { // from class: com.byazt.tb.a.1
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            if (com.byazt.jz.s.u().nu()) {
                return;
            }
            a aVar = a.this;
            if (aVar.hp || aVar.f25690w == null || a.this.f25690w.f20629q == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", a.this.f25690w.hp());
                jSONObject.putOpt("container_rect", a.this.f25690w.hp);
                jSONObject.putOpt("image_rect", a.this.f25690w.f22031l);
                jSONObject.putOpt("video_rect", a.this.f25690w.jx);
                if (a.this.f25690w.f22030j > 0) {
                    jSONObject.putOpt("image_mode", Integer.valueOf(a.this.f25690w.f22030j));
                }
                jSONObject.putOpt("node_line_name", "view_node_line");
                com.byazt.hwo.j.hp(jSONObject, a.this.f25690w, (List<com.byazt.hwo.l>) a.this.jx, "view");
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

    @Override // com.byazt.gj.w
    public void a(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        hp(wVar);
        this.f25688j = true;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "detached", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
    }

    @Override // com.byazt.gj.w
    public void eb(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (this.hp) {
            return;
        }
        this.hp = true;
        com.byazt.jz.s.u().jx().l(this.f25689l);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "end", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
        if (this.f25688j) {
            l(wVar);
        }
    }

    @Override // com.byazt.gj.w
    public void j(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        hp(wVar);
        this.f25688j = true;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "visibled", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
    }

    @Override // com.byazt.gj.w
    public void jx(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        hp(wVar);
        this.f25688j = true;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "focused", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
    }

    @Override // com.byazt.gj.w
    public void w(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        hp(wVar);
        this.f25688j = true;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "invisibled", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
    }

    private boolean hp() {
        return sz.l().qd();
    }

    @Override // com.byazt.gj.w
    public void l(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        hp(wVar);
        this.f25688j = true;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "attached", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
    }

    private void hp(com.byazt.kf.w wVar) {
        if (this.f25690w == null) {
            this.f25690w = wVar;
        }
        if (!hp() || this.hp) {
            return;
        }
        this.f25690w = wVar;
        com.byazt.jz.s.u().jx().hp(this.f25689l);
    }

    private void l(com.byazt.kf.w wVar) {
        if (wVar == null || wVar.f20629q == null) {
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
                jSONObject.putOpt("lifecycle_id", this.f25690w.hp());
                jSONObject.putOpt("container_rect", this.f25690w.hp);
                jSONObject.putOpt("image_rect", this.f25690w.f22031l);
                jSONObject.putOpt("video_rect", this.f25690w.jx);
                int i2 = this.f25690w.f22030j;
                if (i2 > 0) {
                    jSONObject.putOpt("image_mode", Integer.valueOf(i2));
                }
                com.byazt.hwo.j.hp(this.jx, wVar, "view_node_line", jSONObject);
                com.byazt.hwo.j.hp(com.byazt.hwo.hp.hp("view") + wVar.hp(), wVar.gu);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.gj.w
    public void hp(com.byazt.kf.w wVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("view", "created", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, wVar.f20629q, wVar);
    }
}
