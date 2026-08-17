package com.byazt.tb;

import com.byazt.jz.sz;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements com.byazt.gj.j {

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.kf.j f25703j;
    public List<com.byazt.hwo.l> jx = new CopyOnWriteArrayList();
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public hp.l f25704l = new hp.l() { // from class: com.byazt.tb.w.1
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            if (com.byazt.jz.s.u().nu()) {
                return;
            }
            w wVar = w.this;
            if (wVar.hp || wVar.f25703j == null || w.this.f25703j.f20629q == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", w.this.f25703j.hp());
                jSONObject.putOpt("video_type", Integer.valueOf(w.this.f25703j.hp));
                jSONObject.putOpt("node_line_name", "video_node_line");
                com.byazt.hwo.j.hp(jSONObject, w.this.f25703j, (List<com.byazt.hwo.l>) w.this.jx, "video");
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

    @Override // com.byazt.gj.j
    public void a(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "buffered", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    @Override // com.byazt.gj.j
    public void e(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (this.hp) {
            return;
        }
        this.hp = true;
        com.byazt.jz.s.u().jx().l(this.f25704l);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "end", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
        l(jVar);
    }

    @Override // com.byazt.gj.j
    public void eb(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "paused", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    @Override // com.byazt.gj.j
    public void j(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "prepared", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    @Override // com.byazt.gj.j
    public void jx(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "started", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    @Override // com.byazt.gj.j
    public void q(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "completed", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    @Override // com.byazt.gj.j
    public void s(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "stopped", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    @Override // com.byazt.gj.j
    public void w(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "played", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    private boolean hp() {
        return sz.l().qd();
    }

    @Override // com.byazt.gj.j
    public void l(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "initialized", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }

    private void hp(com.byazt.kf.j jVar) {
        if (this.f25703j == null) {
            this.f25703j = jVar;
        }
        if (!hp() || this.hp) {
            return;
        }
        this.f25703j = jVar;
        com.byazt.jz.s.u().jx().hp(this.f25704l);
    }

    private void l(com.byazt.kf.j jVar) {
        if (jVar == null || jVar.f20629q == null) {
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
                jSONObject.putOpt("lifecycle_id", this.f25703j.hp());
                jSONObject.putOpt("video_type", Integer.valueOf(this.f25703j.hp));
                com.byazt.hwo.j.hp(this.jx, jVar, "video_node_line", jSONObject);
                com.byazt.hwo.j.hp(com.byazt.hwo.hp.hp("video") + jVar.hp(), jVar.l());
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.gj.j
    public void hp(com.byazt.kf.j jVar, com.byazt.gy.s sVar) {
        hp(jVar);
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("video", "created", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, jVar.f20629q, jVar);
    }
}
