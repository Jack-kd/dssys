package com.byazt.uah;

import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1753, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public long f26106a;
    public JSONObject eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f26107j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f26108l;

    /* renamed from: w, reason: collision with root package name */
    public int f26109w;

    @com.byazt.kj.hp(hp = {0, 1, 1753, 170})
    /* renamed from: com.byazt.uah.hp$hp, reason: collision with other inner class name */
    public static class C0382hp {

        /* renamed from: a, reason: collision with root package name */
        public long f26110a;
        public JSONObject eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public int f26111j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f26112l;

        /* renamed from: w, reason: collision with root package name */
        public int f26113w;

        public C0382hp hp(String str) {
            this.hp = str;
            return this;
        }

        public C0382hp jx(String str) {
            this.jx = str;
            return this;
        }

        public C0382hp l(String str) {
            this.f26112l = str;
            return this;
        }

        public C0382hp hp(int i2) {
            this.f26111j = i2;
            return this;
        }

        public C0382hp l(int i2) {
            this.f26113w = i2;
            return this;
        }

        public C0382hp hp(long j2) {
            this.f26110a = j2;
            return this;
        }

        public C0382hp hp(JSONObject jSONObject) {
            this.eb = jSONObject;
            return this;
        }

        public hp hp() {
            hp hpVar = new hp();
            hpVar.hp = this.hp;
            hpVar.f26108l = this.f26112l;
            hpVar.jx = this.jx;
            hpVar.f26107j = this.f26111j;
            hpVar.f26109w = this.f26113w;
            hpVar.f26106a = this.f26110a;
            hpVar.eb = this.eb;
            return hpVar;
        }
    }

    public long a() {
        return this.f26106a;
    }

    public JSONObject eb() {
        return this.eb;
    }

    public int j() {
        return this.f26107j;
    }

    public int w() {
        return this.f26109w;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f26108l;
    }

    public String hp() {
        return this.hp;
    }
}
