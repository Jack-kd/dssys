package com.byazt.yh;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.byazt.zs.hp;
import com.byazt.zs.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.xs.jx<CycleCountDownView> {
    public String gb;
    public String hp;
    public String pg;
    public String xv;

    public l(@NonNull Context context) {
        super(context);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public CycleCountDownView hp() {
        return new CycleCountDownView(this.f27777l);
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "boxImage":
                ((CycleCountDownView) this.f27788w).setBoxImage(null);
                w.hp().l().hp(this.f27782q, str2, new hp.InterfaceC0439hp() { // from class: com.byazt.yh.l.1
                    @Override // com.byazt.zs.hp.InterfaceC0439hp
                    public void hp(Bitmap bitmap) {
                        ((CycleCountDownView) l.this.f27788w).setBoxImage(bitmap);
                    }
                });
                break;
            case "before":
                this.hp = str2;
                break;
            case "finish":
                this.pg = str2;
                break;
            case "text":
                this.xv = str2;
                break;
            case "after":
                this.gb = str2;
                break;
            case "boxFinishImage":
                w.hp().l().hp(this.f27782q, str2, new hp.InterfaceC0439hp() { // from class: com.byazt.yh.l.2
                    @Override // com.byazt.zs.hp.InterfaceC0439hp
                    public void hp(Bitmap bitmap) {
                        ((CycleCountDownView) l.this.f27788w).setBoxFinish(bitmap);
                    }
                });
                break;
        }
        ((CycleCountDownView) this.f27788w).hp(this.hp, this.gb, this.xv, this.pg);
    }

    public void hp(int i2, int i3, int i4, boolean z2) {
        T t2 = this.f27788w;
        if (t2 != 0) {
            ((CycleCountDownView) t2).hp(i2, i3, i4);
            ((CycleCountDownView) this.f27788w).setCanSkip(z2);
            ((CycleCountDownView) this.f27788w).setClickable(z2);
            ((CycleCountDownView) this.f27788w).setEnabled(z2);
        }
    }
}
