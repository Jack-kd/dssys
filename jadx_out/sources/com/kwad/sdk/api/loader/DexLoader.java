package com.kwad.sdk.api.loader;

import android.content.Context;
import android.content.res.AssetManager;
import androidx.annotation.Keep;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Objects;

@Keep
/* loaded from: classes4.dex */
public class DexLoader {
    private static final String DEX_ROOT_DIR_NAME = "ksad_dex";
    private static final String TAG = "DexLoader";
    private static final String TARGET_DEX_NAME = "dexJar.jar";
    private static final String dexJarCheckFileName = "ksaddex_makejar.check";
    private static final String dexJarFileName = "ksad_data.jar";
    private static String sDexPathRoot;

    private static boolean checkLocal(Context context, String str, int i2) {
        if (i2 != 5041002) {
            return false;
        }
        File file = new File(getTargetDexFilePath(context));
        return file.exists() && Objects.equals(y.getFileMD5(file), str);
    }

    private static void closeQuietly(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.Closeable, java.io.InputStream] */
    private static File copyAssetsToData(Context context, String str, DexLoadError dexLoadError) throws Throwable {
        Closeable closeable;
        Closeable closeable2;
        FileOutputStream fileOutputStream;
        File file;
        Closeable closeable3 = null;
        try {
            try {
                AssetManager assets = context.getAssets();
                File file2 = new File(getDexRootPath(context));
                if (!file2.exists()) {
                    file2.mkdir();
                }
                file = new File(getTargetDexFilePath(context));
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                str = assets.open(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e = e2;
            closeable2 = null;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            closeable = null;
            closeQuietly(closeable3);
            closeQuietly(closeable);
            throw th;
        }
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                int iA = p.a(getTargetDexFilePath(context), (InputStream) str, p.bs(context));
                if (iA != 1 && dexLoadError != null) {
                    dexLoadError.setErrorCode(iA);
                }
                fileOutputStream.flush();
                file.setReadable(true);
                file.setWritable(false);
                closeQuietly(str);
                closeQuietly(fileOutputStream);
                return file;
            } catch (IOException e3) {
                e = e3;
                closeable2 = str;
                e.printStackTrace();
                if (dexLoadError != null) {
                    dexLoadError.setErrorCode(-3);
                    dexLoadError.setErrorMsg(e.getMessage());
                }
                closeQuietly(closeable2);
                closeQuietly(fileOutputStream);
                return null;
            }
        } catch (IOException e4) {
            e = e4;
            fileOutputStream = null;
            closeable2 = str;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            closeable3 = str;
            closeQuietly(closeable3);
            closeQuietly(closeable);
            throw th;
        }
    }

    private static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i2);
            }
        }
    }

    private static ClassLoader createDexClassLoader(Context context, ClassLoader classLoader, String str, DexLoadError dexLoadError) {
        try {
            String strB = z.b(classLoader);
            Objects.toString(classLoader);
            ClassLoader classLoaderA = g.a(context, classLoader, str, context.getCacheDir().getAbsolutePath(), strB);
            Objects.toString(classLoaderA.loadClass("com.kwad.sdk.KsAdSDKImpl"));
            return classLoaderA;
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            if (dexLoadError == null) {
                return null;
            }
            dexLoadError.setErrorMsg(e2.getMessage());
            dexLoadError.setErrorCode(-1);
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            if (dexLoadError == null) {
                return null;
            }
            dexLoadError.setErrorMsg(th.getMessage());
            dexLoadError.setErrorCode(-2);
            return null;
        }
    }

    private static String getDexRootPath(Context context) {
        String str = sDexPathRoot;
        if (str != null) {
            return str;
        }
        return context.getApplicationInfo().dataDir + File.separator + DEX_ROOT_DIR_NAME;
    }

    public static String getTargetDexFilePath(Context context) {
        return getDexRootPath(context) + File.separator + TARGET_DEX_NAME;
    }

    public static ClassLoader initDex(Context context, ClassLoader classLoader) {
        q qVarHH = r.HH();
        if (qVarHH != null) {
            qVarHH.onInit(context);
        }
        Objects.toString(qVarHH);
        DexLoadError dexLoadError = new DexLoadError();
        String strPrepareDexFile = prepareDexFile(context, dexLoadError);
        dexLoadError.toString();
        if (!dexLoadError.success()) {
            if (qVarHH != null) {
                qVarHH.reportDexLoadError(context, dexLoadError);
            }
            return null;
        }
        ClassLoader classLoaderCreateDexClassLoader = createDexClassLoader(context, classLoader, strPrepareDexFile, dexLoadError);
        dexLoadError.toString();
        if (dexLoadError.success()) {
            return classLoaderCreateDexClassLoader;
        }
        if (qVarHH != null) {
            qVarHH.reportDexLoadError(context, dexLoadError);
        }
        return null;
    }

    private static boolean isTargetDexFileExist(Context context) {
        return false;
    }

    private static String obtainCheckMd5(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return null;
        }
        return strArrSplit[0];
    }

    private static int obtainVersionCode(String str) {
        if (str == null) {
            return -1;
        }
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return -1;
        }
        int length = strArrSplit.length;
        for (int i2 = 0; i2 < length; i2++) {
            String str2 = strArrSplit[i2];
            if (str2.startsWith("versionCode:")) {
                try {
                    return Integer.parseInt(str2.replace("versionCode:", "").trim());
                } catch (NumberFormatException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return -1;
    }

    private static String prepareDexFile(Context context, DexLoadError dexLoadError) throws Throwable {
        File fileCopyAssetsToData;
        String targetDexFilePath = getTargetDexFilePath(context);
        String checkFile = readCheckFile(context);
        String strObtainCheckMd5 = obtainCheckMd5(checkFile);
        if (checkLocal(context, strObtainCheckMd5, obtainVersionCode(checkFile)) || (fileCopyAssetsToData = copyAssetsToData(context, dexJarFileName, dexLoadError)) == null || !fileCopyAssetsToData.exists()) {
            return targetDexFilePath;
        }
        String fileMD5 = y.getFileMD5(fileCopyAssetsToData);
        if (Objects.equals(fileMD5, strObtainCheckMd5)) {
            return fileCopyAssetsToData.getAbsolutePath();
        }
        dexLoadError.setErrorCode(-4);
        dexLoadError.setErrorMsg("targetMd5:" + fileMD5 + ", assetJarFileMd5:" + strObtainCheckMd5);
        return targetDexFilePath;
    }

    private static String readCheckFile(Context context) throws Throwable {
        Closeable closeable;
        Throwable th;
        InputStream inputStream;
        InputStream inputStream2;
        BufferedReader bufferedReader;
        InputStream inputStream3;
        InputStream inputStreamOpen;
        AssetManager assets = context.getAssets();
        String strTrim = null;
        try {
            try {
                inputStreamOpen = assets.open(dexJarCheckFileName);
            } catch (Throwable th2) {
                th = th2;
                inputStream = assets;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream2 = null;
            bufferedReader = null;
        } catch (Throwable th3) {
            closeable = null;
            th = th3;
            inputStream = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, "UTF-8"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append("\n");
                } catch (IOException e3) {
                    e = e3;
                    inputStream2 = inputStreamOpen;
                    e.printStackTrace();
                    inputStream3 = inputStream2;
                    closeQuietly(inputStream3);
                    closeQuietly(bufferedReader);
                    return strTrim;
                }
            }
            strTrim = sb.toString().trim();
            inputStream3 = inputStreamOpen;
        } catch (IOException e4) {
            e = e4;
            bufferedReader = null;
            inputStream2 = inputStreamOpen;
        } catch (Throwable th4) {
            closeable = null;
            th = th4;
            inputStream = inputStreamOpen;
            closeQuietly(inputStream);
            closeQuietly(closeable);
            throw th;
        }
        closeQuietly(inputStream3);
        closeQuietly(bufferedReader);
        return strTrim;
    }
}
