package com.byazt.xci;

import android.util.SparseArray;
import com.byazt.go.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 150})
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public final float f27411a;

    /* renamed from: b, reason: collision with root package name */
    public int f27412b;
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public byte f27413d;
    public String di;

    /* renamed from: e, reason: collision with root package name */
    public final long f27414e;
    public final float eb;
    public final String ec;
    public final int gu;
    public final int[] hp;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f27415j;
    public final int jl;
    public final int[] jx;

    /* renamed from: k, reason: collision with root package name */
    public final float f27416k;

    /* renamed from: l, reason: collision with root package name */
    public final int[] f27417l;

    /* renamed from: n, reason: collision with root package name */
    public final String f27418n;
    public SparseArray<j.hp> ns;

    /* renamed from: o, reason: collision with root package name */
    public int f27419o;

    /* renamed from: q, reason: collision with root package name */
    public final long f27420q;

    /* renamed from: s, reason: collision with root package name */
    public final float f27421s;
    public final String sz;

    /* renamed from: u, reason: collision with root package name */
    public final float f27422u;
    public final boolean ud;

    /* renamed from: v, reason: collision with root package name */
    public final int f27423v;
    public final String vv;

    /* renamed from: w, reason: collision with root package name */
    public final float f27424w;
    public byte wv;
    public final int xs;
    public final int zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 3})
    public static class hp {
        public String di;

        /* renamed from: e, reason: collision with root package name */
        public int[] f27428e;
        public String ec;
        public int[] gu;
        public float hp;
        public int[] jl;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public int f27431l;

        /* renamed from: n, reason: collision with root package name */
        public String f27432n;
        public String ns;
        public String sz;
        public int vv;
        public SparseArray<j.hp> xs;
        public int[] zy;

        /* renamed from: j, reason: collision with root package name */
        public long f27429j = -1;

        /* renamed from: w, reason: collision with root package name */
        public long f27438w = -1;

        /* renamed from: a, reason: collision with root package name */
        public float f27425a = -1.0f;
        public float eb = -1.0f;

        /* renamed from: s, reason: collision with root package name */
        public float f27435s = -1.0f;

        /* renamed from: q, reason: collision with root package name */
        public float f27434q = -1.0f;

        /* renamed from: k, reason: collision with root package name */
        public int f27430k = -1;

        /* renamed from: v, reason: collision with root package name */
        public int f27437v = -1;

        /* renamed from: u, reason: collision with root package name */
        public int f27436u = -1024;
        public int cx = -1;

        /* renamed from: b, reason: collision with root package name */
        public int f27426b = -1;

        /* renamed from: o, reason: collision with root package name */
        public int f27433o = -1;

        /* renamed from: d, reason: collision with root package name */
        public boolean f27427d = false;
        public byte wv = 0;
        public byte hq = -1;
        public int ud = Integer.MIN_VALUE;

        public hp a(float f2) {
            this.f27434q = f2;
            return this;
        }

        public hp eb(int i2) {
            this.cx = i2;
            return this;
        }

        public hp hp(int i2) {
            this.ud = i2;
            return this;
        }

        public hp j(float f2) {
            this.eb = f2;
            return this;
        }

        public hp jx(int i2) {
            this.vv = i2;
            return this;
        }

        public hp l(byte b3) {
            this.wv = b3;
            return this;
        }

        public hp q(int i2) {
            this.f27433o = i2;
            return this;
        }

        public hp s(int i2) {
            this.f27426b = i2;
            return this;
        }

        public hp w(float f2) {
            this.f27435s = f2;
            return this;
        }

        public hp a(int i2) {
            this.f27436u = i2;
            return this;
        }

        public hp hp(byte b3) {
            this.hq = b3;
            return this;
        }

        public hp j(int[] iArr) {
            this.zy = iArr;
            return this;
        }

        public hp jx(float f2) {
            this.f27425a = f2;
            return this;
        }

        public hp l(int i2) {
            this.f27431l = i2;
            return this;
        }

        public hp w(int i2) {
            this.f27437v = i2;
            return this;
        }

        public hp hp(float f2) {
            this.hp = f2;
            return this;
        }

        public hp j(int i2) {
            this.f27430k = i2;
            return this;
        }

        public hp jx(int[] iArr) {
            this.jl = iArr;
            return this;
        }

        public hp l(float f2) {
            this.jx = f2;
            return this;
        }

        public hp w(String str) {
            this.di = str;
            return this;
        }

        public hp hp(SparseArray<j.hp> sparseArray) {
            this.xs = sparseArray;
            return this;
        }

        public hp j(String str) {
            this.ns = str;
            return this;
        }

        public hp jx(String str) {
            this.f27432n = str;
            return this;
        }

        public hp l(long j2) {
            this.f27438w = j2;
            return this;
        }

        public hp hp(long j2) {
            this.f27429j = j2;
            return this;
        }

        public hp l(int[] iArr) {
            this.gu = iArr;
            return this;
        }

        public hp hp(int[] iArr) {
            this.f27428e = iArr;
            return this;
        }

        public hp l(String str) {
            this.sz = str;
            return this;
        }

        public hp hp(String str) {
            this.ec = str;
            return this;
        }

        public hp hp(boolean z2) {
            this.f27427d = z2;
            return this;
        }

        public q hp() {
            return new q(this);
        }
    }

    public JSONObject hp(mp mpVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = this.hp;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.hp[1]));
            }
            int[] iArr2 = this.f27417l;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.f27417l[1]));
            }
            int[] iArr3 = this.jx;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.jx[1]));
            }
            int[] iArr4 = this.f27415j;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.f27415j[1]));
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (this.ns != null) {
                for (int i2 = 0; i2 < this.ns.size(); i2++) {
                    j.hp hpVarValueAt = this.ns.valueAt(i2);
                    if (hpVarValueAt != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.putOpt("force", Double.valueOf(hpVarValueAt.jx)).putOpt("mr", Double.valueOf(hpVarValueAt.f20522l)).putOpt("phase", Integer.valueOf(hpVarValueAt.hp)).putOpt("ts", Long.valueOf(hpVarValueAt.f20521j));
                        jSONArray.put(jSONObject3);
                    }
                }
            }
            jSONObject2.putOpt("ftc", Integer.valueOf(this.xs)).putOpt("info", jSONArray);
            jSONObject.putOpt("down_x", Float.toString(this.f27424w)).putOpt("down_y", Float.toString(this.f27411a)).putOpt("up_x", Float.toString(this.eb)).putOpt("up_y", Float.toString(this.f27421s)).putOpt("down_time", Long.valueOf(this.f27420q)).putOpt("up_time", Long.valueOf(this.f27414e)).putOpt("toolType", Integer.valueOf(this.gu)).putOpt("deviceId", Integer.valueOf(this.jl)).putOpt(com.sigmob.sdk.base.n.f36449l, Integer.valueOf(this.zy)).putOpt("density", Float.valueOf(this.f27416k)).putOpt("densityDpi", Integer.valueOf(this.f27423v)).putOpt("scaleDensity", Float.valueOf(this.f27422u)).putOpt("ft", jSONObject2).putOpt("click_area_type", this.vv).putOpt("areaType", this.ec).putOpt("rectInfo", this.f27418n).putOpt("click_area_id", this.sz);
            int i3 = this.cx;
            if (i3 != -1) {
                jSONObject.putOpt("if_shake", Integer.valueOf(i3));
            }
            int i4 = this.f27412b;
            if (i4 != -1) {
                jSONObject.putOpt("if_twist", Integer.valueOf(i4));
            }
            int i5 = this.f27419o;
            if (i5 != -1) {
                jSONObject.putOpt("dpa_position", Integer.valueOf(i5)).putOpt("dpa_pid", this.di);
            }
            if (this.ud) {
                jSONObject.put("referer", "directDownload");
            }
            jSONObject.putOpt("convert_type", Byte.valueOf(this.f27413d));
            byte b3 = this.wv;
            if (b3 != -1) {
                jSONObject.putOpt("biz_type", Byte.valueOf(b3));
            }
            int i6 = this.hq;
            if (i6 != Integer.MIN_VALUE) {
                jSONObject.putOpt("fail_status", Integer.valueOf(i6));
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private q(hp hpVar) {
        this.f27412b = -1;
        this.f27419o = -1;
        this.wv = (byte) -1;
        this.hq = Integer.MIN_VALUE;
        this.hp = hpVar.gu;
        this.f27417l = hpVar.jl;
        this.f27415j = hpVar.zy;
        this.jx = hpVar.f27428e;
        this.f27424w = hpVar.f27434q;
        this.f27411a = hpVar.f27435s;
        this.eb = hpVar.eb;
        this.f27421s = hpVar.f27425a;
        this.f27420q = hpVar.f27438w;
        this.f27414e = hpVar.f27429j;
        this.gu = hpVar.f27430k;
        this.jl = hpVar.f27437v;
        this.zy = hpVar.f27436u;
        this.f27416k = hpVar.hp;
        this.vv = hpVar.ec;
        this.ec = hpVar.sz;
        this.f27418n = hpVar.ns;
        this.sz = hpVar.f27432n;
        this.f27423v = hpVar.f27431l;
        this.f27422u = hpVar.jx;
        this.xs = hpVar.vv;
        this.ns = hpVar.xs;
        this.cx = hpVar.cx;
        this.f27412b = hpVar.f27426b;
        this.di = hpVar.di;
        this.f27419o = hpVar.f27433o;
        this.ud = hpVar.f27427d;
        this.f27413d = hpVar.wv;
        this.wv = hpVar.hq;
        this.hq = hpVar.ud;
    }
}
