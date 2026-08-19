package com.byazt.uq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.fub.gu;
import com.byazt.nw.s;
import com.byazt.qo.v;
import com.byazt.wnd.ImageFlipSlideGroup;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 85, 1724})
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class DynamicImageFlipSlide extends DynamicImageView {
    public final ImageFlipSlideGroup hp;

    /* renamed from: l, reason: collision with root package name */
    public final l f26319l;

    public interface hp {
        void hp();
    }

    public interface l {
        void hp(hp hpVar);
    }

    public DynamicImageFlipSlide(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.f26319l = new l() { // from class: com.byazt.uq.DynamicImageFlipSlide.1
            @Override // com.byazt.uq.DynamicImageFlipSlide.l
            public void hp(hp hpVar) {
                if (DynamicImageFlipSlide.this.hp != null) {
                    DynamicImageFlipSlide.this.hp.hp(hpVar);
                }
            }
        };
        ImageFlipSlideGroup imageFlipSlideGroup = new ImageFlipSlideGroup(getContext(), TextUtils.equals(getDynamicLayoutBrickValue().jw(), "slide"));
        this.hp = imageFlipSlideGroup;
        addView(imageFlipSlideGroup, getWidgetLayoutParams());
    }

    @Override // com.byazt.uq.DynamicBaseWidget
    public com.byazt.thw.hp getDynamicClickListener() {
        com.byazt.thw.hp dynamicClickListener = this.f26303k.getDynamicClickListener();
        return this.jl.bu() ? new jx(dynamicClickListener, this.f26319l) : dynamicClickListener;
    }

    @Override // com.byazt.uq.DynamicImageView, com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.hp.hp();
    }

    @Override // com.byazt.uq.DynamicImageView, com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.hp.l();
    }

    @Override // com.byazt.uq.DynamicImageView, com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.j
    public boolean s() {
        super.s();
        this.hp.hp(this.jl.gu(), l(this.jl.gu()));
        this.hp.l(this.jl.t(), l(this.jl.t()));
        this.hp.setFilterColors(this.jl.x());
        this.hp.jx();
        return true;
    }

    @com.byazt.kj.hp(hp = {0, 1, 85, 2113})
    public static class jx implements View.OnClickListener, View.OnTouchListener, com.byazt.thw.hp {
        public com.byazt.thw.hp hp;

        /* renamed from: l, reason: collision with root package name */
        public l f26320l;

        public jx(com.byazt.thw.hp hpVar, l lVar) {
            this.hp = hpVar;
            this.f26320l = lVar;
        }

        @Override // com.byazt.thw.hp
        public void hp(View view) {
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(view);
            }
        }

        @Override // com.byazt.thw.hp
        public void l(View view) {
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.l(view);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(final View view) {
            l lVar = this.f26320l;
            if (lVar != null) {
                lVar.hp(new hp() { // from class: com.byazt.uq.DynamicImageFlipSlide.jx.1
                    @Override // com.byazt.uq.DynamicImageFlipSlide.hp
                    public void hp() {
                        com.byazt.thw.hp hpVar = jx.this.hp;
                        if (hpVar instanceof View.OnClickListener) {
                            ((View.OnClickListener) hpVar).onClick(view);
                        }
                    }
                });
                return;
            }
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar instanceof View.OnClickListener) {
                ((View.OnClickListener) hpVar).onClick(view);
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar instanceof View.OnTouchListener) {
                return ((View.OnTouchListener) hpVar).onTouch(view, motionEvent);
            }
            return false;
        }

        @Override // com.byazt.thw.hp
        public void hp(gu guVar) {
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(guVar);
            }
        }

        @Override // com.byazt.thw.hp
        public void hp(boolean z2, v vVar) {
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(z2, vVar);
            }
        }

        @Override // com.byazt.thw.hp
        public void hp(JSONObject jSONObject) {
            com.byazt.thw.hp hpVar = this.hp;
            if (hpVar != null) {
                hpVar.hp(jSONObject);
            }
        }
    }
}
