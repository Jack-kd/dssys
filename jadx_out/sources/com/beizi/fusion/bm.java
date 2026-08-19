package com.beizi.fusion;

import android.content.Context;
import android.graphics.Paint;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.LayoutModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.par.LayoutParamModel;
import com.beizi.fusion.ie;
import com.beizi.fusion.jn;
import com.beizi.fusion.rm;
import com.beizi.fusion.widget.ScrollClickView;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class bm implements ie {

    /* renamed from: a, reason: collision with root package name */
    private final LayoutModel f13151a;

    /* renamed from: b, reason: collision with root package name */
    private final am f13152b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f13153c;

    /* renamed from: d, reason: collision with root package name */
    private final Map f13154d;

    /* renamed from: e, reason: collision with root package name */
    private final String f13155e;

    /* renamed from: f, reason: collision with root package name */
    private int f13156f;

    /* renamed from: g, reason: collision with root package name */
    private int f13157g;

    /* renamed from: h, reason: collision with root package name */
    private int f13158h;

    /* renamed from: i, reason: collision with root package name */
    private int f13159i;

    /* renamed from: j, reason: collision with root package name */
    private int f13160j;

    /* renamed from: k, reason: collision with root package name */
    private int f13161k;

    /* renamed from: m, reason: collision with root package name */
    private RelativeLayout.LayoutParams f13163m;

    /* renamed from: n, reason: collision with root package name */
    private int f13164n;

    /* renamed from: o, reason: collision with root package name */
    private int f13165o;

    /* renamed from: p, reason: collision with root package name */
    private int f13166p;

    /* renamed from: q, reason: collision with root package name */
    private int f13167q;

    /* renamed from: t, reason: collision with root package name */
    private ie.a f13170t;

    /* renamed from: l, reason: collision with root package name */
    private boolean f13162l = false;

    /* renamed from: r, reason: collision with root package name */
    private cb f13168r = null;

    /* renamed from: s, reason: collision with root package name */
    private boolean f13169s = false;

    /* renamed from: u, reason: collision with root package name */
    private boolean f13171u = false;

    public static class a {
        public static int a(Context context, TextView textView) {
            if (textView == null) {
                return 0;
            }
            int lineCount = textView.getLineCount() > 0 ? textView.getLineCount() : 1;
            float lineSpacingExtra = textView.getLineSpacingExtra();
            float lineSpacingMultiplier = textView.getLineSpacingMultiplier();
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            return ((fontMetricsInt.bottom - fontMetricsInt.top) * lineCount) + (jn.a.a(context, lineSpacingExtra * lineSpacingMultiplier) * (lineCount >= 1 ? lineCount - 1 : 0));
        }
    }

    public bm(Context context, LayoutModel layoutModel, am amVar, String str) {
        this.f13153c = context;
        this.f13151a = layoutModel;
        this.f13152b = amVar;
        this.f13155e = str;
        this.f13154d = amVar.i();
    }

    private void c(LayoutParamModel layoutParamModel, String str, RelativeLayout.LayoutParams layoutParams) {
        float fK;
        cb cbVar;
        int i2;
        if (layoutParamModel != null) {
            String size = layoutParamModel.getSize();
            String reference = layoutParamModel.getReference();
            String layout = layoutParamModel.getLayout();
            int iF = 0;
            if (TextUtils.isEmpty(size)) {
                fK = 1.0f;
            } else if (qo.f(size)) {
                fK = qo.k(size);
            } else {
                iF = Math.abs(jn.a.a(this.f13153c, qo.i(size)));
                rm.f("RenderParams", str + " 设置定值 " + iF);
                fK = 1.0f;
            }
            if ("own".equalsIgnoreCase(reference)) {
                rm.e("RenderParams", str + "不应该传入 own reference...");
                return;
            }
            if ("super".equalsIgnoreCase(reference)) {
                if (str.equalsIgnoreCase(layout)) {
                    if (qo.f(size) && this.f13165o > 0) {
                        iF = (int) (Math.abs(fK) * this.f13165o);
                        rm.f("RenderParams", str + " 根据父布局百分比计算 " + iF);
                    }
                    if ("top".equalsIgnoreCase(str)) {
                        this.f13157g = iF;
                        rm.f("RenderParams", str + " 追加 ALIGN_PARENT_TOP");
                        layoutParams.addRule(10, -1);
                    }
                    if ("bottom".equalsIgnoreCase(str)) {
                        this.f13156f = iF;
                        rm.f("RenderParams", str + " 追加 ALIGN_PARENT_BOTTOM");
                        layoutParams.addRule(12, -1);
                        return;
                    }
                    return;
                }
                return;
            }
            Map map = this.f13154d;
            if (map == null || !map.containsKey(reference) || (cbVar = (cb) this.f13154d.get(reference)) == null || (i2 = qo.i(cbVar.b())) <= 0) {
                return;
            }
            if ("top".equalsIgnoreCase(str)) {
                if (qo.f(size)) {
                    iF = (int) ((fK + 1.0f) * cbVar.a().b());
                    rm.f("RenderParams", str + " 根据其他view右边距计算 " + iF);
                }
                this.f13157g = iF;
                if ("bottom".equalsIgnoreCase(layout)) {
                    rm.f("RenderParams", str + " 追加 BELOW " + i2);
                    layoutParams.addRule(3, i2);
                    rm.f("RenderParams", "设置above的节点 " + cbVar);
                    this.f13168r = cbVar;
                }
                if ("top".equalsIgnoreCase(layout)) {
                    rm.f("RenderParams", str + " 追加 ALIGN_TOP " + i2);
                    if (reference.equals(this.f13155e)) {
                        layoutParams.addRule(10, -1);
                    } else {
                        layoutParams.addRule(6, i2);
                    }
                }
            }
            if ("bottom".equalsIgnoreCase(str)) {
                if (qo.f(size)) {
                    iF = (int) ((fK + 1.0f) * cbVar.a().f());
                }
                this.f13156f = iF;
                if ("bottom".equalsIgnoreCase(layout)) {
                    rm.f("RenderParams", str + " 追加 ALIGN_BOTTOM " + i2);
                    if (reference.equals(this.f13155e)) {
                        layoutParams.addRule(12, -1);
                    } else {
                        layoutParams.addRule(8, i2);
                    }
                }
                if ("top".equalsIgnoreCase(layout)) {
                    rm.f("RenderParams", str + " 追加 ABOVE " + i2);
                    layoutParams.addRule(2, i2);
                    rm.f("RenderParams", "设置below的节点 " + cbVar);
                    this.f13168r = cbVar;
                }
            }
        }
    }

    private boolean e(int i2) {
        return i2 <= 0;
    }

    private void j() {
        if (this.f13161k < 0) {
            this.f13161k = -2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int k() {
        /*
            r6 = this;
            java.lang.String r0 = "尝试根据[素材]计算高度..."
            java.lang.String r1 = "RenderParams"
            com.beizi.fusion.rm.f(r1, r0)
            com.beizi.fusion.am r0 = r6.f13152b
            boolean r0 = r0.c()
            r2 = 0
            if (r0 == 0) goto La4
            int r0 = r6.f13166p
            if (r0 <= 0) goto Lbb
            int r3 = r6.f13167q
            if (r3 <= 0) goto Lbb
            int r4 = r6.f13160j
            float r4 = (float) r4
            float r0 = (float) r0
            r5 = 1065353216(0x3f800000, float:1.0)
            float r0 = r0 * r5
            float r4 = r4 / r0
            float r0 = (float) r3
            float r0 = r0 * r4
            int r0 = (int) r0
            int r0 = r6.d(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            com.beizi.fusion.am r4 = r6.f13152b
            java.lang.String r4 = r4.b()
            r3.append(r4)
            java.lang.String r4 = " 主要资源view计算..."
            r3.append(r4)
            int r4 = r6.f13161k
            r3.append(r4)
            java.lang.String r4 = " calculate "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            com.beizi.fusion.rm.f(r1, r3)
            int r3 = r6.f13165o
            if (r3 <= 0) goto L85
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.LayoutModel r3 = r6.f13151a
            boolean r3 = r3.isAutoHeight()
            if (r3 == 0) goto L85
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "容器高度固定时, 计算缩小的尺寸..."
            r3.append(r4)
            com.beizi.fusion.cb r4 = r6.f13168r
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.beizi.fusion.rm.f(r1, r3)
            com.beizi.fusion.cb r3 = r6.f13168r
            if (r3 == 0) goto L85
            com.beizi.fusion.ie r3 = r3.a()
            int r3 = r3.a()
            int r4 = r6.f13165o
            int r4 = r4 - r3
            if (r4 <= 0) goto L86
            if (r4 >= r0) goto L85
            r2 = r4
            goto L86
        L85:
            r2 = r0
        L86:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.beizi.fusion.am r3 = r6.f13152b
            java.lang.String r3 = r3.b()
            r0.append(r3)
            java.lang.String r3 = " 高度根据素材计算 "
            r0.append(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.beizi.fusion.rm.f(r1, r0)
            return r2
        La4:
            com.beizi.fusion.am r0 = r6.f13152b
            com.beizi.fusion.je r0 = r0.d()
            boolean r1 = r0 instanceof android.widget.TextView
            if (r1 == 0) goto Lbb
            android.content.Context r1 = r6.f13153c
            android.widget.TextView r0 = (android.widget.TextView) r0
            int r0 = com.beizi.fusion.bm.a.a(r1, r0)
            int r0 = r6.d(r0)
            return r0
        Lbb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.bm.k():int");
    }

    private int l() {
        rm.f("RenderParams", this.f13152b.b() + " 开始根据[展开]计算...");
        this.f13171u = true;
        List listH = this.f13152b.h();
        if (listH != null && !listH.isEmpty()) {
            int size = listH.size();
            int[] iArr = new int[size];
            for (int i2 = 0; i2 < listH.size(); i2++) {
                iArr[i2] = ((cb) listH.get(i2)).a().a();
            }
            Arrays.sort(iArr);
            int i3 = iArr[size - 1];
            if (i3 > 0) {
                return i3;
            }
        }
        return 0;
    }

    @Override // com.beizi.fusion.ie
    public void a(int i2) {
        LayoutModel layoutModel = this.f13151a;
        if (layoutModel != null) {
            a(layoutModel.getMarginTop(), "top", this.f13163m, i2);
            a(this.f13151a.getMarginBottom(), "bottom", this.f13163m, i2);
        }
    }

    @Override // com.beizi.fusion.ie
    public int b() throws yl {
        if (!this.f13162l) {
            c();
        }
        return this.f13157g;
    }

    @Override // com.beizi.fusion.ie
    public int d() throws yl {
        if (!this.f13162l) {
            c();
        }
        return this.f13161k;
    }

    @Override // com.beizi.fusion.ie
    public int f() throws yl {
        if (!this.f13162l) {
            c();
        }
        return this.f13156f;
    }

    @Override // com.beizi.fusion.ie
    public int g() throws yl {
        if (!this.f13162l) {
            c();
        }
        return this.f13158h;
    }

    @Override // com.beizi.fusion.ie
    public int h() throws yl {
        if (!this.f13162l) {
            c();
        }
        return this.f13160j;
    }

    @Override // com.beizi.fusion.ie
    public RelativeLayout.LayoutParams i() {
        RelativeLayout.LayoutParams layoutParams = this.f13163m;
        layoutParams.width = this.f13160j;
        layoutParams.height = this.f13161k;
        layoutParams.topMargin = this.f13157g;
        layoutParams.rightMargin = this.f13159i;
        layoutParams.bottomMargin = this.f13156f;
        layoutParams.leftMargin = this.f13158h;
        if (rm.a(rm.a.LOG_LEVEL_RENDER)) {
            rm.f("RenderParams", this.f13152b.b() + " 最后的计算结果: 宽: " + this.f13163m.width + " 高: " + this.f13163m.height + " 左边距: " + this.f13163m.leftMargin + " 上边距: " + this.f13163m.topMargin + " 右边距: " + this.f13163m.rightMargin + " 下边距: " + this.f13163m.bottomMargin);
        }
        return this.f13163m;
    }

    @Override // com.beizi.fusion.ie
    public int e() throws yl {
        if (!this.f13162l) {
            c();
        }
        return this.f13159i;
    }

    private void a(LayoutParamModel layoutParamModel, String str, RelativeLayout.LayoutParams layoutParams, int i2) {
        if (layoutParamModel != null) {
            String size = layoutParamModel.getSize();
            String reference = layoutParamModel.getReference();
            String layout = layoutParamModel.getLayout();
            if (TextUtils.isEmpty(size) || !qo.f(size)) {
                return;
            }
            float fK = qo.k(size);
            if ("super".equalsIgnoreCase(reference) && str.equalsIgnoreCase(layout)) {
                int iAbs = (!qo.f(size) || i2 <= 0) ? 0 : (int) (Math.abs(fK) * i2);
                if ("top".equalsIgnoreCase(str)) {
                    layoutParams.topMargin = iAbs;
                }
                if ("bottom".equalsIgnoreCase(str)) {
                    layoutParams.bottomMargin = iAbs;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.par.LayoutParamModel r18, java.lang.String r19, android.widget.RelativeLayout.LayoutParams r20) throws com.beizi.fusion.yl {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.bm.b(com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.par.LayoutParamModel, java.lang.String, android.widget.RelativeLayout$LayoutParams):void");
    }

    private int d(int i2) {
        float fH;
        float fH2;
        if (!this.f13151a.isAutoHeight()) {
            return i2;
        }
        rm.f("RenderParams", "当前节点, 高度自动调节, 需要根据最大, 最小值修正高度...");
        if (qo.f(this.f13151a.getMaxHeight())) {
            fH = this.f13160j * qo.k(this.f13151a.getMaxHeight());
        } else {
            fH = qo.h(this.f13151a.getMaxHeight());
        }
        if (qo.f(this.f13151a.getMinHeight())) {
            fH2 = this.f13160j * qo.k(this.f13151a.getMinHeight());
        } else {
            fH2 = qo.h(this.f13151a.getMinHeight());
        }
        rm.f("RenderParams", "当前节点, 高度自动调节, 最大高度: " + fH + " 最小高度: " + fH2 + " calculate " + i2);
        StringBuilder sb = new StringBuilder();
        sb.append("parent width ");
        sb.append(this.f13164n);
        sb.append(" parent height ");
        sb.append(this.f13165o);
        rm.f("RenderParams", sb.toString());
        return i2 <= this.f13165o ? i2 : (fH <= 0.0f || ((float) i2) <= fH) ? (fH2 <= 0.0f || ((float) i2) >= fH2) ? i2 : (int) fH2 : (int) fH;
    }

    private void a(LayoutParamModel layoutParamModel, String str, RelativeLayout.LayoutParams layoutParams) {
        if (layoutParamModel != null) {
            if ("x".equals(str)) {
                layoutParams.addRule(14, -1);
            }
            if ("y".equals(str)) {
                layoutParams.addRule(15, -1);
                String reference = layoutParamModel.getReference();
                if (TextUtils.isEmpty(reference) || ((cb) this.f13154d.get(reference)) == null) {
                    return;
                }
                layoutParams.addRule(4, qo.i(reference));
            }
        }
    }

    private void a(LayoutParamModel layoutParamModel) throws yl {
        try {
            this.f13161k = c(layoutParamModel);
        } catch (yl unused) {
            this.f13161k = -2;
        }
        if (this.f13161k <= 0) {
            try {
                this.f13161k = k();
            } catch (yl unused2) {
                this.f13161k = -2;
            }
        }
        if (this.f13161k <= 0) {
            a("temp");
            this.f13161k = l();
        }
        try {
            j();
            if (this.f13169s) {
                this.f13160j = (int) (qo.k(this.f13151a.getWidth().getSize()) * this.f13161k);
            }
            rm.f("RenderParams", this.f13152b.b() + " calculate self height " + this.f13161k);
        } catch (yl unused3) {
            this.f13161k = -2;
            throw new yl("高度无法修正...");
        }
    }

    @Override // com.beizi.fusion.ie
    public void a(ie.a aVar) {
        this.f13170t = aVar;
        if (this.f13152b.g() > 0) {
            Iterator it = this.f13152b.h().iterator();
            while (it.hasNext()) {
                ((cb) it.next()).a().a(this.f13170t);
            }
        }
    }

    private void a(String str) {
        List<cb> listH = this.f13152b.h();
        if (listH == null || listH.isEmpty()) {
            return;
        }
        for (cb cbVar : listH) {
            ie ieVarA = cbVar.a();
            if ("height".equalsIgnoreCase(str)) {
                ieVarA.c(this.f13161k);
            }
            if ("width".equalsIgnoreCase(str)) {
                ieVarA.b(this.f13160j);
            }
            if ("temp".equalsIgnoreCase(str) && cbVar.c()) {
                ieVarA.c(this.f13165o);
            }
            rm.f("RenderParams", cbVar.b() + " 设置宽高 " + this.f13161k + " " + this.f13160j);
        }
    }

    private void b(LayoutParamModel layoutParamModel) {
        cb cbVar;
        if (layoutParamModel != null) {
            String size = layoutParamModel.getSize();
            String reference = layoutParamModel.getReference();
            String layout = layoutParamModel.getLayout();
            int iA = -2;
            if (!TextUtils.isEmpty(size)) {
                if (qo.f(size)) {
                    float fK = qo.k(size);
                    if ("own".equalsIgnoreCase(reference)) {
                        if ("height".equalsIgnoreCase(layout)) {
                            int i2 = this.f13161k;
                            if (i2 > 0) {
                                iA = (int) (i2 * Math.abs(fK));
                                rm.f("RenderParams", "宽度根据[定高] * 百分比计算 " + fK + " : " + iA);
                            } else {
                                rm.e("RenderParams", "宽度根据[高]计算, 但高度不定...");
                                this.f13169s = true;
                            }
                        }
                    } else if ("super".equalsIgnoreCase(reference)) {
                        float fAbs = Math.abs(fK);
                        int i3 = this.f13164n;
                        int i4 = (int) (fAbs * i3);
                        int i5 = this.f13158h;
                        int i6 = this.f13159i;
                        iA = (i4 + i5) + i6 > i3 ? (i3 - i5) - i6 : i4;
                        rm.f("RenderParams", "宽度根据父布局 * 百分比计算 " + fK + " : " + iA);
                        int iB = b(layout);
                        if (iB > 0) {
                            iA = (int) (fK * iB);
                        }
                    } else {
                        Map map = this.f13154d;
                        if (map != null && map.get(reference) != null && (cbVar = (cb) this.f13154d.get(reference)) != null) {
                            if ("width".equalsIgnoreCase(layout)) {
                                iA = (int) (cbVar.a().h() * Math.abs(fK));
                                rm.f("RenderParams", "宽度根据其他view的[宽]计算 " + iA);
                            }
                            if ("height".equalsIgnoreCase(layout)) {
                                iA = (int) (cbVar.a().d() * Math.abs(fK));
                                rm.f("RenderParams", "宽度根据其他view的[高]计算 " + iA);
                            }
                        }
                    }
                } else {
                    iA = jn.a.a(this.f13153c, qo.i(size));
                    rm.f("RenderParams", "宽度根据model固定值计算 " + iA);
                }
            }
            this.f13160j = iA;
            return;
        }
        this.f13160j = (this.f13164n - this.f13158h) - this.f13159i;
    }

    private int c(LayoutParamModel layoutParamModel) throws yl {
        int iA;
        cb cbVar;
        rm.f("RenderParams", "尝试根据[model]计算高度...");
        if (layoutParamModel != null) {
            String size = layoutParamModel.getSize();
            String reference = layoutParamModel.getReference();
            String layout = layoutParamModel.getLayout();
            if (!TextUtils.isEmpty(size)) {
                if (qo.f(size)) {
                    float fK = qo.k(size);
                    iA = 0;
                    if ("own".equalsIgnoreCase(reference)) {
                        if ("width".equalsIgnoreCase(layout)) {
                            if (!this.f13169s) {
                                iA = (int) (Math.abs(fK) * this.f13160j);
                                rm.f("RenderParams", "高度根据[宽] * 百分比计算 " + Math.abs(fK) + " : " + iA);
                            } else {
                                throw new yl("宽高相互依赖自身值...");
                            }
                        }
                    } else if ("super".equalsIgnoreCase(reference)) {
                        if (this.f13165o > 0) {
                            int iAbs = (int) (Math.abs(fK) * this.f13165o);
                            int i2 = this.f13157g;
                            int i3 = this.f13156f;
                            int i4 = iAbs + i2 + i3;
                            int i5 = this.f13164n;
                            iA = i4 > i5 ? (i5 - i2) - i3 : iAbs;
                            rm.f("RenderParams", "高度根据父布局[定高] * 百分比计算 " + Math.abs(fK) + " : " + iA);
                        }
                        int iB = b(layout);
                        if (iB > 0) {
                            iA = (int) (fK * iB);
                        }
                    } else {
                        Map map = this.f13154d;
                        if (map != null && map.get(reference) != null && (cbVar = (cb) this.f13154d.get(reference)) != null) {
                            if ("width".equalsIgnoreCase(layout)) {
                                iA = (int) (cbVar.a().h() * Math.abs(fK));
                                rm.f("RenderParams", "高度根据其他view[宽] * 百分比计算 " + Math.abs(fK) + " : " + iA);
                            }
                            if ("height".equalsIgnoreCase(layout)) {
                                iA = (int) (cbVar.a().d() * Math.abs(fK));
                                rm.f("RenderParams", "高度根据其他view[高] * 百分比计算 " + Math.abs(fK) + " : " + iA);
                            }
                        }
                    }
                } else {
                    iA = jn.a.a(this.f13153c, qo.i(size));
                    rm.f("RenderParams", "高度根据model固定值计算 " + iA);
                }
                rm.f("RenderParams", this.f13152b.b() + " 高度根据model计算 " + iA);
                return iA;
            }
        }
        throw new yl("height结构为空...");
    }

    @Override // com.beizi.fusion.ie
    public int a() throws yl {
        if (!this.f13162l) {
            c();
        }
        int i2 = this.f13156f + this.f13157g + this.f13161k;
        cb cbVar = this.f13168r;
        return cbVar != null ? i2 + cbVar.a().a() : i2;
    }

    @Override // com.beizi.fusion.ie
    public void a(int i2, int i3) {
        this.f13166p = i2;
        this.f13167q = i3;
    }

    private int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        str.getClass();
        switch (str) {
            case "bottom":
                return this.f13156f;
            case "top":
                return this.f13157g;
            case "left":
                return this.f13158h;
            case "right":
                return this.f13159i;
            default:
                return 0;
        }
    }

    @Override // com.beizi.fusion.ie
    public void c() throws yl {
        if (this.f13162l) {
            rm.f("RenderParams", this.f13152b.b() + "已经计算过宽高...");
            return;
        }
        rm.f("RenderParams", "--------------------Render Calculate------------------ " + this.f13152b.b());
        if (this.f13163m == null) {
            this.f13163m = new RelativeLayout.LayoutParams(-1, -2);
        }
        try {
            if (this.f13151a != null) {
                if (e(this.f13164n)) {
                    this.f13164n = jn.f(this.f13153c);
                }
                rm.f("RenderParams", this.f13152b.b() + "开始计算[横向margin]...");
                b(this.f13151a.getMarginRight(), ScrollClickView.DIR_RIGHT, this.f13163m);
                b(this.f13151a.getMarginLeft(), ScrollClickView.DIR_LEFT, this.f13163m);
                a(this.f13151a.getCenterX(), "x", this.f13163m);
                rm.f("RenderParams", this.f13152b.b() + "开始计算[纵向margin]...");
                c(this.f13151a.getMarginTop(), "top", this.f13163m);
                c(this.f13151a.getMarginBottom(), "bottom", this.f13163m);
                a(this.f13151a.getCenterY(), "y", this.f13163m);
                rm.f("RenderParams", this.f13152b.b() + "开始计算自身[宽]...");
                b(this.f13151a.getWidth());
                a("width");
                rm.f("RenderParams", this.f13152b.b() + "开始计算自身[高]...");
                a(this.f13151a.getHeight());
                a("height");
                this.f13162l = true;
                rm.f("RenderParams", "--------------------Calculate Finished------------------ " + this.f13152b.b());
                ie.a aVar = this.f13170t;
                if (aVar != null) {
                    aVar.b(this.f13152b);
                }
                if (this.f13152b.g() > 0) {
                    List<cb> listH = this.f13152b.h();
                    Collections.sort(listH, xl.a());
                    for (cb cbVar : listH) {
                        cbVar.a().c();
                        if (this.f13171u) {
                            cbVar.a().a(this.f13163m.height);
                        }
                    }
                    return;
                }
                return;
            }
            throw new yl("LayoutModel is null");
        } catch (yl e2) {
            this.f13162l = false;
            this.f13163m = null;
            rm.e("RenderParams", " RenderException " + e2.getLocalizedMessage());
            rm.a(e2);
            ie.a aVar2 = this.f13170t;
            if (aVar2 != null) {
                aVar2.a(this.f13152b);
            }
        }
    }

    @Override // com.beizi.fusion.ie
    public void b(int i2) {
        this.f13164n = i2;
    }

    @Override // com.beizi.fusion.ie
    public void c(int i2) {
        this.f13165o = i2;
    }
}
