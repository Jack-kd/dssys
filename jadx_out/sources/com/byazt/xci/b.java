package com.byazt.xci;

import android.util.SparseArray;
import com.byazt.go.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 157})
/* loaded from: classes3.dex */
public class b implements com.byazt.wkx.jx {

    /* renamed from: a, reason: collision with root package name */
    public final long f27195a;

    /* renamed from: e, reason: collision with root package name */
    public final int f27196e;
    public final int eb;
    public int ec;
    public final String gu;
    public final float hp;

    /* renamed from: j, reason: collision with root package name */
    public final float f27197j;
    public final String jl;
    public final float jx;

    /* renamed from: k, reason: collision with root package name */
    public final String f27198k;

    /* renamed from: l, reason: collision with root package name */
    public final float f27199l;

    /* renamed from: q, reason: collision with root package name */
    public final int f27200q;

    /* renamed from: s, reason: collision with root package name */
    public final int f27201s;
    public JSONObject sz;

    /* renamed from: u, reason: collision with root package name */
    public final byte f27202u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f27203v;
    public String vv;

    /* renamed from: w, reason: collision with root package name */
    public final long f27204w;
    public SparseArray<j.hp> xs;
    public final String zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 232})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public float f27205a;

        /* renamed from: e, reason: collision with root package name */
        public int f27206e;
        public float eb;
        public int gu;

        /* renamed from: j, reason: collision with root package name */
        public float f27207j;
        public String jl;
        public long jx;

        /* renamed from: k, reason: collision with root package name */
        public String f27208k;

        /* renamed from: l, reason: collision with root package name */
        public long f27209l;

        /* renamed from: q, reason: collision with root package name */
        public int f27210q;

        /* renamed from: s, reason: collision with root package name */
        public int f27211s;

        /* renamed from: u, reason: collision with root package name */
        public boolean f27212u;

        /* renamed from: v, reason: collision with root package name */
        public String f27213v;
        public String vv;

        /* renamed from: w, reason: collision with root package name */
        public float f27214w;
        public JSONObject xs;
        public String zy;
        public SparseArray<j.hp> hp = new SparseArray<>();
        public int ec = -1;
        public byte sz = 0;

        public hp hp(byte b3) {
            this.sz = b3;
            return this;
        }

        public hp j(float f2) {
            this.eb = f2;
            return this;
        }

        public hp jx(float f2) {
            this.f27205a = f2;
            return this;
        }

        public hp l(long j2) {
            this.jx = j2;
            return this;
        }

        public hp w(String str) {
            this.vv = str;
            return this;
        }

        public hp hp(boolean z2) {
            this.f27212u = z2;
            return this;
        }

        public hp j(int i2) {
            this.gu = i2;
            return this;
        }

        public hp jx(int i2) {
            this.f27206e = i2;
            return this;
        }

        public hp l(float f2) {
            this.f27214w = f2;
            return this;
        }

        public hp w(int i2) {
            this.ec = i2;
            return this;
        }

        public hp hp(long j2) {
            this.f27209l = j2;
            return this;
        }

        public hp j(String str) {
            this.f27213v = str;
            return this;
        }

        public hp jx(String str) {
            this.f27208k = str;
            return this;
        }

        public hp l(int i2) {
            this.f27210q = i2;
            return this;
        }

        public hp hp(float f2) {
            this.f27207j = f2;
            return this;
        }

        public hp l(String str) {
            this.zy = str;
            return this;
        }

        public hp hp(int i2) {
            this.f27211s = i2;
            return this;
        }

        public hp hp(String str) {
            this.jl = str;
            return this;
        }

        public hp hp(SparseArray<j.hp> sparseArray) {
            this.hp = sparseArray;
            return this;
        }

        public hp hp(JSONObject jSONObject) {
            this.xs = jSONObject;
            return this;
        }

        public b hp() {
            return new b(this);
        }
    }

    public JSONObject hp() {
        if (this.sz == null) {
            this.sz = new JSONObject();
        }
        return this.sz;
    }

    private b(hp hpVar) {
        this.ec = -1;
        this.hp = hpVar.eb;
        this.f27199l = hpVar.f27205a;
        this.jx = hpVar.f27214w;
        this.f27197j = hpVar.f27207j;
        this.f27204w = hpVar.jx;
        this.f27195a = hpVar.f27209l;
        this.eb = hpVar.f27211s;
        this.f27201s = hpVar.f27210q;
        this.f27200q = hpVar.f27206e;
        this.f27196e = hpVar.gu;
        this.gu = hpVar.jl;
        this.xs = hpVar.hp;
        this.f27203v = hpVar.f27212u;
        this.sz = hpVar.xs;
        this.jl = hpVar.zy;
        this.zy = hpVar.f27208k;
        this.f27198k = hpVar.f27213v;
        this.vv = hpVar.vv;
        this.ec = hpVar.ec;
        this.f27202u = hpVar.sz;
    }
}
