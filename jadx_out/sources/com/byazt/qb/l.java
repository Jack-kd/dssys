package com.byazt.qb;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import com.byazt.dy.w;
import com.byazt.fjm.RecyclerView;
import com.byazt.jdb.eb;
import com.byazt.la.e;
import com.byazt.pg.r;
import com.byazt.ql.vv;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.mp;
import com.byazt.ymw.hq;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 159, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.dy.hp implements r.hp {

    /* renamed from: b, reason: collision with root package name */
    public final Handler f24555b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f24556d;
    public com.byazt.cey.j di;
    public com.byazt.vp.l ns;

    /* renamed from: o, reason: collision with root package name */
    public long f24557o;
    public AtomicBoolean wv;

    public l(Context context, ViewGroup viewGroup, eb ebVar, mp mpVar, String str, int i2) {
        super(context, viewGroup, ebVar, mpVar, str, i2);
        this.cx = false;
        this.f24555b = new ud(Looper.getMainLooper(), this);
        this.f24556d = true;
        this.wv = new AtomicBoolean();
        this.f24557o = System.currentTimeMillis();
    }

    @Override // com.byazt.qk.gu
    public void a() {
    }

    @Override // com.byazt.qk.gu
    public void e() {
    }

    @Override // com.byazt.qk.gu
    public void eb() {
    }

    public void ec() {
        this.f24555b.removeMessages(10082);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        int i2 = message.what;
        if (i2 != 10081) {
            if (i2 != 10082) {
                return;
            }
            if (!this.wv.get()) {
                this.f24555b.removeMessages(10082);
                return;
            } else {
                hp("\"需要下滑浏览更多才能领取奖励哦\"");
                this.f24555b.sendEmptyMessageDelayed(10082, 6000L);
                return;
            }
        }
        com.byazt.dy.l lVar = this.ec;
        if (lVar != null) {
            lVar.hp();
            this.wv.set(true);
            hp("\"需要下滑浏览更多才能领取奖励哦\"");
            this.f24555b.sendEmptyMessageDelayed(10082, 6000L);
        }
    }

    @Override // com.byazt.qk.gu
    public long hp() {
        return 0L;
    }

    @Override // com.byazt.qk.gu
    public void j() {
    }

    @Override // com.byazt.qk.gu
    public int jx() {
        return 0;
    }

    @Override // com.byazt.qk.gu
    public int l() {
        return 0;
    }

    @Override // com.byazt.qk.gu
    public void q() {
    }

    @Override // com.byazt.qk.gu
    public void s() {
    }

    @Override // com.byazt.qk.gu
    public void setPauseFromExpressView(boolean z2) {
    }

    public void sz() {
        if (e.l(this.f19367w)) {
            this.f24555b.sendEmptyMessageDelayed(10081, 5000L);
        }
    }

    public void u() {
        ScrollView scrollView = new ScrollView(this.f19360l);
        LinearLayout linearLayout = new LinearLayout(this.f19360l);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(this.f19360l);
        v.hp(this.f19360l, "tt_ecomm_page_backup_img", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        imageView.setScaleType(scaleType);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = xh.jx(this.f19360l, 10.0f);
        layoutParams.leftMargin = xh.jx(this.f19360l, 10.0f);
        layoutParams.rightMargin = xh.jx(this.f19360l, 10.0f);
        linearLayout.addView(imageView, layoutParams);
        ImageView imageView2 = new ImageView(this.f19360l);
        imageView2.setScaleType(scaleType);
        v.hp(this.f19360l, "tt_ecomm_page_backup_img", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = xh.jx(this.f19360l, 10.0f);
        layoutParams2.leftMargin = xh.jx(this.f19360l, 10.0f);
        layoutParams2.rightMargin = xh.jx(this.f19360l, 10.0f);
        linearLayout.addView(imageView2, layoutParams2);
        scrollView.addView(linearLayout, new ViewGroup.LayoutParams(-1, -2));
        this.jx.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
    }

    public void vv() {
        Handler handler = this.f24555b;
        if (handler != null) {
            handler.removeMessages(10081);
            this.f24555b.removeMessages(10082);
        }
    }

    @Override // com.byazt.qk.gu
    public void w() {
    }

    public void xs() throws JSONException {
        vv();
        if (this.f24556d) {
            this.f24556d = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.f24557o);
                jSONObject.put("end", System.currentTimeMillis());
            } catch (JSONException unused) {
            }
            com.byazt.jdb.j.hp(this.f19367w, "landingpage", "agg_stay_page", new com.byazt.dhy.hp() { // from class: com.byazt.qb.l.3
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
                }
            });
        }
    }

    @Override // com.byazt.dy.hp
    public List<com.byazt.eo.jx> gu() throws JSONException {
        this.f19363q = new ArrayList();
        JSONObject jSONObjectIj = this.f19367w.ij();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("platform", "android");
            jSONObjectIj.put("env_info", jSONObject);
        } catch (JSONException unused) {
        }
        this.f19363q.add(new com.byazt.eo.jx(jSONObjectIj, -2134548432));
        return this.f19363q;
    }

    @Override // com.byazt.qk.gu
    public void hp(float f2) {
    }

    @Override // com.byazt.qk.gu
    public void j(int i2) {
    }

    @Override // com.byazt.dy.hp
    public void jl() {
        try {
            this.f19366v = e.hp(this.f19367w);
            JSONObject jSONObjectEl = this.f19367w.el();
            this.di = new com.byazt.cey.j() { // from class: com.byazt.qb.l.1
                @Override // com.byazt.cey.j
                public void hp(boolean z2, List<mp> list, boolean z3) throws JSONException {
                    if (!z2) {
                        if (l.this.f19361n.get() > 0) {
                            l.this.f19361n.get();
                            l.this.f19361n.decrementAndGet();
                            l.this.jl();
                            return;
                        } else {
                            l.this.f19358j.hp(-3, "ad meta info load fail");
                            if (l.this.f19355a != null) {
                                l.this.f19355a.hp(-3);
                                return;
                            }
                            return;
                        }
                    }
                    if (list != null && list.size() > 0) {
                        l.this.l(list);
                        return;
                    }
                    if (l.this.f19361n.get() <= 0) {
                        if (l.this.f19355a != null) {
                            l.this.f19355a.hp(-2);
                        }
                    } else {
                        l.this.f19361n.get();
                        l.this.f19361n.decrementAndGet();
                        l.this.jl();
                    }
                }
            };
            mp mpVar = this.f19367w;
            if (mpVar == null || mpVar.fi() == null || this.f19367w.fi().jx() == null || this.f19367w.fi().jx().optInt("use_gnd_prefetch", 0) == 1) {
                if (com.byazt.gsd.l.hp().hp(this.f19367w, this.di)) {
                    return;
                }
            }
            mp mpVar2 = this.f19367w;
            com.byazt.cm.l.hp(mpVar2, jSONObjectEl, this.di, mpVar2.db());
        } catch (Exception e2) {
            if (this.f19361n.get() > 0) {
                this.f19361n.get();
                this.f19361n.decrementAndGet();
                jl();
            } else {
                this.f19358j.hp(-3, e2.getMessage());
                com.byazt.tk.hp hpVar = this.f19355a;
                if (hpVar != null) {
                    hpVar.hp(-3);
                }
            }
        }
    }

    @Override // com.byazt.qk.gu
    public void jx(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void l(int i2) {
    }

    @Override // com.byazt.dy.hp
    public void v() {
        super.v();
        com.byazt.gsd.l.hp().l(this.f19367w);
        vv();
    }

    @Override // com.byazt.qk.gu
    public void w(int i2) {
    }

    public void a(int i2) {
        if (i2 == 0) {
            if (this.wv.get()) {
                return;
            }
            this.f24555b.sendEmptyMessageDelayed(10081, 5000L);
            return;
        }
        if (this.wv.get()) {
            com.byazt.dy.l lVar = this.ec;
            if (lVar != null) {
                lVar.l();
            }
            this.wv.set(false);
        }
        this.f24555b.removeMessages(10081);
        this.f24555b.removeMessages(10082);
    }

    @Override // com.byazt.qk.gu
    public void hp(float f2, float f3, float f4, float f5, int i2) {
    }

    @Override // com.byazt.dy.j
    public void j(com.byazt.xs.jx<View> jxVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@NonNull List<mp> list) {
        this.f19365u = list.size();
        this.xs = list.size();
        this.vv = k();
        mp mpVar = list.get(0);
        if (mpVar != null) {
            this.f19359k = mpVar.el();
        }
        this.f19363q = hp(list);
        w.hp(this.hp, new w.hp() { // from class: com.byazt.qb.l.2
            @Override // com.byazt.dy.w.hp
            public void hp(JSONObject jSONObject) throws JSONException {
                if (jSONObject != null) {
                    l lVar = l.this;
                    lVar.hp(jSONObject, (List<com.byazt.eo.jx>) lVar.f19363q);
                } else {
                    l.this.f19358j.hp(-1, "template info load fail");
                    if (l.this.f19355a != null) {
                        l.this.f19355a.hp(-1);
                    }
                }
            }
        });
    }

    @Override // com.byazt.qk.gu
    public void hp(int i2, String str) {
    }

    public void jx(boolean z2) {
        this.cx = z2;
        com.byazt.vp.l lVar = this.ns;
        if (lVar != null) {
            lVar.j(z2);
        }
    }

    @Override // com.byazt.dy.j
    public void w(com.byazt.xs.jx<View> jxVar) {
        JSONObject jSONObjectE;
        if (jxVar == null || (jSONObjectE = jxVar.e()) == null) {
            return;
        }
        vv.l lVarJ = jxVar.j("video_".concat(String.valueOf(jSONObjectE.optInt("image_mode"))));
        if (lVarJ instanceof com.byazt.vp.l) {
            com.byazt.vp.l lVar = (com.byazt.vp.l) lVarJ;
            this.ns = lVar;
            lVar.j(this.cx);
            this.ns.su();
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(mp mpVar) {
    }

    @Override // com.byazt.qk.gu
    public void hp(boolean z2) {
    }

    @Override // com.byazt.dy.jx
    public void jx(com.byazt.xs.jx jxVar) throws JSONException {
        mp mpVarHp;
        if (jxVar == null) {
            return;
        }
        if (jxVar.e().has("ugen_sub_meta")) {
            mpVarHp = com.byazt.jz.hp.hp(jxVar.e().optJSONObject("ugen_sub_meta"));
        } else {
            mpVarHp = com.byazt.jz.hp.hp(jxVar.e());
        }
        if (mpVarHp != null) {
            hp(mpVarHp, jxVar);
        }
    }

    @Override // com.byazt.dy.j
    public void hp(int i2, int i3) {
        if (i3 > 0) {
            this.f19357e.set(1);
        }
    }

    @Override // com.byazt.dy.j
    public void a(com.byazt.xs.jx<View> jxVar) {
        JSONObject jSONObjectE;
        if (jxVar == null || (jSONObjectE = jxVar.e()) == null) {
            return;
        }
        vv.l lVarJ = jxVar.j("video_".concat(String.valueOf(jSONObjectE.optInt("image_mode"))));
        if (lVarJ instanceof com.byazt.vp.l) {
            ((com.byazt.vp.l) lVarJ).an();
        }
    }

    @Override // com.byazt.dy.j
    public void hp(RecyclerView recyclerView, int i2) {
        if (e.l(this.f19367w)) {
            a(i2);
        }
    }

    @Override // com.byazt.dy.j
    public void hp(com.byazt.xs.jx jxVar, int i2, View view, com.byazt.eo.jx jxVar2) throws JSONException {
        if (jxVar2 == null || jxVar2.hp() == null) {
            return;
        }
        int iHashCode = jxVar2.hp().hashCode();
        if (this.gu.get(Integer.valueOf(iHashCode)) != null && this.gu.containsKey(Integer.valueOf(iHashCode)) && this.gu.get(Integer.valueOf(iHashCode)).booleanValue()) {
            return;
        }
        hp(jxVar2.hp());
        if (i2 == this.vv) {
            hp(jxVar);
        }
        this.gu.put(Integer.valueOf(iHashCode), Boolean.TRUE);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("is_slide", 1);
        } catch (JSONException unused) {
        }
        if (this.f19357e.get() == 1) {
            com.byazt.jdb.j.hp(this.f19367w, this.jl, "ugeno_coin_eCommerce_is_slide", jSONObject);
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(int i2) {
        com.byazt.vp.l lVar = this.ns;
        if (lVar == null) {
            u.l("BasePageInflater", "onChangeVideoState,mVideoComponent is null !!!!!!!!!!!!");
        } else if (i2 == 2) {
            lVar.qu();
        } else if (i2 == 3) {
            lVar.rv();
        }
    }

    public void hp(String str) {
        ViewGroup viewGroup = this.jx;
        if (viewGroup == null || !viewGroup.isShown()) {
            return;
        }
        hq.l(this.f19360l, str, 0, 49, 0, 60);
    }
}
