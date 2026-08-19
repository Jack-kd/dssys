package com.byazt.td;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import com.byazt.ff.s;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.k;
import com.byazt.jz.sz;
import com.byazt.nc.hp;
import com.byazt.po.jx;
import com.byazt.qk.NativeExpressView;
import com.byazt.uid.eb;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public mp f25715a;
    public String eb;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.gog.jx f25719l;

    /* renamed from: s, reason: collision with root package name */
    public String f25721s;

    /* renamed from: w, reason: collision with root package name */
    public TTBaseVideoActivity f25724w;
    public final Map<String, com.byazt.gog.jx> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: j, reason: collision with root package name */
    public final jx f25717j = new jx();
    public View jx = null;

    /* renamed from: q, reason: collision with root package name */
    public long f25720q = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f25716e = 0;
    public long gu = 0;
    public long jl = 0;
    public long zy = 0;

    /* renamed from: k, reason: collision with root package name */
    public long f25718k = 0;

    /* renamed from: u, reason: collision with root package name */
    public boolean f25722u = true;

    /* renamed from: v, reason: collision with root package name */
    public boolean f25723v = false;

    /* renamed from: com.byazt.td.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0369hp {
        void hp(View view, e eVar);

        void hp(String str, JSONObject jSONObject);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE})
    public static class j extends eb {
        public final String hp;

        public j(String str, String str2) {
            super(str);
            this.hp = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                hp.hp(3).hp(this.hp, "recycleRes", 0L, 0L, "", "");
            } catch (Throwable th) {
                u.hp("RewardFullDownloadManager", "executeAppDownloadCallback execute throw Exception : ", th);
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public class jx implements DownloadListener {

        /* renamed from: l, reason: collision with root package name */
        public boolean f25727l = true;

        public jx() {
        }

        public void hp(boolean z2) {
            this.f25727l = z2;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j2) throws JSONException {
            hp(this.f25727l);
            hp.this.hp(str, true);
            hp.this.f25724w.hp(1);
        }
    }

    public interface l {
        void hp(boolean z2);

        void hp(boolean z2, long j2, long j3, String str, String str2);

        void hp(boolean z2, long j2, String str, String str2);

        void hp(boolean z2, String str, String str2);

        void jx(boolean z2, long j2, long j3, String str, String str2);

        void l(boolean z2, long j2, long j3, String str, String str2);
    }

    public hp(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f25724w = tTBaseVideoActivity;
    }

    private void s() {
        mp mpVar = this.f25715a;
        if (mpVar == null || mpVar.q() != 4) {
            return;
        }
        this.f25719l = s.hp(this.f25724w, this.f25715a, this.eb);
    }

    public jx eb() {
        return this.f25717j;
    }

    public void a() {
        com.byazt.gog.jx jxVar = this.f25719l;
        if (jxVar != null) {
            jxVar.jx();
        }
        for (Map.Entry<String, com.byazt.gog.jx> entry : this.hp.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().jx();
            }
        }
        try {
            hp(this.f25721s);
        } catch (Throwable th) {
            u.hp("RewardFullDownloadManager", "remove from ITTAppDownloadListener throw Exception : ", th);
        }
    }

    public void hp(mp mpVar, String str, String str2) {
        if (this.f25723v) {
            return;
        }
        this.f25723v = true;
        this.f25715a = mpVar;
        this.eb = str;
        s();
        this.f25721s = str2;
    }

    public void j() {
        com.byazt.gog.jx jxVar = this.f25719l;
        if (jxVar != null) {
            jxVar.hp((Activity) this.f25724w, false);
            this.f25719l.l();
        }
        for (Map.Entry<String, com.byazt.gog.jx> entry : this.hp.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().l();
            }
        }
    }

    public boolean jx() {
        return this.f25719l != null;
    }

    public com.byazt.gog.jx l() {
        return this.f25719l;
    }

    public void w() {
        for (Map.Entry<String, com.byazt.gog.jx> entry : this.hp.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue();
            }
        }
    }

    public void hp() {
        mp mpVar;
        if (this.f25719l == null && (mpVar = this.f25715a) != null && mpVar.q() == 4) {
            this.f25719l = s.hp(this.f25724w, this.f25715a, this.eb);
        }
    }

    private void hp(String str) {
        com.byazt.uid.w.l(new j("executeMultiProcessAppDownloadCallBack", str), 5);
    }

    public static k hp(int i2) {
        return k.hp.hp(com.byazt.pjz.hp.hp(sz.getContext()).hp(i2));
    }

    public void hp(final l lVar) {
        com.byazt.gog.jx jxVar = this.f25719l;
        if (jxVar == null) {
            return;
        }
        jxVar.hp(new com.byazt.gog.hp() { // from class: com.byazt.td.hp.1
            @Override // com.byazt.gog.hp
            public void hp() {
                boolean z2;
                if (System.currentTimeMillis() - hp.this.f25720q > NativeExpressView.ec) {
                    hp.this.f25720q = System.currentTimeMillis();
                    z2 = true;
                } else {
                    z2 = false;
                }
                l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(z2);
                }
            }

            @Override // com.byazt.gog.hp
            public void jx(long j2, long j3, String str, String str2) {
                boolean z2;
                if (System.currentTimeMillis() - hp.this.jl > NativeExpressView.ec) {
                    hp.this.jl = System.currentTimeMillis();
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z3 = z2;
                l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.jx(z3, j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void l(long j2, long j3, String str, String str2) {
                boolean z2;
                if (System.currentTimeMillis() - hp.this.f25716e > NativeExpressView.ec) {
                    hp.this.f25716e = System.currentTimeMillis();
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z3 = z2;
                l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.l(z3, j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, long j3, String str, String str2) {
                boolean z2;
                if (System.currentTimeMillis() - hp.this.gu > NativeExpressView.ec) {
                    hp.this.gu = System.currentTimeMillis();
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z3 = z2;
                l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(z3, j2, j3, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, String str, String str2) {
                boolean z2;
                if (System.currentTimeMillis() - hp.this.zy > NativeExpressView.ec) {
                    hp.this.zy = System.currentTimeMillis();
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z3 = z2;
                l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(z3, j2, str, str2);
                }
            }

            @Override // com.byazt.gog.hp
            public void hp(String str, String str2) {
                boolean z2;
                if (System.currentTimeMillis() - hp.this.f25718k > NativeExpressView.ec) {
                    hp.this.f25718k = System.currentTimeMillis();
                    z2 = true;
                } else {
                    z2 = false;
                }
                l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp(z2, str, str2);
                }
            }
        });
    }

    public void hp(String str, boolean z2) {
        if (this.hp.containsKey(str)) {
            com.byazt.gog.jx jxVar = this.hp.get(str);
            if (jxVar != null) {
                if (z2) {
                    jxVar.hp(com.byazt.fy.s.hp(this.f25715a));
                }
                if (jxVar instanceof com.byazt.fy.hp) {
                    ((com.byazt.fy.hp) jxVar).s().hp(this.f25722u);
                } else if (jxVar instanceof com.byazt.fy.eb) {
                    ((com.byazt.fy.eb) jxVar).s().hp(this.f25722u);
                }
                jxVar.hp(ky.cx(this.f25715a), false);
                return;
            }
            return;
        }
        com.byazt.gog.jx jxVarHp = s.hp(this.f25724w, str, this.f25715a, this.eb);
        if (z2) {
            jxVarHp.hp(com.byazt.fy.s.hp(this.f25715a));
        }
        if (jxVarHp instanceof com.byazt.fy.hp) {
            ((com.byazt.fy.hp) jxVarHp).s().hp(this.f25722u);
        } else if (jxVarHp instanceof com.byazt.fy.eb) {
            ((com.byazt.fy.eb) jxVarHp).s().hp(this.f25722u);
        }
        this.hp.put(str, jxVarHp);
        jxVarHp.hp(ky.cx(this.f25715a), false);
    }

    public void hp(final InterfaceC0369hp interfaceC0369hp) {
        this.f25719l.hp(1, new jx.hp() { // from class: com.byazt.td.hp.2
            @Override // com.byazt.po.jx.hp
            public boolean hp(int i2, String str, String str2, String str3, Object obj) {
                if (i2 == 1 && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    boolean z2 = str2.equals("rewarded_video") || str2.equals("fullscreen_interstitial_ad");
                    if (z2 && str3.equals("click_start")) {
                        interfaceC0369hp.hp(hp.this.jx, new e());
                        hp.this.jx = null;
                        return true;
                    }
                    if (z2) {
                        str3.getClass();
                        if (str3.equals("click_continue")) {
                            com.byazt.jdb.j.l(hp.this.f25715a, str2, "click_play_continue", (Map<String, Object>) null);
                        } else if (str3.equals("click_pause")) {
                            com.byazt.jdb.j.l(hp.this.f25715a, str2, "click_play_pause", (Map<String, Object>) null);
                            return true;
                        }
                    }
                }
                return true;
            }
        });
    }

    public void hp(View view, InterfaceC0369hp interfaceC0369hp, e eVar) {
        if (this.f25719l != null && view != null) {
            if (view.getId() == 2114387609) {
                interfaceC0369hp.hp("click_play_star_level", (JSONObject) null);
                return;
            }
            if (view.getId() == 2114387630) {
                interfaceC0369hp.hp("click_play_star_nums", (JSONObject) null);
                return;
            } else if (view.getId() == 2114387875) {
                interfaceC0369hp.hp("click_play_source", (JSONObject) null);
                return;
            } else {
                if (view.getId() == 2114387793) {
                    interfaceC0369hp.hp("click_play_logo", (JSONObject) null);
                    return;
                }
                return;
            }
        }
        interfaceC0369hp.hp(view, eVar);
    }

    public void hp(hp.InterfaceC0317hp interfaceC0317hp) {
        com.byazt.gog.jx jxVar = this.f25719l;
        if (jxVar != null) {
            jxVar.hp(interfaceC0317hp);
        }
    }
}
