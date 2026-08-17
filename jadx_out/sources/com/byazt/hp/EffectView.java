package com.byazt.hp;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.fb.eb;
import com.byazt.fb.l;
import com.byazt.fub.k;
import com.byazt.jz.ec;
import com.byazt.jz.s;
import com.byazt.la.e;
import com.byazt.qk.sz;
import com.byazt.ql.ns;
import com.byazt.xci.b;
import com.byazt.xci.mp;
import com.byazt.xci.wv;
import com.byazt.xci.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 28, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_INITED_TIME})
/* loaded from: classes2.dex */
public class EffectView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public hp f20752a;
    public x hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f20753j;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public View f20754l;

    /* renamed from: w, reason: collision with root package name */
    public final ec f20755w;

    public interface hp {
        void hp();

        void hp(String str);
    }

    public EffectView(@NonNull Context context, mp mpVar, ec ecVar) {
        super(context);
        this.f20753j = false;
        this.jx = mpVar;
        this.f20755w = ecVar;
        this.hp = wv.jx(mpVar);
    }

    public void l(final View view) {
        if (hp(view)) {
            e.hp(this.hp.e(), this.hp.q(), new com.byazt.la.jx() { // from class: com.byazt.hp.EffectView.2
                @Override // com.byazt.la.jx
                public void hp(String str) {
                    try {
                        EffectView.this.hp(new JSONObject(str), view);
                    } catch (JSONException e2) {
                        EffectView.this.hp("getTplInfoAndRender JSONException:" + e2.getMessage());
                    }
                }

                @Override // com.byazt.la.jx
                public void hp() {
                    EffectView.this.hp("getTplInfoAndRender onFailed");
                }
            });
        } else {
            hp("meetRenderCondition not meet");
        }
    }

    public void hp(hp hpVar) {
        this.f20752a = hpVar;
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.byazt.hp.EffectView.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                int i10 = i4 - i2;
                int i11 = i5 - i3;
                if (EffectView.this.f20753j || i10 <= 0 || i11 <= 0) {
                    return;
                }
                EffectView.this.f20753j = true;
                EffectView effectView = EffectView.this;
                effectView.l((View) effectView);
                EffectView.this.removeOnLayoutChangeListener(this);
            }
        });
    }

    public boolean hp(View view) {
        x xVar = this.hp;
        return xVar != null && view != null && xVar.jl() && this.hp.hp(view.getWidth(), view.getHeight()) && this.hp.s() != 1 && this.hp.jx() == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final JSONObject jSONObject, final View view) {
        post(new Runnable() { // from class: com.byazt.hp.EffectView.3
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                JSONObject jSONObjectHp = com.byazt.yp.l.hp(EffectView.this.jx, com.byazt.yp.l.hp(view), jSONObject, true, null, false);
                l.hp hpVar = new l.hp();
                hpVar.hp(jSONObjectHp);
                hpVar.hp((ns) new sz());
                int height = view.getHeight();
                int width = view.getWidth();
                hpVar.l(height);
                hpVar.hp(width);
                hpVar.hp(s.u().j());
                hpVar.e(EffectView.this.jx.nu());
                hpVar.gu(2);
                eb ebVar = new eb(com.byazt.jz.sz.getContext(), EffectView.this.jx, hpVar.hp(), null);
                ebVar.hp(new com.byazt.fub.s() { // from class: com.byazt.hp.EffectView.3.1
                    @Override // com.byazt.fub.s
                    public void hp(View view2, int i2, com.byazt.wkx.jx jxVar, int i3) {
                        EffectView.this.hp(view2, i2, jxVar);
                    }

                    @Override // com.byazt.fub.s
                    public void l(View view2, int i2, com.byazt.wkx.jx jxVar, int i3) {
                        EffectView.this.hp(view2, i2, jxVar);
                    }
                });
                ebVar.hp(new com.byazt.ar.s() { // from class: com.byazt.hp.EffectView.3.2
                    @Override // com.byazt.ar.s
                    public void hp() {
                        View view2 = EffectView.this.f20754l;
                        if (view2 != null) {
                            view2.setVisibility(8);
                            try {
                                if (EffectView.this.f20754l.getParent() != null) {
                                    ((ViewGroup) EffectView.this.f20754l.getParent()).removeView(EffectView.this.f20754l);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                });
                ebVar.hp(new com.byazt.fub.eb() { // from class: com.byazt.hp.EffectView.3.3
                    @Override // com.byazt.fub.eb
                    public void hp(View view2, k kVar) {
                        if (view2 == null) {
                            EffectView.this.hp("renderView is null");
                            return;
                        }
                        EffectView.this.f20754l = view2;
                        if (view2.getParent() != null) {
                            ((ViewGroup) view2.getParent()).removeView(view2);
                        }
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        layoutParams.gravity = 17;
                        EffectView.this.addView(view2, layoutParams);
                        EffectView.this.hp();
                        EffectView.this.f20753j = false;
                    }

                    @Override // com.byazt.fub.eb
                    public void hp(int i2, String str) {
                        EffectView.this.hp(str);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(View view, int i2, com.byazt.wkx.jx jxVar) {
        com.byazt.xci.e eVar;
        if (this.f20755w == null) {
            return;
        }
        if ((i2 == 1 || i2 == 2) && (jxVar instanceof b)) {
            b bVar = (b) jxVar;
            eVar = new com.byazt.xci.e();
            eVar.hp(bVar.hp);
            eVar.l(bVar.f27199l);
            eVar.jx(bVar.jx);
            eVar.j(bVar.f27197j);
            eVar.hp(bVar.f27204w);
            eVar.l(bVar.f27195a);
            eVar.l(bVar.f27203v);
        } else {
            eVar = null;
        }
        if (i2 == 2) {
            this.f20755w.hp(view, eVar);
        }
        if (i2 == 1) {
            this.f20755w.l(view, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        hp hpVar = this.f20752a;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str) {
        hp hpVar = this.f20752a;
        if (hpVar != null) {
            hpVar.hp(str);
        }
    }
}
