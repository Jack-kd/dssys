package com.byazt.bd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.byazt.na.j;
import com.byazt.na.q;
import com.byazt.ze.a;
import com.byazt.ze.e;
import java.io.IOException;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1362, 34})
/* loaded from: classes2.dex */
public class l {
    public static final Object hp = new Object();

    /* renamed from: j, reason: collision with root package name */
    public j f18536j;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f18537l;

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, q> f18538w;

    public l(Drawable.Callback callback, String str, j jVar, Map<String, q> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.jx = str;
        } else {
            this.jx = str + '/';
        }
        this.f18538w = map;
        hp(jVar);
        if (callback instanceof View) {
            this.f18537l = ((View) callback).getContext().getApplicationContext();
        } else {
            this.f18537l = null;
        }
    }

    private Bitmap l(String str, Bitmap bitmap) {
        synchronized (hp) {
        }
        return bitmap;
    }

    public void hp(j jVar) {
        this.f18536j = jVar;
    }

    public Bitmap hp(String str, Bitmap bitmap) {
        if (bitmap != null) {
            return this.f18538w.get(str).v();
        }
        q qVar = this.f18538w.get(str);
        Bitmap bitmapV = qVar.v();
        qVar.hp(null);
        return bitmapV;
    }

    public Bitmap hp(String str) {
        q qVar = this.f18538w.get(str);
        if (qVar == null) {
            return null;
        }
        Bitmap bitmapV = qVar.v();
        if (bitmapV != null) {
            return bitmapV;
        }
        j jVar = this.f18536j;
        if (jVar != null) {
            return jVar.hp(qVar);
        }
        Context context = this.f18537l;
        if (context == null) {
            return null;
        }
        String strZy = qVar.zy();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strZy.startsWith("data:") && strZy.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strZy.substring(strZy.indexOf(44) + 1), 0);
                return l(str, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException e2) {
                a.hp("data URL did not have correct base64 format.", e2);
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.jx)) {
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.jx + strZy), null, options);
                    if (bitmapDecodeStream == null) {
                        a.l("Decoded image `" + str + "` is null.");
                        return null;
                    }
                    return l(str, e.hp(bitmapDecodeStream, qVar.hp(), qVar.l()));
                } catch (IllegalArgumentException e3) {
                    a.hp("Unable to decode image `" + str + "`.", e3);
                    return null;
                }
            }
            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
        } catch (IOException e4) {
            a.hp("Unable to open asset.", e4);
            return null;
        }
    }

    public boolean hp(Context context) {
        return (context == null && this.f18537l == null) || this.f18537l.equals(context);
    }
}
