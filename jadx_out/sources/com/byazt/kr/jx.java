package com.byazt.kr;

import android.content.Context;
import android.os.Handler;
import com.byazt.kw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH, 30})
/* loaded from: classes.dex */
public final class jx {
    public List<hp> hp;

    private jx(Handler handler, Context context) {
        ArrayList arrayList = new ArrayList(3);
        this.hp = arrayList;
        arrayList.add(new l(handler, 0L, 15000L));
    }

    public static jx hp(Handler handler, Context context) {
        return new jx(handler, context);
    }

    public void hp() {
        e.hp("[ScheduleTaskManager] execute, task size=" + this.hp.size());
        Iterator<hp> it = this.hp.iterator();
        while (it.hasNext()) {
            try {
                it.next().hp();
            } catch (Throwable unused) {
            }
        }
    }
}
