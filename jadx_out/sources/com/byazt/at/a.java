package com.byazt.at;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.LineBackgroundSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.na.q;
import com.byazt.na.sz;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 54})
/* loaded from: classes2.dex */
public class a extends eb {

    /* renamed from: e, reason: collision with root package name */
    public final List<String> f18178e;
    public q.l ec;
    public final List<TextView> gu;
    public String jl;

    /* renamed from: k, reason: collision with root package name */
    public SpannableStringBuilder f18179k;

    /* renamed from: q, reason: collision with root package name */
    public final LinearLayout.LayoutParams f18180q;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f18181s;

    /* renamed from: u, reason: collision with root package name */
    public int f18182u;

    /* renamed from: v, reason: collision with root package name */
    public SpannableStringBuilder f18183v;
    public Camera vv;
    public int xs;
    public hp zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp implements LineBackgroundSpan {
        public final Paint hp = new Paint();

        /* renamed from: j, reason: collision with root package name */
        public int f18184j;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public int f18185l;

        /* renamed from: w, reason: collision with root package name */
        public float f18186w;

        @Override // android.text.style.LineBackgroundSpan
        public void drawBackground(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, int i9) {
            if (this.jx > 0.0f) {
                this.hp.setColor(this.f18185l);
                this.hp.setStrokeWidth(this.jx);
                float f2 = i5 + this.jx;
                canvas.drawLine(i2, f2, i3, f2, this.hp);
            }
            if (this.f18186w > 0.0f) {
                this.hp.setColor(this.f18184j);
                this.hp.setStrokeWidth(this.f18186w);
                float f3 = (i6 + i4) / 2.0f;
                canvas.drawLine(i2, f3, i3, f3, this.hp);
            }
        }
    }

    public a(com.byazt.na.s sVar, s sVar2, Context context) {
        List<q.jx> listJx;
        super(sVar, sVar2);
        this.f18180q = new LinearLayout.LayoutParams(-2, -2);
        this.f18178e = new ArrayList();
        this.gu = new ArrayList();
        com.byazt.na.q qVar = ((eb) this).eb;
        if (qVar == null || (listJx = qVar.jx()) == null || listJx.size() <= 0) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.f18181s = linearLayout;
        linearLayout.setOrientation(0);
        l(listJx.get(0).f23468e);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(80);
        this.f18181s.addView(linearLayout2);
        List<String> listV = v();
        int i2 = 0;
        while (i2 < listJx.size()) {
            q.jx jxVar = listJx.get(i2);
            TextView textView = new TextView(context);
            hp(textView, jxVar, (listV == null || i2 >= listV.size()) ? "" : listV.get(i2), i2, listJx.size() - 1, listJx.get(0));
            int i3 = jxVar.f23472q;
            if (i3 != 0) {
                this.f18180q.bottomMargin = (int) (i3 * com.byazt.ze.e.hp());
                linearLayout2.addView(textView, this.f18180q);
            } else {
                linearLayout2.addView(textView);
            }
            i2++;
        }
        float fHp = com.byazt.ze.e.hp();
        this.f18182u = (int) (((eb) this).eb.hp() * fHp);
        int iL = (int) (((eb) this).eb.l() * fHp);
        this.xs = iL;
        hp(this.f18181s, this.f18182u, iL);
        q.l lVarGu = ((eb) this).eb.gu();
        this.ec = lVarGu;
        if (lVarGu != null) {
            this.vv = new Camera();
        }
    }

    private void hp(TextView textView, q.jx jxVar, String str, int i2, int i3, q.jx jxVar2) {
        com.byazt.na.s sVar;
        sz szVarDi;
        if (TextUtils.isEmpty(str)) {
            str = "";
            textView.setText("");
        } else {
            textView.setText(str);
        }
        if (!TextUtils.isEmpty(jxVar.jx)) {
            textView.setTextColor(Color.parseColor(jxVar.jx));
        } else if (!TextUtils.isEmpty(jxVar.f23469j)) {
            textView.setTextColor(Color.parseColor(jxVar.f23469j));
        }
        if (!TextUtils.isEmpty(jxVar.f23474w)) {
            textView.setBackgroundColor(Color.parseColor(jxVar.f23474w));
        }
        if (jxVar.f23473s == 1) {
            textView.setTypeface(null, 1);
        } else {
            textView.setTypeface(null, 0);
        }
        textView.setGravity(17);
        textView.setTextSize(1, jxVar.f23467a);
        if (!TextUtils.isEmpty(jxVar.eb) && (sVar = this.f18218l) != null && (szVarDi = sVar.di()) != null) {
            try {
                int i4 = Integer.parseInt(szVarDi.hp(jxVar.eb));
                if (i4 > 0) {
                    textView.setTextSize(1, i4);
                }
            } catch (Throwable unused) {
            }
        }
        q.jx.hp hpVar = jxVar.gu;
        if (hpVar != null && hpVar.hp > 0 && !TextUtils.isEmpty(hpVar.f23475l)) {
            if (this.f18179k == null) {
                this.f18179k = new SpannableStringBuilder(str);
            }
            if (this.zy == null) {
                this.zy = new hp();
            }
            this.zy.f18185l = Color.parseColor(jxVar.gu.f23475l);
            this.zy.jx = jxVar.gu.hp * com.byazt.ze.e.hp();
            this.f18179k.clear();
            this.f18179k.clearSpans();
            this.f18179k.append((CharSequence) str);
            this.f18179k.setSpan(this.zy, 0, str.length(), 33);
            textView.setText(this.f18179k);
        }
        q.jx.hp hpVar2 = jxVar.jl;
        if (hpVar2 != null && hpVar2.hp > 0 && !TextUtils.isEmpty(hpVar2.f23475l)) {
            if (this.f18183v == null) {
                this.f18183v = new SpannableStringBuilder(str);
            }
            if (this.zy == null) {
                this.zy = new hp();
            }
            this.zy.f18184j = Color.parseColor(jxVar.jl.f23475l);
            this.zy.f18186w = jxVar.jl.hp * com.byazt.ze.e.hp();
            this.f18183v.clear();
            this.f18183v.clearSpans();
            this.f18183v.append((CharSequence) str);
            this.f18183v.setSpan(this.zy, 0, str.length(), 33);
            textView.setText(this.f18183v);
        }
        int i5 = jxVar2.f23470k;
        if (i5 > 0) {
            textView.setMaxLines(i5);
            if (jxVar2.zy == 2 && i2 == 0) {
                textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            }
            if (jxVar2.zy == 1 && i2 == 0) {
                textView.setEllipsize(TextUtils.TruncateAt.START);
            }
            if (jxVar2.zy == 0 && i2 == i3) {
                textView.setEllipsize(TextUtils.TruncateAt.END);
            }
        }
    }

    private void jx(float f2) {
        List<q.jx> listJx;
        com.byazt.na.q qVar = ((eb) this).eb;
        if (qVar != null && (listJx = qVar.jx()) != null && listJx.size() > 0) {
            this.f18181s.setOrientation(0);
            l(listJx.get(0).f23468e);
            if (this.f18181s.getChildCount() > 0) {
                LinearLayout linearLayout = (LinearLayout) this.f18181s.getChildAt(0);
                linearLayout.setOrientation(0);
                linearLayout.setGravity(80);
                this.f18181s.removeAllViews();
                if (linearLayout.getChildCount() == listJx.size()) {
                    List<String> listV = v();
                    this.gu.clear();
                    int i2 = 0;
                    while (i2 < listJx.size()) {
                        q.jx jxVar = listJx.get(i2);
                        TextView textView = (TextView) linearLayout.getChildAt(i2);
                        this.gu.add(textView);
                        hp(textView, jxVar, (listV == null || i2 >= listV.size()) ? "" : listV.get(i2), i2, listJx.size() - 1, listJx.get(0));
                        i2++;
                    }
                    linearLayout.removeAllViews();
                    for (int i3 = 0; i3 < listJx.size(); i3++) {
                        q.jx jxVar2 = listJx.get(i3);
                        TextView textView2 = this.gu.get(i3);
                        textView2.setAlpha(f2);
                        linearLayout.setAlpha(f2);
                        int i4 = jxVar2.f23472q;
                        if (i4 != 0) {
                            this.f18180q.bottomMargin = (int) (i4 * com.byazt.ze.e.hp());
                            linearLayout.addView(textView2, this.f18180q);
                        } else {
                            linearLayout.addView(textView2);
                        }
                    }
                    this.f18181s.setAlpha(f2);
                    this.f18181s.addView(linearLayout);
                    hp(this.f18181s, this.f18182u, this.xs);
                }
            }
        }
    }

    private void l(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f18181s.setGravity(17);
            return;
        }
        str.getClass();
        if (str.equals(ScrollClickView.DIR_LEFT)) {
            this.f18181s.setGravity(19);
        } else if (str.equals(ScrollClickView.DIR_RIGHT)) {
            this.f18181s.setGravity(21);
        } else {
            this.f18181s.setGravity(17);
        }
    }

    private List<String> v() {
        com.byazt.na.s sVar;
        sz szVarDi;
        List<q.jx> listJx;
        if (((eb) this).eb == null || (sVar = this.f18218l) == null || (szVarDi = sVar.di()) == null) {
            return null;
        }
        String strJ = ((eb) this).eb.j();
        if ((!TextUtils.isEmpty(strJ) || !TextUtils.isEmpty(this.jl)) && (listJx = ((eb) this).eb.jx()) != null) {
            String strHp = this.jl;
            if (TextUtils.isEmpty(strHp)) {
                strHp = szVarDi.hp(strJ);
            }
            if (!TextUtils.isEmpty(strHp)) {
                int length = strHp.length();
                this.f18178e.clear();
                for (int i2 = 0; i2 < listJx.size(); i2++) {
                    q.jx jxVar = listJx.get(i2);
                    int iMax = jxVar.hp;
                    int iMax2 = jxVar.f23471l;
                    if (iMax < 0) {
                        iMax = Math.max(iMax + length, 0);
                    }
                    if (iMax2 < 0) {
                        iMax2 = Math.max(iMax2 + length, 0);
                    }
                    if (iMax + iMax2 > length) {
                        this.f18178e.add("");
                    } else {
                        if (listJx.size() == 1 && iMax == 0 && iMax2 == 0) {
                            iMax2 = length;
                        }
                        this.f18178e.add(strHp.substring(iMax, iMax2 + iMax));
                    }
                }
                return this.f18178e;
            }
        }
        return null;
    }

    @Override // com.byazt.at.eb, com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) {
        View childAt;
        if (this.f18181s != null) {
            canvas.save();
            canvas.concat(matrix);
            hp(i2);
            jx(s());
            if (this.vv != null) {
                q.l lVar = this.ec;
                if (lVar.hp != 0 || lVar.f23476l != 0 || lVar.jx != 0) {
                    int width = this.f18182u >> 1;
                    int height = this.xs >> 1;
                    if (this.f18181s.getChildCount() > 0 && (childAt = this.f18181s.getChildAt(0)) != null) {
                        int left = childAt.getLeft() - this.f18181s.getLeft();
                        int top = childAt.getTop() - this.f18181s.getTop();
                        width = left + (childAt.getWidth() >> 1);
                        height = top + (childAt.getHeight() >> 1);
                    }
                    canvas.translate(width, height);
                    q.l lVar2 = this.ec;
                    if (lVar2.hp != 0 || lVar2.f23476l != 0) {
                        this.vv.save();
                        int i3 = this.ec.hp;
                        if (i3 != 0) {
                            this.vv.rotateX(i3);
                        }
                        int i4 = this.ec.f23476l;
                        if (i4 != 0) {
                            this.vv.rotateY(i4);
                        }
                        this.vv.applyToCanvas(canvas);
                        this.vv.restore();
                    }
                    int i5 = this.ec.jx;
                    if (i5 != 0) {
                        canvas.rotate(i5);
                    }
                    canvas.translate(-width, -height);
                }
            }
            this.f18181s.draw(canvas);
            canvas.restore();
            return;
        }
        super.l(canvas, matrix, i2);
    }

    private static void hp(View view, int i2, int i3) {
        view.layout(0, 0, i2, i3);
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void hp(String str) {
        this.jl = str;
    }
}
