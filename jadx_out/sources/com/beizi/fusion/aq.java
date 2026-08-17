package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.va;
import java.io.File;

/* loaded from: classes2.dex */
public class aq extends va {

    /* renamed from: f, reason: collision with root package name */
    private static final String f12675f;

    /* renamed from: g, reason: collision with root package name */
    private static final String f12676g;

    public class a implements va.c {
        public a() {
        }

        @Override // com.beizi.fusion.va.c
        public void a(String str, File file) {
            synchronized (aq.this.f16653e) {
                aq.this.e(str);
                aq.this.a(str, file);
            }
        }

        @Override // com.beizi.fusion.va.c
        public void a(String str) {
            synchronized (aq.this.f16653e) {
                aq.this.e(str);
                aq.this.a(str, (File) null);
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static aq f12678a = new aq(null);
    }

    public static class c extends va.d {
        public c(String str, File file, String str2) {
            super(str, file, str2);
        }

        @Override // java.lang.Runnable
        public void run() {
            s5 s5VarA = new s5().a(true).a(new a());
            s5VarA.a(this.f16657a, this.f16658b);
            s5VarA.a().run();
        }

        public class a extends b1 {
            public a() {
            }

            @Override // com.beizi.fusion.b1
            public void a(ta taVar) {
                c cVar = c.this;
                va.c cVar2 = cVar.f16660d;
                if (cVar2 != null) {
                    cVar2.a(cVar.f16659c, cVar.f16658b);
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

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("Video_permanent");
        String str = File.separator;
        sb.append(str);
        f12675f = sb.toString();
        f12676g = "Video_temporary" + str;
    }

    public /* synthetic */ aq(a aVar) {
        this();
    }

    public static aq b() {
        return b.f12678a;
    }

    @Override // com.beizi.fusion.va
    public int a() {
        return 300;
    }

    private aq() {
        if (b.f12678a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    @Override // com.beizi.fusion.va
    public File a(Context context, sh shVar) {
        if (context != null) {
            File file = shVar == sh.PERMANENT ? new File(context.getCacheDir(), f12675f) : null;
            if (shVar == sh.TEMPORARY) {
                file = new File(context.getCacheDir(), f12676g);
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
    public va.d a(String str, File file, String str2) {
        c cVar = new c(str, file, str2);
        cVar.a(new a());
        return cVar;
    }
}
