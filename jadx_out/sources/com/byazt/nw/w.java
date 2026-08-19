package com.byazt.nw;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static final Map<String, Integer> hp;

    /* renamed from: a, reason: collision with root package name */
    public a f23860a;
    public String eb;

    /* renamed from: j, reason: collision with root package name */
    public String f23861j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23862l;

    /* renamed from: w, reason: collision with root package name */
    public a f23863w;

    static {
        HashMap map = new HashMap();
        hp = map;
        map.put("root", 8);
        map.put("footer", 6);
        map.put("empty", 6);
        map.put(g.a.f3271h, 0);
        map.put(MediaFormat.KEY_SUBTITLE, 0);
        map.put(n.f36449l, 0);
        map.put("score-count", 0);
        map.put("text_star", 0);
        map.put(com.baidu.mobads.sdk.internal.a.f10878b, 0);
        map.put("tag-group", 17);
        map.put("app-version", 0);
        map.put("development-name", 0);
        map.put("privacy-detail", 23);
        map.put("image", 1);
        map.put("image-wide", 1);
        map.put("image-square", 1);
        map.put("image-long", 1);
        map.put("image-splash", 1);
        map.put("image-cover", 1);
        map.put("app-icon", 1);
        map.put("icon-download", 1);
        map.put("logoad", 4);
        map.put("logounion", 5);
        map.put("logo-union", 9);
        map.put("dislike", 3);
        map.put("close", 3);
        map.put("close-fill", 3);
        map.put("webview-close", 22);
        map.put("feedback-dislike", 12);
        map.put("button", 2);
        map.put("downloadWithIcon", 2);
        map.put("downloadButton", 2);
        map.put("fillButton", 2);
        map.put("laceButton", 2);
        map.put("cardButton", 2);
        map.put("colourMixtureButton", 2);
        map.put("arrowButton", 1);
        map.put("download-progress-button", 2);
        map.put("vessel", 6);
        map.put("image-group", 6);
        map.put("custom-component-vessel", 6);
        map.put("carousel", 24);
        map.put("carousel-vessel", 26);
        map.put("leisure-interact", 25);
        map.put("video-hd", 7);
        map.put("video", 7);
        map.put("video-vd", 7);
        map.put("video-sq", 7);
        map.put("muted", 10);
        map.put("star", 11);
        map.put("skip-countdowns", 19);
        map.put("skip-with-countdowns-skip-btn", 21);
        map.put("skip-with-countdowns-video-countdown", 13);
        map.put("skip-with-countdowns-skip-countdown", 20);
        map.put("skip-with-time", 14);
        map.put("skip-with-time-countdown", 13);
        map.put("skip-with-time-skip-btn", 15);
        map.put("skip", 27);
        map.put("timedown", 13);
        map.put("icon", 16);
        map.put("scoreCountWithIcon", 6);
        map.put("split-line", 18);
        map.put("creative-playable-bait", 0);
        map.put("score-count-type-2", 0);
        map.put("lottie", 28);
        map.put("image-flip-slide", 29);
    }

    public int a() {
        return this.f23863w.qh();
    }

    public a eb() {
        return this.f23860a;
    }

    public String getType() {
        return this.f23862l;
    }

    public int hp() {
        if (TextUtils.isEmpty(this.f23862l)) {
            return 0;
        }
        if (this.f23862l.equals("logo")) {
            String str = this.f23862l + this.jx;
            this.f23862l = str;
            if (str.contains("logoad")) {
                return 4;
            }
            if (this.f23862l.contains("logounion")) {
                return 5;
            }
        }
        Map<String, Integer> map = hp;
        if (map.get(this.f23862l) != null) {
            return map.get(this.f23862l).intValue();
        }
        return -1;
    }

    public void j(String str) {
        this.eb = str;
    }

    public String jx() {
        return this.f23861j;
    }

    public String l() {
        return this.jx;
    }

    public String toString() {
        return "DynamicLayoutBrick{type='" + this.f23862l + "', data='" + this.jx + "', value=" + this.f23863w + ", themeValue=" + this.f23860a + ", dataExtraInfo='" + this.eb + "'}";
    }

    public a w() {
        return this.f23863w;
    }

    public String j() {
        return this.eb;
    }

    public void jx(String str) {
        this.f23861j = str;
    }

    public void l(String str) {
        this.jx = str;
    }

    public void l(a aVar) {
        this.f23860a = aVar;
    }

    public void hp(String str) {
        this.f23862l = str;
    }

    public void hp(a aVar) {
        this.f23863w = aVar;
    }
}
