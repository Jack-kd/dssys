package com.byazt.vi;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static LayerDrawable hp() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(Color.parseColor("#AAAAAA"));
        Paint paint = shapeDrawable.getPaint();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RectShape());
        shapeDrawable2.getPaint().setColor(Color.parseColor("#09BB07"));
        shapeDrawable2.getPaint().setStyle(style);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, new ClipDrawable(shapeDrawable2, 3, 1)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.progress);
        return layerDrawable;
    }

    public static GradientDrawable l() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
        gradientDrawable.setColors(new int[]{Color.parseColor("#FFFBFA"), Color.parseColor("#FFEBE6")});
        return gradientDrawable;
    }

    public static GradientDrawable l(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(xh.jx(context, 7.0f));
        gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
        gradientDrawable.setColors(new int[]{Color.parseColor("#C48959"), Color.parseColor("#92512D")});
        return gradientDrawable;
    }

    public static RotateDrawable hp(Context context, Drawable drawable, int i2, int i3, float f2, float f3) {
        RotateDrawable rotateDrawable = new RotateDrawable();
        rotateDrawable.setDrawable(drawable);
        rotateDrawable.setFromDegrees(i2);
        rotateDrawable.setToDegrees(i3);
        rotateDrawable.setPivotX(f2);
        rotateDrawable.setPivotY(f3);
        rotateDrawable.setLevel(0);
        return rotateDrawable;
    }

    public static StateListDrawable hp(Context context, Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, drawable);
        stateListDrawable.addState(new int[0], drawable2);
        return stateListDrawable;
    }

    public static LayerDrawable hp(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
        gradientDrawable.setShape(0);
        gradientDrawable.setColors(new int[]{Color.parseColor("#FC1D56"), Color.parseColor("#FC881D")});
        gradientDrawable.setCornerRadius(xh.jx(context, 100.0f));
        gradientDrawable.setStroke(xh.jx(context, 1.0f), Color.parseColor("#FFD47F"));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable});
        int iJx = xh.jx(context, 2.0f);
        layerDrawable.setLayerInset(0, iJx, 0, iJx, 0);
        int iJx2 = xh.jx(context, 60.0f);
        layerDrawable.setLayerHeight(0, xh.jx(context, 20.0f));
        layerDrawable.setLayerWidth(0, iJx2);
        return layerDrawable;
    }
}
