package com.byazt.w;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public String f26864a;
    public String eb;
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26865j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public long f26866l;

    /* renamed from: q, reason: collision with root package name */
    public String f26867q;

    /* renamed from: s, reason: collision with root package name */
    public final List<Pair<String, String>> f26868s = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public String f26869w;

    public static long hp(long j2, long j3) {
        return j2 > 0 ? j2 : j3;
    }

    public long hp() {
        return hp(this.hp, this.f26866l);
    }
}
