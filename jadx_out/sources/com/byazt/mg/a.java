package com.byazt.mg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 790, 54})
/* loaded from: classes3.dex */
public class a {
    public final jx hp;
    public final hp jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<l> f22966l;

    @com.byazt.kj.hp(hp = {0, 1, 790, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public final List<String> f22967a;
        public final int hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f22968j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f22969l;

        /* renamed from: w, reason: collision with root package name */
        public final int f22970w;

        public String toString() {
            return "Extra{flag=" + this.hp + ", rawKey='" + this.f22969l + "', key='" + this.jx + "', from=" + this.f22968j + ", to=" + this.f22970w + ", urls=" + this.f22967a + '}';
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 790, 897})
    public static final class jx {
        public final String hp;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f22971l;

        public String toString() {
            return "RequestLine{method='" + this.hp + "', path='" + this.f22971l + "', version='" + this.jx + "'}";
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 790, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE})
    public static final class l {
        public final String hp;

        /* renamed from: l, reason: collision with root package name */
        public final String f22972l;

        public l(String str, String str2) {
            this.hp = str;
            this.f22972l = str2;
        }

        public String toString() {
            return "Header{name='" + this.hp + "', value='" + this.f22972l + "'}";
        }
    }

    public String toString() {
        return "Request{requestLine=" + this.hp + ", headers=" + this.f22966l + ", extra=" + this.jx + '}';
    }
}
