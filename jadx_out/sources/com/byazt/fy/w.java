package com.byazt.fy;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ff.q;
import com.byazt.jz.cx;
import com.byazt.jz.d;
import com.byazt.jz.lv;
import com.byazt.jz.vv;
import com.byazt.pu.TTDownloadField;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.ymw.u;
import com.byazt.zn.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 60, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends hp {
    public w(Context context, mp mpVar, String str) {
        super(context, mpVar, str, "");
    }

    private void a(JSONObject jSONObject, final boolean z2) {
        n();
        if (getContext() == null || this.f20224l == null || !v()) {
            return;
        }
        String str = this.f20222j;
        com.byazt.hy.jx.hp(str, str, jSONObject, sz());
        final dy<String, Object> dyVarHp = new dy().hp("downloadUrl", this.f20224l.l()).hp("hashCode", Integer.valueOf(sz())).hp(TTDownloadField.TT_ACTIVITY, getContext()).hp("open_market_in_app", Boolean.valueOf(sz.ec(this.jx))).hp("action_type_button", 2);
        mp mpVar = this.jx;
        if (mpVar != null && !TextUtils.isEmpty(mpVar.j())) {
            dyVarHp.hp("id", Long.valueOf(Double.valueOf(this.jx.j()).longValue()));
        }
        if (!j()) {
            hp(dyVarHp, z2);
            return;
        }
        com.byazt.ve.hp hpVar = new com.byazt.ve.hp() { // from class: com.byazt.fy.w.1
            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z3) {
            }

            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
                if (dyVarHp == null) {
                    return;
                }
                com.byazt.hy.jx.hp(0, w.this.sz());
                w.this.s().hp(w.this.u());
                dyVarHp.remove("downloadButtonClickListener");
                if (w.this.hp((com.byazt.xci.j) null, (com.byazt.ve.hp) null, dyVarHp, z2)) {
                    return;
                }
                w.this.l(dyVarHp);
            }
        };
        com.byazt.hy.jx.hp(dyVarHp, hpVar);
        if (hp((com.byazt.xci.j) null, hpVar, dyVarHp, z2)) {
            return;
        }
        hp(dyVarHp, hpVar);
    }

    private void l(com.byazt.ve.hp hpVar, Map<String, Object> map) {
        if (this.vv == null) {
            return;
        }
        final dy<String, Object> dyVarHp = new dy().hp("itemClickListener", null).hp("downloadButtonClickListener", hpVar).hp("hashCode", Integer.valueOf(sz())).hp(map);
        dyVarHp.put("itemClickListener", new com.byazt.ve.j() { // from class: com.byazt.fy.w.3
            @Override // com.byazt.ve.j
            public void onItemClick() {
                if (w.this.zy || w.this.jx.x_()) {
                    com.byazt.hy.jx.l(1, w.this.sz());
                    dyVarHp.remove("itemClickListener");
                    w.this.vv.apply(com.byazt.wi.j.hp().hp(17).hp(Void.class).hp(0, dyVarHp).l());
                } else {
                    Context context = w.this.getContext();
                    String strS = w.this.jx.s();
                    w wVar = w.this;
                    lv.hp(context, strS, wVar.jx, wVar.f20222j, wVar.eb());
                }
            }
        });
        this.vv.apply(com.byazt.wi.j.hp().hp(17).hp(Void.class).hp(0, dyVarHp).l());
    }

    private void n() {
        if (j() && !this.ec) {
            com.byazt.hy.jx.hp(false, (com.byazt.ve.jx) null, sz());
        }
    }

    @Override // com.byazt.gog.jx
    public boolean eb() {
        return this.f20225n;
    }

    @Override // com.byazt.fy.hp
    public void ec() {
        com.byazt.hy.jx.hp(this.f20222j, this.jx, (JSONObject) null, sz());
        com.byazt.hy.jx.hp(this.jx, sz(), false);
        com.byazt.hy.jx.hp(this.f20222j, sz());
    }

    @Override // com.byazt.fy.hp, com.byazt.gog.jx
    public boolean j() {
        Function<SparseArray<Object>, Object> function = this.vv;
        return function != null && com.byazt.hy.jx.hp(function, sz()) == 2;
    }

    @Override // com.byazt.fy.hp
    public synchronized void vv() {
        if (this.f20224l == null) {
            return;
        }
        this.eb.set(true);
        if (this.vv != null) {
            this.vv.apply(com.byazt.wi.j.hp().hp(5).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz())).hp("downloadStatusChangeListener", this.cx).hp("marketStatusChangeListener", this.di)).l());
        }
    }

    @Override // com.byazt.gog.jx
    public void w() {
        mp mpVar = this.jx;
        if (mpVar != null) {
            com.byazt.rk.hp.j(mpVar.di());
        }
        if (this.f20224l == null) {
            return;
        }
        this.eb.set(false);
        Function<SparseArray<Object>, Object> function = this.vv;
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(8).hp(Void.class).hp(0, new dy().hp("force", Boolean.TRUE).hp("hashCode", Integer.valueOf(sz()))).l());
        }
        vv();
    }

    @Override // com.byazt.fy.hp
    public synchronized void zy() {
        try {
            if (this.f20224l == null) {
                return;
            }
            if (this.vv != null && d.f21856j >= 6400 && !d.s()) {
                com.byazt.hy.jx.hp((com.byazt.ve.jx) null, sz());
            }
            AtomicBoolean atomicBoolean = this.eb;
            if (atomicBoolean != null && atomicBoolean.get()) {
                this.eb.set(false);
                if (this.vv != null) {
                    this.vv.apply(com.byazt.wi.j.hp().hp(4).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz()))).l());
                }
            }
            e();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.gog.jx
    public void j(boolean z2) {
        this.f20225n = z2;
    }

    @Override // com.byazt.gog.jx
    public void hp(JSONObject jSONObject, boolean z2) {
        a(jSONObject, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final Map<String, Object> map, final com.byazt.ve.hp hpVar) {
        l(true);
        q.hp(new Runnable() { // from class: com.byazt.fy.w.2
            @Override // java.lang.Runnable
            public void run() {
                w.this.hp(hpVar, (Map<String, Object>) map);
            }
        }, this.jx);
        this.ec = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final Map<String, Object> map) {
        int i2 = this.xs;
        if (i2 == 1) {
            return;
        }
        if (i2 == 2) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("tt_market_download_check") { // from class: com.byazt.fy.w.5
                @Override // java.lang.Runnable
                public void run() {
                    cx<com.byazt.jdb.hp> cxVarHp = com.byazt.jz.sz.hp();
                    w wVar = w.this;
                    com.byazt.xci.j jVarHp = cxVarHp.hp(wVar.jx, wVar.f20224l.l());
                    if (jVarHp == null || !jVarHp.eb()) {
                        return;
                    }
                    vv.a().post(new Runnable() { // from class: com.byazt.fy.w.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            w.this.hp((com.byazt.ve.hp) null, (Map<String, Object>) map);
                        }
                    });
                }
            });
        } else {
            hp((com.byazt.ve.hp) null, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ve.hp hpVar, Map<String, Object> map) {
        try {
            if (hpVar == null) {
                hp(map);
                this.ec = false;
            } else {
                l(hpVar, map);
                this.ec = false;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.gog.jx
    public void l(boolean z2) {
        if (z2) {
            this.ec = true;
            if (j()) {
                try {
                    com.byazt.hy.jx.hp(true, com.byazt.hy.jx.hp(this.jx, this.sz), sz());
                } catch (Throwable th) {
                    u.hp("xgcdl", "throwable", th);
                }
            }
        }
    }

    private void hp(final Map<String, Object> map, final boolean z2) {
        int i2 = this.xs;
        if (i2 == 1) {
            s.hp(com.byazt.jz.sz.getContext(), this.jx, "jsb_1");
        } else if (i2 != 2) {
            hp((com.byazt.xci.j) null, map, z2);
        } else {
            com.byazt.uid.w.l(new com.byazt.uid.eb("tt_download_check") { // from class: com.byazt.fy.w.4
                @Override // java.lang.Runnable
                public void run() {
                    cx<com.byazt.jdb.hp> cxVarHp = com.byazt.jz.sz.hp();
                    w wVar = w.this;
                    com.byazt.xci.j jVarHp = cxVarHp.hp(wVar.jx, wVar.f20224l.l());
                    if (jVarHp == null || !jVarHp.eb()) {
                        s.hp(com.byazt.jz.sz.getContext(), w.this.jx, "jsb_2");
                    } else {
                        w.this.hp(jVarHp, (Map<String, Object>) map, z2);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.xci.j jVar, final Map<String, Object> map, final boolean z2) {
        hp(new com.byazt.ve.hp() { // from class: com.byazt.fy.w.6
            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z3) {
                if (z3 && w.this.hp(jVar, (com.byazt.ve.hp) null, (Map<String, Object>) map, z2)) {
                    return;
                }
                w.this.hp((com.byazt.ve.hp) null, (Map<String, Object>) map);
            }

            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
            }
        }, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(com.byazt.xci.j jVar, final com.byazt.ve.hp hpVar, final Map<String, Object> map, boolean z2) {
        com.byazt.zbc.jx jxVarS = s();
        if (!jxVarS.j(z2) || eb()) {
            return false;
        }
        if (hp(getContext(), this.jx, this.f20222j)) {
            return true;
        }
        jxVarS.hp(jVar, this.f20222j, this.f20224l.l(), new com.byazt.cb.l() { // from class: com.byazt.fy.w.7
            @Override // com.byazt.cb.l
            public void hp() {
                if (w.this.j()) {
                    w.this.hp((Map<String, Object>) map, hpVar);
                } else {
                    w.this.hp(hpVar, (Map<String, Object>) map);
                }
            }
        });
        return true;
    }
}
