package com.byazt.at;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.LongSparseArray;
import com.byazt.dt.v;
import com.byazt.mo.u;
import com.byazt.yg.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 19})
/* loaded from: classes2.dex */
public class jl extends jx {

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.dt.hp<Float, Float> f18201b;
    public com.byazt.dt.hp<Float, Float> cx;

    /* renamed from: d, reason: collision with root package name */
    public com.byazt.dt.hp<Float, Float> f18202d;
    public com.byazt.dt.hp<Float, Float> di;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f18203e;
    public final StringBuilder eb;
    public com.byazt.dt.hp<Integer, Integer> ec;
    public final Paint gu;
    public String hq;
    public final Map<com.byazt.yg.j, List<com.byazt.fj.j>> jl;

    /* renamed from: k, reason: collision with root package name */
    public final List<hp> f18204k;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.dt.hp<Integer, Integer> f18205n;
    public com.byazt.dt.hp<Integer, Integer> ns;

    /* renamed from: o, reason: collision with root package name */
    public com.byazt.dt.hp<Float, Float> f18206o;

    /* renamed from: q, reason: collision with root package name */
    public final Matrix f18207q;

    /* renamed from: s, reason: collision with root package name */
    public final RectF f18208s;
    public com.byazt.dt.hp<Integer, Integer> sz;

    /* renamed from: u, reason: collision with root package name */
    public final v f18209u;

    /* renamed from: v, reason: collision with root package name */
    public int f18210v;
    public final com.byazt.na.a vv;
    public com.byazt.dt.hp<Typeface, Typeface> wv;
    public final com.byazt.na.s xs;
    public final LongSparseArray<String> zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 1227})
    /* renamed from: com.byazt.at.jl$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[l.hp.values().length];
            hp = iArr;
            try {
                iArr[l.hp.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[l.hp.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[l.hp.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 757})
    public static class hp {
        public String hp;

        /* renamed from: l, reason: collision with root package name */
        public float f18211l;

        private hp() {
            this.hp = "";
            this.f18211l = 0.0f;
        }

        public void hp(String str, float f2) {
            this.hp = str;
            this.f18211l = f2;
        }
    }

    public jl(com.byazt.na.s sVar, s sVar2) {
        com.byazt.ha.l lVar;
        com.byazt.ha.l lVar2;
        com.byazt.ha.hp hpVar;
        com.byazt.ha.hp hpVar2;
        super(sVar, sVar2);
        this.eb = new StringBuilder(2);
        this.f18208s = new RectF();
        this.f18207q = new Matrix();
        int i2 = 1;
        this.f18203e = new Paint(i2) { // from class: com.byazt.at.jl.1
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.gu = new Paint(i2) { // from class: com.byazt.at.jl.2
            {
                setStyle(Paint.Style.STROKE);
            }
        };
        this.jl = new HashMap();
        this.zy = new LongSparseArray<>();
        this.f18204k = new ArrayList();
        this.f18210v = 0;
        this.xs = sVar;
        this.vv = sVar2.hp();
        v vVarHp = sVar2.ec().hp();
        this.f18209u = vVarHp;
        vVarHp.hp(this);
        hp(vVarHp);
        com.byazt.ha.gu guVarSz = sVar2.sz();
        if (guVarSz != null && (hpVar2 = guVarSz.hp) != null) {
            com.byazt.dt.hp<Integer, Integer> hpVarHp = hpVar2.hp();
            this.ec = hpVarHp;
            hpVarHp.hp(this);
            hp(this.ec);
        }
        if (guVarSz != null && (hpVar = guVarSz.f20643l) != null) {
            com.byazt.dt.hp<Integer, Integer> hpVarHp2 = hpVar.hp();
            this.f18205n = hpVarHp2;
            hpVarHp2.hp(this);
            hp(this.f18205n);
        }
        if (guVarSz != null && (lVar2 = guVarSz.jx) != null) {
            com.byazt.dt.hp<Float, Float> hpVarHp3 = lVar2.hp();
            this.cx = hpVarHp3;
            hpVarHp3.hp(this);
            hp(this.cx);
        }
        if (guVarSz == null || (lVar = guVarSz.f20642j) == null) {
            return;
        }
        com.byazt.dt.hp<Float, Float> hpVarHp4 = lVar.hp();
        this.di = hpVarHp4;
        hpVarHp4.hp(this);
        hp(this.di);
    }

    private String jx(String str, float f2, float f3, com.byazt.yg.jx jxVar, float f4, float f5, boolean z2) {
        if (str.length() <= 1) {
            return str + "...";
        }
        float f6 = f2 / 2.0f;
        float fHp = 0.0f;
        float f7 = 0.0f;
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length() / 2) {
            float fHp2 = hp(str.charAt(i2), jxVar, f4, f5, z2) + f7;
            if (fHp2 > f6) {
                break;
            }
            i3 = i2 + 1;
            i2 = i3;
            f7 = fHp2;
        }
        float f8 = f2 - f7;
        int length = str.length();
        for (int length2 = str.length() - 1; length2 >= str.length() / 2; length2--) {
            fHp += hp(str.charAt(length2), jxVar, f4, f5, z2);
            if (fHp > f8) {
                break;
            }
            length = length2;
        }
        if (i3 == 0 || length == str.length()) {
            return hp(str, f2, f3, jxVar, f4, f5, z2);
        }
        return str.substring(0, i3) + "..." + str.substring(length);
    }

    private void k() {
        this.f18210v = 0;
    }

    private hp v() {
        if (this.f18210v >= this.f18204k.size()) {
            this.f18204k.add(new hp());
        }
        List<hp> list = this.f18204k;
        int i2 = this.f18210v;
        this.f18210v = i2 + 1;
        return list.get(i2);
    }

    @Override // com.byazt.at.jx, com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        super.hp(rectF, matrix, z2);
        rectF.set(0.0f, 0.0f, this.vv.j().width(), this.vv.j().height());
    }

    @Override // com.byazt.at.jx
    public void l(Canvas canvas, Matrix matrix, int i2) throws NumberFormatException {
        super.l(canvas, matrix, i2);
        com.byazt.yg.l lVarEb = this.f18209u.eb();
        com.byazt.yg.jx jxVar = this.vv.u().get(lVarEb.f27920l);
        if (jxVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        hp(lVarEb, matrix);
        if (this.xs.o()) {
            hp(lVarEb, matrix, jxVar, canvas);
        } else {
            hp(lVarEb, jxVar, canvas);
        }
        canvas.restore();
    }

    private void hp(com.byazt.yg.l lVar, Matrix matrix) {
        com.byazt.dt.hp<Integer, Integer> hpVar = this.sz;
        if (hpVar != null) {
            this.f18203e.setColor(hpVar.eb().intValue());
        } else {
            com.byazt.dt.hp<Integer, Integer> hpVar2 = this.ec;
            if (hpVar2 != null) {
                this.f18203e.setColor(hpVar2.eb().intValue());
            } else {
                this.f18203e.setColor(lVar.f27922s);
            }
        }
        com.byazt.dt.hp<Integer, Integer> hpVar3 = this.ns;
        if (hpVar3 != null) {
            this.gu.setColor(hpVar3.eb().intValue());
        } else {
            com.byazt.dt.hp<Integer, Integer> hpVar4 = this.f18205n;
            if (hpVar4 != null) {
                this.gu.setColor(hpVar4.eb().intValue());
            } else {
                this.gu.setColor(lVar.f27921q);
            }
        }
        int iIntValue = ((this.f18216j.hp() == null ? 100 : this.f18216j.hp().eb().intValue()) * 255) / 100;
        this.f18203e.setAlpha(iIntValue);
        this.gu.setAlpha(iIntValue);
        com.byazt.dt.hp<Float, Float> hpVar5 = this.f18201b;
        if (hpVar5 != null) {
            this.gu.setStrokeWidth(hpVar5.eb().floatValue());
            return;
        }
        com.byazt.dt.hp<Float, Float> hpVar6 = this.cx;
        if (hpVar6 != null) {
            this.gu.setStrokeWidth(hpVar6.eb().floatValue());
        } else {
            this.gu.setStrokeWidth(lVar.f27917e * com.byazt.ze.e.hp());
        }
    }

    private List<String> l(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private String l(String str, float f2, float f3, com.byazt.yg.jx jxVar, float f4, float f5, boolean z2) {
        int i2;
        int length = str.length();
        int length2 = str.length() - 1;
        float fHp = 0.0f;
        while (true) {
            int i3 = length2;
            i2 = length;
            length = i3;
            if (length < 0) {
                break;
            }
            fHp += hp(str.charAt(length), jxVar, f4, f5, z2);
            if (fHp > f2) {
                break;
            }
            length2 = length - 1;
        }
        return "..." + str.substring(i2);
    }

    private boolean l(int i2) {
        return Character.getType(i2) == 16 || Character.getType(i2) == 27 || Character.getType(i2) == 6 || Character.getType(i2) == 28 || Character.getType(i2) == 8 || Character.getType(i2) == 19;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ca A[PHI: r4
      0x00ca: PHI (r4v10 int) = (r4v0 int), (r4v1 int) binds: [B:42:0x00c8, B:45:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ea A[LOOP:0: B:52:0x00e8->B:53:0x00ea, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012e A[LOOP:1: B:59:0x0128->B:61:0x012e, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(com.byazt.yg.l r19, android.graphics.Matrix r20, com.byazt.yg.jx r21, android.graphics.Canvas r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.at.jl.hp(com.byazt.yg.l, android.graphics.Matrix, com.byazt.yg.jx, android.graphics.Canvas):void");
    }

    private void hp(String str, com.byazt.yg.l lVar, com.byazt.yg.jx jxVar, Canvas canvas, float f2, float f3, float f4) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            com.byazt.yg.j jVar = this.vv.v().get(com.byazt.yg.j.hp(str.charAt(i2), jxVar.hp(), jxVar.jx()));
            if (jVar != null) {
                hp(jVar, f3, lVar, canvas);
                canvas.translate((((float) jVar.l()) * f3 * com.byazt.ze.e.hp()) + f4, 0.0f);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f7 A[PHI: r7
      0x00f7: PHI (r7v4 int) = (r7v0 int), (r7v1 int) binds: [B:44:0x00f5, B:47:0x00fb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011f A[LOOP:0: B:54:0x011d->B:55:0x011f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015e A[LOOP:1: B:61:0x0158->B:63:0x015e, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(com.byazt.yg.l r19, com.byazt.yg.jx r20, android.graphics.Canvas r21) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.at.jl.hp(com.byazt.yg.l, com.byazt.yg.jx, android.graphics.Canvas):void");
    }

    private void hp(Canvas canvas, com.byazt.yg.l lVar, int i2, float f2) {
        PointF pointF = lVar.jl;
        PointF pointF2 = lVar.zy;
        float fHp = com.byazt.ze.e.hp();
        float f3 = (i2 * lVar.f27916a * fHp) + (pointF == null ? 0.0f : (lVar.f27916a * 0.6f * fHp) + pointF.y);
        float f4 = pointF == null ? 0.0f : pointF.x;
        float f5 = pointF2 != null ? pointF2.x : 0.0f;
        int i3 = AnonymousClass3.hp[lVar.f27918j.ordinal()];
        if (i3 == 1) {
            canvas.translate(f4, f3);
        } else if (i3 == 2) {
            canvas.translate((f4 + f5) - f2, f3);
        } else {
            if (i3 != 3) {
                return;
            }
            canvas.translate((f4 + (f5 / 2.0f)) - (f2 / 2.0f), f3);
        }
    }

    private Typeface hp(com.byazt.yg.jx jxVar) {
        Typeface typefaceEb;
        com.byazt.dt.hp<Typeface, Typeface> hpVar = this.wv;
        if (hpVar != null && (typefaceEb = hpVar.eb()) != null) {
            return typefaceEb;
        }
        Typeface typefaceHp = this.xs.hp(jxVar);
        return typefaceHp != null ? typefaceHp : jxVar.j();
    }

    private void hp(String str, com.byazt.yg.l lVar, Canvas canvas, float f2) {
        int length = 0;
        while (length < str.length()) {
            String strHp = hp(str, length);
            length += strHp.length();
            hp(strHp, lVar, canvas);
            canvas.translate(this.f18203e.measureText(strHp) + f2, 0.0f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.byazt.at.jl.hp> hp(java.lang.String r23, float r24, com.byazt.yg.jx r25, float r26, float r27, boolean r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.at.jl.hp(java.lang.String, float, com.byazt.yg.jx, float, float, boolean, int, int):java.util.List");
    }

    private String hp(String str, int i2, float f2, float f3, com.byazt.yg.jx jxVar, float f4, float f5, boolean z2, int i3) {
        if (i3 == 3) {
            return hp(str, i2, f2, jxVar, f4, f5, z2);
        }
        float f6 = f2 - f3;
        if (f6 <= 0.0f) {
            return null;
        }
        String strSubstring = str.substring(i2);
        if (i3 == 0) {
            return hp(strSubstring, f6, f3, jxVar, f4, f5, z2);
        }
        if (i3 == 1) {
            return l(strSubstring, f6, f3, jxVar, f4, f5, z2);
        }
        if (i3 != 2) {
            return hp(strSubstring, f6, f3, jxVar, f4, f5, z2);
        }
        return jx(strSubstring, f6, f3, jxVar, f4, f5, z2);
    }

    private String hp(String str, int i2, float f2, com.byazt.yg.jx jxVar, float f3, float f4, boolean z2) {
        String strSubstring = str.substring(i2);
        float fHp = 0.0f;
        int i3 = 0;
        int i4 = 0;
        while (i3 < strSubstring.length()) {
            fHp += hp(strSubstring.charAt(i3), jxVar, f3, f4, z2);
            if (fHp > f2) {
                break;
            }
            i4 = i3 + 1;
            i3 = i4;
        }
        return strSubstring.substring(0, i4);
    }

    private String hp(String str, float f2, float f3, com.byazt.yg.jx jxVar, float f4, float f5, boolean z2) {
        float fHp = 0.0f;
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            fHp += hp(str.charAt(i2), jxVar, f4, f5, z2);
            if (fHp > f2) {
                break;
            }
            i3 = i2 + 1;
            i2 = i3;
        }
        return str.substring(0, i3) + "...";
    }

    private float hp(char c2, com.byazt.yg.jx jxVar, float f2, float f3, boolean z2) {
        float fMeasureText;
        if (z2) {
            com.byazt.yg.j jVar = this.vv.v().get(com.byazt.yg.j.hp(c2, jxVar.hp(), jxVar.jx()));
            if (jVar == null) {
                return 0.0f;
            }
            fMeasureText = ((float) jVar.l()) * f2 * com.byazt.ze.e.hp();
        } else {
            fMeasureText = this.f18203e.measureText(String.valueOf(c2));
        }
        return fMeasureText + f3;
    }

    private void hp(com.byazt.yg.j jVar, float f2, com.byazt.yg.l lVar, Canvas canvas) {
        List<com.byazt.fj.j> listHp = hp(jVar);
        for (int i2 = 0; i2 < listHp.size(); i2++) {
            Path pathJ = listHp.get(i2).j();
            pathJ.computeBounds(this.f18208s, false);
            this.f18207q.reset();
            this.f18207q.preTranslate(0.0f, (-lVar.eb) * com.byazt.ze.e.hp());
            this.f18207q.preScale(f2, f2);
            pathJ.transform(this.f18207q);
            if (lVar.gu) {
                hp(pathJ, this.f18203e, canvas);
                hp(pathJ, this.gu, canvas);
            } else {
                hp(pathJ, this.gu, canvas);
                hp(pathJ, this.f18203e, canvas);
            }
        }
    }

    private void hp(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void hp(String str, com.byazt.yg.l lVar, Canvas canvas) {
        if (lVar.gu) {
            hp(str, this.f18203e, canvas);
            hp(str, this.gu, canvas);
        } else {
            hp(str, this.gu, canvas);
            hp(str, this.f18203e, canvas);
        }
    }

    private void hp(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private List<com.byazt.fj.j> hp(com.byazt.yg.j jVar) {
        if (this.jl.containsKey(jVar)) {
            return this.jl.get(jVar);
        }
        List<u> listHp = jVar.hp();
        int size = listHp.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new com.byazt.fj.j(this.xs, this, listHp.get(i2), this.vv));
        }
        this.jl.put(jVar, arrayList);
        return arrayList;
    }

    private String hp(String str, int i2) {
        int iCodePointAt = str.codePointAt(i2);
        int iCharCount = Character.charCount(iCodePointAt) + i2;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!l(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j2 = iCodePointAt;
        if (this.zy.indexOfKey(j2) >= 0) {
            return this.zy.get(j2);
        }
        this.eb.setLength(0);
        while (i2 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i2);
            this.eb.appendCodePoint(iCodePointAt3);
            i2 += Character.charCount(iCodePointAt3);
        }
        String string = this.eb.toString();
        this.zy.put(j2, string);
        return string;
    }

    private List<hp> hp(List<hp> list, int i2, int i3, float f2, com.byazt.yg.jx jxVar, float f3, float f4, boolean z2) {
        String strHp;
        ArrayList arrayList = new ArrayList();
        if (i2 == 1) {
            String strHp2 = hp(list);
            if (i3 == 3) {
                strHp = hp(strHp2, f2, jxVar, f3, f4, z2);
            } else {
                strHp = hp(strHp2, f2, jxVar, f3, f4, z2, i3);
            }
            hp hpVarV = v();
            hpVarV.hp(strHp, f2);
            arrayList.add(hpVarV);
            return arrayList;
        }
        int i4 = 0;
        if (i3 != 0) {
            if (i3 == 1) {
                int i5 = i2 - 1;
                String strHp3 = hp(hp(list, 0, list.size() - i5), f2, jxVar, f3, f4, z2, 1);
                hp hpVarV2 = v();
                hpVarV2.hp(strHp3, f2);
                arrayList.add(hpVarV2);
                for (int size = list.size() - i5; size < list.size(); size++) {
                    arrayList.add(list.get(size));
                }
            } else if (i3 == 2) {
                int i6 = i2 / 2;
                while (i4 < i6) {
                    arrayList.add(list.get(i4));
                    i4++;
                }
                int i7 = (i2 - i6) - 1;
                int size2 = list.size() - i7;
                if (size2 <= i6) {
                    size2 = list.size();
                }
                String strHp4 = hp(hp(list, i6, size2), f2, jxVar, f3, f4, z2, 2);
                hp hpVarV3 = v();
                hpVarV3.hp(strHp4, f2);
                arrayList.add(hpVarV3);
                for (int size3 = list.size() - i7; size3 < list.size(); size3++) {
                    arrayList.add(list.get(size3));
                }
            } else if (i3 != 3) {
                while (true) {
                    int i8 = i2 - 1;
                    if (i4 < i8) {
                        arrayList.add(list.get(i4));
                        i4++;
                    } else {
                        String strHp5 = hp(hp(list, i8, list.size()), f2, jxVar, f3, f4, z2, 0);
                        hp hpVarV4 = v();
                        hpVarV4.hp(strHp5, f2);
                        arrayList.add(hpVarV4);
                        return arrayList;
                    }
                }
            } else {
                while (i4 < i2) {
                    arrayList.add(list.get(i4));
                    i4++;
                }
            }
            return arrayList;
        }
        while (true) {
            int i9 = i2 - 1;
            if (i4 < i9) {
                arrayList.add(list.get(i4));
                i4++;
            } else {
                String strHp6 = hp(hp(list, i9, list.size()), f2, jxVar, f3, f4, z2, 0);
                hp hpVarV5 = v();
                hpVarV5.hp(strHp6, f2);
                arrayList.add(hpVarV5);
                return arrayList;
            }
        }
    }

    private String hp(List<hp> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<hp> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().hp);
        }
        return sb.toString();
    }

    private String hp(List<hp> list, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        while (i2 < i3 && i2 < list.size()) {
            sb.append(list.get(i2).hp);
            i2++;
        }
        return sb.toString();
    }

    private String hp(String str, float f2, com.byazt.yg.jx jxVar, float f3, float f4, boolean z2, int i2) {
        float fMeasureText;
        if (z2) {
            com.byazt.yg.j jVar = this.vv.v().get(com.byazt.yg.j.hp(str.length() > 0 ? str.charAt(0) : ' ', jxVar.hp(), jxVar.jx()));
            fMeasureText = (jVar != null ? (((float) jVar.l()) * f3 * com.byazt.ze.e.hp()) + f4 : 10.0f) * 3.0f;
        } else {
            fMeasureText = this.f18203e.measureText("...") + (2.0f * f4);
        }
        String strHp = hp(str, 0, f2, fMeasureText, jxVar, f3, f4, z2, i2);
        return strHp != null ? strHp : str;
    }

    private String hp(String str, float f2, com.byazt.yg.jx jxVar, float f3, float f4, boolean z2) {
        return hp(str, 0, f2, jxVar, f3, f4, z2);
    }

    public void hp(String str) {
        this.hq = str;
    }
}
