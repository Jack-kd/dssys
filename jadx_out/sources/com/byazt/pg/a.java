package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.pg.w;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 54})
@ATSKeep
/* loaded from: classes3.dex */
public class a implements w.hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile w.hp f24379l;

    public a(w.hp hpVar) {
        this.f24379l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.f24379l.reportSensorData((JSONObject) sparseArray.get(1));
        return null;
    }

    @Override // com.byazt.pg.w.hp
    public void reportSensorData(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, jSONObject);
        this.hp.apply(sparseArray);
    }

    public a(Function function) {
        this.hp = function;
    }
}
