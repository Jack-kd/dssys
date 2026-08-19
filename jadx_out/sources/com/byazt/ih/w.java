package com.byazt.ih;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.nk.FlowLayout;
import com.byazt.qt.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 863, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w extends BaseAdapter {
    public com.byazt.ih.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f21108j;
    public final Context jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<a> f21109l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f21110w;

    public interface hp {
        void hp(int i2, a aVar);
    }

    @com.byazt.kj.hp(hp = {0, 1, 863, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS})
    public class l {
        public ImageView hp;

        /* renamed from: j, reason: collision with root package name */
        public FrameLayout f21113j;
        public FlowLayout jx;

        /* renamed from: l, reason: collision with root package name */
        public TextView f21114l;

        private l() {
        }
    }

    public w(Context context, List<a> list, boolean z2, com.byazt.ih.hp hpVar) {
        this.f21110w = z2;
        this.hp = hpVar;
        this.f21109l = list == null ? new ArrayList(0) : new ArrayList(list);
        this.jx = context != null ? context.getApplicationContext() : context;
    }

    private TextView l() {
        TextView textView = new TextView(this.jx);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        com.byazt.ruu.j jVarL = com.byazt.ruu.hp.l();
        marginLayoutParams.setMargins(0, 0, jVarL.hp(this.jx, 8.0f), jVarL.hp(this.jx, 8.0f));
        textView.setLayoutParams(marginLayoutParams);
        int iHp = jVarL.hp(this.jx, 21.0f);
        int iHp2 = jVarL.hp(this.jx, 6.0f);
        textView.setPadding(iHp, iHp2, iHp, iHp2);
        GradientDrawable gradientDrawableHp = hp(Color.parseColor("#0A161823"));
        gradientDrawableHp.setCornerRadius(jVarL.hp(this.jx, 4.0f));
        textView.setBackground(gradientDrawableHp);
        textView.setTextColor(Color.parseColor("#BF161823"));
        textView.setTextSize(14.0f);
        textView.setAlpha(0.75f);
        return textView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<a> list = this.f21109l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.f21109l.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(final int i2, View view, ViewGroup viewGroup) {
        View viewL;
        l lVar;
        FrameLayout frameLayout;
        com.byazt.ih.hp hpVar;
        String str;
        if (view == null) {
            lVar = new l();
            viewL = com.byazt.vi.j.l(this.jx, this.f21110w);
            lVar.f21114l = (TextView) viewL.findViewById(2047279094);
            lVar.jx = (FlowLayout) viewL.findViewById(2047279092);
            if (this.f21110w) {
                lVar.hp = (ImageView) viewL.findViewById(2047279093);
                lVar.f21113j = (FrameLayout) viewL.findViewById(2047279091);
            }
            viewL.setTag(lVar);
        } else {
            viewL = view;
            lVar = (l) view.getTag();
        }
        a aVar = this.f21109l.get(i2);
        String id = aVar.getId();
        ImageView imageView = lVar.hp;
        if (imageView != null && id != null && (hpVar = this.hp) != null) {
            switch (id) {
                case "4:1":
                    str = "bu_fd_no_interest";
                    break;
                case "6:0":
                    str = "bu_fd_report";
                    break;
                case "7:1":
                    str = "bu_fd_no_close";
                    break;
                default:
                    str = "bu_fd_other";
                    break;
            }
            hpVar.hp(imageView, "dislike/" + str + ".png");
        }
        FrameLayout frameLayout2 = lVar.f21113j;
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(8);
        }
        lVar.f21114l.setText(aVar.getName());
        if (!aVar.hasSecondOptions()) {
            if (!"99:1".equals(aVar.getId()) || !this.f21110w || (frameLayout = lVar.f21113j) == null) {
                lVar.f21114l.setBackground(hp());
                lVar.jx.setVisibility(8);
                return viewL;
            }
            frameLayout.removeAllViews();
            lVar.f21113j.setVisibility(0);
            lVar.f21113j.addView(hp(i2, aVar));
            lVar.jx.setVisibility(8);
            return viewL;
        }
        lVar.jx.removeAllViews();
        List<a> options = aVar.getOptions();
        for (int i3 = 0; i3 < options.size(); i3++) {
            final a aVar2 = options.get(i3);
            TextView textViewL = l();
            textViewL.setText(aVar2.getName());
            textViewL.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ih.w.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (w.this.f21108j != null) {
                        w.this.f21108j.hp(i2, aVar2);
                    }
                }
            });
            lVar.jx.addView(textViewL);
        }
        lVar.jx.setVisibility(0);
        return viewL;
    }

    private StateListDrawable hp() {
        GradientDrawable gradientDrawableHp = hp(Color.parseColor("#FDE6E6E6"));
        GradientDrawable gradientDrawableHp2 = hp(Color.parseColor("#FDFFFFFF"));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawableHp);
        stateListDrawable.addState(new int[0], gradientDrawableHp2);
        return stateListDrawable;
    }

    private GradientDrawable hp(int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }

    private View hp(final int i2, final a aVar) {
        com.byazt.ruu.j jVarL = com.byazt.ruu.hp.l();
        LinearLayout linearLayout = new LinearLayout(this.jx);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        TextView textView = new TextView(this.jx);
        textView.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        textView.setTextSize(14.0f);
        textView.setText("无法关闭、展示异常等问题，需复制广告ID，在应用内反馈上报问题");
        textView.setTextColor(Color.parseColor("#80161823"));
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(this.jx);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ih.w.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (w.this.f21108j != null) {
                    w.this.f21108j.hp(i2, aVar);
                }
            }
        });
        textView2.setText("点击复制广告ID");
        textView2.setTextColor(Color.parseColor("#161823"));
        textView2.setTextSize(14.0f);
        textView2.setGravity(17);
        GradientDrawable gradientDrawableHp = hp(Color.parseColor("#0A161823"));
        gradientDrawableHp.setCornerRadius(jVarL.hp(this.jx, 4.0f));
        textView2.setBackground(gradientDrawableHp);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, jVarL.hp(this.jx, 32.0f));
        layoutParams.setMargins(0, jVarL.hp(this.jx, 12.0f), 0, jVarL.hp(this.jx, 12.0f));
        linearLayout.addView(textView2, layoutParams);
        linearLayout.setClickable(false);
        return linearLayout;
    }

    public void hp(hp hpVar) {
        this.f21108j = hpVar;
    }

    public void hp(List<a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f21109l.clear();
        this.f21109l.addAll(list);
        notifyDataSetChanged();
    }
}
