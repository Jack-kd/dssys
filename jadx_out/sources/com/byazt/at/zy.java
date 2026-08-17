package com.byazt.at;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import com.byazt.na.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 302})
/* loaded from: classes2.dex */
public class zy extends eb {

    /* renamed from: e, reason: collision with root package name */
    public final Map<String, Object> f18262e;

    /* renamed from: q, reason: collision with root package name */
    public int f18263q;

    /* renamed from: s, reason: collision with root package name */
    public int f18264s;

    public zy(com.byazt.na.s sVar, s sVar2, Context context) {
        super(sVar, sVar2);
        this.f18264s = -1;
        this.f18263q = -1;
        HashMap map = new HashMap();
        this.f18262e = map;
        if (((eb) this).eb != null) {
            float fHp = com.byazt.ze.e.hp();
            this.f18264s = (int) (((eb) this).eb.hp() * fHp);
            this.f18263q = (int) (((eb) this).eb.l() * fHp);
            map.put("ugen_url", ((eb) this).eb.j());
            map.put("ugen_md5", ((eb) this).eb.w());
            map.put("ugen_v", ((eb) this).eb.a());
            map.put("ugen_w", Integer.valueOf(this.f18264s));
            map.put("ugen_h", Integer.valueOf(this.f18263q));
        }
    }

    private static void hp(View view, int i2, int i3) {
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // com.byazt.at.eb, com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        n nVarHp = this.f18218l.hp();
        View viewHp = nVarHp != null ? nVarHp.hp("view:", this.f18262e) : null;
        if (this.f18264s <= 0 || viewHp == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        hp(i2);
        float fS = s();
        hp(viewHp, this.f18264s, this.f18263q);
        viewHp.setAlpha(fS);
        viewHp.draw(canvas);
        canvas.restore();
    }
}
