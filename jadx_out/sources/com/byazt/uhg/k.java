package com.byazt.uhg;

import com.byazt.uhg.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 42})
/* loaded from: classes3.dex */
public abstract class k {
    public jl hp;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public v f26214a;
        public a.hp eb;
        public com.byazt.uhg.hp hp;

        /* renamed from: j, reason: collision with root package name */
        public String f26215j;
        public eb jx;

        /* renamed from: l, reason: collision with root package name */
        public Map<String, List<String>> f26216l;

        /* renamed from: w, reason: collision with root package name */
        public Object f26217w;

        public hp() {
            this.f26216l = new HashMap();
            this.eb = new a.hp();
        }

        public hp hp(com.byazt.uhg.hp hpVar) {
            this.hp = hpVar;
            return this;
        }

        public hp l(String str, String str2) {
            if (!this.f26216l.containsKey(str)) {
                this.f26216l.put(str, new ArrayList());
            }
            this.f26216l.get(str).add(str2);
            return this;
        }

        public hp hp(Object obj) {
            this.f26217w = obj;
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
                eb ebVarJx = eb.jx(str2);
                if (ebVarJx != null) {
                    return hp(ebVarJx);
                }
                throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str2)));
            }
            throw new NullPointerException("url == null");
        }

        public hp(k kVar) {
            this.jx = kVar.l();
            this.f26215j = kVar.jx();
            this.f26216l = kVar.j();
            this.f26217w = kVar.hp();
            this.f26214a = kVar.a();
            this.hp = kVar.w();
        }

        public k l() {
            return new k() { // from class: com.byazt.uhg.k.hp.1
                @Override // com.byazt.uhg.k
                public v a() {
                    return hp.this.f26214a;
                }

                @Override // com.byazt.uhg.k
                public Object hp() {
                    return hp.this.f26217w;
                }

                @Override // com.byazt.uhg.k
                public Map j() {
                    return hp.this.f26216l;
                }

                @Override // com.byazt.uhg.k
                public String jx() {
                    return hp.this.f26215j;
                }

                @Override // com.byazt.uhg.k
                public eb l() {
                    return hp.this.jx;
                }

                public String toString() {
                    return "";
                }

                @Override // com.byazt.uhg.k
                public com.byazt.uhg.hp w() {
                    return hp.this.hp;
                }
            };
        }

        public hp hp(eb ebVar) {
            this.jx = ebVar;
            return this;
        }

        public hp hp(String str, String str2) {
            return l(str, str2);
        }

        public hp hp(a aVar) {
            if (aVar != null) {
                this.f26216l = aVar.l();
            }
            return this;
        }

        public hp hp() {
            return hp("GET", (v) null);
        }

        public hp hp(String str, v vVar) {
            this.f26215j = str;
            this.f26214a = vVar;
            return this;
        }

        public hp hp(v vVar) {
            return hp("POST", vVar);
        }
    }

    public v a() {
        return null;
    }

    public hp eb() {
        return new hp(this);
    }

    public abstract Object hp();

    public void hp(jl jlVar) {
        this.hp = jlVar;
    }

    public abstract Map<String, List<String>> j();

    public abstract String jx();

    public abstract eb l();

    public abstract com.byazt.uhg.hp w();
}
