package com.smartdigimkt.t3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: f, reason: collision with root package name */
    public static volatile m f44319f;

    /* renamed from: a, reason: collision with root package name */
    public Map f44320a;

    /* renamed from: d, reason: collision with root package name */
    public final Context f44323d;

    /* renamed from: c, reason: collision with root package name */
    public final Object f44322c = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentHashMap f44324e = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final i f44321b = new i(this, ((int) Runtime.getRuntime().maxMemory()) / 5);

    public m(Context context) {
        this.f44323d = context.getApplicationContext();
    }

    public static void a(m mVar, String str, Bitmap bitmap) {
        synchronized (mVar.f44324e) {
            try {
                LinkedList linkedList = (LinkedList) mVar.f44324e.remove(str);
                if (linkedList != null) {
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        l lVar = (l) it.next();
                        if (lVar != null) {
                            com.smartdigimkt.b4.e.a().a(new g(bitmap, lVar, str));
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final Bitmap b(o oVar, int i2, int i3) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(oVar.f44331b)) {
            return null;
        }
        Bitmap bitmapA = a(oVar.f44331b, i2, i3);
        if (bitmapA != null && !bitmapA.isRecycled()) {
            return bitmapA;
        }
        Bitmap bitmapA2 = a(oVar, i2, i3);
        if (bitmapA2 == null || bitmapA2.isRecycled()) {
            return null;
        }
        a(oVar.f44331b, bitmapA2, i2, i3);
        return bitmapA2;
    }

    public final void a(String str, Bitmap bitmap, int i2, int i3) {
        Object objPut;
        if (a(str, i2, i3) == null) {
            i iVar = this.f44321b;
            com.smartdigimkt.v3.a aVar = new com.smartdigimkt.v3.a(bitmap, i2, i3);
            iVar.getClass();
            synchronized (iVar) {
                try {
                    iVar.f44305b += iVar.a(str, aVar);
                    objPut = iVar.f44304a.put(str, aVar);
                    if (objPut != null) {
                        iVar.f44305b -= iVar.a(str, objPut);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objPut != null) {
                iVar.a(str, objPut, aVar);
            }
            iVar.a(iVar.f44306c);
        }
    }

    public final Bitmap a(String str, int i2, int i3) {
        Object obj;
        Bitmap bitmap;
        i iVar = this.f44321b;
        if (str != null) {
            synchronized (iVar) {
                try {
                    obj = iVar.f44304a.get(str);
                    if (obj != null) {
                        iVar.f44307d++;
                    } else {
                        iVar.f44308e++;
                        obj = null;
                    }
                } finally {
                }
            }
            com.smartdigimkt.v3.a aVar = (com.smartdigimkt.v3.a) obj;
            if (aVar == null || (bitmap = (Bitmap) aVar.f44707a.get()) == null || (!aVar.f44708b && (i2 <= 0 || i3 <= 0 || (bitmap.getWidth() <= i2 / 2 && bitmap.getHeight() <= i3 / 2)))) {
                return null;
            }
            return bitmap;
        }
        iVar.getClass();
        throw new NullPointerException("key == null");
    }

    public final Bitmap a(o oVar, int i2, int i3) throws NoSuchAlgorithmException {
        Bitmap bitmapDecodeFileDescriptor = null;
        if (oVar == null || TextUtils.isEmpty(oVar.f44331b)) {
            return null;
        }
        String strB = com.smartdigimkt.c5.i.b(oVar.f44331b);
        if (i2 <= 0) {
            try {
                i2 = this.f44323d.getResources().getDisplayMetrics().widthPixels;
            } catch (Throwable unused) {
            }
        }
        if (i3 <= 0) {
            i3 = this.f44323d.getResources().getDisplayMetrics().heightPixels;
        }
        synchronized (this.f44322c) {
            FileInputStream fileInputStreamA = n.a().a(oVar.f44330a, strB);
            if (fileInputStreamA == null) {
                return null;
            }
            try {
                FileDescriptor fd = fileInputStreamA.getFD();
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    int i4 = 1;
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFileDescriptor(fd, null, options);
                    int i5 = options.outWidth;
                    int i6 = options.outHeight;
                    if (i2 > 0 || i3 > 0) {
                        while (i5 / i4 > i2 && i6 / i4 > i3) {
                            i4 *= 2;
                        }
                    }
                    options.inSampleSize = i4;
                    options.inJustDecodeBounds = false;
                    bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fd, null, options);
                } catch (OutOfMemoryError e2) {
                    e2.printStackTrace();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Throwable unused2) {
            }
            try {
                fileInputStreamA.close();
            } catch (Exception unused3) {
            }
            return bitmapDecodeFileDescriptor;
        }
    }

    public static m a(Context context) {
        if (f44319f == null) {
            synchronized (m.class) {
                try {
                    if (f44319f == null) {
                        f44319f = new m(context);
                    }
                } finally {
                }
            }
        }
        return f44319f;
    }

    public final void a(o oVar, int i2, int i3, l lVar) {
        if (TextUtils.isEmpty(oVar.f44331b)) {
            if (lVar != null) {
                lVar.a("No url info.");
                return;
            }
            return;
        }
        Bitmap bitmapA = a(oVar.f44331b, i2, i3);
        if (bitmapA == null || bitmapA.isRecycled()) {
            com.smartdigimkt.b4.e.a().c(new j(this, oVar, i2, i3, lVar));
        } else if (lVar != null) {
            lVar.a(oVar.f44331b, bitmapA);
        }
    }
}
