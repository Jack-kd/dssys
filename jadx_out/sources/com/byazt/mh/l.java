package com.byazt.mh;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import com.byazt.mh.q;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1216, 34})
/* loaded from: classes3.dex */
public class l extends q<com.byazt.dk.hp, com.byazt.dk.l> {

    /* renamed from: e, reason: collision with root package name */
    public final hp f23029e;
    public com.byazt.dk.l eb;

    /* renamed from: q, reason: collision with root package name */
    public final Paint f23030q;

    /* renamed from: s, reason: collision with root package name */
    public int f23031s;

    @com.byazt.kj.hp(hp = {0, 1, 1216, 123})
    public static class hp {
        public byte hp;
        public ByteBuffer jx;

        /* renamed from: l, reason: collision with root package name */
        public Rect f23032l;

        private hp() {
            this.f23032l = new Rect();
        }
    }

    public l(com.byazt.vj.l lVar, q.hp hpVar) {
        super(lVar, hpVar);
        Paint paint = new Paint();
        this.f23030q = paint;
        this.f23029e = new hp();
        paint.setAntiAlias(true);
    }

    @Override // com.byazt.mh.q
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public com.byazt.dk.l j() {
        if (this.eb == null) {
            this.eb = new com.byazt.dk.l();
        }
        return this.eb;
    }

    @Override // com.byazt.mh.q
    public void jx() {
        this.f23029e.jx = null;
        this.eb = null;
    }

    @Override // com.byazt.mh.q
    public int l() {
        return this.f23031s;
    }

    @Override // com.byazt.mh.q
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public com.byazt.dk.hp jx(com.byazt.dk.a aVar) {
        return new com.byazt.dk.hp(aVar);
    }

    @Override // com.byazt.mh.q
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public Rect l(com.byazt.dk.hp hpVar) throws IOException {
        List<w> listHp = j.hp(hpVar);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[0];
        Iterator<w> it = listHp.iterator();
        jx jxVar = null;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            w next = it.next();
            if (next instanceof com.byazt.mh.hp) {
                this.f23031s = ((com.byazt.mh.hp) next).jx;
                z2 = true;
            } else if (next instanceof a) {
                jxVar = new jx(hpVar, (a) next);
                jxVar.f23028w = arrayList;
                jxVar.jx = bArr;
                this.hp.add(jxVar);
            } else if (next instanceof eb) {
                if (jxVar != null) {
                    jxVar.f23026j.add(next);
                }
            } else if (next instanceof e) {
                if (!z2) {
                    zy zyVar = new zy(hpVar);
                    zyVar.f23054s = i2;
                    zyVar.f23053q = i3;
                    this.hp.add(zyVar);
                    this.f23031s = 1;
                    break;
                }
                if (jxVar != null) {
                    jxVar.f23026j.add(next);
                }
            } else if (next instanceof jl) {
                jl jlVar = (jl) next;
                i2 = jlVar.f23021l;
                i3 = jlVar.jx;
                bArr = jlVar.f23022s;
            } else if (!(next instanceof gu)) {
                arrayList.add(next);
            }
        }
        int i4 = i2 * i3;
        int i5 = this.jx;
        this.f23043w = ByteBuffer.allocate(((i4 / (i5 * i5)) + 1) * 4);
        hp hpVar2 = this.f23029e;
        int i6 = this.jx;
        hpVar2.jx = ByteBuffer.allocate(((i4 / (i6 * i6)) + 1) * 4);
        return new Rect(0, 0, i2, i3);
    }

    @Override // com.byazt.mh.q
    public void hp(s<com.byazt.dk.hp, com.byazt.dk.l> sVar) {
        if (sVar == null || this.f23034a == null) {
            return;
        }
        try {
            Bitmap bitmapHp = hp(this.f23034a.width() / this.jx, this.f23034a.height() / this.jx);
            Canvas canvas = this.f23036j.get(bitmapHp);
            if (canvas == null) {
                canvas = new Canvas(bitmapHp);
                this.f23036j.put(bitmapHp, canvas);
            }
            Canvas canvas2 = canvas;
            if (sVar instanceof jx) {
                this.f23043w.rewind();
                bitmapHp.copyPixelsFromBuffer(this.f23043w);
                if (this.f23037l == 0) {
                    canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                } else {
                    canvas2.save();
                    canvas2.clipRect(this.f23029e.f23032l);
                    hp hpVar = this.f23029e;
                    byte b3 = hpVar.hp;
                    if (b3 == 1) {
                        canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                    } else if (b3 == 2) {
                        hpVar.jx.rewind();
                        bitmapHp.copyPixelsFromBuffer(this.f23029e.jx);
                    }
                    canvas2.restore();
                }
                if (((jx) sVar).f23027l == 2) {
                    hp hpVar2 = this.f23029e;
                    if (hpVar2.hp != 2) {
                        hpVar2.jx.rewind();
                        bitmapHp.copyPixelsToBuffer(this.f23029e.jx);
                    }
                }
                this.f23029e.hp = ((jx) sVar).f23027l;
                canvas2.save();
                if (((jx) sVar).hp == 0) {
                    int i2 = sVar.f23051e;
                    int i3 = this.jx;
                    int i4 = sVar.gu;
                    canvas2.clipRect(i2 / i3, i4 / i3, (i2 + sVar.f23054s) / i3, (i4 + sVar.f23053q) / i3);
                    canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                }
                Rect rect = this.f23029e.f23032l;
                int i5 = sVar.f23051e;
                int i6 = this.jx;
                int i7 = sVar.gu;
                rect.set(i5 / i6, i7 / i6, (i5 + sVar.f23054s) / i6, (i7 + sVar.f23053q) / i6);
                canvas2.restore();
            }
            Bitmap bitmapHp2 = hp(sVar.f23054s, sVar.f23053q);
            hp(sVar.hp(canvas2, this.f23030q, this.jx, bitmapHp2, j()));
            hp(bitmapHp2);
            this.f23043w.rewind();
            bitmapHp.copyPixelsToBuffer(this.f23043w);
            hp(bitmapHp);
        } catch (Exception unused) {
        }
    }
}
