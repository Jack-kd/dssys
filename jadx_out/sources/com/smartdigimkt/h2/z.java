package com.smartdigimkt.h2;

import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.ChopOnceG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FingerG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FingerNewG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FingerSlideUpG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FullOrientationG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GestureG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GestureNewG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.HintTextG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.JumpConfirmG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.LuckyBagG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PicVerifyG2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PuzzleV2G2CV2View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.QuestionDialogG2CV2View;

/* loaded from: classes5.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40542a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e0 f40543b;

    public z(e0 e0Var, int i2) {
        this.f40543b = e0Var;
        this.f40542a = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        FingerG2CV2View fingerG2CV2View;
        BaseG2CV2View baseG2CV2View;
        e0 e0Var = this.f40543b;
        if (e0Var.f40484i == null) {
            int i2 = e0Var.f40482g;
            int i3 = 502;
            switch (i2) {
                case 1:
                    GestureG2CV2View gestureG2CV2View = new GestureG2CV2View(e0Var.f40476a);
                    gestureG2CV2View.setLayoutParams(e0Var.a(i2));
                    gestureG2CV2View.setVerticalLandscape(e0Var.f40480e == null);
                    baseG2CV2View = gestureG2CV2View;
                    break;
                case 2:
                    PicVerifyG2CV2View picVerifyG2CV2View = new PicVerifyG2CV2View(e0Var.f40476a);
                    picVerifyG2CV2View.loadImage(e0Var.f40477b.f41815f);
                    picVerifyG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = picVerifyG2CV2View;
                    break;
                case 3:
                    QuestionDialogG2CV2View questionDialogG2CV2View = new QuestionDialogG2CV2View(e0Var.f40476a);
                    questionDialogG2CV2View.setLayoutParams(e0Var.a(i2));
                    questionDialogG2CV2View.setQuestionAnswer(!TextUtils.isEmpty(e0Var.f40477b.f41810c) ? e0Var.f40477b.f41810c : !TextUtils.isEmpty(e0Var.f40477b.f41812d) ? e0Var.f40477b.f41812d : "", e0Var.f40488m);
                    baseG2CV2View = questionDialogG2CV2View;
                    break;
                case 4:
                    BaseG2CV2View hintTextG2CV2View = new HintTextG2CV2View(e0Var.f40476a);
                    hintTextG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = hintTextG2CV2View;
                    break;
                case 5:
                    BaseG2CV2View jumpConfirmG2CV2View = new JumpConfirmG2CV2View(e0Var.f40476a);
                    jumpConfirmG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = jumpConfirmG2CV2View;
                    break;
                case 6:
                    FingerG2CV2View fingerG2CV2View2 = new FingerG2CV2View(e0Var.f40476a);
                    switch (e0Var.f40481f) {
                        case 1:
                        default:
                            i3 = 501;
                            break;
                        case 2:
                            if (e0Var.f40480e == null) {
                                i3 = 503;
                                break;
                            }
                            break;
                        case 3:
                            i3 = 507;
                            break;
                        case 4:
                            e0Var.f40479d.post(new a0(e0Var, fingerG2CV2View2));
                            i3 = 505;
                            break;
                        case 5:
                        case 6:
                            i3 = 504;
                            break;
                    }
                    fingerG2CV2View2.setFingerViewMode(i3);
                    fingerG2CV2View2.setLayoutParams(e0Var.a(i2));
                    fingerG2CV2View = fingerG2CV2View2;
                    baseG2CV2View = fingerG2CV2View;
                    break;
                case 7:
                    FullOrientationG2CV2View fullOrientationG2CV2View = new FullOrientationG2CV2View(e0Var.f40476a);
                    switch (e0Var.f40481f) {
                        case 1:
                        default:
                            i3 = 501;
                            break;
                        case 2:
                            break;
                        case 3:
                            i3 = 507;
                            break;
                        case 4:
                            e0Var.f40479d.post(new b0(e0Var, fullOrientationG2CV2View));
                            i3 = 505;
                            break;
                        case 5:
                        case 6:
                            e0Var.f40479d.post(new b0(e0Var, fullOrientationG2CV2View));
                            i3 = 504;
                            break;
                    }
                    fullOrientationG2CV2View.setViewMode(i3);
                    fullOrientationG2CV2View.setLayoutParams(e0Var.a(i2));
                    fingerG2CV2View = fullOrientationG2CV2View;
                    baseG2CV2View = fingerG2CV2View;
                    break;
                case 8:
                    BaseG2CV2View luckyBagG2CV2View = new LuckyBagG2CV2View(e0Var.f40476a);
                    luckyBagG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = luckyBagG2CV2View;
                    break;
                case 9:
                    BaseG2CV2View chopOnceG2CV2View = new ChopOnceG2CV2View(e0Var.f40476a);
                    chopOnceG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = chopOnceG2CV2View;
                    break;
                case 10:
                    BaseG2CV2View puzzleV2G2CV2View = new PuzzleV2G2CV2View(e0Var.f40476a);
                    puzzleV2G2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = puzzleV2G2CV2View;
                    break;
                case 11:
                    BaseG2CV2View gestureNewG2CV2View = new GestureNewG2CV2View(e0Var.f40476a);
                    gestureNewG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = gestureNewG2CV2View;
                    break;
                case 12:
                    BaseG2CV2View fingerNewG2CV2View = new FingerNewG2CV2View(e0Var.f40476a);
                    fingerNewG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = fingerNewG2CV2View;
                    break;
                case 13:
                    FingerSlideUpG2CV2View fingerSlideUpG2CV2View = new FingerSlideUpG2CV2View(e0Var.f40476a);
                    fingerSlideUpG2CV2View.setLayoutParams(e0Var.a(i2));
                    baseG2CV2View = fingerSlideUpG2CV2View;
                    if (e0Var.f40481f == 2) {
                        baseG2CV2View = fingerSlideUpG2CV2View;
                        if (!com.smartdigimkt.z.z.a(e0Var.f40477b)) {
                            fingerSlideUpG2CV2View.updateIsEmptyHalfInterLayout();
                            baseG2CV2View = fingerSlideUpG2CV2View;
                            break;
                        }
                    }
                    break;
                default:
                    baseG2CV2View = null;
                    break;
            }
            int i4 = e0Var.f40481f;
            if (i4 == 5 || i4 == 6) {
                baseG2CV2View.setVisibility(4);
                e0Var.f40479d.post(new c0(e0Var, i2, baseG2CV2View));
            }
            e0Var.f40484i = baseG2CV2View;
            e0 e0Var2 = this.f40543b;
            if (e0Var2.f40484i != null) {
                e0Var2.f40494s = System.currentTimeMillis();
                e0 e0Var3 = this.f40543b;
                e0Var3.f40484i.init(e0Var3.f40487l, this.f40542a, e0Var3.f40489n, e0Var3.f40490o, e0Var3.f40483h);
                e0 e0Var4 = this.f40543b;
                RelativeLayout relativeLayout = e0Var4.f40479d;
                if (relativeLayout != null) {
                    relativeLayout.addView(e0Var4.f40484i);
                }
                e0 e0Var5 = this.f40543b;
                int i5 = e0Var5.f40482g;
                if (i5 == 3 || i5 == 4 || i5 == 6 || i5 == 13) {
                    View view = e0Var5.f40480e;
                    if (view != null) {
                        if (i5 == 13) {
                            view.setBackgroundResource(com.smartdigimkt.c5.k.a(e0Var5.f40476a, "myoffer_mask_half_shadow_bg", "drawable"));
                        }
                        e0Var5.f40480e.setVisibility(0);
                    }
                } else {
                    View view2 = e0Var5.f40480e;
                    if (view2 != null) {
                        view2.setVisibility(8);
                    }
                }
            }
        }
        this.f40543b.f40484i.resumeAnimPlay();
    }
}
