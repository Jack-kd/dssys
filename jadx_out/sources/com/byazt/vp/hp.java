package com.byazt.vp;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.byazt.kgm.LayoutVideoDetail;
import com.byazt.nk.TTProgressBar;
import com.byazt.oh.a;
import com.byazt.oh.j;
import com.byazt.oh.w;
import com.byazt.su.l;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.EnumSet;

@com.byazt.kj.hp(hp = {0, 1, 76, 28})
/* loaded from: classes3.dex */
public class hp extends j {
    public hp(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        super(context, viewGroup, mpVar, str, z2, z3, z4);
    }

    @Override // com.byazt.oh.j
    public a hp(Context context, EnumSet<l.hp> enumSet) {
        View viewHp = this.jl ? hp(context) : new LayoutVideoDetail(context);
        if (viewHp == null) {
            return null;
        }
        return this.jl ? new a(context, viewHp, true, enumSet, this.f19653a, this, lv(), null) : new w(context, viewHp, true, enumSet, this.f19653a, this, false);
    }

    private View hp(final Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387714);
        relativeLayout.setBackgroundColor(-16777216);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(2114387900);
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setGravity(17);
        relativeLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(relativeLayout2);
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        tTProgressBar.setId(2114387631);
        layoutParams2.addRule(13, -1);
        tTProgressBar.setLayoutParams(layoutParams2);
        v.hp(context, "tt_normalscreen_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.vp.hp.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vi.w.hp(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayout2.addView(tTProgressBar);
        return relativeLayout;
    }
}
