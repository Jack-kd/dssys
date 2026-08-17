package com.byazt.vsq;

import android.app.Dialog;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jy.l;
import com.byazt.jz.b;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.xci.ea;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.vq;
import com.byazt.xci.xh;
import com.byazt.xci.y;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 54})
/* loaded from: classes3.dex */
public class a extends hp {
    public boolean dy;
    public com.byazt.jy.l lv;
    public final AtomicBoolean nu;

    /* renamed from: r, reason: collision with root package name */
    public com.byazt.go.hp f26620r;
    public boolean ud;

    public a(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.ud = false;
        this.nu = new AtomicBoolean(false);
    }

    private void j(int i2) {
        com.byazt.go.w wVar = this.f26635s;
        if (wVar != null) {
            ((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).hp(i2);
        }
        com.byazt.qk.w wVar2 = this.cx;
        if (wVar2 != null) {
            ((com.byazt.sw.hp) wVar2.hp(com.byazt.sw.hp.class)).hp(i2);
        }
        com.byazt.qk.a aVar = this.ns;
        if (aVar != null) {
            ((com.byazt.sw.hp) aVar.hp(com.byazt.sw.hp.class)).hp(i2);
        }
    }

    private void jd() {
        com.byazt.go.w wVar;
        if (this.ud || (wVar = this.f26635s) == null) {
            return;
        }
        if (((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).l().gu()) {
            this.ud = true;
            l(8, 0);
            return;
        }
        if (y.hp(this.f26631l)) {
            int iW = y.w(this.f26631l);
            if (this.f26631l.wf() == 2) {
                l(0, -1);
            }
            if (iW != 3) {
                return;
            }
            long jEb = y.eb(this.f26631l) * 1000;
            if (this.ec.hq() < jEb) {
                l(0, (int) ((jEb - this.ec.hq()) / 1000));
                return;
            }
            l(8, 0);
            qh();
            this.ud = true;
        }
    }

    public static int l(mp mpVar) {
        return 2;
    }

    private void qh() {
        if (this.f26635s == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("is_auto_click", Boolean.TRUE);
        ((com.byazt.ey.hp) this.f26635s.hp(com.byazt.ey.hp.class)).hp(map);
        this.f26635s.hp(null, new com.byazt.xci.e());
    }

    private JSONObject tw() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        xh xhVarSz = this.f26631l.sz();
        if (xhVarSz != null) {
            String strJ = xhVarSz.j();
            if (!TextUtils.isEmpty(strJ)) {
                try {
                    String strOptString = new JSONObject(strJ).optString("token");
                    jSONObject.put("req_id", xhVarSz.a());
                    jSONObject.put("token", strOptString);
                    jSONObject.put(com.umeng.ccg.a.f49772z, "query_box");
                } catch (JSONException unused) {
                }
            }
        }
        return jSONObject;
    }

    @Override // com.byazt.vsq.hp
    public boolean dy() {
        return this.nu.get();
    }

    @Override // com.byazt.vsq.hp
    public void n() {
        super.n();
        yj();
        if (!this.f26628e.a()) {
            if (com.byazt.yx.l.hp().l(this.f26631l)) {
                jd();
                return;
            }
            if (y.hp(this.f26631l) && this.lv == null && !com.byazt.jz.l.hp().get("is_reward_deep_link_to_live", false) && y.w(this.f26631l) != 1 && this.ec.hq() >= y.eb(this.f26631l) * 1000) {
                this.nu.set(true);
                com.byazt.td.a aVar = this.ec;
                if (aVar != null && aVar.l()) {
                    this.hp.as();
                }
                this.lv = new com.byazt.jy.l(this.hp, this.f26631l, new l.hp() { // from class: com.byazt.vsq.a.2
                    @Override // com.byazt.jy.l.hp
                    public void hp(Dialog dialog) {
                        a.this.lv.dismiss();
                        a.this.hp.kg();
                        a.this.nu.set(false);
                    }

                    @Override // com.byazt.jy.l.hp
                    public void l(Dialog dialog) {
                        if (a.this.f26620r != null) {
                            HashMap map = new HashMap();
                            map.put("is_auto_click", Boolean.TRUE);
                            ((com.byazt.ey.hp) a.this.f26620r.hp(com.byazt.ey.hp.class)).hp(map);
                            a.this.f26620r.hp(null, new com.byazt.xci.e());
                        }
                    }
                });
                com.byazt.go.hp hpVar = new com.byazt.go.hp(this.hp, this.f26631l, this.jl, 7) { // from class: com.byazt.vsq.a.3
                    @Override // com.byazt.go.l, com.byazt.go.j
                    public void hp(View view, com.byazt.xci.e eVar) {
                        super.hp(view, eVar);
                        a.this.lv.dismiss();
                    }
                };
                this.f26620r = hpVar;
                this.hp.hp((com.byazt.ey.jx) hpVar.hp(com.byazt.ey.jx.class));
                this.lv.hp(this.f26620r);
                if (this.hp.isFinishing()) {
                    return;
                }
                this.lv.show();
            }
        }
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean pc() {
        return true;
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        return this.f26629j != 100.0f ? com.byazt.vi.a.cx(this.hp) : this.jx == 2 ? com.byazt.vi.a.v(this.hp) : com.byazt.vi.a.u(this.hp);
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return ea.jx(this.f26631l, eb());
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return true;
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return rv() && hd.hp(this.f26631l) == 1;
    }

    @Override // com.byazt.vsq.hp
    public boolean vv() {
        if (this.dy) {
            return true;
        }
        return (com.byazt.yx.l.hp().l(this.f26631l) || y.jx(this.f26631l)) ? false : true;
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        if (a()) {
            this.vv.l(false);
            this.vv.w(false);
            this.f26634q.a(8);
            this.f26634q.w(8);
            this.f26634q.jx(8);
        } else {
            this.vv.l(this.f26631l.jc());
            this.vv.w(true);
            this.f26634q.a(0);
            this.f26634q.w(0);
            this.f26634q.jx(0);
        }
        this.hp.f();
    }

    @Override // com.byazt.vsq.hp
    public void xs() {
        super.xs();
        this.f26634q.jx(0);
    }

    public void yj() {
        if (y.hp(this.f26631l)) {
            xh xhVarSz = this.f26631l.sz();
            if (xhVarSz != null || com.byazt.yx.l.hp().l(this.f26631l)) {
                int iXh = xh();
                if (xhVarSz != null) {
                    xhVarSz.hp(iXh);
                }
                j(iXh);
            }
        }
    }

    public static boolean hp(mp mpVar) {
        return com.byazt.we.hp.hp(mpVar);
    }

    @Override // com.byazt.vsq.hp
    public void l(boolean z2) throws JSONException {
        super.l(z2);
        if (!com.byazt.jz.l.hp().get("is_reward_deep_link_to_live", false) || y.jx(this.f26631l) || z2) {
            return;
        }
        sz.hp().hp(tw(), new cx.j() { // from class: com.byazt.vsq.a.1
            @Override // com.byazt.jz.cx.j
            public void hp(int i2, String str) throws JSONException {
                a.this.q(false);
            }

            @Override // com.byazt.jz.cx.j
            public void hp(b.jx jxVar) throws JSONException {
                vq vqVar = jxVar.jx;
                if (vqVar == null) {
                    return;
                }
                boolean zHp = vqVar.hp();
                a.this.q(zHp);
                if (zHp) {
                    a.this.hp.j(0);
                }
            }
        });
    }

    @Override // com.byazt.vsq.hp
    public com.byazt.yni.l hp(boolean z2) {
        if (this.f26629j != 100.0f) {
            this.f26634q = new com.byazt.yni.eb(this.hp, this.f26631l, z2);
        } else {
            this.f26634q = new com.byazt.yni.s(this.hp, this.f26631l, z2);
        }
        return this.f26634q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(boolean z2) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("showSkip", z2);
            com.byazt.yni.w wVar = this.f26628e;
            if (wVar != null) {
                wVar.hp("showSkipInLiveScene", jSONObject);
            }
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.vsq.hp
    public void hp(int i2, int i3, Intent intent) throws JSONException {
        super.hp(i2, i3, intent);
        if (y.jx(this.f26631l) || i2 != 1 || intent == null || intent.getExtras() == null || this.dy) {
            return;
        }
        long j2 = intent.getExtras().getLong("csj.reward_countdown_duration_ms");
        int iXh = (int) (xh() - j2);
        this.hp.hp(iXh, false);
        if (j2 <= 0) {
            q(true);
            j(0);
            this.dy = true;
            return;
        }
        hp(iXh);
    }

    private void l(int i2, int i3) {
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar != null && (lVar instanceof com.byazt.yni.s)) {
            ((com.byazt.yni.s) lVar).hp(i2, i3);
        }
    }

    private void hp(long j2) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("showTime", j2);
            com.byazt.yni.w wVar = this.f26628e;
            if (wVar == null || !wVar.a()) {
                return;
            }
            this.f26628e.hp("rewardInnerLiveShowTime", jSONObject);
        } catch (JSONException unused) {
        }
    }
}
