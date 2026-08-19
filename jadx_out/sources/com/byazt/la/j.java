package com.byazt.la;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.jz.sz;
import com.byazt.nke.b;
import com.byazt.ql.k;
import com.byazt.wnd.GifView;
import com.byazt.xci.t;
import com.byazt.ymw.jl;
import com.byazt.ymw.u;
import com.byazt.zs.hp;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.Map;
import x.AbstractC1796a;
import x.AbstractC1797b;

@com.byazt.kj.hp(hp = {0, 1, 31, 38})
/* loaded from: classes3.dex */
public class j implements com.byazt.zs.hp {

    public interface hp {
        void hp(Drawable drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable jx(byte[] bArr) {
        FileOutputStream fileOutputStream;
        try {
            boolean zHp = com.byazt.ton.l.hp();
            File fileL = com.byazt.ymw.s.l(sz.getContext(), zHp, zHp ? "UGEN_GIF_AD_CACHE/" : "/UGEN_GIF_CACHE/", "TT_UGEN_GIF_FILE");
            fileOutputStream = new FileOutputStream(fileL);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT >= 28) {
                    Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(fileL));
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    return drawableDecodeDrawable;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(sz.getContext().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
                return bitmapDrawable;
            } catch (Throwable th) {
                th = th;
                try {
                    u.hp("ImageLoaderProvider", "GifView  getSourceByFile fail : ", th);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused4) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public void l(k kVar, String str, final hp.InterfaceC0439hp interfaceC0439hp) {
        com.byazt.nke.k kVarType = com.byazt.ws.l.hp(str).type(1);
        hp(kVar, kVarType, str);
        kVarType.to(new b() { // from class: com.byazt.la.j.3
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str2, Throwable th) {
                hp.InterfaceC0439hp interfaceC0439hp2 = interfaceC0439hp;
                if (interfaceC0439hp2 != null) {
                    interfaceC0439hp2.hp(null);
                }
            }

            @Override // com.byazt.nke.b
            public void onSuccess(com.byazt.nke.u uVar) {
                if (uVar == null) {
                    interfaceC0439hp.hp(null);
                    return;
                }
                hp.InterfaceC0439hp interfaceC0439hp2 = interfaceC0439hp;
                if (interfaceC0439hp2 == null) {
                    interfaceC0439hp2.hp(null);
                    return;
                }
                if (uVar.getResult() instanceof Bitmap) {
                    interfaceC0439hp.hp((Bitmap) uVar.getResult());
                } else if (uVar.getResult() instanceof byte[]) {
                    try {
                        interfaceC0439hp.hp(BitmapFactory.decodeByteArray((byte[]) uVar.getResult(), 0, ((byte[]) uVar.getResult()).length));
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    @Override // com.byazt.zs.hp
    public void hp(k kVar, String str, ImageView imageView, hp.InterfaceC0439hp interfaceC0439hp) {
        if (imageView instanceof GifView) {
            final GifView gifView = (GifView) imageView;
            gifView.setAdjustViewBounds(true);
            gifView.setBackgroundColor(0);
            com.byazt.ws.l.hp(str).type(3).config(Bitmap.Config.RGB_565).to(new b() { // from class: com.byazt.la.j.1
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str2, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(com.byazt.nke.u uVar) {
                    try {
                        Object result = uVar.getResult();
                        if (!(result instanceof byte[])) {
                            if (result instanceof Bitmap) {
                                gifView.setImageBitmap((Bitmap) result);
                            }
                        } else if (!uVar.isGif()) {
                            gifView.setImageDrawable(com.byazt.zn.u.hp((byte[]) result, 0));
                        } else {
                            gifView.hp((byte[]) result, false);
                            gifView.setRepeatConfig(true);
                            gifView.l();
                        }
                    } catch (Throwable th) {
                        onFailed(1002, "", th);
                    }
                }
            });
            return;
        }
        com.byazt.nke.k kVarHp = com.byazt.ws.l.hp(str);
        hp(kVar, kVarHp, str);
        kVarHp.to(imageView);
    }

    public boolean l(byte[] bArr) {
        return TextUtils.equals("png", jl.hp(Arrays.copyOfRange(bArr, 0, jl.hp()))) && com.byazt.sq.a.hp(bArr);
    }

    @Override // com.byazt.zs.hp
    public void hp(k kVar, String str, final ImageView imageView, int i2, int i3, hp.InterfaceC0439hp interfaceC0439hp) {
        com.byazt.nke.k kVarType = com.byazt.ws.l.hp(str).type(3);
        hp(kVar, kVarType, str);
        kVarType.to(new b() { // from class: com.byazt.la.j.2
            @Override // com.byazt.nke.b
            public void onFailed(int i4, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(final com.byazt.nke.u uVar) {
                if (imageView.isAttachedToWindow()) {
                    j.this.hp(uVar, imageView);
                } else {
                    imageView.post(new Runnable() { // from class: com.byazt.la.j.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            j.this.hp(uVar, imageView);
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.nke.u uVar, ImageView imageView) {
        try {
            Object result = uVar.getResult();
            if (result instanceof byte[]) {
                if (!uVar.isGif() && !l((byte[]) result)) {
                    if (hp((byte[]) result)) {
                        com.byazt.sq.a.hp(imageView, (byte[]) result, imageView.getWidth(), imageView.getHeight());
                        return;
                    }
                    int iHp = t.hp(imageView.getWidth(), imageView.getHeight());
                    Bitmap bitmapHp = new com.byazt.uxh.hp(imageView.getWidth(), imageView.getHeight(), imageView.getScaleType(), Bitmap.Config.RGB_565, imageView.getWidth() / iHp, imageView.getHeight() / iHp).hp((byte[]) result);
                    if (bitmapHp != null) {
                        imageView.setImageBitmap(bitmapHp);
                        return;
                    }
                    return;
                }
                if (Build.VERSION.SDK_INT <= 30) {
                    hp((byte[]) result, imageView);
                    return;
                } else {
                    com.byazt.sq.a.hp(imageView, (byte[]) result, imageView.getWidth(), imageView.getHeight());
                    return;
                }
            }
            if (result instanceof Bitmap) {
                imageView.setImageBitmap((Bitmap) result);
            }
        } catch (Throwable th) {
            u.hp("ImageLoaderProvider", "Ugen load image failed", th);
        }
    }

    @Override // com.byazt.zs.hp
    public void hp(k kVar, String str, hp.InterfaceC0439hp interfaceC0439hp) {
        l(kVar, str, interfaceC0439hp);
    }

    private void hp(k kVar, com.byazt.nke.k kVar2, String str) {
        Map<String, Object> mapL;
        if (kVar == null || (mapL = kVar.l()) == null) {
            return;
        }
        Object obj = mapL.get("image_info");
        if (obj instanceof Map) {
            kVar2.key((String) ((Map) obj).get(str));
        }
        String str2 = (String) mapL.get("cache_dir");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        kVar2.cacheDir(str2);
    }

    private void hp(byte[] bArr, final ImageView imageView) {
        try {
            u.l("ImageLoaderProvider", "load animation image");
            hp(bArr, new hp() { // from class: com.byazt.la.j.4
                @Override // com.byazt.la.j.hp
                public void hp(final Drawable drawable) {
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.la.j.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Build.VERSION.SDK_INT >= 28 && AbstractC1796a.a(drawable)) {
                                AbstractC1797b.a(drawable).start();
                            }
                            imageView.setImageDrawable(drawable);
                        }
                    });
                }
            });
        } catch (Exception unused) {
        }
    }

    private void hp(final byte[] bArr, final hp hpVar) {
        com.byazt.uid.w.l(new com.byazt.uid.eb("csj_animation_drawable") { // from class: com.byazt.la.j.5
            @Override // java.lang.Runnable
            public void run() {
                Drawable drawableJx = j.this.jx(bArr);
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(drawableJx);
                }
            }
        });
    }

    public boolean hp(byte[] bArr) {
        return com.byazt.sq.a.hp(bArr, 0);
    }
}
