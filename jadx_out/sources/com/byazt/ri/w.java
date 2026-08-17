package com.byazt.ri;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2091, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static Function<SparseArray<Object>, Object> hp;

    public static void hp(Function<SparseArray<Object>, Object> function) {
        hp = function;
    }

    public static String jx() {
        Function<SparseArray<Object>, Object> function = hp;
        if (function != null) {
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec).hp(String.class).l());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }

    public static String l() {
        Function<SparseArray<Object>, Object> function = hp;
        if (function != null) {
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2).hp(String.class).l());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }

    public static String hp() {
        Function<SparseArray<Object>, Object> function = hp;
        if (function != null) {
            Object objApply = function.apply(com.byazt.wi.j.hp().hp(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1).hp(String.class).l());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }
}
