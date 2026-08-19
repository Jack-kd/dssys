package com.byazt.qo;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.uq.DynamicBaseWidget;
import com.byazt.wnd.DynamicLottieView;
import com.byazt.ymw.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 45})
/* loaded from: classes3.dex */
public class e implements eb<ViewGroup> {
    public final DynamicLottieView hp;

    /* renamed from: l, reason: collision with root package name */
    public final FrameLayout f24993l;

    public e(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.nw.eb ebVar, String str, String str2) {
        DynamicLottieView dynamicLottieView = new DynamicLottieView(context);
        this.hp = dynamicLottieView;
        dynamicLottieView.setAnimationsLoop(true);
        dynamicLottieView.setOnlyLoadNetImage(true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f24993l = frameLayout;
        frameLayout.addView(dynamicLottieView, new FrameLayout.LayoutParams(-2, -2));
        double dPc = ebVar.pc();
        dPc = dPc == 0.0d ? 1.0d : dPc;
        double dFi = ebVar.fi();
        double d2 = dFi != 0.0d ? dFi : 1.0d;
        if ("24".equals(str2)) {
            dynamicLottieView.setImageLottieTosPath(TextUtils.isEmpty(str) ? "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/swiper_up_star.json" : str);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.byazt.sq.s.hp(context, 250.0f));
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) com.byazt.sq.s.hp(context, 120.0f);
            frameLayout.setLayoutParams(layoutParams);
            return;
        }
        if (!"20".equals(str2)) {
            dynamicLottieView.setImageLottieTosPath(str);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * dPc), (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * d2));
            layoutParams2.gravity = 17;
            frameLayout.setLayoutParams(layoutParams2);
            return;
        }
        dynamicLottieView.setImageLottieTosPath(TextUtils.isEmpty(str) ? "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/brush_mask.json" : str);
        hp(context, frameLayout, ebVar);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) com.byazt.sq.s.hp(context, ebVar.yr() > 0 ? ebVar.yr() : com.byazt.wkx.j.hp() ? 0 : 120);
        frameLayout.setLayoutParams(layoutParams3);
        frameLayout.setClipChildren(false);
    }

    private void hp(Context context, FrameLayout frameLayout, com.byazt.nw.eb ebVar) {
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, -nu.hp(context, 5.0f), 0, 0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText("滑动或者点击擦亮");
        textView.setTextColor(-1);
        textView.setTextSize(2, 20.0f);
        TextView textView2 = new TextView(context);
        textView2.setId(2097610738);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, nu.hp(context, 5.0f), 0, 0);
        textView2.setLayoutParams(layoutParams2);
        textView2.setText("跳转详情页或第三方应用");
        if (ebVar != null && !TextUtils.isEmpty(ebVar.zx())) {
            textView2.setText(ebVar.zx());
        }
        textView2.setTextColor(-1);
        textView2.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        frameLayout.addView(linearLayout);
    }

    @Override // com.byazt.qo.eb
    public ViewGroup jx() {
        return this.f24993l;
    }

    @Override // com.byazt.qo.eb
    public void l() {
        try {
            this.hp.eb();
            ViewParent parent = this.f24993l.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f24993l);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.qo.eb
    public void hp() {
        DynamicLottieView dynamicLottieView = this.hp;
        if (dynamicLottieView != null) {
            dynamicLottieView.s();
        }
    }
}
