package com.byazt.jpy;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.anythink.core.common.d.i;
import com.byazt.ij.jx;
import com.byazt.kj.hp;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.ws.l;
import com.byazt.xci.as;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, 1620})
/* loaded from: classes.dex */
public class SaasAuthProductEnvelope extends BaseSaasEnvelope {
    public SaasAuthProductEnvelope(@NonNull Context context, as.hp hpVar) {
        super(context);
        hp(context, hpVar);
    }

    @Override // com.byazt.jpy.BaseSaasEnvelope
    public void hp() {
    }

    @Override // com.byazt.jpy.BaseSaasEnvelope
    public void l() {
        super.l();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    private void hp(Context context, as.hp hpVar) {
        if (hpVar == null) {
            setVisibility(8);
            return;
        }
        RelativeLayout relativeLayoutHp = hp(context);
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        try {
            l.hp(jx.hp("saas_reward_goods_bg.webp")).to(imageView);
        } catch (Error unused) {
        }
        relativeLayoutHp.addView(imageView);
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        textView.setId(2114387802);
        layoutParams.topMargin = xh.jx(context, 20.0f);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(2, 16.0f);
        textView.setGravity(17);
        textView.setText("超值好物");
        textView.setTextColor(Color.parseColor("#A9512C"));
        textView.setTypeface(null, 1);
        relativeLayoutHp.addView(textView);
        TextView textView2 = new TextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(3, textView.getId());
        layoutParams2.topMargin = xh.jx(context, 20.0f);
        textView2.setId(2114387462);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setMaxLines(1);
        textView2.setMaxWidth(xh.jx(context, 200.0f));
        textView2.setLayoutParams(layoutParams2);
        textView2.setTextSize(2, 12.0f);
        textView2.setGravity(17);
        textView2.setText(hpVar.hp());
        textView2.setTextColor(Color.parseColor("#161823"));
        relativeLayoutHp.addView(textView2);
        int iJx = xh.jx(context, 80.0f);
        int iJx2 = xh.jx(context, 10.0f);
        ImageView tTRoundRectImageView = new TTRoundRectImageView(context, iJx2, iJx2);
        tTRoundRectImageView.setId(2114387456);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iJx, iJx);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, textView2.getId());
        layoutParams3.topMargin = xh.jx(context, 12.0f);
        l.hp(hpVar.l()).width(iJx).height(iJx).to(tTRoundRectImageView);
        tTRoundRectImageView.setLayoutParams(layoutParams3);
        relativeLayoutHp.addView(tTRoundRectImageView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387457);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(14);
        layoutParams4.addRule(3, tTRoundRectImageView.getId());
        layoutParams4.topMargin = xh.jx(context, 12.0f);
        linearLayout.setLayoutParams(layoutParams4);
        TextView textView3 = new TextView(context);
        textView3.setTextSize(2, 11.0f);
        textView3.setTypeface(null, 1);
        textView3.setTextColor(Color.parseColor("#F93F3F"));
        textView3.setText("¥");
        linearLayout.addView(textView3);
        double dJ = hpVar.j();
        int iFloor = (int) Math.floor(dJ);
        int i2 = (int) ((dJ - iFloor) * 100.0d);
        TextView textView4 = new TextView(context);
        textView4.setTextSize(2, 16.0f);
        textView4.setTypeface(null, 1);
        textView4.setTextColor(Color.parseColor("#F93F3F"));
        textView4.setText(String.valueOf(iFloor));
        linearLayout.addView(textView4);
        TextView textView5 = new TextView(context);
        textView5.setTextSize(2, 11.0f);
        textView5.setTypeface(null, 1);
        textView5.setTextColor(Color.parseColor("#F93F3F"));
        StringBuilder sb = new StringBuilder(i.f2495E);
        sb.append(i2);
        sb.append(i2 >= 10 ? "" : "0");
        textView5.setText(sb.toString());
        linearLayout.addView(textView5);
        TextView textView6 = new TextView(context);
        textView6.getPaint().setFlags(16);
        textView6.setTextSize(2, 11.0f);
        textView6.setTextColor(Color.parseColor("#161823"));
        textView6.setText("￥" + hpVar.jx());
        linearLayout.addView(textView6);
        relativeLayoutHp.addView(linearLayout);
        hp(context, "一键关联抖音购买", relativeLayoutHp);
        addView(relativeLayoutHp);
    }
}
