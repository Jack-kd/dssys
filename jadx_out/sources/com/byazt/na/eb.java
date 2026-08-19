package com.byazt.na;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import android.util.JsonReader;
import com.anythink.core.common.d.i;
import com.byazt.av.cx;
import com.bytedance.component.sdk.annotation.RawRes;
import com.bytedance.component.sdk.annotation.WorkerThread;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 2, 94})
/* loaded from: classes3.dex */
public class eb {
    public static final Map<String, zy<a>> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public static final Set<Object> f23432l = new HashSet();
    public static final byte[] jx = {80, 75, 3, 4};

    @WorkerThread
    public static jl<a> jx(Context context, String str) {
        return jx(context, str, "asset_" + str);
    }

    public static zy<a> l(Context context, String str) {
        return l(context, str, "asset_" + str);
    }

    public static void hp(int i2) {
        com.byazt.yg.a.hp().hp(i2);
    }

    @WorkerThread
    public static jl<a> jx(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return l(context.getAssets().open(str), str2);
            }
            return hp(context, new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e2) {
            return new jl<>((Throwable) e2);
        }
    }

    public static zy<a> l(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return hp(str2, new Callable<jl<a>>() { // from class: com.byazt.na.eb.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public jl<a> call() throws Exception {
                return eb.jx(applicationContext, str, str2);
            }
        });
    }

    public static zy<a> hp(Context context, String str) {
        return hp(context, str, str);
    }

    public static zy<a> hp(final Context context, final String str, final String str2) {
        return hp(str2, new Callable<jl<a>>() { // from class: com.byazt.na.eb.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public jl<a> call() throws Exception {
                jl<a> jlVarHp = w.hp(context).hp(context, str, str2);
                if (str2 != null && jlVarHp.hp() != null) {
                    com.byazt.yg.a.hp().hp(str2, jlVarHp.hp());
                }
                return jlVarHp;
            }
        });
    }

    @WorkerThread
    public static jl<a> l(Context context, @RawRes int i2) {
        return l(context, i2, jx(context, i2));
    }

    public static zy<a> hp(Context context, @RawRes int i2) {
        return hp(context, i2, jx(context, i2));
    }

    @WorkerThread
    public static jl<a> l(Context context, @RawRes int i2, String str) {
        try {
            return l(context.getResources().openRawResource(i2), jx(context, i2));
        } catch (Resources.NotFoundException e2) {
            return new jl<>((Throwable) e2);
        }
    }

    public static zy<a> hp(Context context, @RawRes final int i2, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return hp(str, new Callable<jl<a>>() { // from class: com.byazt.na.eb.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public jl<a> call() throws Exception {
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    context2 = applicationContext;
                }
                return eb.l(context2, i2, str);
            }
        });
    }

    private static String jx(Context context, @RawRes int i2) {
        StringBuilder sb = new StringBuilder("rawRes");
        sb.append(hp(context) ? "_night_" : "_day_");
        sb.append(i2);
        return sb.toString();
    }

    @WorkerThread
    public static jl<a> l(InputStream inputStream, String str) {
        return hp(inputStream, str, true);
    }

    /* JADX WARN: Finally extract failed */
    @WorkerThread
    private static jl<a> l(Context context, ZipInputStream zipInputStream, String str) throws IOException {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            a aVarHp = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().endsWith(".json")) {
                    aVarHp = hp(new JsonReader(new InputStreamReader(zipInputStream)), (String) null, false).hp();
                } else if (!name.endsWith(".png") && !name.endsWith(".webp") && !name.endsWith(".jpg") && !name.endsWith(".jpeg")) {
                    if (!name.endsWith(".ttf") && !name.endsWith(".otf")) {
                        zipInputStream.closeEntry();
                    } else if (name.contains("../")) {
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    } else {
                        String[] strArrSplit = name.split(ServiceReference.DELIMITER);
                        String str2 = strArrSplit[strArrSplit.length - 1];
                        String str3 = str2.split("\\.")[0];
                        File file = new File(com.byazt.rz.l.l(context), str2);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i2 = zipInputStream.read(bArr);
                                    if (i2 == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, i2);
                                }
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } catch (Throwable th2) {
                            com.byazt.ze.a.hp("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th2);
                        }
                        Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                        if (!file.delete()) {
                            com.byazt.ze.a.l("Failed to delete temp font file " + file.getAbsolutePath() + i.f2495E);
                        }
                        map2.put(str3, typefaceCreateFromFile);
                    }
                } else if (name.contains("../")) {
                    zipInputStream.closeEntry();
                    nextEntry = zipInputStream.getNextEntry();
                } else {
                    String[] strArrSplit2 = name.split(ServiceReference.DELIMITER);
                    map.put(strArrSplit2[strArrSplit2.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (aVarHp == null) {
                return new jl<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                q qVarHp = hp(aVarHp, (String) entry.getKey());
                if (qVarHp != null) {
                    qVarHp.hp(com.byazt.ze.e.hp((Bitmap) entry.getValue(), qVarHp.hp(), qVarHp.l()));
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                boolean z2 = false;
                for (com.byazt.yg.jx jxVar : aVarHp.u().values()) {
                    if (jxVar.hp().equals(entry2.getKey())) {
                        jxVar.hp((Typeface) entry2.getValue());
                        z2 = true;
                    }
                }
                if (!z2) {
                    com.byazt.ze.a.l("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
                }
            }
            if (map.isEmpty()) {
                Iterator<Map.Entry<String, q>> it = aVarHp.xs().entrySet().iterator();
                while (it.hasNext()) {
                    q value = it.next().getValue();
                    if (value == null) {
                        return null;
                    }
                    String strZy = value.zy();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = 160;
                    if (strZy.startsWith("data:") && strZy.indexOf("base64,") > 0) {
                        try {
                            byte[] bArrDecode = Base64.decode(strZy.substring(strZy.indexOf(44) + 1), 0);
                            value.hp(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
                        } catch (IllegalArgumentException e2) {
                            com.byazt.ze.a.hp("data URL did not have correct base64 format.", e2);
                            return null;
                        }
                    }
                }
            }
            for (Map.Entry<String, q> entry3 : aVarHp.xs().entrySet()) {
                if (entry3.getValue().v() == null) {
                    return new jl<>((Throwable) new IllegalStateException("There is no image for " + entry3.getValue().zy()));
                }
            }
            if (str != null) {
                com.byazt.yg.a.hp().hp(str, aVarHp);
            }
            return new jl<>(aVarHp);
        } catch (IOException e3) {
            return new jl<>((Throwable) e3);
        }
    }

    private static boolean hp(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static zy<a> hp(final InputStream inputStream, final String str) {
        return hp(str, new Callable<jl<a>>() { // from class: com.byazt.na.eb.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public jl<a> call() throws Exception {
                return eb.l(inputStream, str);
            }
        });
    }

    @WorkerThread
    private static jl<a> hp(InputStream inputStream, String str, boolean z2) throws IOException {
        try {
            return hp(new JsonReader(new InputStreamReader(inputStream)), str);
        } finally {
            if (z2) {
                com.byazt.ze.e.hp(inputStream);
            }
        }
    }

    @WorkerThread
    public static jl<a> hp(JsonReader jsonReader, String str) {
        return hp(jsonReader, str, true);
    }

    private static jl<a> hp(JsonReader jsonReader, String str, boolean z2) throws IOException {
        try {
            try {
                a aVarHp = cx.hp(jsonReader);
                com.byazt.yg.a.hp().hp(str, aVarHp);
                jl<a> jlVar = new jl<>(aVarHp);
                if (z2) {
                    hp(jsonReader);
                }
                return jlVar;
            } catch (Exception e2) {
                jl<a> jlVar2 = new jl<>(e2);
                if (z2) {
                    hp(jsonReader);
                }
                return jlVar2;
            }
        } catch (Throwable th) {
            if (z2) {
                hp(jsonReader);
            }
            throw th;
        }
    }

    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    @WorkerThread
    public static jl<a> hp(Context context, ZipInputStream zipInputStream, String str) throws IOException {
        try {
            return l(context, zipInputStream, str);
        } finally {
            com.byazt.ze.e.hp(zipInputStream);
        }
    }

    private static q hp(a aVar, String str) {
        for (q qVar : aVar.xs().values()) {
            if (qVar.zy().equals(str)) {
                return qVar;
            }
        }
        return null;
    }

    private static zy<a> hp(final String str, Callable<jl<a>> callable) {
        final a aVarHp = str == null ? null : com.byazt.yg.a.hp().hp(str);
        if (aVarHp != null) {
            return new zy<>(new Callable<jl<a>>() { // from class: com.byazt.na.eb.7
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public jl<a> call() throws Exception {
                    return new jl<>(aVarHp);
                }
            });
        }
        if (str != null) {
            Map<String, zy<a>> map = hp;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        zy<a> zyVar = new zy<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            zyVar.hp(new e<a>() { // from class: com.byazt.na.eb.2
                @Override // com.byazt.na.e
                public void hp(a aVar) {
                    eb.hp.remove(str);
                    atomicBoolean.set(true);
                    if (eb.hp.size() == 0) {
                        eb.l(true);
                    }
                }
            });
            zyVar.jx(new e<Throwable>() { // from class: com.byazt.na.eb.3
                @Override // com.byazt.na.e
                public void hp(Throwable th) {
                    eb.hp.remove(str);
                    atomicBoolean.set(true);
                    if (eb.hp.size() == 0) {
                        eb.l(true);
                    }
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, zy<a>> map2 = hp;
                map2.put(str, zyVar);
                if (map2.size() == 1) {
                    l(false);
                }
            }
        }
        return zyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(boolean z2) {
        ArrayList arrayList = new ArrayList(f23432l);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2);
        }
    }
}
