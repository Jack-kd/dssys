package K0;

import android.content.Context;
import java.io.File;

/* loaded from: classes3.dex */
public abstract class b {

    public interface a {
        void a(Context context, String[] strArr, String str, File file, K0.c cVar);
    }

    /* renamed from: K0.b$b, reason: collision with other inner class name */
    public interface InterfaceC0005b {
        String a(String str);

        String[] b();

        void c(String str);

        String d(String str);

        void loadLibrary(String str);
    }

    public interface c {
    }

    public interface d {
        void a(String str);
    }

    public static K0.c a(d dVar) {
        return new K0.c().h(dVar);
    }
}
