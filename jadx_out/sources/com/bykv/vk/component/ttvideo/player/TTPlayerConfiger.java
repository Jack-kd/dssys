package com.bykv.vk.component.ttvideo.player;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.rz.l;
import java.io.File;

/* loaded from: classes3.dex */
public final class TTPlayerConfiger {
    private static String APP_PATH = null;
    private static String CRASH_FILE_NAME = "ttplayer_crash.log";
    private static String CRASH_FILE_PATH = null;
    public static final boolean DEBUG = false;
    public static final int DEFAULT_POOL_STACK_SIZE = 32;
    public static final int FALSE = 0;
    public static boolean IS_PRINT_INFO = false;
    public static final int IS_TIME_OUT_COUNT = 3;
    private static final SparseArray<Value> KEYS = new SparseArray<>();
    public static final int KEY_IS_BATTERY_INFO = 23;
    public static final int KEY_IS_CHECK_LIB = 3;
    public static final int KEY_IS_CHECK_TTPLAYER_MODEL = 0;
    public static final int KEY_IS_CRASHED = 7;
    public static final int KEY_IS_CRASH_FILE_NAME = 17;
    public static final int KEY_IS_CRASH_PATH = 19;
    public static final int KEY_IS_DEBUG_MODEL = 6;
    public static final int KEY_IS_FORBID_CREATED_OS_PLAYER = 11;
    public static final int KEY_IS_FOREGROUND = 21;
    public static final int KEY_IS_IPTTPLAYER_ON = 2;
    public static final int KEY_IS_LOG_FILE_DIR = 20;
    public static final int KEY_IS_ON_SCREEN = 22;
    public static final int KEY_IS_OPEN_DEVICE_FAIL = 8;
    public static final int KEY_IS_PORT_VERSION = 18;
    public static final int KEY_IS_PRINT_INFO = 5;
    public static final int KEY_IS_SDK_VERSION = 13;
    public static final int KEY_IS_SDK_VERSION_INFO = 15;
    public static final int KEY_IS_SDK_VERSION_NAME = 14;
    public static final int KEY_IS_START_SERVICE = 16;
    public static final int KEY_IS_STOP_SERVICE = 12;
    public static final int KEY_IS_THREAD_POOL_STACK_SIZE = 25;
    public static final int KEY_IS_THROW_CRASH = 4;
    public static final int KEY_IS_TIMEOUT_COUNT = 10;
    public static final int KEY_IS_TTPLAYER_ON = 1;
    public static final int KEY_IS_USED_THREAD_POOL = 24;
    private static String LIBRARY_DIR = null;
    private static String PLAYER_LIBRARY_NAME = "libttmplayer_lite.so";
    private static final int PORT_VERSION = 2;
    public static final String TAG = "ttplayer";
    public static final int TRUE = 1;
    private static String TTPLAYER_FILE_CACHE_DIR = null;
    private static final int VERSION = 1;
    private static final String VERSION_INFO = "version code:1,name:999.999.999.9default sdk info 2016-12-05";
    private static final String VERSION_NAME = "999.999.999.9";

    public static final class IntValue extends Value {
        private int mValue;

        public IntValue(int i2, int i3) {
            super(i2);
            this.mValue = i3;
        }

        public int getValue() {
            return this.mValue;
        }

        public void setValue(int i2) {
            this.mValue = i2;
        }
    }

    public static class LongValue extends Value {
        private long mValue;

        public LongValue(int i2, long j2) {
            super(i2);
            this.mValue = j2;
        }

        public long getValue() {
            return this.mValue;
        }

        public void setValue(long j2) {
            this.mValue = j2;
        }
    }

    public static class StringValue extends Value {
        private String mValue;

        public StringValue(int i2, String str) {
            super(i2);
            this.mValue = str;
        }

        public String getValue() {
            return this.mValue;
        }

        public void setValue(String str) {
            this.mValue = str;
        }
    }

    public static class Value {
        private int mKey;

        public Value(int i2) {
            this.mKey = i2;
        }

        public int getKey() {
            return this.mKey;
        }
    }

    static {
        setValue(13, 1);
        setValue(14, VERSION_NAME);
        setValue(15, VERSION_INFO);
        setValue(0, false);
        setValue(1, true);
        setValue(2, true);
        setValue(3, false);
        setValue(4, false);
        setValue(5, false);
        setValue(6, false);
        setValue(7, false);
        setValue(8, false);
        setValue(10, 0);
        setValue(11, false);
        setValue(18, 2);
        setValue(25, 32);
    }

    public static void checkDebugTTPlayerLib() {
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0081 A[Catch: IOException -> 0x0084, TRY_LEAVE, TryCatch #10 {IOException -> 0x0084, blocks: (B:41:0x007c, B:43:0x0081), top: B:67:0x007c }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean copyFile(java.lang.String r4, java.lang.String r5, boolean r6, boolean r7) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r5 = r0.exists()
            r1 = 0
            if (r5 != 0) goto Ld
            return r1
        Ld:
            boolean r5 = r0.isFile()
            if (r5 != 0) goto L14
            return r1
        L14:
            java.io.File r5 = new java.io.File
            r5.<init>(r4)
            boolean r2 = r5.exists()
            if (r2 == 0) goto L2a
            if (r6 == 0) goto L3f
            java.io.File r6 = new java.io.File
            r6.<init>(r4)
            r6.delete()
            goto L3f
        L2a:
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.exists()
            if (r4 != 0) goto L3f
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.mkdirs()
            if (r4 != 0) goto L3f
            return r1
        L3f:
            r4 = 0
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L85 java.io.FileNotFoundException -> L91
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L85 java.io.FileNotFoundException -> L91
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L86 java.io.FileNotFoundException -> L92
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L86 java.io.FileNotFoundException -> L92
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
        L4e:
            int r5 = r6.read(r4)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            r3 = -1
            if (r5 == r3) goto L5b
            r2.write(r4, r1, r5)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            goto L4e
        L59:
            r4 = move-exception
            goto L7a
        L5b:
            r2.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            r6.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            if (r7 == 0) goto L66
            r0.delete()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L6e java.io.FileNotFoundException -> L70
        L66:
            r2.close()     // Catch: java.io.IOException -> L6c
            r6.close()     // Catch: java.io.IOException -> L6c
        L6c:
            r4 = 1
            return r4
        L6e:
            r4 = r2
            goto L86
        L70:
            r4 = r2
            goto L92
        L72:
            r5 = move-exception
            r2 = r4
        L74:
            r4 = r5
            goto L7a
        L76:
            r5 = move-exception
            r6 = r4
            r2 = r6
            goto L74
        L7a:
            if (r2 == 0) goto L7f
            r2.close()     // Catch: java.io.IOException -> L84
        L7f:
            if (r6 == 0) goto L84
            r6.close()     // Catch: java.io.IOException -> L84
        L84:
            throw r4
        L85:
            r6 = r4
        L86:
            if (r4 == 0) goto L8b
            r4.close()     // Catch: java.io.IOException -> L90
        L8b:
            if (r6 == 0) goto L90
            r6.close()     // Catch: java.io.IOException -> L90
        L90:
            return r1
        L91:
            r6 = r4
        L92:
            if (r4 == 0) goto L97
            r4.close()     // Catch: java.io.IOException -> L9c
        L97:
            if (r6 == 0) goto L9c
            r6.close()     // Catch: java.io.IOException -> L9c
        L9c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.player.TTPlayerConfiger.copyFile(java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    @Deprecated
    public static final String getAppCrashFilePath(Context context) {
        if (CRASH_FILE_PATH != null || new File(getAppCrashFileStorePath(context)).exists()) {
            isPrintInfo();
            return CRASH_FILE_PATH;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(APP_PATH);
        char c2 = File.separatorChar;
        sb.append(c2);
        sb.append("plugins");
        sb.append(c2);
        sb.append("com.bykv.vk.component.ttvideo");
        sb.append(c2);
        sb.append("data");
        sb.append(c2);
        sb.append("files");
        sb.append(c2);
        sb.append(CRASH_FILE_NAME);
        return sb.toString();
    }

    public static final String getAppCrashFilePath2(Context context) {
        if (context != null && APP_PATH == null) {
            APP_PATH = l.hp(context.getApplicationContext()).getAbsolutePath();
        }
        if (CRASH_FILE_PATH != null) {
            isPrintInfo();
            return CRASH_FILE_PATH;
        }
        if (APP_PATH == null) {
            APP_PATH = getAppFilesPath(context);
        }
        isPrintInfo();
        if (APP_PATH == null) {
            return null;
        }
        return APP_PATH + File.separatorChar + CRASH_FILE_NAME;
    }

    @Deprecated
    public static final String getAppCrashFileStorePath(Context context) {
        if (context != null && APP_PATH == null) {
            APP_PATH = l.hp(context.getApplicationContext()).getAbsolutePath();
        }
        if (CRASH_FILE_PATH != null) {
            isPrintInfo();
            return CRASH_FILE_PATH;
        }
        if (APP_PATH == null) {
            APP_PATH = getAppFilesPath(context);
        }
        isPrintInfo();
        if (APP_PATH == null) {
            return null;
        }
        return APP_PATH + File.separatorChar + CRASH_FILE_NAME;
    }

    public static final String getAppFileCachePath(Context context) {
        if (context != null && APP_PATH == null) {
            APP_PATH = l.hp(context.getApplicationContext()).getAbsolutePath();
        }
        String str = TTPLAYER_FILE_CACHE_DIR;
        if (str != null) {
            return str;
        }
        String str2 = APP_PATH;
        if (str2 != null) {
            return str2;
        }
        if (context == null) {
            return null;
        }
        try {
            String absolutePath = l.hp(context.getApplicationContext()).getAbsolutePath();
            APP_PATH = absolutePath;
            return absolutePath;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String getAppFilesPath(Context context) {
        String str = APP_PATH;
        if (str != null) {
            return str;
        }
        if (context == null) {
            return null;
        }
        try {
            String absolutePath = l.hp(context.getApplicationContext()).getAbsolutePath();
            APP_PATH = absolutePath;
            return absolutePath;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String getExternalStorageDirectoryCrashFilePath() {
        return null;
    }

    public static String getPlayerLibraryPath(Context context) {
        if (APP_PATH == null || context != null) {
            APP_PATH = getAppFilesPath(context);
        }
        if (APP_PATH == null && LIBRARY_DIR == null) {
            return null;
        }
        String str = LIBRARY_DIR;
        if (str == null) {
            return APP_PATH + File.separatorChar + PLAYER_LIBRARY_NAME;
        }
        char c2 = File.separatorChar;
        if (str.endsWith(String.valueOf(c2))) {
            return LIBRARY_DIR + PLAYER_LIBRARY_NAME;
        }
        return LIBRARY_DIR + c2 + PLAYER_LIBRARY_NAME;
    }

    public static String getPlayerLibrarysDir(Context context) {
        String str = LIBRARY_DIR;
        if (str == null) {
            String str2 = getAppFilesPath(context) + File.separatorChar;
            LIBRARY_DIR = str2;
            return str2;
        }
        char c2 = File.separatorChar;
        if (str.endsWith(String.valueOf(c2))) {
            return LIBRARY_DIR;
        }
        return LIBRARY_DIR + c2;
    }

    public static final String getPlugerCrashFilePath(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(APP_PATH);
        char c2 = File.separatorChar;
        sb.append(c2);
        sb.append("plugins");
        sb.append(c2);
        sb.append("com.bykv.vk.component.ttvideo");
        sb.append(c2);
        sb.append("data");
        sb.append(c2);
        sb.append("files");
        sb.append(c2);
        sb.append(CRASH_FILE_NAME);
        return sb.toString();
    }

    public static final String getValue(int i2, String str) {
        if (i2 == 17) {
            return CRASH_FILE_NAME;
        }
        Value value = KEYS.get(i2);
        return (value == null || !(value instanceof StringValue)) ? str : ((StringValue) value).getValue();
    }

    public static final int getVersion() {
        return 1;
    }

    public static final boolean isOnTTPlayer() {
        if (getValue(6, 0) == 1) {
            return true;
        }
        if (getValue(1, 0) == 0) {
            return false;
        }
        if (getValue(11, 0) == 1) {
            return true;
        }
        return (getValue(7, 0) == 1 || getValue(8, 0) == 1 || getValue(10, 0) >= 3) ? false : true;
    }

    public static boolean isPrintInfo() {
        return IS_PRINT_INFO;
    }

    public static final boolean moveFile(String str, String str2, boolean z2) {
        return copyFile(str, str2, z2, true);
    }

    public static final void setCrashFileName(String str) {
        CRASH_FILE_NAME = str;
    }

    public static final void setCrashFilePath(String str) {
        CRASH_FILE_PATH = str;
    }

    public static final void setLibraryName(String str) {
        PLAYER_LIBRARY_NAME = str;
    }

    public static final void setLibrarysDir(String str) {
        LIBRARY_DIR = str;
    }

    public static final void setValue(int i2, boolean z2) {
        setValue(i2, z2 ? 1 : 0);
    }

    public static final void setValue(int i2, int i3) {
        SparseArray<Value> sparseArray = KEYS;
        Value value = sparseArray.get(i2);
        if (value != null) {
            if (value instanceof IntValue) {
                if (i2 == 2 && getValue(6, false)) {
                    return;
                }
                ((IntValue) value).setValue(i3);
                return;
            }
            sparseArray.remove(i2);
        }
        sparseArray.append(i2, new IntValue(i2, i3));
    }

    public static final boolean getValue(int i2, boolean z2) {
        Value value = KEYS.get(i2);
        return (value == null || !(value instanceof IntValue)) ? z2 : ((IntValue) value).getValue() == 1;
    }

    public static final int getValue(int i2, int i3) {
        Value value = KEYS.get(i2);
        return (value == null || !(value instanceof IntValue)) ? i3 : ((IntValue) value).getValue();
    }

    public static String getPlayerLibraryPath() {
        return getPlayerLibraryPath(null);
    }

    public static final void setValue(int i2, long j2) {
        SparseArray<Value> sparseArray = KEYS;
        Value value = sparseArray.get(i2);
        if (value != null) {
            if (value instanceof LongValue) {
                ((LongValue) value).setValue(j2);
                return;
            }
            sparseArray.remove(i2);
        }
        sparseArray.append(i2, new LongValue(i2, j2));
    }

    public static final long getValue(int i2, long j2) {
        Value value = KEYS.get(i2);
        return (value == null || !(value instanceof LongValue)) ? j2 : ((LongValue) value).getValue();
    }

    public static final void setValue(int i2, String str) {
        SparseArray<Value> sparseArray = KEYS;
        Value value = sparseArray.get(i2);
        if (value != null) {
            if (value instanceof StringValue) {
                ((StringValue) value).setValue(str);
                return;
            }
            sparseArray.remove(i2);
        }
        sparseArray.append(i2, new StringValue(i2, str));
    }
}
