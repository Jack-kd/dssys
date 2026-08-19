package com.byazt.bzj;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 200, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public abstract class s extends jx {

    /* renamed from: e, reason: collision with root package name */
    public int f18697e;
    public int gu;
    public boolean jl;

    public s(com.byazt.rlh.l lVar, Function<SparseArray<Object>, Object> function) {
        super(lVar, function);
        this.f18697e = 0;
        this.gu = 0;
        this.jl = false;
    }

    public final void checkClick(hp hpVar) {
        int i2 = this.gu;
        if (i2 >= 60) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.gu = i2 + 1;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    public final void checkShow(hp hpVar) {
        if (!this.jl) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i2 = this.f18697e;
        if (i2 >= 2) {
            com.byazt.aw.l.j(MediationConstant.TAG, "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.f18697e = i2 + 1;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    public abstract void register(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.qjq.e eVar);

    @Override // com.byazt.rt.jx
    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.qjq.e eVar, List<View> list4) {
        super.registerViewForInteraction(activity, viewGroup, list, list2, list3, eVar, list4);
        try {
            this.jl = true;
            register(activity, viewGroup, list, list2, list3, eVar);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.rt.jx
    public void render() {
        try {
            this.jl = true;
            if (((jx) this).f18695q != null) {
                ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(6083).hp(Void.class).l());
            }
        } catch (Exception unused) {
        }
    }
}
