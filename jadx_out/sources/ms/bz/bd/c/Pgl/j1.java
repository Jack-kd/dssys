package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.util.Log;
import com.byazt.dnb.eb;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;
import ms.bz.bd.c.Pgl.h1;
import org.json.JSONException;

/* loaded from: classes5.dex */
public final class j1 {
    protected final HashSet hp = new HashSet();
    protected final h1.pgla jx;

    /* renamed from: l, reason: collision with root package name */
    protected final h1.pblb f51962l;

    public j1(h1.pblb pblbVar, pbld pbldVar) {
        this.f51962l = pblbVar;
        this.jx = pbldVar;
    }

    public final void hp(Context context) throws JSONException {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        String.format(Locale.US, "Beginning load of %s...", "Pglbizssdk_ml");
        hp(context, "Pglbizssdk_ml", null);
    }

    private void hp(Context context, String str, String str2) throws JSONException {
        File file;
        File file2;
        File file3;
        if (this.hp.contains(str)) {
            String.format(Locale.US, "%s already loaded previously!", str);
            return;
        }
        try {
            ((x1) this.f51962l).getClass();
            eb.hp(str);
            this.hp.add(str);
            String.format(Locale.US, "%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e2) {
            Object[] objArr = {Log.getStackTraceString(e2)};
            Locale locale = Locale.US;
            String.format(locale, "Loading the library normally failed: %s", objArr);
            String.format(locale, "%s (%s) was not loaded normally, re-linking...", str, str2);
            ((x1) this.f51962l).getClass();
            String strMapLibraryName = (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
            if (str2 != null && str2.length() != 0) {
                file = new File(com.byazt.rz.l.hp(context, "lib", 0), strMapLibraryName + com.anythink.core.common.d.i.f2495E + str2);
            } else {
                file = new File(com.byazt.rz.l.hp(context, "lib", 0), strMapLibraryName);
            }
            if (file.exists()) {
                file2 = file;
            } else {
                File fileHp = com.byazt.rz.l.hp(context, "lib", 0);
                ((x1) this.f51962l).getClass();
                String strMapLibraryName2 = (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
                if (str2 != null && str2.length() != 0) {
                    file3 = new File(com.byazt.rz.l.hp(context, "lib", 0), strMapLibraryName2 + com.anythink.core.common.d.i.f2495E + str2);
                } else {
                    file3 = new File(com.byazt.rz.l.hp(context, "lib", 0), strMapLibraryName2);
                }
                ((x1) this.f51962l).getClass();
                File[] fileArrListFiles = fileHp.listFiles(new i1((str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str)));
                if (fileArrListFiles != null) {
                    for (File file4 : fileArrListFiles) {
                        if (!file4.getAbsolutePath().equals(file3.getAbsolutePath())) {
                            file4.delete();
                        }
                    }
                }
                h1.pgla pglaVar = this.jx;
                String[] strArrHp = ((x1) this.f51962l).hp();
                ((x1) this.f51962l).getClass();
                file2 = file;
                ((pbld) pglaVar).hp(context, strArrHp, (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str), file2, this);
            }
            h1.pblb pblbVar = this.f51962l;
            String absolutePath = file2.getAbsolutePath();
            ((x1) pblbVar).getClass();
            System.load(absolutePath);
            this.hp.add(str);
            String.format(Locale.US, "%s (%s) was re-linked!", str, str2);
        }
    }
}
