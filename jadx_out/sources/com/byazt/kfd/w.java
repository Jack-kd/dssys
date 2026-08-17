package com.byazt.kfd;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.dnb.s;
import com.byazt.ex.a;
import com.byazt.jdb.q;
import com.byazt.jz.cx;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.ux;
import com.byazt.ymw.hq;
import com.byazt.ymw.l;
import com.byazt.ymw.u;
import com.byazt.yrp.e;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 686, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {
    public static volatile boolean eb = false;

    /* renamed from: a, reason: collision with root package name */
    public ux f22048a;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, Object> f22049e;
    public Toast hp;

    /* renamed from: j, reason: collision with root package name */
    public String f22050j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f22051l;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f22052q;

    /* renamed from: s, reason: collision with root package name */
    public final e f22053s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f22054w;

    public interface hp {
        void hp();

        void hp(com.byazt.ex.hp hpVar);
    }

    @com.byazt.kj.hp(hp = {0, 1, 686, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public class l implements cx.jx<JSONObject> {
        public final hp hp;

        /* renamed from: j, reason: collision with root package name */
        public final Toast f22058j;

        /* renamed from: l, reason: collision with root package name */
        public final ux f22059l;

        public l(hp hpVar, ux uxVar, Toast toast) {
            this.hp = hpVar;
            this.f22059l = uxVar;
            this.f22058j = toast;
        }

        @Override // com.byazt.jz.cx.jx
        public void hp(int i2, String str) {
            this.f22059l.l(0);
            Toast toast = this.f22058j;
            if (toast != null) {
                toast.cancel();
            }
            a aVar = i2 == 606 ? a.f19535a : a.f19540w;
            hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(aVar);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.byazt.jz.cx.jx
        public void hp(JSONObject jSONObject) {
            String strOptString = jSONObject.optString(NativeModel.JSON_KEY_SCHEME);
            if (!TextUtils.isEmpty(strOptString)) {
                w.this.hp(strOptString, this.f22059l, this.hp);
            } else {
                hp(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_AV_POS_GAP, " scheme is null!");
            }
        }
    }

    public w(e eVar, Context context, boolean z2) {
        this.f22053s = eVar;
        this.f22051l = context;
        this.f22052q = z2;
    }

    private void j() {
        s.hp(new Runnable() { // from class: com.byazt.kfd.w.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (w.this.hp != null) {
                        w.this.hp.cancel();
                    }
                    w wVar = w.this;
                    wVar.hp = hq.hp(wVar.f22051l, "即将跳转微信...", 1, 17, 0, 0);
                    w.this.hp.show();
                } catch (Throwable th) {
                    u.hp("toast error:" + th.getMessage());
                }
            }
        });
    }

    private int jx() {
        ux uxVar = this.f22048a;
        if (uxVar == null) {
            return 0;
        }
        if (uxVar.a() == 1 && j.jx().hp()) {
            return TextUtils.isEmpty(this.f22048a.eb()) ? 0 : 1;
        }
        return 2;
    }

    public w l(boolean z2) {
        this.f22054w = z2;
        return this;
    }

    private boolean l(hp hpVar) {
        int iJx;
        int iL = this.f22048a.l();
        if (iL != 1) {
            if (iL != 2 || (iJx = jx()) == 0) {
                return false;
            }
            if (iJx == 1) {
                hp(hpVar, this.f22048a);
                return true;
            }
            if (TextUtils.isEmpty(this.f22048a.hp())) {
                return false;
            }
            hp(hpVar, this.f22048a, 2000L);
            return true;
        }
        if (this.f22054w) {
            if (TextUtils.isEmpty(this.f22048a.s())) {
                return true;
            }
            if (jx() == 1) {
                hp(hpVar, this.f22048a);
                return true;
            }
        }
        return false;
    }

    public static boolean hp() {
        return eb;
    }

    public static void hp(boolean z2) {
        eb = z2;
    }

    public w hp(String str) {
        this.f22050j = str;
        return this;
    }

    public w hp(int i2) {
        this.jx = i2;
        return this;
    }

    public w hp(Map<String, Object> map) {
        this.f22049e = map;
        return this;
    }

    public boolean hp(hp hpVar) {
        if (this.f22048a == null) {
            e eVar = this.f22053s;
            this.f22048a = eVar != null ? eVar.A_() : null;
        }
        if (this.f22048a == null) {
            return false;
        }
        if (this.f22052q) {
            e eVar2 = this.f22053s;
            if (eVar2 instanceof com.byazt.yrp.j) {
                return hp(((com.byazt.yrp.j) eVar2).e(), hpVar);
            }
        }
        return l(hpVar);
    }

    public mp l() {
        return com.byazt.rj.jx.hp(this.f22053s, this.f22049e);
    }

    private boolean hp(int i2, hp hpVar) {
        if (i2 == 1) {
            hp(hpVar, this.f22048a);
            return true;
        }
        if (i2 != 2) {
            if (i2 != 3 || !this.f22054w) {
                return false;
            }
            hp(hpVar, this.f22048a);
            return true;
        }
        if (TextUtils.isEmpty(this.f22048a.hp())) {
            return false;
        }
        hp(hpVar, this.f22048a, 2000L);
        return true;
    }

    private void hp(final hp hpVar, ux uxVar) {
        j();
        e eVar = this.f22053s;
        if ((eVar instanceof com.byazt.yrp.j) && !TextUtils.isEmpty(((com.byazt.yrp.j) eVar).eb()) && !TextUtils.isEmpty(((com.byazt.yrp.j) this.f22053s).q())) {
            j jVarJx = j.jx();
            e eVar2 = this.f22053s;
            jVarJx.hp(eVar2, ((com.byazt.yrp.j) eVar2).q(), ((com.byazt.yrp.j) this.f22053s).eb(), hpVar, this.f22050j, this.f22054w, this.f22049e);
        } else {
            sz.hp().hp(uxVar, this.f22053s.s(), this.f22053s.w_(), new l(hpVar, uxVar, this.hp) { // from class: com.byazt.kfd.w.1
                @Override // com.byazt.kfd.w.l, com.byazt.jz.cx.jx
                public void hp(JSONObject jSONObject) {
                    String strOptString = jSONObject.optString("userName");
                    String strOptString2 = jSONObject.optString("path");
                    if (TextUtils.isEmpty(strOptString)) {
                        hp(MediaPlayer.MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN, " userName or path is null!");
                        return;
                    }
                    if (w.this.hp != null) {
                        w.this.hp.cancel();
                    }
                    j.jx().hp(w.this.f22053s, strOptString, strOptString2, hpVar, w.this.f22050j, w.this.f22054w, w.this.f22049e);
                }

                @Override // com.byazt.kfd.w.l, com.byazt.jz.cx.jx
                public void hp(int i2, String str) {
                    a aVar;
                    w.this.f22048a.l(0);
                    if (w.this.hp != null) {
                        w.this.hp.cancel();
                    }
                    if (i2 == 606) {
                        aVar = a.f19536e;
                    } else {
                        aVar = a.f19538q;
                    }
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(aVar);
                    }
                }
            }, 1, 2000L);
        }
    }

    private void hp(hp hpVar, ux uxVar, long j2) {
        j();
        sz.hp().hp(uxVar, this.f22053s.s(), this.f22053s.w_(), new l(hpVar, uxVar, this.hp), 2, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, final ux uxVar, final hp hpVar) {
        Toast toast = this.hp;
        if (toast != null) {
            toast.cancel();
        }
        Uri uri = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        final String strHp = n.l(l()) ? this.f22050j : ky.hp(this.jx);
        HashMap map = new HashMap();
        map.put(com.sigmob.sdk.base.n.f36449l, "WechatClickProcesser");
        map.put(NativeModel.JSON_KEY_SCHEME, ky.hp(str));
        com.byazt.jdb.j.hp(l(), strHp, (Map<String, Object>) map, false);
        com.byazt.ymw.l.hp(this.f22051l, intent, new l.hp() { // from class: com.byazt.kfd.w.3
            @Override // com.byazt.ymw.l.hp
            public void hp() throws JSONException {
                uxVar.l(1);
                com.byazt.jdb.j.hp(w.this.l(), strHp, (Throwable) null, false, true);
                com.byazt.jdb.s.hp().hp(w.this.l(), strHp, false, false, new q.hp() { // from class: com.byazt.kfd.w.3.1
                    @Override // com.byazt.jdb.q.hp
                    public void hp(String str2) {
                    }

                    @Override // com.byazt.jdb.q.hp
                    public void hp(long j2) {
                        hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp(a.f19539s);
                        }
                    }

                    @Override // com.byazt.jdb.q.hp
                    public void hp(boolean z2) {
                        hp hpVar2 = hpVar;
                        if (hpVar2 != null) {
                            hpVar2.hp();
                        }
                    }
                });
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) throws JSONException {
                com.byazt.jdb.j.hp(w.this.l(), strHp, th, false, false);
                uxVar.l(0);
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(a.eb);
                }
            }
        }, TextUtils.equals(d.f21859s, UMModuleRegister.INNER));
    }
}
