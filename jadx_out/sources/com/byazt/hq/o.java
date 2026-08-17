package com.byazt.hq;

import com.byazt.hq.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.URL;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public wv f20923a;
    public volatile j eb;
    public final ec hp;

    /* renamed from: j, reason: collision with root package name */
    public final d f20924j;
    public final vv jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f20925l;

    /* renamed from: w, reason: collision with root package name */
    public final Object f20926w;

    @com.byazt.kj.hp(hp = {0, 1, 158, 1405})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public wv f20927a;
        public ec hp;

        /* renamed from: j, reason: collision with root package name */
        public d f20928j;
        public vv.hp jx;

        /* renamed from: l, reason: collision with root package name */
        public String f20929l;

        /* renamed from: w, reason: collision with root package name */
        public Object f20930w;

        public hp() {
            this.f20929l = "GET";
            this.jx = new vv.hp();
        }

        public hp delete(d dVar) {
            return hp("DELETE", dVar);
        }

        public hp hp(ec ecVar) {
            if (ecVar == null) {
                throw new NullPointerException("url == null");
            }
            this.hp = ecVar;
            return this;
        }

        public hp l(String str, String str2) {
            this.jx.hp(str, str2);
            return this;
        }

        public hp delete() {
            return delete(com.byazt.ru.jx.f25375j);
        }

        public hp l(String str) {
            this.jx.l(str);
            return this;
        }

        public hp hp(String str) {
            String str2;
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str2 = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str2 = "https:" + str.substring(4);
                } else {
                    str2 = str;
                }
                ec ecVarW = ec.w(str2);
                if (ecVarW != null) {
                    return hp(ecVarW);
                }
                throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str2)));
            }
            throw new NullPointerException("url == null");
        }

        public hp(o oVar) {
            this.hp = oVar.hp;
            this.f20929l = oVar.f20925l;
            this.f20928j = oVar.f20924j;
            this.f20930w = oVar.f20926w;
            this.jx = oVar.jx.l();
            this.f20927a = oVar.f20923a;
        }

        public hp hp(URL url) {
            if (url != null) {
                ec ecVarHp = ec.hp(url);
                if (ecVarHp != null) {
                    return hp(ecVarHp);
                }
                throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(url)));
            }
            throw new NullPointerException("url == null");
        }

        public hp hp(String str, String str2) {
            this.jx.jx(str, str2);
            return this;
        }

        public hp hp(vv vvVar) {
            this.jx = vvVar.l();
            return this;
        }

        public hp hp(j jVar) {
            String string = jVar.toString();
            return string.isEmpty() ? l("Cache-Control") : hp("Cache-Control", string);
        }

        public hp hp(String str, d dVar) {
            if (str != null) {
                if (str.length() == 0) {
                    throw new IllegalArgumentException("method.length() == 0");
                }
                if (dVar != null && !com.byazt.pn.a.jx(str)) {
                    throw new IllegalArgumentException("method " + str + " must not have a request body.");
                }
                if (dVar == null && com.byazt.pn.a.l(str)) {
                    throw new IllegalArgumentException("method " + str + " must have a request body.");
                }
                this.f20929l = str;
                this.f20928j = dVar;
                return this;
            }
            throw new NullPointerException("method == null");
        }

        public hp hp(Object obj) {
            this.f20930w = obj;
            return this;
        }

        public o hp() {
            if (this.hp != null) {
                return new o(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public o(hp hpVar) {
        this.hp = hpVar.hp;
        this.f20925l = hpVar.f20929l;
        this.jx = hpVar.jx.hp();
        this.f20924j = hpVar.f20928j;
        Object obj = hpVar.f20930w;
        this.f20926w = obj == null ? this : obj;
        wv wvVar = hpVar.f20927a;
        if (wvVar != null) {
            this.f20923a = wvVar;
        } else {
            this.f20923a = new wv();
        }
    }

    public hp a() {
        return new hp(this);
    }

    public j eb() {
        j jVar = this.eb;
        if (jVar != null) {
            return jVar;
        }
        j jVarHp = j.hp(this.jx);
        this.eb = jVarHp;
        return jVarHp;
    }

    public ec hp() {
        return this.hp;
    }

    public d j() {
        return this.f20924j;
    }

    public vv jx() {
        return this.jx;
    }

    public String l() {
        return this.f20925l;
    }

    public boolean s() {
        return this.hp.j();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.f20925l);
        sb.append(", url=");
        sb.append(this.hp);
        sb.append(", tag=");
        Object obj = this.f20926w;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }

    public Object w() {
        return this.f20926w;
    }

    public String hp(String str) {
        return this.jx.hp(str);
    }
}
