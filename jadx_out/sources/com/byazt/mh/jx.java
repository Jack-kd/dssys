package com.byazt.mh;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;

@com.byazt.kj.hp(hp = {0, 1, 1216, 30})
/* loaded from: classes3.dex */
public class jx extends s<com.byazt.dk.hp, com.byazt.dk.l> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ boolean f23023a = true;
    public final byte hp;

    /* renamed from: j, reason: collision with root package name */
    public List<w> f23026j;
    public byte[] jx;

    /* renamed from: l, reason: collision with root package name */
    public final byte f23027l;

    /* renamed from: w, reason: collision with root package name */
    public List<w> f23028w;

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f23025v = {-119, 80, 78, 71, ek.f49293k, 10, 26, 10};

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f23024u = {0, 0, 0, 0, 73, 69, 78, 68, -82, 66, 96, -126};
    public static final ThreadLocal<CRC32> xs = new ThreadLocal<>();

    public jx(com.byazt.dk.hp hpVar, a aVar) {
        super(hpVar);
        this.f23026j = new ArrayList();
        this.f23028w = new ArrayList();
        this.hp = aVar.f23015k;
        this.f23027l = aVar.zy;
        int i2 = aVar.gu * 1000;
        short s2 = aVar.jl;
        int i3 = i2 / (s2 == 0 ? (short) 100 : s2);
        this.jl = i3;
        if (i3 < 10) {
            this.jl = 100;
        }
        this.f23054s = aVar.jx;
        this.f23053q = aVar.f23018s;
        this.f23051e = aVar.f23017q;
        this.gu = aVar.f23014e;
    }

    private CRC32 hp() {
        ThreadLocal<CRC32> threadLocal = xs;
        CRC32 crc32 = threadLocal.get();
        if (crc32 != null) {
            return crc32;
        }
        CRC32 crc322 = new CRC32();
        threadLocal.set(crc322);
        return crc322;
    }

    private int hp(com.byazt.dk.l lVar) throws IOException {
        int i2;
        Iterator<w> it = this.f23028w.iterator();
        int i3 = 33;
        while (it.hasNext()) {
            i3 += it.next().f23056j + 12;
        }
        for (w wVar : this.f23026j) {
            if (wVar instanceof e) {
                i2 = wVar.f23056j + 12;
            } else if (wVar instanceof eb) {
                i2 = wVar.f23056j + 8;
            }
            i3 += i2;
        }
        int length = i3 + f23024u.length;
        lVar.jx(length);
        lVar.hp(f23025v);
        lVar.l(13);
        int iHp = lVar.hp();
        lVar.hp(jl.hp);
        lVar.l(this.f23054s);
        lVar.l(this.f23053q);
        lVar.hp(this.jx);
        CRC32 crc32Hp = hp();
        crc32Hp.reset();
        crc32Hp.update(lVar.l(), iHp, 17);
        lVar.l((int) crc32Hp.getValue());
        for (w wVar2 : this.f23028w) {
            if (!(wVar2 instanceof gu)) {
                ((com.byazt.dk.hp) this.eb).d_();
                ((com.byazt.dk.hp) this.eb).hp(wVar2.eb);
                ((com.byazt.dk.hp) this.eb).hp(lVar.l(), lVar.hp(), wVar2.f23056j + 12);
                lVar.j(wVar2.f23056j + 12);
            }
        }
        for (w wVar3 : this.f23026j) {
            if (wVar3 instanceof e) {
                ((com.byazt.dk.hp) this.eb).d_();
                ((com.byazt.dk.hp) this.eb).hp(wVar3.eb);
                ((com.byazt.dk.hp) this.eb).hp(lVar.l(), lVar.hp(), wVar3.f23056j + 12);
                lVar.j(wVar3.f23056j + 12);
            } else if (wVar3 instanceof eb) {
                lVar.l(wVar3.f23056j - 4);
                int iHp2 = lVar.hp();
                lVar.hp(e.hp);
                ((com.byazt.dk.hp) this.eb).d_();
                ((com.byazt.dk.hp) this.eb).hp(wVar3.eb + 12);
                ((com.byazt.dk.hp) this.eb).hp(lVar.l(), lVar.hp(), wVar3.f23056j - 4);
                lVar.j(wVar3.f23056j - 4);
                crc32Hp.reset();
                crc32Hp.update(lVar.l(), iHp2, wVar3.f23056j);
                lVar.l((int) crc32Hp.getValue());
            }
        }
        lVar.hp(f23024u);
        return length;
    }

    @Override // com.byazt.mh.s
    public Bitmap hp(Canvas canvas, Paint paint, int i2, Bitmap bitmap, com.byazt.dk.l lVar) {
        Bitmap bitmapDecodeByteArray;
        try {
            int iHp = hp(lVar);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = i2;
            options.inMutable = true;
            options.inBitmap = bitmap;
            byte[] bArrL = lVar.l();
            try {
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrL, 0, iHp, options);
            } catch (IllegalArgumentException unused) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inSampleSize = i2;
                options2.inMutable = true;
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrL, 0, iHp, options2);
            }
            if (!f23023a && bitmapDecodeByteArray == null) {
                throw new AssertionError();
            }
            Rect rect = this.zy;
            rect.left = 0;
            rect.top = 0;
            rect.right = bitmapDecodeByteArray.getWidth();
            this.zy.bottom = bitmapDecodeByteArray.getHeight();
            Rect rect2 = this.f23052k;
            int i3 = this.f23051e;
            float f2 = i2;
            rect2.left = (int) (i3 / f2);
            rect2.top = (int) (this.gu / f2);
            rect2.right = (int) ((i3 / f2) + bitmapDecodeByteArray.getWidth());
            this.f23052k.bottom = (int) ((this.gu / f2) + bitmapDecodeByteArray.getHeight());
            canvas.drawBitmap(bitmapDecodeByteArray, this.zy, this.f23052k, paint);
            return bitmapDecodeByteArray;
        } catch (IOException unused2) {
            return null;
        }
    }
}
