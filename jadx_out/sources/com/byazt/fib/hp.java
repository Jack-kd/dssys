package com.byazt.fib;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ff.q;
import com.byazt.pu.TTDownloadField;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.ymw.hq;
import com.byazt.ymw.vv;
import com.byazt.yy.DownloadStatusChangeListener;
import com.byazt.zn.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.cl;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 28})
/* loaded from: classes2.dex */
public abstract class hp implements com.byazt.qu.hp {

    /* renamed from: a, reason: collision with root package name */
    public String f19746a;
    public boolean eb;
    public boolean gu;
    public com.byazt.yrp.eb hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19748j;
    public sz jl;
    public Context jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f19749k;

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Object> f19750l;

    /* renamed from: q, reason: collision with root package name */
    public DownloadStatusChangeListener f19751q;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.qu.hp f19753v;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.zbc.jx f19754w;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f19752s = false;
    public int zy = 0;

    /* renamed from: e, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f19747e = com.byazt.jz.s.u().xh();

    private void a(Map<String, Object> map) {
        int iJ = j(map);
        com.byazt.rk.hp.hp(jx(), jx(iJ) ? 1 : 2);
        hp(this.f19749k, iJ);
        if (this.jx == null || TextUtils.isEmpty(this.f19746a) || !eb(map)) {
            return;
        }
        this.f19754w.hp(l(iJ), this.hp);
        dy<String, Object> dyVarHp = new dy().hp("downloadUrl", this.f19746a);
        dyVarHp.put("is_feed_register_direct_download", map.get("is_feed_register_direct_download"));
        dyVarHp.put("download_manager_hash_code", map.get("download_manager_hash_code"));
        dyVarHp.put("has_show_dl_factors", map.get("has_show_dl_factors"));
        dyVarHp.put(TTDownloadField.TT_ACTIVITY, map.get(TTDownloadField.TT_ACTIVITY));
        dyVarHp.put("open_market_in_app", Boolean.valueOf(sz.ec(l())));
        com.byazt.ve.hp hpVarW = w(dyVarHp);
        if (hpVarW == null || hp((com.byazt.xci.j) null, hpVarW, dyVarHp)) {
            return;
        }
        hp(true, iJ);
        hp(dyVarHp, hpVarW);
    }

    private boolean eb(Map<String, Object> map) {
        if (this.f19747e == null) {
            return true;
        }
        sz szVar = this.jl;
        if (szVar != null && szVar.eb() == 1) {
            return true;
        }
        if (com.byazt.jz.sz.l().gy()) {
            String str = "已下载%d%%，可在通知栏暂停或取消";
            try {
                DownloadStatusChangeListener downloadStatusChangeListener = this.f19751q;
                if (downloadStatusChangeListener instanceof com.byazt.ve.l) {
                    str = String.format("已下载%d%%，可在通知栏暂停或取消", Integer.valueOf(((com.byazt.ve.l) downloadStatusChangeListener).getCurrentPercent()));
                }
            } catch (Exception unused) {
            }
            return hp(map, str, true);
        }
        sz szVar2 = this.jl;
        if (szVar2 != null && szVar2.w()) {
            return true;
        }
        com.byazt.yrp.eb ebVar = this.hp;
        if (ebVar instanceof mp) {
            com.byazt.fy.s.l((mp) ebVar, "bdc");
        } else {
            com.byazt.fy.s.l(null, "bdc");
        }
        return hp(map, "应用正在下载...", false);
    }

    public static int j(Map<String, Object> map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get("download_manager_hash_code");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    private void s(Map<String, Object> map) {
        if (this.f19747e != null) {
            int iJ = j(map);
            if (map != null) {
                map.put("hashCode", Integer.valueOf(iJ));
            }
            this.f19747e.apply(com.byazt.wi.j.hp().hp(16).hp(Void.class).hp(0, map).l());
        }
    }

    public abstract com.byazt.ve.j hp(Map<String, Object> map, dy<String, Object> dyVar);

    public void jx(final Map<String, Object> map) {
        int i2 = this.zy;
        if (i2 == 1) {
            com.byazt.rk.hp.j(jx(), 2);
            com.byazt.fy.s.hp(com.byazt.jz.sz.getContext(), l(), "uchain_1");
            com.byazt.rj.jx.hp(this.f19750l, com.byazt.ex.l.f19546j);
        } else if (i2 != 2) {
            hp((com.byazt.xci.j) null, map);
        } else {
            com.byazt.uid.w.l(new com.byazt.uid.eb("tt_download_check") { // from class: com.byazt.fib.hp.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.xci.j jVarHp = com.byazt.jz.sz.hp().hp(hp.this.l(), hp.this.f19746a);
                    if (jVarHp == null || !jVarHp.eb()) {
                        com.byazt.rk.hp.j(hp.this.jx(), 2);
                        com.byazt.rj.jx.hp(hp.this.f19750l, com.byazt.ex.l.f19546j);
                        com.byazt.fy.s.hp(com.byazt.jz.sz.getContext(), hp.this.l(), "uchain_2");
                    } else {
                        hp hpVar = hp.this;
                        if (hpVar.gu) {
                            hpVar.l(jVarHp, (Map<String, Object>) map);
                        }
                        hp.this.hp(jVarHp, (Map<String, Object>) map);
                    }
                }
            });
        }
    }

    public abstract boolean jx(int i2);

    public abstract com.byazt.ve.hp w(Map<String, Object> map);

    public boolean l(Map<String, Object> map) {
        if (this.hp.B_()) {
            com.byazt.rj.jx.hp(this.f19750l, com.byazt.ex.l.f19547w);
            return false;
        }
        if (TextUtils.isEmpty(this.f19746a)) {
            com.byazt.rj.jx.hp(this.f19750l, com.byazt.ex.l.f19547w);
            return false;
        }
        if (vv.jx(this.jx) == 0) {
            try {
                hq.hp(this.jx, "\"无网络，请稍后再试\"", 0);
            } catch (Exception unused) {
            }
            return true;
        }
        a(map);
        return true;
    }

    @Override // com.byazt.qu.hp
    public boolean hp(Map<String, Object> map) {
        if (!hp()) {
            com.byazt.rj.jx.hp(this.f19750l, com.byazt.ex.l.f19546j);
            return false;
        }
        return l(map);
    }

    private com.byazt.ve.hp jx(final com.byazt.xci.j jVar, final Map<String, Object> map) {
        return new com.byazt.ve.hp() { // from class: com.byazt.fib.hp.5
            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z2) {
                if (z2 && hp.this.hp(jVar, (com.byazt.ve.hp) null, map)) {
                    return;
                }
                hp.this.hp((com.byazt.ve.hp) null, map);
            }

            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
            }
        };
    }

    public boolean hp() {
        return (this.hp == null || l() == null || this.jx == null || this.f19747e == null || TextUtils.isEmpty(this.f19746a) || TextUtils.isEmpty(this.f19748j) || this.f19754w == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String jx() {
        if (l() == null) {
            return null;
        }
        return l().di();
    }

    private void l(com.byazt.ve.hp hpVar, Map<String, Object> map) {
        if (this.f19747e == null) {
            return;
        }
        dy<String, Object> dyVarHp = new dy().hp("itemClickListener", null).hp("downloadButtonClickListener", hpVar).hp("hashCode", Integer.valueOf(j(map))).hp(map);
        dyVarHp.put("itemClickListener", hp(map, dyVarHp));
        this.f19747e.apply(com.byazt.wi.j.hp().hp(17).hp(Void.class).hp(0, dyVarHp).l());
    }

    private boolean hp(Map<String, Object> map, final String str, final boolean z2) {
        Object objApply = this.f19747e.apply(com.byazt.wi.j.hp().hp(6).hp(Boolean.class).hp(0, new dy().hp("hashCode", Integer.valueOf(j(map))).hp("downloadUrl", this.f19746a)).l());
        if (objApply == null || !((Boolean) objApply).booleanValue()) {
            return true;
        }
        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.fib.hp.1
            @Override // java.lang.Runnable
            public void run() {
                if (z2) {
                    hq.l(hp.this.jx, str, 0, 17, 0, 0);
                } else {
                    hq.hp(hp.this.jx, str, 0);
                }
            }
        });
        return false;
    }

    public com.byazt.zbc.hp l(int i2) {
        if (jx(i2)) {
            return new com.byazt.zbc.w();
        }
        if (this.f19752s) {
            return new com.byazt.zbc.j();
        }
        return new com.byazt.zbc.l();
    }

    public void l(boolean z2) {
        this.eb = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.xci.j jVar, Map<String, Object> map) {
        com.byazt.xci.a aVarHp = com.byazt.fy.s.hp(jVar.s());
        com.byazt.xci.a aVarVv = this.hp.vv();
        if (aVarVv == null) {
            l().hp(aVarHp);
        } else {
            if (aVarHp != null) {
                aVarVv.e(aVarHp.k());
                aVarVv.l(aVarHp.w());
                aVarVv.j(aVarHp.eb());
                aVarVv.l(aVarHp.jl());
                aVarVv.w(aVarHp.s());
                aVarVv.q(aVarHp.zy());
                aVarVv.jx(aVarHp.a());
                aVarVv.a(aVarHp.q());
                aVarVv.eb(aVarHp.e());
                aVarVv.s(aVarHp.gu());
            }
            aVarHp = aVarVv;
        }
        if (aVarHp != null) {
            hp(aVarHp.a(), aVarHp.k(), aVarHp.zy(), map);
        }
    }

    public boolean hp(com.byazt.xci.j jVar, final com.byazt.ve.hp hpVar, final Map<String, Object> map) {
        boolean zHp = com.byazt.rj.jx.hp(map);
        boolean zL = com.byazt.rj.jx.l(map);
        final int iJ = j(map);
        if (!this.f19754w.j(zHp || zL)) {
            return false;
        }
        com.byazt.qu.hp hpVar2 = this.f19753v;
        if (hpVar2 != null && hpVar2.hp(new HashMap())) {
            return true;
        }
        this.f19754w.hp(jVar, this.f19748j, this.f19746a, new com.byazt.cb.l() { // from class: com.byazt.fib.hp.2
            @Override // com.byazt.cb.l
            public void hp() {
                if (!hp.this.jx(iJ)) {
                    hp.this.hp(hpVar, map);
                } else {
                    hp.this.hp(true, iJ);
                    hp.this.hp((Map<String, Object>) map, hpVar);
                }
            }
        });
        return true;
    }

    public void hp(boolean z2, int i2) {
        if (jx(i2)) {
            com.byazt.hy.jx.hp(z2, com.byazt.hy.jx.hp(this.hp, this.eb), i2);
        }
    }

    public void hp(boolean z2) {
        this.f19752s = z2;
    }

    public void hp(DownloadStatusChangeListener downloadStatusChangeListener) {
        this.f19751q = downloadStatusChangeListener;
    }

    public void hp(sz szVar) {
        this.jl = szVar;
    }

    public void hp(int i2) {
        this.zy = i2;
    }

    public void hp(com.byazt.qu.hp hpVar) {
        this.f19753v = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final Map<String, Object> map, final com.byazt.ve.hp hpVar) {
        q.hp(new Runnable() { // from class: com.byazt.fib.hp.3
            @Override // java.lang.Runnable
            public void run() {
                hp.this.hp(hpVar, map);
            }
        }, this.hp);
        this.f19749k = false;
    }

    public mp l() {
        return com.byazt.rj.jx.hp(this.hp, this.f19750l);
    }

    public void hp(com.byazt.ve.hp hpVar, Map<String, Object> map) {
        try {
            l().j(true);
            if (hpVar == null) {
                s(map);
                this.f19749k = false;
            } else {
                l(hpVar, map);
                this.f19749k = false;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.xci.j jVar, Map<String, Object> map) {
        hp(jx(jVar, map), map);
    }

    private void hp(String str, String str2, String str3, Map<String, Object> map) {
        if (this.f19747e == null) {
            return;
        }
        this.f19747e.apply(com.byazt.wi.j.hp().hp(24).hp(Boolean.class).hp(0, new dy().hp("appIcon", str).hp(cl.f49061p, str2).hp("hashCode", Integer.valueOf(j(map))).hp("packageName", str3)).l());
    }
}
