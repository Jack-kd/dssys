package com.byazt.ke;

import android.content.Context;
import com.byazt.ow.w;
import com.byazt.pg.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 581, 38})
/* loaded from: classes2.dex */
public class j {

    @com.byazt.kj.hp(hp = {0, 1, 581, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public volatile int f22012a;
        public volatile Context hp;

        /* renamed from: j, reason: collision with root package name */
        public volatile boolean f22013j;
        public volatile int jx;

        /* renamed from: l, reason: collision with root package name */
        public volatile String f22014l;

        /* renamed from: w, reason: collision with root package name */
        public volatile boolean f22015w;

        private w jx() {
            w wVarHp = com.byazt.gk.hp.hp(this.hp, this.f22014l, this.f22013j, this.f22012a);
            this.f22015w = true;
            if (wVarHp != null) {
                return wVarHp;
            }
            this.f22015w = false;
            return l();
        }

        public hp hp(Context context) {
            if (context == null) {
                return this;
            }
            this.hp = context.getApplicationContext();
            jx.hp(this.hp);
            return this;
        }

        public hp l(int i2) {
            this.f22012a = i2;
            return this;
        }

        private w l() {
            return this.f22013j ? com.byazt.fgx.hp.hp(this.f22014l) : ((u) com.byazt.ym.j.getService("kv_store_factory")).get(this.f22014l);
        }

        public hp hp(String str) {
            this.f22014l = str;
            return this;
        }

        public hp hp(int i2) {
            this.jx = i2;
            return this;
        }

        public hp hp(boolean z2) {
            this.f22013j = z2;
            return this;
        }

        public w hp() {
            if (this.jx != 2) {
                return l();
            }
            return jx();
        }
    }
}
