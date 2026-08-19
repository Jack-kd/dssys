package com.byazt.ct;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.cm.l;
import com.byazt.ct.l;
import com.byazt.dy.w;
import com.byazt.ff.s;
import com.byazt.jdb.eb;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.ql.u;
import com.byazt.uid.w;
import com.byazt.xci.a;
import com.byazt.xci.df;
import com.byazt.xci.j;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.w;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.sigmob.sdk.base.common.C1244a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 27, 28})
/* loaded from: classes2.dex */
public class hp implements l.hp {

    /* renamed from: a, reason: collision with root package name */
    public eb f18981a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.gog.jx f18982e;
    public Activity eb;
    public JSONObject gu;
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18983j;
    public j jl;
    public com.byazt.tk.hp jx;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.vp.l f18984k;

    /* renamed from: l, reason: collision with root package name */
    public l f18985l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.xs.jx f18986q;

    /* renamed from: s, reason: collision with root package name */
    public ViewGroup f18987s;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.nc.hp f18988u;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.qp.l f18989v;

    /* renamed from: w, reason: collision with root package name */
    public int f18990w;
    public com.byazt.gog.hp xs = new com.byazt.gog.hp() { // from class: com.byazt.ct.hp.1
        @Override // com.byazt.gog.hp
        public void hp() {
        }

        @Override // com.byazt.gog.hp
        public void jx(long j2, long j3, String str, String str2) {
        }

        @Override // com.byazt.gog.hp
        public void l(long j2, long j3, String str, String str2) {
        }

        @Override // com.byazt.gog.hp
        public void hp(long j2, long j3, String str, String str2) {
        }

        @Override // com.byazt.gog.hp
        public void hp(long j2, String str, String str2) {
        }

        @Override // com.byazt.gog.hp
        public void hp(String str, String str2) {
        }
    };
    public String zy;

    public hp(Activity activity, ViewGroup viewGroup, eb ebVar, mp mpVar, String str, int i2, com.byazt.nc.hp hpVar) {
        this.hp = mpVar;
        this.eb = activity;
        this.f18981a = ebVar;
        this.f18987s = viewGroup;
        this.f18983j = str;
        this.f18990w = i2;
        this.f18988u = hpVar;
    }

    private String eb() {
        return ky.sz(this.hp);
    }

    private void q() {
        com.byazt.vp.l lVar = this.f18984k;
        if (lVar != null) {
            lVar.hp(this.f18988u);
        }
    }

    private void s() {
        if (this.f18982e == null) {
            com.byazt.gog.jx jxVarHp = s.hp(this.eb, this.zy, this.hp, this.f18983j);
            this.f18982e = jxVarHp;
            jxVarHp.hp(com.byazt.fy.s.hp(this.hp));
            this.f18982e.hp(this.xs, false);
            this.f18982e.hp(false);
        }
        this.f18982e.hp(this.eb, false);
    }

    public void hp(com.byazt.xs.jx<View> jxVar) {
    }

    private String a() {
        JSONObject jSONObject = this.gu;
        if (jSONObject == null) {
            return eb();
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("download_buttons");
        if (jSONArrayOptJSONArray == null) {
            return eb();
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null) {
            return eb();
        }
        String strOptString = jSONObjectOptJSONObject.optString("url");
        return TextUtils.isEmpty(strOptString) ? eb() : strOptString;
    }

    private void j(final JSONObject jSONObject) {
        if (this.jl != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(this.jl.s());
                jSONObject2.put("is_support_func_desc", "true");
                jSONObject.put("app", jSONObject2);
                jx(jSONObject);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        String strA = a();
        this.zy = strA;
        if (!TextUtils.isEmpty(strA)) {
            w.l(new com.byazt.uid.eb("tt_pl_download_check") { // from class: com.byazt.ct.hp.5
                @Override // java.lang.Runnable
                public void run() {
                    hp hpVar = hp.this;
                    cx<com.byazt.jdb.hp> cxVarHp = sz.hp();
                    hp hpVar2 = hp.this;
                    hpVar.jl = cxVarHp.hp(hpVar2.hp, hpVar2.zy);
                    try {
                        JSONObject jSONObject3 = hp.this.jl != null ? new JSONObject(hp.this.jl.s()) : hp.this.hp.mt() != null ? new JSONObject(hp.this.hp.mt()) : new JSONObject();
                        jSONObject3.put("is_support_func_desc", "true");
                        jSONObject.put("app", jSONObject3);
                        jSONObject3.put("download_url", hp.this.zy);
                        hp.this.jx(jSONObject);
                    } catch (Throwable unused2) {
                    }
                }
            });
            return;
        }
        com.byazt.tk.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp(-4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(final JSONObject jSONObject) {
        com.byazt.dy.w.hp(this.hp.zx(), "lp_" + this.hp.hd(), this.hp.y(), new w.hp() { // from class: com.byazt.ct.hp.3
            @Override // com.byazt.dy.w.hp
            public void hp(JSONObject jSONObject2) throws JSONException {
                if (jSONObject2 != null) {
                    try {
                        jSONObject.put("creative", hp.this.hp.ij());
                        hp.this.hp(jSONObject);
                        hp.this.hp(jSONObject2, jSONObject);
                        return;
                    } catch (JSONException unused) {
                        return;
                    }
                }
                hp.this.f18981a.hp(-1, "template info load fail");
                com.byazt.tk.hp hpVar = hp.this.jx;
                if (hpVar != null) {
                    hpVar.hp(-1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        mp mpVar = this.hp;
        if (mpVar == null || df.e(mpVar) != 200) {
            return;
        }
        com.byazt.xs.jx jxVarJ = this.f18986q.j("video");
        if (jxVarJ instanceof com.byazt.vp.l) {
            com.byazt.vp.l lVar = (com.byazt.vp.l) jxVarJ;
            this.f18984k = lVar;
            lVar.w(true);
            q();
        }
        com.byazt.xs.jx jxVarJ2 = this.f18986q.j(C1244a.f35698z);
        if (jxVarJ2 instanceof com.byazt.qp.l) {
            this.f18989v = (com.byazt.qp.l) jxVarJ2;
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Color.parseColor("#99333333"));
            shapeDrawable.setIntrinsicWidth(xh.jx(this.eb, 28.0f));
            shapeDrawable.setIntrinsicHeight(xh.jx(this.eb, 28.0f));
            this.f18989v.q().setBackground(shapeDrawable);
        }
        com.byazt.nc.hp hpVar = this.f18988u;
        if (hpVar != null) {
            hp(hpVar.f23533s);
        } else {
            hp(true);
        }
    }

    public void hp(JSONObject jSONObject) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject) {
        this.gu = jSONObject;
        j(jSONObject);
    }

    private void l(boolean z2) {
        s();
        com.byazt.gog.jx jxVar = this.f18982e;
        if (jxVar instanceof com.byazt.fy.eb) {
            ((com.byazt.fy.eb) jxVar).s().hp(z2);
        }
    }

    private void jx(boolean z2) {
        l(false);
        j(z2);
    }

    private void jx(mp mpVar) {
        String strQ;
        if (mpVar == null) {
            return;
        }
        a aVarVv = mpVar.vv();
        j jVar = this.jl;
        if (jVar != null) {
            strQ = jVar.w();
        } else {
            strQ = aVarVv == null ? "" : aVarVv.q();
        }
        com.byazt.zn.w.l(this.eb, strQ, mpVar.j(), new w.hp() { // from class: com.byazt.ct.hp.8
            @Override // com.byazt.zn.w.hp
            public void hp() {
                hp.this.j(true);
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }
        });
    }

    private boolean l(u uVar) {
        if (uVar == null) {
            return false;
        }
        View viewQ = uVar.hp().q();
        if (!(viewQ instanceof TextView)) {
            return false;
        }
        CharSequence text = ((TextView) viewQ).getText();
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        return text.toString().contains("下载");
    }

    public void hp(com.byazt.tk.hp hpVar) {
        this.jx = hpVar;
    }

    public void hp() {
        this.f18985l = new l(this.eb, this.f18981a, this.f18983j, this.f18990w);
        if (this.hp.ea() != null) {
            try {
                l(new JSONObject(this.hp.ea().toString()));
                return;
            } catch (JSONException unused) {
                return;
            }
        }
        int iHd = this.hp.hd();
        if (iHd != 5 && iHd != 4) {
            com.byazt.cm.l.hp(this.hp.nd(), new l.hp() { // from class: com.byazt.ct.hp.2
                @Override // com.byazt.cm.l.hp
                public void hp(JSONObject jSONObject) {
                    hp.this.l(jSONObject);
                }

                @Override // com.byazt.cm.l.hp
                public void hp(int i2, String str) throws JSONException {
                    hp.this.f18981a.hp(-3, "ad meta info load fail");
                    com.byazt.tk.hp hpVar = hp.this.jx;
                    if (hpVar != null) {
                        hpVar.hp(-3);
                    }
                }
            });
        } else {
            l(new JSONObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(boolean z2) {
        s();
        com.byazt.go.hp hpVar = new com.byazt.go.hp(this.eb, this.hp, "embeded_ad_landingpage", this.f18990w);
        ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).jx(true);
        ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(true);
        this.f18982e.l(z2);
        this.f18982e.hp(this.hp, false);
        ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(this.f18982e);
        this.f18982e.hp(ky.cx(this.hp), false);
    }

    public void jx() {
        com.byazt.gog.jx jxVar = this.f18982e;
        if (jxVar != null) {
            jxVar.l();
        }
        com.byazt.vp.l lVar = this.f18984k;
        if (lVar != null) {
            lVar.rv();
        }
    }

    private void l(mp mpVar) throws JSONException {
        String strMt;
        if (mpVar == null) {
            return;
        }
        if (this.jl != null) {
            a aVarVv = mpVar.vv();
            if (aVarVv != null) {
                this.jl.hp(aVarVv.j());
                this.jl.hp(aVarVv.jx());
            }
            strMt = this.jl.s();
        } else {
            strMt = mpVar.mt();
        }
        Activity activity = this.eb;
        if (activity instanceof TTNativePageActivity) {
            ((TTNativePageActivity) activity).gu();
        }
        com.byazt.zn.w.hp(this.eb, mpVar.j(), new w.hp() { // from class: com.byazt.ct.hp.7
            @Override // com.byazt.zn.w.hp
            public void hp() {
                hp.this.j(true);
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }
        }, strMt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        this.f18981a.l();
        this.f18985l.hp(this);
        this.f18985l.hp(jSONObject, jSONObject2, new com.byazt.dy.eb() { // from class: com.byazt.ct.hp.4
            @Override // com.byazt.dy.eb
            public void hp(int i2, String str) {
                com.byazt.tk.hp hpVar = hp.this.jx;
                if (hpVar != null) {
                    hpVar.hp(i2);
                }
            }

            @Override // com.byazt.dy.eb
            public void hp(com.byazt.xs.jx<View> jxVar) {
                hp.this.f18986q = jxVar;
                hp.this.f18987s.addView(jxVar.q(), new FrameLayout.LayoutParams(jxVar.lv(), jxVar.r()));
                com.byazt.tk.hp hpVar = hp.this.jx;
                if (hpVar != null) {
                    hpVar.hp(jxVar.q());
                }
                hp.this.w();
                hp.this.hp(jxVar);
            }
        });
    }

    private void hp(boolean z2) {
        com.byazt.vp.l lVar = this.f18984k;
        if (lVar != null) {
            lVar.j(z2);
        }
        com.byazt.qp.l lVar2 = this.f18989v;
        if (lVar2 == null || lVar2.q() == null) {
            return;
        }
        v.hp((Context) this.eb, z2 ? "tt_mute" : "tt_unmute", (ImageView) this.f18989v.q(), MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    public void j() {
        com.byazt.gog.jx jxVar = this.f18982e;
        if (jxVar != null) {
            jxVar.jx();
        }
    }

    @Override // com.byazt.ct.l.hp
    public void hp(u uVar) throws JSONException {
        JSONObject jSONObjectJx;
        com.byazt.vp.l lVar;
        if (uVar == null || uVar.l() != 1 || (jSONObjectJx = uVar.jx()) == null) {
            return;
        }
        String strOptString = jSONObjectJx.optString("type");
        strOptString.getClass();
        switch (strOptString) {
            case "openAppPermission":
                hp(this.hp);
                break;
            case "clickVideo":
                com.byazt.vp.l lVar2 = this.f18984k;
                if (lVar2 != null) {
                    lVar2.nr();
                    break;
                }
                break;
            case "openAppFunctionDesc":
                jx(this.hp);
                break;
            case "downloadEvent":
                l(true);
                j(l(uVar));
                break;
            case "downloadDirect":
                jx(l(uVar));
                break;
            case "muteVideo":
                if (this.f18989v != null && (lVar = this.f18984k) != null) {
                    hp(!lVar.s());
                    break;
                }
                break;
            case "openAppPolicy":
                l(this.hp);
                break;
            case "openInfringement":
                com.byazt.zn.w.hp(this.eb, this.f18983j, this.hp);
                break;
        }
    }

    public void l() {
        com.byazt.vp.l lVar = this.f18984k;
        if (lVar != null) {
            lVar.qu();
        }
    }

    private void hp(mp mpVar) throws JSONException {
        String strMt;
        if (mpVar == null) {
            return;
        }
        if (this.jl != null) {
            a aVarVv = mpVar.vv();
            if (aVarVv != null) {
                this.jl.hp(aVarVv.j());
                this.jl.hp(aVarVv.jx());
            }
            strMt = this.jl.s();
        } else {
            strMt = mpVar.mt();
        }
        Activity activity = this.eb;
        if (activity instanceof TTNativePageActivity) {
            ((TTNativePageActivity) activity).gu();
        }
        com.byazt.zn.w.hp(this.eb, mpVar.j(), strMt, new w.hp() { // from class: com.byazt.ct.hp.6
            @Override // com.byazt.zn.w.hp
            public void hp() {
                hp.this.j(true);
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
                if (hp.this.eb instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) hp.this.eb).jl();
                }
            }
        });
    }
}
