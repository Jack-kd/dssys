package com.byazt.uhg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w extends v {
    public List<String> hp;

    /* renamed from: l, reason: collision with root package name */
    public List<String> f26225l;

    public w(List<String> list, List<String> list2) {
        this.hp = list;
        this.f26225l = list2;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 8})
    public static final class hp {
        public final List<String> hp = new ArrayList();

        /* renamed from: l, reason: collision with root package name */
        public final List<String> f26226l = new ArrayList();

        public hp hp(String str, String str2) {
            this.hp.add(str);
            this.f26226l.add(str2);
            return this;
        }

        public w hp() {
            return new w(this.hp, this.f26226l);
        }
    }
}
