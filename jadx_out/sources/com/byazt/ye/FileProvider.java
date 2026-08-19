package com.byazt.ye;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.kuaishou.weapon.p0.t;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;
import org.xmlpull.v1.XmlPullParserException;

@com.byazt.kj.hp(hp = {0, 1, 786, 1432})
/* loaded from: classes3.dex */
public class FileProvider extends ContentProvider {
    public static hp jx;
    public static final String[] hp = {"_display_name", "_size"};

    /* renamed from: l, reason: collision with root package name */
    public static final File f27878l = new File(ServiceReference.DELIMITER);

    public interface hp {
        Uri hp(File file);

        File hp(Uri uri);
    }

    @Keep
    public static Uri getUriForFile(@NonNull File file) {
        return jx.hp(file);
    }

    public static void hp(Plugin plugin, XmlResourceParser xmlResourceParser) {
        try {
            hp(plugin.mPkgName, ZeusTransformUtils.wrapperContext(Zeus.getAppApplication(), plugin.mPkgName), (l) jx, xmlResourceParser);
        } catch (IOException | XmlPullParserException e2) {
            com.byazt.ik.a.hp(e2);
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        if (jx != null) {
            throw new SecurityException("仅允许定义一个FileProvider");
        }
        jx = new l(providerInfo.authority);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return jx.hp(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(@NonNull Uri uri) {
        File fileHp = jx.hp(uri);
        int iLastIndexOf = fileHp.getName().lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileHp.getName().substring(iLastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(@NonNull Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(@NonNull Uri uri, @NonNull String str) throws FileNotFoundException {
        return ParcelFileDescriptor.open(jx.hp(uri), hp(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        int i2;
        File fileHp = jx.hp(uri);
        if (strArr == null) {
            strArr = hp;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i3 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i3] = "_display_name";
                i2 = i3 + 1;
                objArr[i3] = fileHp.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i3] = "_size";
                i2 = i3 + 1;
                objArr[i3] = Long.valueOf(fileHp.length());
            }
            i3 = i2;
        }
        String[] strArrHp = hp(strArr3, i3);
        Object[] objArrHp = hp(objArr, i3);
        MatrixCursor matrixCursor = new MatrixCursor(strArrHp, 1);
        matrixCursor.addRow(objArrHp);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    private static void hp(String str, Context context, l lVar, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlResourceParser.getName();
                File cacheDir = null;
                String attributeValue = xmlResourceParser.getAttributeValue(null, "name");
                String attributeValue2 = xmlResourceParser.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    cacheDir = f27878l;
                } else if ("files-path".equals(name)) {
                    cacheDir = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    cacheDir = context.getCacheDir();
                } else if ("external-files-path".equals(name)) {
                    File[] fileArrHp = hp(context, (String) null);
                    if (fileArrHp.length > 0) {
                        cacheDir = fileArrHp[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] fileArrHp2 = hp(context);
                    if (fileArrHp2.length > 0) {
                        cacheDir = fileArrHp2[0];
                    }
                } else if ("external-media-path".equals(name)) {
                    File[] externalMediaDirs = context.getExternalMediaDirs();
                    if (externalMediaDirs.length > 0) {
                        cacheDir = externalMediaDirs[0];
                    }
                }
                if (cacheDir != null) {
                    lVar.hp(str + "_" + attributeValue, hp(cacheDir, attributeValue2));
                }
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 786, 2147})
    public static class l implements hp {
        public final String hp;

        /* renamed from: l, reason: collision with root package name */
        public final HashMap<String, File> f27879l = new HashMap<>();

        public l(String str) {
            this.hp = str;
        }

        public void hp(String str, File file) throws IOException {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.f27879l.put(str, file.getCanonicalFile());
            } catch (IOException e2) {
                throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file)), e2);
            }
        }

        @Override // com.byazt.ye.FileProvider.hp
        public Uri hp(File file) throws IOException {
            String strSubstring;
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f27879l.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry != null) {
                    String path2 = entry.getValue().getPath();
                    if (path2.endsWith(ServiceReference.DELIMITER)) {
                        strSubstring = canonicalPath.substring(path2.length());
                    } else {
                        strSubstring = canonicalPath.substring(path2.length() + 1);
                    }
                    return new Uri.Builder().scheme("content").authority(this.hp).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(strSubstring, ServiceReference.DELIMITER)).build();
                }
                throw new IllegalArgumentException("Failed to find configured root that contains ".concat(String.valueOf(canonicalPath)));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file)));
            }
        }

        @Override // com.byazt.ye.FileProvider.hp
        public File hp(Uri uri) throws IOException {
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.f27879l.get(strDecode);
            if (file != null) {
                File file2 = new File(file, strDecode2);
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (canonicalFile.getPath().startsWith(file.getPath())) {
                        return canonicalFile;
                    }
                    throw new SecurityException("Resolved path jumped beyond configured root");
                } catch (IOException unused) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file2)));
                }
            }
            throw new IllegalArgumentException("Unable to find configured root for ".concat(String.valueOf(uri)));
        }
    }

    @NonNull
    public static File[] hp(@NonNull Context context, @Nullable String str) {
        return context.getExternalFilesDirs(str);
    }

    @NonNull
    public static File[] hp(@NonNull Context context) {
        return context.getExternalCacheDirs();
    }

    private static int hp(String str) {
        if (t.f31269k.equals(str)) {
            return C.ENCODING_PCM_MU_LAW;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: ".concat(String.valueOf(str)));
    }

    private static File hp(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    private static String[] hp(String[] strArr, int i2) {
        String[] strArr2 = new String[i2];
        System.arraycopy(strArr, 0, strArr2, 0, i2);
        return strArr2;
    }

    private static Object[] hp(Object[] objArr, int i2) {
        Object[] objArr2 = new Object[i2];
        System.arraycopy(objArr, 0, objArr2, 0, i2);
        return objArr2;
    }
}
