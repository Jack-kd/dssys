package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class x4 {

    /* renamed from: a, reason: collision with root package name */
    private final e f17416a;

    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Bitmap f17417a;

        /* renamed from: b, reason: collision with root package name */
        private final Context f17418b;

        /* renamed from: c, reason: collision with root package name */
        private final pb f17419c;

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmapA = n8.a(this.f17418b, this.f17417a, 20.0f);
            if (bitmapA != null) {
                this.f17419c.a(bitmapA);
            } else {
                this.f17419c.a();
            }
        }

        private b(Context context, Bitmap bitmap, pb pbVar) {
            this.f17418b = context;
            this.f17417a = bitmap;
            this.f17419c = pbVar;
        }
    }

    public interface c extends ne {
        void a(String str, Bitmap bitmap);
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private static x4 f17420a = new x4();
    }

    public static class e extends LinkedHashMap {

        /* renamed from: a, reason: collision with root package name */
        private final int f17421a;

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.f17421a;
        }

        private e(int i2) {
            super(i2, 0.75f, true);
            this.f17421a = i2;
        }
    }

    public static class f implements c {

        /* renamed from: a, reason: collision with root package name */
        private final pb f17422a;

        @Override // com.beizi.fusion.ne
        public void a(String str, File file) {
            if (file.exists()) {
                try {
                    file.setLastModified(System.currentTimeMillis());
                } catch (IllegalArgumentException | SecurityException unused) {
                }
                try {
                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), new BitmapFactory.Options());
                    if (bitmapDecodeFile != null) {
                        x4.a().a(str, bitmapDecodeFile);
                        this.f17422a.a(bitmapDecodeFile);
                        return;
                    }
                } catch (Exception e2) {
                    rm.a(e2);
                }
            }
            this.f17422a.a();
        }

        private f(pb pbVar) {
            this.f17422a = pbVar;
        }

        @Override // com.beizi.fusion.ne
        public void a(String str) {
            this.f17422a.a();
        }

        @Override // com.beizi.fusion.x4.c
        public void a(String str, Bitmap bitmap) {
            if (bitmap != null) {
                x4.a().a(str, bitmap);
                this.f17422a.a(bitmap);
            } else {
                this.f17422a.a();
            }
        }
    }

    private String b(String str) {
        return th.a(str);
    }

    private x4() {
        this.f17416a = new e(20);
        if (d.f17420a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static x4 a() {
        return d.f17420a;
    }

    public void a(Context context, String str, boolean z2, pb pbVar) {
        if (TextUtils.isEmpty(str)) {
            if (pbVar != null) {
                pbVar.a();
                return;
            }
            return;
        }
        Bitmap bitmapA = a(b(str));
        if (bitmapA == null) {
            qf.b().a(context, str, z2 ? sh.TEMPORARY : sh.PERMANENT, new f(pbVar), null);
        } else if (pbVar != null) {
            pbVar.a(bitmapA);
        }
    }

    public Bitmap a(Context context, String str, int i2) {
        Bitmap bitmapA;
        return (TextUtils.isEmpty(str) || (bitmapA = qf.b().a(context, str, true)) == null) ? BitmapFactory.decodeResource(context.getResources(), i2) : bitmapA;
    }

    public void a(Context context, Bitmap bitmap, pb pbVar) {
        if (context != null) {
            ((hb) fn.a().b(context)).f(new b(context, bitmap, pbVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Bitmap bitmap) {
        synchronized (this.f17416a) {
            this.f17416a.put(str, bitmap);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Bitmap a(String str) {
        Bitmap bitmap;
        synchronized (this.f17416a) {
            bitmap = (Bitmap) this.f17416a.get(str);
        }
        return bitmap;
    }
}
