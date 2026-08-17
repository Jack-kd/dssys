package com.byazt.xs;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.xa.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME, 28})
/* loaded from: classes3.dex */
public class hp<E extends ViewGroup> extends jx {
    public List<jx<View>> hp;

    public hp(Context context) {
        this(context, null);
    }

    public List<jx<View>> eb() {
        return this.hp;
    }

    public void hp(jx jxVar) {
        if (jxVar == null) {
            return;
        }
        this.hp.add(jxVar);
        View viewQ = jxVar.q();
        if (viewQ != null) {
            ((ViewGroup) this.f27788w).addView(viewQ);
        }
    }

    @Override // com.byazt.xs.jx
    public jx jx(String str) {
        jx<T> jxVarA;
        if (!TextUtils.isEmpty(str) && e(str) != null) {
            return this;
        }
        for (jx<View> jxVar : this.hp) {
            if (jxVar != null && (jxVarA = jxVar.a(str)) != 0) {
                return jxVarA;
            }
        }
        return null;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
    }

    public C0411hp s() {
        return new C0411hp(this);
    }

    public hp(Context context, hp hpVar) {
        super(context, hpVar);
        this.hp = new ArrayList();
    }

    @Override // com.byazt.xs.jx
    public jx l(String str) {
        jx<T> jxVarW;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.jl)) {
            return this;
        }
        for (jx<View> jxVar : this.hp) {
            if (jxVar != null && (jxVarW = jxVar.w(str)) != 0) {
                return jxVarW;
            }
        }
        return null;
    }

    public void hp(jx jxVar, ViewGroup.LayoutParams layoutParams) {
        if (jxVar == null) {
            return;
        }
        this.hp.add(jxVar);
        View viewQ = jxVar.q();
        if (viewQ != null) {
            ((ViewGroup) this.f27788w).addView(viewQ, layoutParams);
        }
    }

    @Override // com.byazt.xs.jx
    public jx hp(String str) {
        jx<T> jxVarJ;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.gu)) {
            return this;
        }
        for (jx<View> jxVar : this.hp) {
            if (jxVar != null && (jxVarJ = jxVar.j(str)) != 0) {
                return jxVarJ;
            }
        }
        return null;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME, 170})
    /* renamed from: com.byazt.xs.hp$hp, reason: collision with other inner class name */
    public static class C0411hp {

        /* renamed from: a, reason: collision with root package name */
        public float f27754a;

        /* renamed from: b, reason: collision with root package name */
        public ViewGroup.LayoutParams f27755b;
        public boolean cx;
        public hp di;

        /* renamed from: e, reason: collision with root package name */
        public float f27756e;
        public float eb;
        public boolean ec;
        public float gu;
        public float jl;

        /* renamed from: k, reason: collision with root package name */
        public float f27758k;

        /* renamed from: n, reason: collision with root package name */
        public boolean f27760n;
        public boolean ns;

        /* renamed from: q, reason: collision with root package name */
        public float f27761q;

        /* renamed from: s, reason: collision with root package name */
        public float f27762s;
        public boolean sz;

        /* renamed from: u, reason: collision with root package name */
        public boolean f27763u;

        /* renamed from: v, reason: collision with root package name */
        public boolean f27764v;
        public boolean vv;

        /* renamed from: w, reason: collision with root package name */
        public float f27765w;
        public boolean xs;
        public float zy;
        public float hp = -2.0f;

        /* renamed from: l, reason: collision with root package name */
        public float f27759l = -2.0f;
        public float jx = 0.0f;

        /* renamed from: j, reason: collision with root package name */
        public float f27757j = 0.0f;

        public C0411hp(hp hpVar) {
            this.di = hpVar;
        }

        public void hp(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            str.getClass();
            switch (str) {
                case "paddingLeft":
                    this.gu = s.hp(context, str2);
                    this.f27763u = true;
                    break;
                case "minWidth":
                    this.jx = s.hp(context, str2);
                    break;
                case "height":
                    if (!TextUtils.equals(str2, "match_parent")) {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.f27759l = s.hp(context, str2);
                            break;
                        } else {
                            this.f27759l = -2.0f;
                            break;
                        }
                    } else {
                        this.f27759l = -1.0f;
                        break;
                    }
                case "margin":
                    this.f27765w = s.hp(context, str2);
                    break;
                case "marginTop":
                    this.f27762s = s.hp(context, str2);
                    this.ns = true;
                    break;
                case "padding":
                    this.f27756e = s.hp(context, str2);
                    this.f27764v = true;
                    break;
                case "marginBottom":
                    this.f27761q = s.hp(context, str2);
                    this.cx = true;
                    break;
                case "minHeight":
                    this.f27757j = s.hp(context, str2);
                    break;
                case "paddingTop":
                    this.jl = s.hp(context, str2);
                    this.vv = true;
                    break;
                case "width":
                    if (!TextUtils.equals(str2, "match_parent")) {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.hp = s.hp(context, str2);
                            break;
                        } else {
                            this.hp = -2.0f;
                            break;
                        }
                    } else {
                        this.hp = -1.0f;
                        break;
                    }
                case "paddingBottom":
                    this.f27758k = s.hp(context, str2);
                    this.ec = true;
                    break;
                case "paddingRight":
                    this.zy = s.hp(context, str2);
                    this.xs = true;
                    break;
                case "marginRight":
                    this.eb = s.hp(context, str2);
                    this.f27760n = true;
                    break;
                case "marginLeft":
                    this.f27754a = s.hp(context, str2);
                    this.sz = true;
                    break;
            }
        }

        public String toString() {
            return "LayoutParams{mWidth=" + this.hp + ", mHeight=" + this.f27759l + ", mMargin=" + this.f27765w + ", mMarginLeft=" + this.f27754a + ", mMarginRight=" + this.eb + ", mMarginTop=" + this.f27762s + ", mMarginBottom=" + this.f27761q + ", mParams=" + this.f27755b + '}';
        }

        public ViewGroup.LayoutParams hp() {
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((int) this.hp, (int) this.f27759l);
            marginLayoutParams.leftMargin = (int) (this.sz ? this.f27754a : this.f27765w);
            marginLayoutParams.rightMargin = (int) (this.f27760n ? this.eb : this.f27765w);
            marginLayoutParams.topMargin = (int) (this.ns ? this.f27762s : this.f27765w);
            marginLayoutParams.bottomMargin = (int) (this.cx ? this.f27761q : this.f27765w);
            return marginLayoutParams;
        }
    }
}
