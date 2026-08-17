package com.byazt.vp;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.su.jx;
import com.byazt.tw.j;
import com.byazt.um.eb;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xs.jx;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 76, 34})
/* loaded from: classes3.dex */
public class l extends jx<NativeVideoView> {
    public mp ad;
    public hp db;
    public String gb;

    /* renamed from: h, reason: collision with root package name */
    public j f26616h;
    public boolean hp;
    public String pg;
    public String xv;

    /* renamed from: z, reason: collision with root package name */
    public boolean f26617z;

    public l(Context context) {
        super(context);
        this.f26617z = false;
    }

    private void rk() {
        if (!this.hp) {
            this.ad = new mp();
            this.f26616h = new j();
            return;
        }
        if (!TextUtils.isEmpty(this.pg)) {
            try {
                this.ad = com.byazt.jz.hp.hp(new JSONObject(this.pg));
                this.pg = null;
            } catch (JSONException unused) {
            }
        }
        mp mpVar = this.ad;
        if (mpVar == null) {
            this.ad = new mp();
            this.f26616h = new j();
            return;
        }
        j jVarV = df.v(mpVar);
        this.f26616h = jVarV;
        if (jVarV == null) {
            this.f26616h = new j();
        }
    }

    public void an() {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((NativeVideoView) t2).w();
            ((NativeVideoView) this.f27788w).hp(this.xv);
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public NativeVideoView hp() {
        NativeVideoView nativeVideoView = new NativeVideoView(this.f27777l);
        nativeVideoView.hp(this);
        return nativeVideoView;
    }

    public boolean fi() {
        eb ebVarXs;
        T t2 = this.f27788w;
        if (t2 == 0 || ((NativeVideoView) t2).getNativeVideoController() == null || (ebVarXs = ((NativeVideoView) this.f27788w).getNativeVideoController().xs()) == null) {
            return false;
        }
        return ebVarXs.isCompleted();
    }

    public void nr() {
        if (fi()) {
            T t2 = this.f27788w;
            if (t2 != 0) {
                ((NativeVideoView) t2).ec();
                return;
            }
            return;
        }
        if (pc()) {
            qu();
        } else {
            rv();
        }
    }

    public boolean pc() {
        eb ebVarXs;
        T t2 = this.f27788w;
        if (t2 == 0 || ((NativeVideoView) t2).getNativeVideoController() == null || (ebVarXs = ((NativeVideoView) this.f27788w).getNativeVideoController().xs()) == null) {
            return false;
        }
        return ebVarXs.isPlaying();
    }

    public void qu() {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((NativeVideoView) t2).s();
            if (this.hp) {
                ((NativeVideoView) this.f27788w).hp(true, false);
            } else {
                ((NativeVideoView) this.f27788w).hp(this.xv);
            }
        }
    }

    public void rv() {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((NativeVideoView) t2).S_();
        }
    }

    public boolean s() {
        T t2 = this.f27788w;
        return (t2 == 0 || ((NativeVideoView) t2).getNativeVideoController() == null) ? this.f26617z : ((NativeVideoView) this.f27788w).getNativeVideoController().ec();
    }

    public void su() {
        hp((com.byazt.nc.hp) null);
    }

    public void j(boolean z2) {
        this.f26617z = z2;
        T t2 = this.f27788w;
        if (t2 == 0 || ((NativeVideoView) t2).getNativeVideoController() == null) {
            return;
        }
        ((NativeVideoView) this.f27788w).getNativeVideoController().l(z2);
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        rk();
        this.f26616h.setVideo_url(this.gb);
        this.f26616h.setResolution(this.zy + "x" + this.f27776k);
        this.f26616h.setCover_url(this.xv);
        this.ad.hp(this.f26616h);
        ((NativeVideoView) this.f27788w).setMaterialMeta(this.ad);
        ((NativeVideoView) this.f27788w).setIsAutoPlay(true);
        ((NativeVideoView) this.f27788w).setIsQuiet(this.f26617z);
        ((NativeVideoView) this.f27788w).setVisibility(0);
        ((NativeVideoView) this.f27788w).setEnableAutoCheck(false);
        ((NativeVideoView) this.f27788w).hp(this.f27777l, 25, this.xv);
        ((NativeVideoView) this.f27788w).hp(0L, true, false);
        ((NativeVideoView) this.f27788w).hp(this.xv);
        com.byazt.su.jx nativeVideoController = ((NativeVideoView) this.f27788w).getNativeVideoController();
        if (nativeVideoController != null) {
            hp hpVar = new hp();
            this.db = hpVar;
            nativeVideoController.hp(hpVar);
        }
    }

    public void w(boolean z2) {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((NativeVideoView) t2).setNeedNativeVideoPlayBtnVisible(z2);
        }
    }

    public void hp(com.byazt.nc.hp hpVar) {
        mp mpVar;
        if (e() != null && (mpVar = this.ad) != null) {
            if (mpVar.hy() == 0) {
                int iOptInt = e().optInt("image_mode");
                this.ad.mp(iOptInt);
                this.ad.hp(new ms(e()));
                if (iOptInt == 166) {
                    this.ad.rv(-2);
                    ((NativeVideoView) this.f27788w).setPlayerType(-2);
                }
            }
        } else {
            ((NativeVideoView) this.f27788w).setPlayerType(0);
        }
        if (hpVar != null) {
            com.byazt.su.jx nativeVideoController = ((NativeVideoView) this.f27788w).getNativeVideoController();
            nativeVideoController.j(hpVar.f23531j);
            nativeVideoController.l(hpVar.f23533s);
            if (hpVar.hp) {
                nativeVideoController.l(0L);
            } else {
                nativeVideoController.l(hpVar.eb);
            }
        }
        ((NativeVideoView) this.f27788w).j();
    }

    @com.byazt.kj.hp(hp = {0, 1, 76, 123})
    public class hp implements jx.hp {
        public jx.hp hp;

        private hp() {
        }

        @Override // com.byazt.su.jx.hp
        public void hp(long j2, int i2) {
            if (l.this.hp) {
                if (l.this.f27788w != null) {
                    ((NativeVideoView) l.this.f27788w).setComplete(true);
                }
                if (l.this.f27788w != null) {
                    ((NativeVideoView) l.this.f27788w).hp(true, true);
                }
            }
            jx.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(j2, i2);
            }
        }

        @Override // com.byazt.su.jx.hp
        public void l(long j2, int i2) {
            jx.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.l(j2, i2);
            }
        }

        @Override // com.byazt.su.jx.hp
        public void hp() {
            jx.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp();
            }
        }

        @Override // com.byazt.su.jx.hp
        public void hp(long j2, long j3) {
            jx.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(j2, j3);
            }
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "coverSrc":
                this.xv = str2;
                break;
            case "src":
                this.gb = str2;
                break;
            case "isLp":
                try {
                    boolean zBooleanValue = Boolean.valueOf(str2).booleanValue();
                    this.hp = zBooleanValue;
                    T t2 = this.f27788w;
                    if (t2 != 0) {
                        ((NativeVideoView) t2).setLp(zBooleanValue);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case "mate":
                this.pg = str2;
                break;
        }
    }

    public void hp(Map<String, Object> map) {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((NativeVideoView) t2).setExtraMap(map);
        }
    }
}
