package com.byazt.bd;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.byazt.na.jx;
import com.byazt.yg.s;
import com.byazt.ze.a;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1362, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: j, reason: collision with root package name */
    public final AssetManager f18533j;

    /* renamed from: w, reason: collision with root package name */
    public jx f18535w;
    public final s<String> hp = new s<>();

    /* renamed from: l, reason: collision with root package name */
    public final Map<s<String>, Typeface> f18534l = new HashMap();
    public final Map<String, Typeface> jx = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f18532a = ".ttf";

    public hp(Drawable.Callback callback, jx jxVar) {
        this.f18535w = jxVar;
        if (callback instanceof View) {
            this.f18533j = ((View) callback).getContext().getAssets();
        } else {
            a.l("LottieDrawable must be inside of a view for images to work.");
            this.f18533j = null;
        }
    }

    private Typeface l(com.byazt.yg.jx jxVar) {
        Typeface typefaceCreateFromAsset;
        String strHp = jxVar.hp();
        Typeface typeface = this.jx.get(strHp);
        if (typeface != null) {
            return typeface;
        }
        String strJx = jxVar.jx();
        String strL = jxVar.l();
        jx jxVar2 = this.f18535w;
        if (jxVar2 != null) {
            typefaceCreateFromAsset = jxVar2.hp(strHp, strJx, strL);
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = this.f18535w.hp(strHp);
            }
        } else {
            typefaceCreateFromAsset = null;
        }
        jx jxVar3 = this.f18535w;
        if (jxVar3 != null && typefaceCreateFromAsset == null) {
            String strL2 = jxVar3.l(strHp, strJx, strL);
            if (strL2 == null) {
                strL2 = this.f18535w.l(strHp);
            }
            if (strL2 != null) {
                try {
                    typefaceCreateFromAsset = Typeface.createFromAsset(this.f18533j, strL2);
                } catch (Throwable unused) {
                    typefaceCreateFromAsset = Typeface.DEFAULT;
                }
            }
        }
        if (jxVar.j() != null) {
            return jxVar.j();
        }
        if (typefaceCreateFromAsset == null) {
            try {
                typefaceCreateFromAsset = Typeface.createFromAsset(this.f18533j, "fonts/" + strHp + this.f18532a);
            } catch (Throwable unused2) {
                typefaceCreateFromAsset = Typeface.DEFAULT;
            }
        }
        this.jx.put(strHp, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    public void hp(jx jxVar) {
        this.f18535w = jxVar;
    }

    public void hp(String str) {
        this.f18532a = str;
    }

    public Typeface hp(com.byazt.yg.jx jxVar) {
        this.hp.hp(jxVar.hp(), jxVar.jx());
        Typeface typeface = this.f18534l.get(this.hp);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceHp = hp(l(jxVar), jxVar.jx());
        this.f18534l.put(this.hp, typefaceHp);
        return typefaceHp;
    }

    private Typeface hp(Typeface typeface, String str) {
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        int i2 = (zContains && zContains2) ? 3 : zContains ? 2 : zContains2 ? 1 : 0;
        return typeface.getStyle() == i2 ? typeface : Typeface.create(typeface, i2);
    }
}
