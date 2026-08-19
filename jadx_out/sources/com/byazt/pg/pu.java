package com.byazt.pg;

import android.os.Message;
import android.util.SparseArray;
import com.byazt.pg.r;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_INFOS})
@ATSKeep
/* loaded from: classes3.dex */
public class pu implements r.hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile r.hp f24393l;

    public pu(r.hp hpVar) {
        this.f24393l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.f24393l.handleMsg((Message) sparseArray.get(1));
        return null;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, message);
        this.hp.apply(sparseArray);
    }

    public pu(Function function) {
        this.hp = function;
    }
}
