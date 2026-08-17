package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.anythink.core.common.f.g;
import com.byazt.nw.s;
import com.byazt.wnd.AnimationText;
import com.byazt.yj.gu;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.sigmob.sdk.base.n;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 85, 1291})
/* loaded from: classes3.dex */
public class DynamicTextView extends DynamicBaseWidgetImp {
    public DynamicTextView(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.f26307s += 6;
        if (this.jl.xh()) {
            AnimationText animationText = new AnimationText(context, this.jl.eb(), this.jl.w(), 1, this.jl.s());
            this.f26309v = animationText;
            animationText.setMaxLines(1);
        } else {
            TextView textView = new TextView(context);
            this.f26309v = textView;
            textView.setIncludeFontPadding(false);
        }
        this.f26309v.setTag(Integer.valueOf(getClickArea()));
        addView(this.f26309v, getWidgetLayoutParams());
    }

    private void e() {
        int iHp;
        if (TextUtils.equals(this.zy.e().getType(), n.f36449l) || TextUtils.equals(this.zy.e().getType(), g.a.f3271h) || TextUtils.equals(this.zy.e().getType(), "text_star")) {
            int[] iArrL = gu.l(this.jl.a(), this.jl.w(), true);
            int iHp2 = (int) com.byazt.sq.s.hp(getContext(), this.jl.l());
            int iHp3 = (int) com.byazt.sq.s.hp(getContext(), this.jl.jx());
            int iHp4 = (int) com.byazt.sq.s.hp(getContext(), this.jl.j());
            int iHp5 = (int) com.byazt.sq.s.hp(getContext(), this.jl.hp());
            int iMin = Math.min(iHp2, iHp5);
            if (TextUtils.equals(this.zy.e().getType(), n.f36449l) && (iHp = ((this.f26307s - ((int) com.byazt.sq.s.hp(getContext(), this.jl.w()))) - iHp2) - iHp5) > 1 && iHp <= iMin * 2) {
                int i2 = iHp / 2;
                this.f26309v.setPadding(iHp3, iHp2 - i2, iHp4, iHp5 - (iHp - i2));
                return;
            }
            int i3 = (((iArrL[1] + iHp2) + iHp5) - this.f26307s) - 2;
            if (i3 <= 1) {
                return;
            }
            if (i3 <= iMin * 2) {
                int i4 = i3 / 2;
                this.f26309v.setPadding(iHp3, iHp2 - i4, iHp4, iHp5 - (i3 - i4));
            } else if (i3 > iHp2 + iHp5) {
                final int i5 = (i3 - iHp2) - iHp5;
                this.f26309v.setPadding(iHp3, 0, iHp4, 0);
                if (i5 <= ((int) com.byazt.sq.s.hp(getContext(), 1.0f)) + 1) {
                    ((TextView) this.f26309v).setTextSize(this.jl.w() - 1.0f);
                } else if (i5 <= (((int) com.byazt.sq.s.hp(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.f26309v).setTextSize(this.jl.w() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.byazt.uq.DynamicTextView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = DynamicTextView.this.f26309v.getLayoutParams();
                                DynamicTextView dynamicTextView = DynamicTextView.this;
                                layoutParams.height = dynamicTextView.f26307s + i5;
                                dynamicTextView.f26309v.setLayoutParams(layoutParams);
                                DynamicTextView.this.f26309v.setTranslationY(-i5);
                                ((ViewGroup) DynamicTextView.this.f26309v.getParent()).setClipChildren(false);
                                ((ViewGroup) DynamicTextView.this.f26309v.getParent().getParent()).setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } else if (iHp2 > iHp5) {
                this.f26309v.setPadding(iHp3, iHp2 - (i3 - iMin), iHp4, iHp5 - iMin);
            } else {
                this.f26309v.setPadding(iHp3, iHp2 - iMin, iHp4, iHp5 - (i3 - iMin));
            }
        }
        if (TextUtils.equals(this.zy.e().getType(), "fillButton")) {
            this.f26309v.setTextAlignment(2);
            ((TextView) this.f26309v).setGravity(17);
        }
    }

    private void gu() {
        if (this.f26309v instanceof AnimationText) {
            String text = getText();
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(text);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.optString(i2));
                }
            } catch (JSONException unused) {
                arrayList.add(text);
            }
            ((AnimationText) this.f26309v).setMaxLines(1);
            ((AnimationText) this.f26309v).setTextColor(this.jl.eb());
            ((AnimationText) this.f26309v).setTextSize(this.jl.w());
            ((AnimationText) this.f26309v).setAnimationText(arrayList);
            ((AnimationText) this.f26309v).setAnimationType(this.jl.as());
            ((AnimationText) this.f26309v).setAnimationDuration(this.jl.ms() * 1000);
            ((AnimationText) this.f26309v).hp();
        }
    }

    private boolean q() {
        DynamicRootView dynamicRootView = this.f26303k;
        return (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || this.f26303k.getRenderRequest().jl() == 4) ? false : true;
    }

    public String getText() {
        String strA = this.jl.a();
        if (TextUtils.isEmpty(strA)) {
            if (!com.byazt.wkx.j.hp() && TextUtils.equals(this.zy.e().getType(), "text_star")) {
                strA = "5";
            }
            if (!com.byazt.wkx.j.hp() && TextUtils.equals(this.zy.e().getType(), "score-count")) {
                strA = "6870";
            }
        }
        return (TextUtils.equals(this.zy.e().getType(), g.a.f3271h) || TextUtils.equals(this.zy.e().getType(), MediaFormat.KEY_SUBTITLE)) ? strA.replace("\n", "") : strA;
    }

    public void hp(TextView textView, int i2) {
        textView.setText("(" + String.format("%1$s个评分", Integer.valueOf(i2)) + ")");
        if (i2 == -1) {
            textView.setVisibility(8);
        }
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() throws NumberFormatException {
        int i2;
        double d2;
        super.s();
        if (TextUtils.isEmpty(getText())) {
            this.f26309v.setVisibility(4);
            return true;
        }
        if (this.jl.xh()) {
            gu();
            return true;
        }
        ((TextView) this.f26309v).setText(this.jl.a());
        ((TextView) this.f26309v).setTextDirection(5);
        this.f26309v.setTextAlignment(this.jl.s());
        ((TextView) this.f26309v).setTextColor(this.jl.eb());
        ((TextView) this.f26309v).setTextSize(this.jl.w());
        if (this.jl.ns()) {
            int iCx = this.jl.cx();
            if (iCx > 0) {
                ((TextView) this.f26309v).setLines(iCx);
                ((TextView) this.f26309v).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.f26309v).setMaxLines(1);
            ((TextView) this.f26309v).setGravity(17);
            ((TextView) this.f26309v).setEllipsize(TextUtils.TruncateAt.END);
        }
        s sVar = this.zy;
        if (sVar != null && sVar.e() != null) {
            if (com.byazt.wkx.j.hp() && q() && (TextUtils.equals(this.zy.e().getType(), "text_star") || TextUtils.equals(this.zy.e().getType(), "score-count") || TextUtils.equals(this.zy.e().getType(), "score-count-type-1") || TextUtils.equals(this.zy.e().getType(), "score-count-type-2"))) {
                setVisibility(8);
                return true;
            }
            if (TextUtils.equals(this.zy.e().getType(), "score-count") || TextUtils.equals(this.zy.e().getType(), "score-count-type-2")) {
                try {
                    try {
                        i2 = Integer.parseInt(getText());
                    } catch (NumberFormatException unused) {
                        i2 = -1;
                    }
                    if (i2 < 0) {
                        if (com.byazt.wkx.j.hp()) {
                            setVisibility(8);
                            return true;
                        }
                        this.f26309v.setVisibility(0);
                    }
                    if (TextUtils.equals(this.zy.e().getType(), "score-count-type-2")) {
                        ((TextView) this.f26309v).setText(String.format(new DecimalFormat("(###,###,###)").format(i2), Integer.valueOf(i2)));
                        ((TextView) this.f26309v).setGravity(17);
                        return true;
                    }
                    hp((TextView) this.f26309v, i2);
                } catch (Exception unused2) {
                }
            } else if (TextUtils.equals(this.zy.e().getType(), "text_star")) {
                try {
                    d2 = Double.parseDouble(getText());
                } catch (Exception e2) {
                    u.l("DynamicStarView applyNativeStyle", e2.toString());
                    d2 = -1.0d;
                }
                if (d2 < 0.0d || d2 > 5.0d) {
                    if (com.byazt.wkx.j.hp()) {
                        setVisibility(8);
                        return true;
                    }
                    this.f26309v.setVisibility(0);
                }
                ((TextView) this.f26309v).setIncludeFontPadding(false);
                ((TextView) this.f26309v).setText(String.format("%.1f", Double.valueOf(d2)));
            } else if (TextUtils.equals("privacy-detail", this.zy.e().getType())) {
                ((TextView) this.f26309v).setText("功能 | 权限 | 隐私");
            } else if (TextUtils.equals(this.zy.e().getType(), "development-name")) {
                ((TextView) this.f26309v).setText("开发者：" + getText());
            } else if (TextUtils.equals(this.zy.e().getType(), "app-version")) {
                ((TextView) this.f26309v).setText("版本号：V" + getText());
            } else {
                ((TextView) this.f26309v).setText(getText());
            }
            this.f26309v.setTextAlignment(this.jl.s());
            ((TextView) this.f26309v).setGravity(this.jl.q());
            if (com.byazt.wkx.j.hp()) {
                e();
            }
        }
        return true;
    }
}
