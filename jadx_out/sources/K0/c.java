package K0;

import K0.b;
import android.content.Context;
import android.util.Log;
import com.anythink.core.common.d.i;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes3.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public final Set f175a;

    /* renamed from: b, reason: collision with root package name */
    public final b.InterfaceC0005b f176b;

    /* renamed from: c, reason: collision with root package name */
    public final b.a f177c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f178d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f179e;

    /* renamed from: f, reason: collision with root package name */
    public b.d f180f;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f181b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f182c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f183d;

        public a(Context context, String str, String str2, b.c cVar) {
            this.f181b = context;
            this.f182c = str;
            this.f183d = str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:?, code lost:
        
            throw null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:?, code lost:
        
            throw null;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                r5 = this;
                r0 = 0
                K0.c r1 = K0.c.this     // Catch: com.getkeepsafe.relinker.MissingLibraryException -> Ld java.lang.UnsatisfiedLinkError -> Le
                android.content.Context r2 = r5.f181b     // Catch: com.getkeepsafe.relinker.MissingLibraryException -> Ld java.lang.UnsatisfiedLinkError -> Le
                java.lang.String r3 = r5.f182c     // Catch: com.getkeepsafe.relinker.MissingLibraryException -> Ld java.lang.UnsatisfiedLinkError -> Le
                java.lang.String r4 = r5.f183d     // Catch: com.getkeepsafe.relinker.MissingLibraryException -> Ld java.lang.UnsatisfiedLinkError -> Le
                K0.c.a(r1, r2, r3, r4)     // Catch: com.getkeepsafe.relinker.MissingLibraryException -> Ld java.lang.UnsatisfiedLinkError -> Le
                throw r0
            Ld:
                throw r0
            Le:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: K0.c.a.run():void");
        }
    }

    public class b implements FilenameFilter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f185a;

        public b(String str) {
            this.f185a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f185a);
        }
    }

    public c() {
        this(new d(), new K0.a());
    }

    public void b(Context context, String str, String str2) {
        File fileC = c(context);
        File fileD = d(context, str, str2);
        File[] fileArrListFiles = fileC.listFiles(new b(this.f176b.d(str)));
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.f178d || !file.getAbsolutePath().equals(fileD.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    public File c(Context context) {
        return context.getDir("lib", 0);
    }

    public File d(Context context, String str, String str2) {
        String strD = this.f176b.d(str);
        if (e.a(str2)) {
            return new File(c(context), strD);
        }
        return new File(c(context), strD + i.f2495E + str2);
    }

    public void e(Context context, String str) {
        f(context, str, null, null);
    }

    public void f(Context context, String str, String str2, b.c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (e.a(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        j("Beginning load of %s...", str);
        if (cVar == null) {
            g(context, str, str2);
        } else {
            new Thread(new a(context, str, str2, cVar)).start();
        }
    }

    public final void g(Context context, String str, String str2) throws Throwable {
        c cVar;
        Context context2;
        L0.i iVar;
        if (this.f175a.contains(str) && !this.f178d) {
            j("%s already loaded previously!", str);
            return;
        }
        try {
            this.f176b.loadLibrary(str);
            this.f175a.add(str);
            j("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e2) {
            j("Loading the library normally failed: %s", Log.getStackTraceString(e2));
            j("%s (%s) was not loaded normally, re-linking...", str, str2);
            File fileD = d(context, str, str2);
            if (!fileD.exists() || this.f178d) {
                if (this.f178d) {
                    j("Forcing a re-link of %s (%s)...", str, str2);
                }
                b(context, str, str2);
                cVar = this;
                context2 = context;
                this.f177c.a(context2, this.f176b.b(), this.f176b.d(str), fileD, cVar);
            } else {
                cVar = this;
                context2 = context;
            }
            try {
                if (cVar.f179e) {
                    try {
                        iVar = new L0.i(fileD);
                        try {
                            List listZ = iVar.z();
                            iVar.close();
                            Iterator it = listZ.iterator();
                            while (it.hasNext()) {
                                e(context2, cVar.f176b.a((String) it.next()));
                            }
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            if (iVar == null) {
                                throw th2;
                            }
                            iVar.close();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        iVar = null;
                    }
                }
            } catch (IOException unused) {
            }
            cVar.f176b.c(fileD.getAbsolutePath());
            cVar.f175a.add(str);
            j("%s (%s) was re-linked!", str, str2);
        }
    }

    public c h(b.d dVar) {
        this.f180f = dVar;
        return this;
    }

    public void i(String str) {
        b.d dVar = this.f180f;
        if (dVar != null) {
            dVar.a(str);
        }
    }

    public void j(String str, Object... objArr) {
        i(String.format(Locale.US, str, objArr));
    }

    public c(b.InterfaceC0005b interfaceC0005b, b.a aVar) {
        this.f175a = new HashSet();
        if (interfaceC0005b == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.f176b = interfaceC0005b;
        this.f177c = aVar;
    }
}
