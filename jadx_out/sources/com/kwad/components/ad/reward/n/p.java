package com.kwad.components.ad.reward.n;

import android.content.res.Resources;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kuaishou.weapon.p0.bg;
import com.kwad.components.ad.reward.model.AdLiveEndResultData;
import com.kwad.sdk.R;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public final class p extends s implements View.OnClickListener {
    private ImageView ED;
    private TextView EE;
    private TextView EF;
    private TextView EG;
    private TextView EH;
    private TextView EI;
    private TextView EJ;
    private TextView EK;
    private com.kwad.components.ad.reward.g uj;

    public p(com.kwad.components.ad.reward.g gVar) {
        this.uj = gVar;
    }

    private void initView() {
        if (this.wT == null) {
            return;
        }
        if (this.uj.mContext.getResources().getConfiguration().orientation == 2) {
            this.ED = (ImageView) this.wT.findViewById(R.id.ksad_live_end_page_author_icon_landscape);
            this.EE = (TextView) this.wT.findViewById(R.id.ksad_author_name_txt_landscape);
            this.EF = (TextView) this.wT.findViewById(R.id.ksad_live_end_detail_watch_person_count_landscape);
            this.EG = (TextView) this.wT.findViewById(R.id.ksad_live_end_detail_like_person_count_landscape);
            this.EH = (TextView) this.wT.findViewById(R.id.ksad_live_end_detail_watch_time_landscape);
            this.EI = (TextView) this.wT.findViewById(R.id.ksad_live_end_bottom_title_landscape);
            this.EJ = (TextView) this.wT.findViewById(R.id.ksad_live_end_bottom_action_btn_landscape);
            this.EK = (TextView) this.wT.findViewById(R.id.ksad_live_end_bottom_des_btn_landscape);
        } else {
            this.ED = (ImageView) this.wT.findViewById(R.id.ksad_live_end_page_author_icon);
            this.EE = (TextView) this.wT.findViewById(R.id.ksad_author_name_txt);
            this.EF = (TextView) this.wT.findViewById(R.id.ksad_live_end_detail_watch_person_count);
            this.EG = (TextView) this.wT.findViewById(R.id.ksad_live_end_detail_like_person_count);
            this.EH = (TextView) this.wT.findViewById(R.id.ksad_live_end_detail_watch_time);
            this.EI = (TextView) this.wT.findViewById(R.id.ksad_live_end_bottom_title);
            this.EJ = (TextView) this.wT.findViewById(R.id.ksad_live_end_bottom_action_btn);
            this.EK = (TextView) this.wT.findViewById(R.id.ksad_live_end_bottom_des_btn);
        }
        this.EJ.setOnClickListener(this);
        this.EK.setOnClickListener(this);
    }

    private void n(AdTemplate adTemplate) throws Resources.NotFoundException {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        KSImageLoader.loadCircleIcon(this.ED, com.kwad.sdk.core.response.helper.a.cv(adInfoEO), this.ED.getResources().getDrawable(R.drawable.ksad_ic_default_user_avatar));
        this.EE.setText(com.kwad.sdk.core.response.helper.a.cs(adInfoEO));
    }

    private static String u(long j2) {
        long j3 = (j2 / bg.f30873s) % 24;
        long j4 = (j2 / 60000) % 60;
        long j5 = (j2 / 1000) % 60;
        return j3 > 0 ? String.format("%02d:%02d:%02d", Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j5)) : String.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j5));
    }

    @Override // com.kwad.components.ad.reward.n.d
    public final void a(r rVar) throws Resources.NotFoundException {
        super.a(rVar);
        n(rVar.getAdTemplate());
    }

    public final void at(int i2) throws Resources.NotFoundException {
        TextView textView = this.EI;
        if (textView != null) {
            if (i2 <= 0) {
                textView.setText("已获得奖励");
                return;
            }
            if (!this.uj.sO) {
                textView.setText("已获得奖励");
                return;
            }
            String str = String.format("再停留%s秒，即可获得奖励", Integer.valueOf(i2));
            SpannableString spannableString = new SpannableString(str);
            int color = ib().getResources().getColor(R.color.ksad_reward_main_color);
            spannableString.setSpan(new ForegroundColorSpan(color), 3, 6, 18);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(color);
            int length = str.length();
            spannableString.setSpan(foregroundColorSpan, length - 2, length, 18);
            this.EI.setText(spannableString);
        }
    }

    public final void j(ViewGroup viewGroup) {
        if (this.uj.mContext.getResources().getConfiguration().orientation == 2) {
            super.a(viewGroup, R.id.ksad_reward_origin_live_end_page_stub_landscape, R.id.ksad_live_end_page_layout_root_landscape);
        } else {
            super.a(viewGroup, R.id.ksad_reward_origin_live_end_page_stub, R.id.ksad_live_end_page_layout_root);
        }
        initView();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        bVar.el(24);
        if (view.equals(this.EJ)) {
            this.uj.a(2, view.getContext(), 38, 1, 0L, false, bVar);
        } else if (view.equals(this.EK)) {
            this.uj.a(2, view.getContext(), 37, 1, 0L, false, bVar);
        }
    }

    public final void a(com.kwad.components.ad.reward.g gVar, AdLiveEndResultData.AdLivePushEndInfo adLivePushEndInfo, long j2) throws Resources.NotFoundException {
        this.EG.setText(adLivePushEndInfo.mDisplayLikeUserCount);
        this.EH.setText(u(adLivePushEndInfo.mLiveDuration));
        this.EF.setText(adLivePushEndInfo.mDisplayWatchingUserCount);
        if (gVar.sO) {
            String str = String.format("再停留%s秒，即可获得奖励", Integer.valueOf((int) (Math.max(com.kwad.sdk.core.response.helper.a.ak(com.kwad.sdk.core.response.helper.e.eO(gVar.mAdTemplate)) - j2, 0L) / 1000)));
            SpannableString spannableString = new SpannableString(str);
            int color = ib().getResources().getColor(R.color.ksad_reward_main_color);
            spannableString.setSpan(new ForegroundColorSpan(color), 3, 6, 18);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(color);
            int length = str.length();
            spannableString.setSpan(foregroundColorSpan, length - 2, length, 18);
            this.EI.setText(spannableString);
            return;
        }
        this.EI.setText("内容很精彩，不要错过哦");
    }
}
