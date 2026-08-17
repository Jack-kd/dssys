package com.byazt.ymw;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {

    @com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD})
    /* renamed from: com.byazt.ymw.s$1, reason: invalid class name */
    public static class AnonymousClass1 implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long jLastModified = file2.lastModified() - file.lastModified();
            if (jLastModified == 0) {
                return 0;
            }
            return jLastModified < 0 ? -1 : 1;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static final class hp implements Comparator<File> {
        private hp() {
        }

        private int hp(long j2, long j3) {
            if (j2 < j3) {
                return -1;
            }
            return j2 == j3 ? 0 : 1;
        }

        public /* synthetic */ hp(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return hp(file.lastModified(), file2.lastModified());
        }
    }

    private static void a(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file ".concat(String.valueOf(file)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File hp(android.content.Context r1, boolean r2, java.lang.String r3, java.lang.String r4) {
        /*
            java.lang.String r0 = l(r1)
            if (r2 == 0) goto L1f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r1 = hp(r1)
            r2.append(r1)
            java.lang.String r1 = "-"
            r2.append(r1)
            r2.append(r3)
            java.lang.String r1 = r2.toString()
            goto L29
        L1f:
            java.lang.String r1 = "/"
            java.lang.String r2 = java.lang.String.valueOf(r3)
            java.lang.String r1 = r1.concat(r2)
        L29:
            if (r0 == 0) goto L43
            java.lang.String r2 = java.io.File.separator
            boolean r3 = r0.endsWith(r2)
            if (r3 != 0) goto L43
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            goto L45
        L43:
            java.lang.String r2 = ""
        L45:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            java.io.File r2 = new java.io.File
            r2.<init>(r1)
            boolean r3 = r2.exists()
            if (r3 != 0) goto L62
            r2.mkdirs()
        L62:
            java.io.File r2 = new java.io.File
            r2.<init>(r1, r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ymw.s.hp(android.content.Context, boolean, java.lang.String, java.lang.String):java.io.File");
    }

    public static byte[] j(File file) {
        FileInputStream fileInputStream;
        long length;
        Long lValueOf;
        if (file != null && file.isFile() && file.exists() && file.canRead() && file.length() > 0) {
            try {
                length = file.length();
                lValueOf = Long.valueOf(length);
                fileInputStream = new FileInputStream(file);
            } catch (Throwable unused) {
                fileInputStream = null;
            }
            try {
                byte[] bArr = new byte[lValueOf.intValue()];
                if (fileInputStream.read(bArr) == length) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused2) {
                    }
                    return bArr;
                }
            } catch (Throwable unused3) {
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return null;
            }
            try {
                fileInputStream.close();
            } catch (Throwable unused4) {
            }
        }
        return null;
    }

    private static String jx(Context context) {
        File fileL;
        if (context == null || (fileL = eb.l(context, false, null)) == null) {
            return null;
        }
        return fileL.getPath();
    }

    public static File l(Context context, boolean z2, String str, String str2) {
        String strJx = jx(context);
        if (z2) {
            str = hp(context) + "-" + str;
        }
        if (strJx != null) {
            String str3 = File.separator;
            if (!strJx.endsWith(str3)) {
                strJx = strJx + str3;
            }
        }
        String str4 = strJx + str;
        File file = new File(str4);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(str4, str2);
    }

    private static void w(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        long j2;
        long length = file.length();
        if (length == 0) {
            a(file);
            return;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "rwd");
            j2 = length - 1;
        } catch (Throwable unused) {
            randomAccessFile = null;
        }
        try {
            randomAccessFile.seek(j2);
            byte b3 = randomAccessFile.readByte();
            randomAccessFile.seek(j2);
            randomAccessFile.write(b3);
            randomAccessFile.close();
        } catch (Throwable unused2) {
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        }
    }

    public static void jx(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            if (file.isFile()) {
                file.delete();
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        jx(file2);
                    } else {
                        try {
                            file2.delete();
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
            file.delete();
        } catch (Throwable unused2) {
        }
    }

    public static File l(Context context, boolean z2, String str) {
        String absolutePath = eb.l(context, false, null).getAbsolutePath();
        if (z2) {
            str = hp(context) + "-" + str;
        }
        if (absolutePath != null) {
            String str2 = File.separator;
            if (!absolutePath.endsWith(str2)) {
                absolutePath = absolutePath + str2;
            }
        }
        File file = new File(absolutePath + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File hp(android.content.Context r1, boolean r2, java.lang.String r3) {
        /*
            java.lang.String r0 = l(r1)
            if (r2 == 0) goto L1e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r1 = hp(r1)
            r2.append(r1)
            java.lang.String r1 = "-"
            r2.append(r1)
            r2.append(r3)
            java.lang.String r3 = r2.toString()
        L1e:
            if (r0 == 0) goto L38
            java.lang.String r1 = java.io.File.separator
            boolean r2 = r0.endsWith(r1)
            if (r2 != 0) goto L38
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            goto L3a
        L38:
            java.lang.String r1 = ""
        L3a:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            r2.append(r3)
            java.lang.String r1 = r2.toString()
            java.io.File r2 = new java.io.File
            r2.<init>(r1)
            boolean r1 = r2.exists()
            if (r1 != 0) goto L57
            r2.mkdirs()
        L57:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ymw.s.hp(android.content.Context, boolean, java.lang.String):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x001c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String l(android.content.Context r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            r1 = 0
            java.lang.String r2 = "mounted"
            java.lang.String r3 = android.os.Environment.getExternalStorageState()     // Catch: java.lang.Throwable -> L19
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L19
            if (r2 != 0) goto L17
            boolean r2 = android.os.Environment.isExternalStorageRemovable()     // Catch: java.lang.Throwable -> L19
            if (r2 != 0) goto L19
        L17:
            r2 = 1
            goto L1a
        L19:
            r2 = r1
        L1a:
            if (r2 == 0) goto L23
            java.io.File r2 = com.byazt.ymw.eb.j(r4, r1, r0)     // Catch: java.lang.Throwable -> L21
            goto L24
        L21:
            r2 = r0
            goto L2a
        L23:
            r2 = r0
        L24:
            if (r2 != 0) goto L2a
            java.io.File r2 = com.byazt.ymw.eb.l(r4, r1, r0)     // Catch: java.lang.Throwable -> L2a
        L2a:
            if (r2 != 0) goto L2d
            return r0
        L2d:
            java.lang.String r4 = r2.getPath()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ymw.s.l(android.content.Context):java.lang.String");
    }

    public static List<File> hp(File file) {
        LinkedList linkedList = new LinkedList();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return linkedList;
        }
        List<File> listAsList = Arrays.asList(fileArrListFiles);
        Collections.sort(listAsList, new hp(null));
        return listAsList;
    }

    public static void l(File file) throws IOException {
        if (file.exists()) {
            u.l("splashLoadAd", "update file modify time");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(jCurrentTimeMillis)) {
                return;
            }
            w(file);
            if (file.lastModified() < jCurrentTimeMillis) {
                new Date(file.lastModified());
                file.getAbsolutePath();
            }
        }
    }

    public static String hp(Context context) {
        String strHp = n.hp(context);
        return (TextUtils.isEmpty(strHp) || !strHp.contains(":")) ? strHp : strHp.replace(":", "-");
    }
}
