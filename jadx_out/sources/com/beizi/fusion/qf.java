package com.beizi.fusion;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.beizi.fusion.va;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class qf extends va {

    /* renamed from: f, reason: collision with root package name */
    private static final String f15802f;

    /* renamed from: g, reason: collision with root package name */
    private static final String f15803g;

    public class b implements va.c {

        /* renamed from: a, reason: collision with root package name */
        private final File f15804a;

        private b(File file) {
            this.f15804a = file;
        }

        @Override // com.beizi.fusion.va.c
        public void a(String str, InputStream inputStream) {
            synchronized (qf.this.f16653e) {
                qf.this.e(str);
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferQualityOverSpeed = false;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            qf.this.a(str, bitmapDecodeStream);
            if (bitmapDecodeStream == null || this.f15804a == null) {
                return;
            }
            try {
                bitmapDecodeStream.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(this.f15804a));
            } catch (FileNotFoundException unused) {
            }
        }

        @Override // com.beizi.fusion.va.c
        public void a(String str) {
            synchronized (qf.this.f16653e) {
                qf.this.e(str);
                qf.this.a(str, (File) null);
            }
        }
    }

    public static class c extends va.d {
        public c(String str, File file, String str2) {
            super(str, file, str2);
        }

        @Override // java.lang.Runnable
        public void run() {
            s5 s5VarA = new s5().a(true).a(new a());
            s5VarA.a(this.f16657a);
            s5VarA.a().run();
        }

        public class a implements ua {
            public a() {
            }

            @Override // com.beizi.fusion.ua
            public void a(int i2, InputStream inputStream) {
                c cVar = c.this;
                va.c cVar2 = cVar.f16660d;
                if (cVar2 != null) {
                    cVar2.a(cVar.f16659c, inputStream);
                }
            }

            @Override // com.beizi.fusion.ua
            public void a(pc pcVar) {
                c cVar = c.this;
                va.c cVar2 = cVar.f16660d;
                if (cVar2 != null) {
                    cVar2.a(cVar.f16659c);
                }
            }
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private static qf f15807a = new qf();
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("Image_permanent");
        String str = File.separator;
        sb.append(str);
        f15802f = sb.toString();
        f15803g = "Image_temporary" + str;
    }

    public static qf b() {
        return d.f15807a;
    }

    @Override // com.beizi.fusion.va
    public int a() {
        return 200;
    }

    private qf() {
        if (d.f15807a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public Bitmap a(Context context, String str, boolean z2) {
        Bitmap bitmapDecodeFile;
        File fileB = b(context, str, z2 ? sh.TEMPORARY : sh.PERMANENT);
        if (fileB != null && fileB.exists() && (bitmapDecodeFile = BitmapFactory.decodeFile(fileB.getAbsolutePath())) != null) {
            return bitmapDecodeFile;
        }
        b().a(context, str, z2 ? sh.TEMPORARY : sh.PERMANENT);
        return null;
    }

    @Override // com.beizi.fusion.va
    public File a(Context context, sh shVar) {
        if (context != null) {
            File file = shVar == sh.PERMANENT ? new File(context.getCacheDir(), f15802f) : null;
            if (shVar == sh.TEMPORARY) {
                file = new File(context.getCacheDir(), f15803g);
            }
            if (file != null) {
                try {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    return file;
                } catch (SecurityException unused) {
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.va
    public String a(String str) {
        return th.a(str);
    }

    @Override // com.beizi.fusion.va
    public va.d a(String str, File file, String str2) {
        c cVar = new c(str, file, str2);
        cVar.a(new b(file));
        return cVar;
    }
}
