package com.byazt.jz;

import android.util.SparseArray;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w implements hp.l {
    public final Map<Integer, WeakReference<hp.l>> hp = new HashMap();

    public void hp(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return;
        }
        function.apply(com.byazt.wi.j.hp().hp(9).hp(Boolean.class).hp(0, new com.byazt.hde.hp() { // from class: com.byazt.jz.w.1
            @Override // com.byazt.hde.hp
            public void onAppBackground() {
                w.this.onAppBackground();
            }

            @Override // com.byazt.hde.hp
            public void onAppForeground() {
                w.this.onAppForeground();
            }
        }).l());
    }

    @Override // com.byazt.zn.hp.l
    public void onAppBackground() {
        Iterator<Map.Entry<Integer, WeakReference<hp.l>>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            WeakReference<hp.l> value = it.next().getValue();
            if (value != null) {
                hp.l lVar = value.get();
                if (lVar != null) {
                    lVar.onAppBackground();
                } else {
                    it.remove();
                }
            } else {
                it.remove();
            }
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppExit() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppForeground() {
        Iterator<Map.Entry<Integer, WeakReference<hp.l>>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            WeakReference<hp.l> value = it.next().getValue();
            if (value != null) {
                hp.l lVar = value.get();
                if (lVar != null) {
                    lVar.onAppForeground();
                } else {
                    it.remove();
                }
            } else {
                it.remove();
            }
        }
    }

    @Override // com.byazt.zn.hp.l
    public void onAppStart() {
    }

    public void hp(hp.l lVar) {
        if (lVar == null) {
            return;
        }
        this.hp.put(Integer.valueOf(lVar.hashCode()), new WeakReference<>(lVar));
    }
}
