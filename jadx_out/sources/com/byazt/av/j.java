package com.byazt.av;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, 38})
/* loaded from: classes2.dex */
public class j {
    public static com.byazt.ha.e a(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.ha.e(hp(jsonReader, com.byazt.ze.e.hp(), aVar, q.hp));
    }

    public static com.byazt.ha.hp eb(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.ha.hp(hp(jsonReader, aVar, eb.hp));
    }

    public static com.byazt.ha.l hp(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return hp(jsonReader, aVar, true);
    }

    public static com.byazt.ha.eb j(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.ha.eb(hp(jsonReader, aVar, lv.hp));
    }

    public static com.byazt.ha.a jx(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.ha.a(n.hp(jsonReader, aVar, com.byazt.ze.e.hp(), wv.hp, true));
    }

    public static com.byazt.ha.j l(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.ha.j(hp(jsonReader, aVar, vv.hp));
    }

    public static com.byazt.ha.s w(JsonReader jsonReader, com.byazt.na.a aVar) throws IOException {
        return new com.byazt.ha.s(hp(jsonReader, com.byazt.ze.e.hp(), aVar, r.hp));
    }

    public static com.byazt.ha.l hp(JsonReader jsonReader, com.byazt.na.a aVar, boolean z2) throws IOException {
        return new com.byazt.ha.l(hp(jsonReader, z2 ? com.byazt.ze.e.hp() : 1.0f, aVar, jl.hp));
    }

    public static com.byazt.ha.jx hp(JsonReader jsonReader, com.byazt.na.a aVar, int i2) throws IOException {
        return new com.byazt.ha.jx(hp(jsonReader, aVar, new v(i2)));
    }

    private static <T> List<com.byazt.ch.hp<T>> hp(JsonReader jsonReader, com.byazt.na.a aVar, kg<T> kgVar) throws IOException {
        return n.hp(jsonReader, aVar, 1.0f, kgVar, false);
    }

    private static <T> List<com.byazt.ch.hp<T>> hp(JsonReader jsonReader, float f2, com.byazt.na.a aVar, kg<T> kgVar) throws IOException {
        return n.hp(jsonReader, aVar, f2, kgVar, false);
    }
}
