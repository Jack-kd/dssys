package com.byazt.nw;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.yj.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 94})
/* loaded from: classes3.dex */
public class eb {

    /* renamed from: a, reason: collision with root package name */
    public w f23823a;
    public String eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public JSONObject f23824j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23825l;

    /* renamed from: w, reason: collision with root package name */
    public a f23826w;

    public eb(w wVar) {
        this.f23823a = wVar;
        this.hp = wVar.hp();
        this.f23825l = wVar.l();
        this.jx = wVar.jx();
        this.f23824j = wVar.w().rk();
        this.eb = wVar.j();
        if (com.byazt.wkx.j.l() == 1) {
            this.f23826w = wVar.eb();
        } else {
            this.f23826w = wVar.w();
        }
        if (com.byazt.wkx.j.hp()) {
            this.f23826w = wVar.w();
        }
    }

    private boolean df() {
        if (com.byazt.wkx.j.hp()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.f23825l) && this.f23825l.contains("adx:")) || gu.l();
    }

    private boolean zb() {
        return (com.byazt.wkx.j.hp() && (this.f23823a.getType().contains("logo-union") || this.f23823a.getType().contains("logounion") || this.f23823a.getType().contains("logoad"))) || "logo-union".equals(this.f23823a.getType()) || "logounion".equals(this.f23823a.getType()) || "logoad".equals(this.f23823a.getType());
    }

    public String a() {
        return this.hp == 0 ? !TextUtils.isEmpty(this.f23825l) ? this.f23825l : this.f23824j.optString(com.byazt.sq.s.j(com.byazt.wkx.j.getContext())) : "";
    }

    public int an() {
        return this.f23826w.lv();
    }

    public int as() {
        return this.f23826w.gd();
    }

    public String b() {
        return this.f23826w.xh();
    }

    public boolean bu() {
        return this.f23826w.vt();
    }

    public int cx() {
        return this.f23826w.m();
    }

    public int d() {
        String strXh = this.f23826w.xh();
        if ("skip-with-time-skip-btn".equals(this.f23823a.getType()) || "skip".equals(this.f23823a.getType()) || TextUtils.equals("skip-with-countdowns-skip-btn", this.f23823a.getType())) {
            return 6;
        }
        if (!"skip-with-time-countdown".equals(this.f23823a.getType()) && !"skip-with-time".equals(this.f23823a.getType())) {
            if (this.hp == 10 && TextUtils.equals(this.f23826w.ms(), "click")) {
                return 5;
            }
            if (zb() && df()) {
                return 0;
            }
            if (zb()) {
                return 7;
            }
            if ("feedback-dislike".equals(this.f23823a.getType())) {
                return 3;
            }
            if (!TextUtils.isEmpty(strXh) && !strXh.equals(com.baidu.mobads.sdk.internal.a.f10877a)) {
                if (strXh.equals("video") || (this.f23823a.hp() == 7 && TextUtils.equals(strXh, PrerollVideoResponse.NORMAL))) {
                    return (com.byazt.wkx.j.hp() && this.f23823a.w() != null && this.f23823a.w().jb()) ? 11 : 4;
                }
                if (strXh.equals(PrerollVideoResponse.NORMAL)) {
                    return 1;
                }
                return (strXh.equals("creative") || "slide".equals(this.f23826w.ms())) ? 2 : 0;
            }
        }
        return 0;
    }

    public String di() {
        return this.f23826w.pf();
    }

    public int dy() {
        return this.f23826w.w();
    }

    public String e() {
        int i2 = this.hp;
        return (i2 == 2 || i2 == 13) ? this.f23825l : "";
    }

    public boolean ea() {
        return this.f23826w.zy();
    }

    public int eb() {
        return hp(this.f23826w.ns());
    }

    public int ec() {
        return this.f23826w.qa();
    }

    public int f() {
        return this.f23826w.db();
    }

    public double fi() {
        return this.f23826w.pu();
    }

    public int gd() {
        return this.f23826w.c();
    }

    public String gu() {
        int i2 = this.hp;
        return (i2 == 1 || i2 == 29) ? this.f23825l : "";
    }

    public boolean hd() {
        return this.f23826w.gb();
    }

    public int hp() {
        return (int) this.f23826w.k();
    }

    public double hq() {
        return this.f23826w.s();
    }

    public int j() {
        return (int) this.f23826w.u();
    }

    public boolean jd() {
        return this.f23826w.gb();
    }

    public String jl() {
        return this.eb;
    }

    public int jx() {
        return (int) this.f23826w.v();
    }

    public double k() {
        return this.f23826w.ec();
    }

    public String kg() {
        return this.f23826w.ky();
    }

    public String ky() {
        return this.f23826w.ms();
    }

    public int l() {
        return (int) this.f23826w.xs();
    }

    public int lv() {
        return this.f23826w.j();
    }

    public int m() {
        return this.f23826w.eb();
    }

    public boolean mp() {
        return this.f23826w.ku();
    }

    public int ms() {
        return this.f23826w.yj();
    }

    public String n() {
        return this.f23826w.b();
    }

    public int nd() {
        return this.f23826w.df();
    }

    public int nr() {
        return this.f23826w.pg();
    }

    public boolean ns() {
        return this.f23826w.mp();
    }

    public int nu() {
        return this.f23826w.l();
    }

    public long o() {
        return this.f23826w.ti();
    }

    public double pc() {
        return this.f23826w.r();
    }

    public String pu() {
        return this.f23826w.e();
    }

    public int q() {
        int iS = s();
        if (iS == 4) {
            return 17;
        }
        return iS == 3 ? GravityCompat.END : GravityCompat.START;
    }

    public String qh() {
        return this.f23826w.di();
    }

    public int qu() {
        return this.f23826w.dy();
    }

    public int r() {
        return this.f23826w.q();
    }

    public String rk() {
        return this.f23826w.gy();
    }

    public boolean ru() {
        return this.f23826w.pi();
    }

    public String rv() {
        return this.f23826w.ud();
    }

    public int rz() {
        return this.f23826w.ov();
    }

    public int s() {
        String strN = this.f23826w.n();
        if (ScrollClickView.DIR_LEFT.equals(strN)) {
            return 17;
        }
        if ("center".equals(strN)) {
            return 4;
        }
        return ScrollClickView.DIR_RIGHT.equals(strN) ? 3 : 2;
    }

    public boolean su() {
        return this.f23826w.nu();
    }

    public boolean sz() {
        return this.f23826w.i();
    }

    public String t() {
        return this.hp == 29 ? this.jx : "";
    }

    public int tw() {
        return this.f23826w.ed();
    }

    public int u() {
        return hp(this.f23826w.o());
    }

    public int ud() {
        return this.f23826w.jx();
    }

    public float v() {
        return this.f23826w.gu();
    }

    public String vq() {
        return this.f23826w.fu();
    }

    public int vv() {
        return this.f23826w.gh();
    }

    public float w() {
        return this.f23826w.vv();
    }

    public String wt() {
        return this.f23826w.ux();
    }

    public int wv() {
        return hp(this.f23826w.cx());
    }

    public List<String> x() {
        return this.f23826w.g();
    }

    public boolean xh() {
        return this.f23826w.ru();
    }

    public float xs() {
        return this.f23826w.jl();
    }

    public String y() {
        return this.f23826w.xv();
    }

    public int yj() {
        return this.f23826w.lp();
    }

    public int yr() {
        return this.f23826w.vx();
    }

    public String zx() {
        return this.f23826w.hq();
    }

    public double zy() throws NumberFormatException {
        if (this.hp == 11) {
            try {
                return !com.byazt.wkx.j.hp() ? (int) r0 : Double.parseDouble(this.f23825l);
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public static float[] l(String str) {
        String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        return (strArrSplit == null || strArrSplit.length != 4) ? new float[]{0.0f, 0.0f, 0.0f, 0.0f} : new float[]{Float.parseFloat(strArrSplit[0]), Float.parseFloat(strArrSplit[1]), Float.parseFloat(strArrSplit[2]), Float.parseFloat(strArrSplit[3])};
    }

    public void hp(float f2) {
        this.f23826w.hp(f2);
    }

    public static int hp(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str)) {
            return -16777216;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (str.startsWith("rgba") && (strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null) {
            try {
                if (strArrSplit.length == 4) {
                    return (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2]));
                }
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return -16777216;
    }

    public boolean hp(int i2) {
        w wVar = this.f23823a;
        if (wVar == null) {
            return false;
        }
        if (i2 == 1) {
            this.f23826w = wVar.eb();
        } else {
            this.f23826w = wVar.w();
        }
        return this.f23826w != null;
    }
}
