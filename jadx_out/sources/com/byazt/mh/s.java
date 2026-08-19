package com.byazt.mh;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.byazt.dk.a;
import com.byazt.dk.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1216, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public abstract class s<R extends com.byazt.dk.a, W extends com.byazt.dk.eb> {

    /* renamed from: e, reason: collision with root package name */
    public int f23051e;
    public final R eb;
    public int gu;
    public int jl;

    /* renamed from: q, reason: collision with root package name */
    public int f23053q;

    /* renamed from: s, reason: collision with root package name */
    public int f23054s;
    public final Rect zy = new Rect();

    /* renamed from: k, reason: collision with root package name */
    public final Rect f23052k = new Rect();

    public s(R r2) {
        this.eb = r2;
    }

    public abstract Bitmap hp(Canvas canvas, Paint paint, int i2, Bitmap bitmap, W w2);
}
