package com.byazt.tb;

import com.anythink.core.common.f.g;
import com.byazt.jz.sz;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 34})
/* loaded from: classes3.dex */
public class l implements com.byazt.gj.hp {

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.kf.hp f25697j;

    /* renamed from: w, reason: collision with root package name */
    public boolean f25699w;
    public List<com.byazt.hwo.l> jx = new CopyOnWriteArrayList();
    public boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public hp.l f25698l = new hp.l() { // from class: com.byazt.tb.l.1
        @Override // com.byazt.zn.hp.l
        public void onAppBackground() {
            if (!com.byazt.jz.s.u().nu() && l.this.f25699w) {
                l lVar = l.this;
                if (lVar.hp || lVar.f25697j == null || l.this.f25697j.f20629q == null) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("lifecycle_id", l.this.f25697j.hp());
                    jSONObject.putOpt(g.a.f3275l, Integer.valueOf(l.this.f25697j.hp));
                    jSONObject.putOpt("node_line_name", "download_node_line");
                    com.byazt.hwo.j.hp(jSONObject, l.this.f25697j, (List<com.byazt.hwo.l>) l.this.jx, "download");
                } catch (Throwable unused) {
                }
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

    @Override // com.byazt.gj.hp
    public void a(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "download_paused", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    @Override // com.byazt.gj.hp
    public void e(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        if (this.hp) {
            return;
        }
        this.hp = true;
        com.byazt.jz.s.u().jx().l(this.f25698l);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "end", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
        if (this.f25699w) {
            l(hpVar);
        }
    }

    @Override // com.byazt.gj.hp
    public void eb(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", PointCategory.DOWNLOAD_FAILED, sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    @Override // com.byazt.gj.hp
    public void j(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "market_closed", sVar != null ? sVar.hp() : System.currentTimeMillis(), 1);
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    @Override // com.byazt.gj.hp
    public void q(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "download_finished", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    @Override // com.byazt.gj.hp
    public void s(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "download_canceled", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    @Override // com.byazt.gj.hp
    public void w(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "download_started", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    private boolean hp() {
        return sz.l().qd();
    }

    @Override // com.byazt.gj.hp
    public void jx(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "market_opened", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    @Override // com.byazt.gj.hp
    public void l(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        hp(hpVar);
        this.f25699w = true;
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "started", sVar != null ? sVar.hp() : System.currentTimeMillis(), com.byazt.hwo.j.hp(sVar));
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    private void hp(com.byazt.kf.hp hpVar) {
        if (this.f25697j == null) {
            this.f25697j = hpVar;
        }
        if (!hp() || this.hp) {
            return;
        }
        com.byazt.jz.s.u().jx().hp(this.f25698l);
    }

    @Override // com.byazt.gj.hp
    public void hp(com.byazt.kf.hp hpVar, com.byazt.gy.s sVar) {
        com.byazt.hwo.j.hp(sVar);
        com.byazt.hwo.l lVar = new com.byazt.hwo.l("download", "created", sVar != null ? sVar.hp() : System.currentTimeMillis());
        this.jx.add(lVar);
        com.byazt.hwo.jx.hp(lVar, hpVar.f20629q, hpVar);
    }

    private void l(com.byazt.kf.hp hpVar) {
        if (hpVar == null || hpVar.f20629q == null) {
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
                jSONObject.putOpt("lifecycle_id", hpVar.hp());
                jSONObject.putOpt(g.a.f3275l, Integer.valueOf(this.f25697j.hp));
                com.byazt.hwo.j.hp(this.jx, hpVar, "download_node_line", jSONObject);
                com.byazt.hwo.j.hp(com.byazt.hwo.hp.hp("download") + hpVar.hp(), hpVar.l());
            } catch (Throwable unused) {
            }
        }
    }
}
