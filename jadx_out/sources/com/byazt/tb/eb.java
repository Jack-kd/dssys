package com.byazt.tb;

import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 94})
/* loaded from: classes3.dex */
public class eb implements com.byazt.gj.a {

    /* renamed from: l, reason: collision with root package name */
    public List<com.byazt.hwo.l> f25691l = new CopyOnWriteArrayList();
    public boolean hp = false;

    private boolean hp() {
        return sz.l().qd();
    }

    @Override // com.byazt.gj.a
    public void j(com.byazt.kf.a aVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (this.hp) {
            return;
        }
        this.hp = true;
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("app", "end", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.f25691l.add(lVar);
        com.byazt.hwo.jx.hp(lVar, aVar.f20629q, aVar);
        hp(aVar);
    }

    @Override // com.byazt.gj.a
    public void jx(com.byazt.kf.a aVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("app", "backgrounded", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.f25691l.add(lVar);
        com.byazt.hwo.jx.hp(lVar, aVar.f20629q, aVar);
        if (this.hp) {
            return;
        }
        hp(aVar);
    }

    @Override // com.byazt.gj.a
    public void l(com.byazt.kf.a aVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("app", "foregrounded", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.f25691l.add(lVar);
        com.byazt.hwo.jx.hp(lVar, aVar.f20629q, aVar);
    }

    @Override // com.byazt.gj.a
    public void hp(com.byazt.kf.a aVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("app", "started", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.f25691l.add(lVar);
        com.byazt.hwo.jx.hp(lVar, aVar.f20629q, aVar);
    }

    private void hp(com.byazt.kf.a aVar) {
        if (aVar == null) {
            return;
        }
        com.byazt.hwo.j.hp(this.f25691l);
        Iterator<com.byazt.hwo.l> it = this.f25691l.iterator();
        while (it.hasNext()) {
            it.next();
        }
        if (hp()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", aVar.hp());
                jSONObject.putOpt("node_line_name", "app_node_line");
                com.byazt.hwo.j.hp(jSONObject, aVar, this.f25691l, "app");
            } catch (Throwable unused) {
            }
        }
    }
}
