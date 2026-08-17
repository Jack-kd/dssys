package com.byazt.aj;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_MASTER_CLOCK_BY_PTS, 34})
/* loaded from: classes2.dex */
public class l {
    public Map<jx, List<hp>> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, String> f18027l = new HashMap();
    public final List<Object> jx = new CopyOnWriteArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final List<Object> f18026j = new CopyOnWriteArrayList();

    /* renamed from: w, reason: collision with root package name */
    public final List<Object> f18028w = new CopyOnWriteArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final List<Object> f18025a = new CopyOnWriteArrayList();
    public a eb = null;

    @Nullable
    public List<hp> hp(jx jxVar) {
        return this.hp.get(jxVar);
    }

    @Nullable
    public a j() {
        return this.eb;
    }

    @NonNull
    public List<Object> jx() {
        return this.f18025a;
    }

    @NonNull
    public List<Object> l() {
        return this.f18026j;
    }

    public void hp(Map<? extends String, ? extends String> map) {
        this.f18027l.putAll(map);
    }

    public Map<String, String> hp() {
        return this.f18027l;
    }

    public void hp(a aVar) {
        this.eb = aVar;
    }
}
