package com.byazt.ymw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER})
/* loaded from: classes3.dex */
public class dy {
    public static List<File> hp(String str, String str2) throws IOException {
        return hp(str, str2, (String) null);
    }

    private static boolean l(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!hp(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static List<File> hp(String str, String str2, String str3) throws IOException {
        return hp(hp(str), hp(str2), str3);
    }

    public static List<File> hp(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        try {
            if (l(str)) {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (!name.contains("../") && !hp(file2, arrayList, zipFile, zipEntryNextElement, name)) {
                        return arrayList;
                    }
                }
            } else {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement2 = enumerationEntries.nextElement();
                    String name2 = zipEntryNextElement2.getName();
                    if (!name2.contains("../") && name2.contains(str) && !hp(file2, arrayList, zipFile, zipEntryNextElement2, name2)) {
                        return arrayList;
                    }
                }
            }
            return arrayList;
        } finally {
            zipFile.close();
        }
    }

    private static boolean l(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean hp(java.io.File r2, java.util.List<java.io.File> r3, java.util.zip.ZipFile r4, java.util.zip.ZipEntry r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r2, r6)
            r3.add(r0)
            boolean r2 = r5.isDirectory()
            if (r2 == 0) goto L13
            boolean r2 = hp(r0)
            return r2
        L13:
            boolean r2 = l(r0)
            r3 = 0
            if (r2 != 0) goto L1b
            return r3
        L1b:
            r2 = 0
            java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L53
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L53
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L4f
            java.io.InputStream r4 = r4.getInputStream(r5)     // Catch: java.lang.Throwable -> L4f
            r0.<init>(r4)     // Catch: java.lang.Throwable -> L4f
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L4b
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L4b
            r2 = 8192(0x2000, float:1.148E-41)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L3e
        L33:
            int r5 = r0.read(r2)     // Catch: java.lang.Throwable -> L3e
            r1 = -1
            if (r5 == r1) goto L40
            r4.write(r2, r3, r5)     // Catch: java.lang.Throwable -> L3e
            goto L33
        L3e:
            r2 = move-exception
            goto L58
        L40:
            r0.close()
            r4.close()
            r6.close()
            r2 = 1
            return r2
        L4b:
            r3 = move-exception
            r4 = r2
        L4d:
            r2 = r3
            goto L58
        L4f:
            r3 = move-exception
            r4 = r2
            r0 = r4
            goto L4d
        L53:
            r3 = move-exception
            r4 = r2
            r6 = r4
            r0 = r6
            goto L4d
        L58:
            if (r0 == 0) goto L5d
            r0.close()
        L5d:
            if (r4 == 0) goto L62
            r4.close()
        L62:
            if (r6 == 0) goto L67
            r6.close()
        L67:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ymw.dy.hp(java.io.File, java.util.List, java.util.zip.ZipFile, java.util.zip.ZipEntry, java.lang.String):boolean");
    }

    private static boolean hp(File file) {
        if (file != null) {
            return file.exists() ? file.isDirectory() : file.mkdirs();
        }
        return false;
    }

    private static File hp(String str) {
        if (l(str)) {
            return null;
        }
        return new File(str);
    }
}
