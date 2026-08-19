package com.byazt.pg;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT})
@ATSKeep
/* loaded from: classes3.dex */
public class lv implements dy, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile dy f24390l;

    public lv(dy dyVar) {
        this.f24390l = dyVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function function;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.f24390l != null ? this.f24390l : this.hp;
        }
        if (iIntValue == -4 && (function = (Function) sparseArray.get(1)) != null) {
            this.f24390l = null;
            this.hp = function;
        }
        return null;
    }

    @Override // com.byazt.pg.dy
    public String get(String str) {
        if (this.f24390l != null) {
            return this.f24390l.get(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.pg.dy
    public boolean getBoolean(String str) {
        if (this.f24390l != null) {
            return this.f24390l.getBoolean(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.pg.dy
    public int getInt(String str) {
        if (this.f24390l != null) {
            return this.f24390l.getInt(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.pg.dy
    public long getLong(String str) {
        if (this.f24390l != null) {
            return this.f24390l.getLong(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.pg.dy
    public void set(String str, String str2) {
        if (this.f24390l != null) {
            this.f24390l.set(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.hp.apply(sparseArray);
    }

    public lv(Function function) {
        this.hp = function;
    }
}
